/*
   MOTOR CONTROLLER CODE 2020
   BY: CAMERON HANSON
   REVISION: 2.3
   RELEASE DATE: 08/06/2021

   RELEASE NOTES:
   V2.3: Added status LED indication to help diagnose problems without a computer being attached. Also added a deadband to the throttle to avoid wasting power
   V2.2.2: Added code to check that duty cycle was within bounds of 0-100%. If it is beyond the bounds, it gets set to the appropriate bound
   V2.2.1: Fixed a bug with the reset driver where PB4 was not being set as an output and the reset process was allowed to be interrupted
   V2.2: Fixed a bug that would have caused the kart to slam to a stop if a false reset code was sent when no fault existed and restructured the code to be more readable
   V2.1: Added fault line from driver chip to code and added some fault codes to be put to the main controller if the driver chip is faulted
   V2.0: Changed controller to a more robust driver that handles more features of the H-Bridge. The microcontroller just converts the I2C into a PWM and direction for the driver as well as checking faults)

   THINGS TO UPDATE:

   Definitions:
   Controller - Arduino chip (ATTINY4313)
   Driver - MOSFET driver chip (A4956 motor driver)
   Main Controller - Sends the I2C commands to the motor controller (Acts as the master for all motor controllers) (In my application, it will be a raspberry Pi 4)
*/

//LIBRARIES//
#include <Wire.h>
//END LIBRARIES//

//DEFINES// These will save a slight amount of space for things that cannot change mid run
#define frequency 25000 // Frequency of the motor driver (minimum is 1.5kHz due to standby mode timer on the A4956 driver chip)
#define deadband 10 //If the incoming duty cycle is less than this limit, then it will make the motor output a zero PWM signal to avoid wasting power when it cannot move
#define start_up_delay 2000 // Specifies how long to take ramping the controller down
#define rampDownTime 2000 // Controller must be at zero on I2C for greater than this value to allow user control
#define watchdog_time_limit 2000 //Specifies how often the system should get a message in milliseconds
#define DirPin 12 // Tells which pin the direction pin is on
#define ModePin 8 // Defines which pin the mode selector for the driver chip is
#define FaultPin 5 // Defines which pin the fault pin from the driver chip is on
#define StatusRedPin 0 //Defines which pin the red LED status light is on
#define StatusYellowPin 1 //Defines which pin the yellow LED status light is on
#define StatusBlinkRate 500 //defines how long each state will last. Total blink time is twice this.
//The above 2 pins need to be flipped in order to make this work with the new board design

//USER FUNCTIONS//
void setup_FAST_PWM(); // Sets up the PWM pins
void receiveEvent(int howMany); // Function that gets called when data is delivered to the motor driver
void requestEvent(); // Function to send data back to the master controller

void setSpeedandDir();// Function to set the speed and direction of the controller
void killMotors(bool emergency); // Function to shut down the motors (If the boolean inside is set, then it will instantly kill the motors
void resetDriver(); //Function to reset driver chip

void waitForZeroThrottle(); // Function to listen to I2C communication and wait for throttle to be set at zero before it will allow for user control
void checkReset(); // Checks to see if the system has been issued the reset command
void setLEDStatus(); //Sets the LED lights depending on the status of the system
//END USER FUNCTIONS


//USER PARAMETERS//
byte Address = 0; // Holds the address of the device. This will be read by dip switches and set inside the setup function

bool dir = 1; //Default direction to forward
int duty_cycle = 0;// Holds the percentage that will be passed to the motor
byte recieve_byte = 0; // Holds the data received by the controller

byte reset_count = 0; // Holds a number used to determine if the first byte of a reset command happened
bool reset = 0; // Holds whether a reset should be initaited

byte controller_status = 0;// Tells the controller if there are any problems and if so, what they are (This is requested by the master each loop)
bool fault = 0; // Tells controller if it is faulted or not. This can be cleared by sending a specific command to the controller

unsigned long last_receive_time = 0; // Holds when the last time an I2C command was given to the board

unsigned long last_status_time = 0; //Holds the last time the LED changed state
//END USER PARAMETERS//

void setup() {
  //Set the address lines to be inputs with pull-ups
  pinMode(2, INPUT_PULLUP); // MSB
  pinMode(3, INPUT_PULLUP);
  pinMode(4, INPUT_PULLUP); // LSB

  //Read the address values on startup and connect to the I2C bus as that address
  bool Address_b2 = digitalRead(2); // MSB
  bool Address_b1 = digitalRead(3);
  bool Address_b0 = digitalRead(4); // LSB

  //Order the bits to give the correct address for the I2C bus
  Address |= Address_b2 << 2; // Shift the MSB by two positions
  Address |= Address_b1 << 1; // Shift the middle bit by 1
  Address |= Address_b0; //  Add the last bit to the address

  //Put the controller in slow decay mode (Braking)
  pinMode(ModePin, OUTPUT);
  digitalWrite(ModePin, HIGH);

  // Define the fault pin from the driver as an input with pullup
  pinMode(FaultPin, INPUT_PULLUP);

  //Set the DIR pin as an output
  pinMode(DirPin, OUTPUT);

  //Set status lights as outputs
  pinMode(StatusRedPin, OUTPUT);
  pinMode(StatusYellowPin, OUTPUT);

  //Set the status lights to off in the beginning
  digitalWrite(StatusRedPin, LOW);
  digitalWrite(StatusYellowPin, LOW);
  
  setup_FAST_PWM(); // Setup and start hardware PWM generator (MUST DO THIS FIRST!!!!) (Messes up some bits in the port that controls the I2C bus)

  Wire.begin(Address);// join i2c bus with address that was read by the dip switches (This needs to be unique for each controller on the system)
  Wire.onReceive(receiveEvent); // Add an event to the arduino for receiving I2C communications
  Wire.onRequest(requestEvent); // Add an event for when the controller is requested to give information

  resetDriver(); //Reset the driver chip on controller startup
  waitForZeroThrottle(); // Wait until the throttle has been reset to 0% PWM to ensure it doesn't takeoff unexpectedly

}

void loop() {
  current_time = millis(); // Get the current time of the system

  if (fault == 1) { //If there is an active fault, wait for a reset event, it is the only thing the controller should be doing
    if (reset == 1) { //Wait for a reset event to come in
      resetDriver(); // Reset the driver chip just to make sure any faults are cleared since they can cause the system to fail
      waitForZeroThrottle();  // If the system was reset, wait for the throttle to go to zero before giving control back
      fault = 0; // Make sure the fault flag is cleared since the system is no longer faulted
      reset = 0; // The reset has been completed
      controller_status = 0; // The system should be good after this
    }
  } else { //If no active faults exist, check for new ones and if none exist, then set the speed and direction
    if (millis() - last_receive_time > watchdog_time_limit) { // Check if commands have stopped for too long
      controller_status = 1;
      fault = 1;
      killMotors(0); //Kill the motors but shutdown in non-emergency way
    }

    // If the driver chip is in fault mode, then let the arduino know. There isn't a way  to tell why the driver has failed but there are only a few causes
      // Causes: A VDS fault has occured meaning it saw too much voltage across the mosfet and could be damaged
      // Causes: Internal current limit has tripped (This is disabled in this version and cannot occur)
      if (digitalRead(FaultPin) == 0) {
      fault = 1;
      controller_status = 2; // This code means the driver chip has faulted in some way. Can be reset by sending a reset command to the controller
      killMotors(0); //Kill the motors but shutdown in non-emergency way
      }
    setLEDStatus(); //Set the status LEDs
    setSpeedandDir(); // Set the speed and direction of the motor driver (If any faults occur on the way, the duty cycle will be set to zero by the time it gets here)
    delay(10); //Delay the system from updating too often (having higher refresh rate may help with VDS faults since the changes will be smaller
  }
}

void setup_FAST_PWM() {
  //Function to setup the Hardware PWM generators. Clears the pins at compare match and sets them at top
  //FAST PWM mode with ICR1 as the top value for the PWM (Mode 14)(Sets the PWM frequency)
  //Sets OC1B to output the PWM signal
  //Uses internal 8MHz clock (Makes the board easier and cheaper to manufacture) (Actual PWM frequency is not that important due to openloop control)

  TCCR1A |= (1 << COM1B1) + (1 << WGM11); //Set B channel to clear at compare match and set at top
  TCCR1B |= (1 << WGM12) + (1 << WGM13) + (1 << CS10); // No prescaling
  ICR1 = 8000000 / frequency - 1; //Calculates the frequency of the PWM pins
  OCR1B = 0; // Set to zero to default the controller at startup
  DDRB |= (1 << PB4); //Pin 14 on the chip should be an output
}

void receiveEvent(int howMany) {
  // function that executes whenever data is received from master
  // this function is registered as an event
  recieve_byte = Wire.read();    // receive byte as an integer (MUST DO THIS FIRST!!!!!!! otherwise a NACK will occur due to it taking too long to read)
  last_receive_time = millis(); //Update the last time a command was recieved
  checkReset(); // Check to see if the system has been reset
  dir = bitRead(recieve_byte, 7); //Mask of the upper bit for the direction and shift it 7 places to be in the LSB which can be stored in a bool
  duty_cycle = recieve_byte & (B01111111); //Mask off the lower 7 bits and convert them to an int. (Need to get rid of the direction bit)
  if (reset_count == 0) { //If a reset event is not in the process of occuring
    if (duty_cycle > 100){ //If the duty cycle is greater than 100, just set it to 100
      duty_cycle = 100;
    }else if(duty_cycle < deadband){ //If the duty cycle is less than 0, set it to 0
      duty_cycle = 0;
    }
  }
}

void requestEvent() {
  Wire.write(controller_status); // Give the main controller the status of this motor driver (0 means everything is okay)(1 means a watchdog timeout)
}

void setSpeedandDir() {
  if (dir == 1) {
    OCR1B = map(duty_cycle, 0, 100, 0, 8000000 / frequency - 1); // Map the 0-100% duty cycle to the counts needed to make the PWM that duty cycle
    digitalWrite(DirPin, HIGH); // Set the direction pin to be high
  }
  if (dir == 0) {
    OCR1B = map(duty_cycle, 0, 100, 0, 8000000 / frequency - 1);
    digitalWrite(DirPin, LOW); // Set the direction pin to be low
  }
}

void killMotors(bool emergency) { //Function to kill the motors
  int delay_time;
  duty_cycle = 0; //If the motors need to be shut down, make sure the command driving them is also turned off
  if (emergency) { // If it is an emergency, stop the motors immediately
    OCR1B = 0;
  } else {
    delay_time = rampDownTime / OCR1B; // Determine how long to take between decrements to meet the stop time
    for ( int i = OCR1B; i > 0; i--) { // Decrement from the current value to zero
      OCR1B = i;
      delay(delay_time); // Delay between each decrement to make it smooth, the length of this delay is determined by how long it should take for the system to slow down
    }
  }
}

//The watchdog is not needed here because if the I2C disappears during the startupdelay, the value will still be zero after exiting and then will be detected by the watchdog timer in the normal loop which will then fault out if enough time passes by
void waitForZeroThrottle() {
  int deadband = 5; // If the controller is less than this value, consider it a zero since it won't move
  unsigned long start_time = millis();
  int elapsed_time = 0;
  controller_status = 15; //This code means the system is waiting for the input to be zero

  while (millis() - start_time < start_up_delay) { //While the start_up_delay timer has not elapsed
    if (duty_cycle >= deadband) { //If the duty cycle ever goes above the deadband zone, reset the timer
      start_time = millis();
    }
  }
  controller_status = 0; // Once we make it through this code, reset the status so the main controller knows everything is good
}

void checkReset() { // Checks to see if the system has been issued the reset command
  if (recieve_byte == 112) { // If the byte coming in is 112 (Normally not something sent to the controller) then increase the counter
    reset_count++;
  }
  else if (reset_count >= 1 && recieve_byte == 229 && fault == 1) {// If the first byte is 112 and the next byte is 229, then the fault will be allowed to clear
    reset = 1;
    reset_count = 0;
  }
  else {  //otherwise reset the counter
    reset_count = 0;
  }
}

void resetDriver() {

  noInterrupts(); //Disable interrupts because it can screw up the timing if a recieve event comes in while this is happening
  TCCR1A = 0; //Set PORTB to be normal operation (timer stopped)
  TCCR1B = 0;
  DDRB |= (1 << PB4); //Set PB4 to be an output (It already was an output, but this makes sure that setting the TCCR1A and TCCR1B registers to 0 didn't affect it)

  PORTB &= ~(1 << PB4); // Write a 0 to PB4 (Enable pin on driver)
  delay(10); // Allow the system to go into standby mode (only need 1ms but 10x longer ensures it is in standby)
  PORTB |= (1 << PB4); // Write a 1 to PB4
  delayMicroseconds(50); //Wake the system from standby(Datasheet says it only need ~20us, so 50us should be good enough)
  PORTB &= ~(1 << PB4); //Write a zero to stop it from being active during the reset
  delayMicroseconds(400); //Delay 400us to ensure the driver has been started properly before continuing (The actual time of this doesn't matter as long as it is not greater than 700us since that is the shortest time to standy for the driver chip)

  setup_FAST_PWM();
  interrupts(); //Allow interrupts after the driver chip is fully reset
}

void setLEDStatus(){
  if(controller_status == 0){ //If the controller is working properly, then turn the status off
    digitalWrite(StatusRedPin, LOW);
    digitalWrite(StatusYellowPin, LOW);
  }else if(controller_status == 15){ //If the controller is waiting for the throttle to reset, put the yellow light on to indicate that
    digitalWrite(StatusRedPin, LOW);
    digitalWrite(StatusYellowPin, HIGH);
  }else if(controller_status == 1){ //If the driver is faulted due to a communication issue, set the red led to on
    digitalWrite(StatusRedPin, HIGH);
    digitalWrite(StatusYellowPin, LOW);
  }else if(controller_status == 2){ //If a VDS fault has occured, blink the red led
    digitalWrite(StatusYellowPin, LOW);
    if(millis - last_status_time > StatusBlinkRate){
      digitalWrite(StatusREDPin, !digitalRead(StatusREDPin)); //Toggle the LED
      last_status_time = millis(); //Update the last time the state was changed
    }
  }
  
}
