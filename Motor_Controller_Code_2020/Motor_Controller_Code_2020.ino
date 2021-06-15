/*
   MOTOR CONTROLLER CODE 2020
   BY: CAMERON HANSON
   REVISION: 2.1
   RELEASE DATE: 06/05/2021

   RELEASE NOTES:
   V2.0, Changed controller to a more robust driver that handles more features of the H-Bridge. The microcontroller just converts the I2C into a PWM and direction for the driver as well as checking faults)
   V2.1, Added fault line from driver chip to code and added some fault codes to be put to the main controller if the driver chip is faulted

   THINGS TO UPDATE:
   VDS requires a blanking time and as such, we may get a bunch of VDS faults. This will have to be changed in the circuitry
   END THINGS TO UPDATE:

   Definitions:
   Controller - Arduino chip (ATTINY4313)
   Driver - MOSFET driver chip (A4956 motor driver)
   Main Controller - Sends the I2C commands to the motor controller (Acts as the master for all motor controllers) (In my application, it will be a raspberry Pi 4)
*/

//LIBRARIES//
#include <Wire.h>
//END LIBRARIES//

//DEFINES// These will save a slight amount of space for things that cannot change mid run
#define frequency 25000 // Frequency of the motor driver
#define start_up_delay 2000 // Specifies how long to take ramping the controller down
#define rampDownTime 2000 // Controller must be at zero on I2C for greater than this value to allow user control
#define watchdog_time_limit 2000 //Specifies how often the system should get a message in milliseconds
#define DirPin 12 // Tells which pin the direction pin is on
#define ModePin 8 // Defines which pin the mode selector for the driver chip is
#define FaultPin 5 // Defines which pin the fault pin from the driver chip is on

//USER FUNCTIONS//
void setup_FAST_PWM(); // Sets up the PWM pins
void receiveEvent(int howMany); // Function that gets called when data is delivered to the motor driver
void requestEvent(); // Function to send data back to the master controller

void setSpeedandDir();// Function to set the speed and direction of the controller
void killMotors(bool emergency); // Function to shut down the motors (If the boolean inside is set, then it will instantly kill the motors
void resetDriver(); //Function to reset driver chip

void waitForZeroThrottle(); // Function to listen to I2C communication and wait for throttle to be set at zero before it will allow for user control
void checkReset(); // Checks to see if the system has been issued the reset command
//END USER FUNCTIONS


//USER PARAMETERS//
byte Address = 0; // Holds the address of the device. This will be read by dip switches and set inside the setup function

bool dir = 1; //Default direction to forward
int duty_cycle = 1;// Holds the percentage that will be passed to the motor
byte recieve_byte = 0; // Holds the data received by the controller

byte reset_count = 0; // Holds a number used to determine if the first byte of a reset command happened
bool reset = 0; // Holds whether a reset should be initaited

byte controller_status = 0;// Tells the controller if there are any problems and if so, what they are (This is requested by the master each loop)
bool fault = 0; // Tells controller if it is faulted or not. This can be cleared by sending a specific command to the controller

unsigned long last_receive_time = 0; // Holds when the last time an I2C command was given to the board
unsigned long current_time = 0;// Holds the current time of the controller
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

  setup_FAST_PWM(); // Setup and start hardware PWM generator (MUST DO THIS FIRST!!!!) (Messes up some bits in the port that controls the I2C bus)

  Wire.begin(Address);// join i2c bus with address that was read by the dip switches (This needs to be unique for each controller on the system)
  Wire.onReceive(receiveEvent); // Add an event to the arduino for receiving I2C communications
  Wire.onRequest(requestEvent); // Add an event for when the controller is requested to give information

  resetDriver();
  waitForZeroThrottle(); // Wait until the throttle has been reset to 0% PWM to ensure it doesn't takeoff unexpectedly

}

void loop() {
  current_time = millis(); // Get the current time of the system

  if (current_time - last_receive_time < watchdog_time_limit && !fault) { // Check if commands have stopped for too long
    setSpeedandDir(); // Set the speed and direction of the motor driver
  } else {
    controller_status = 1;// A watchdog timer fault has occured. Stop the system and put that as the controller status. This can be cleared by the master controller
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

  //Check if the system was reset on every loop
  if (reset == 1) {
    resetDriver(); // Reset the driver chip just to make sure any faults are cleared since they can cause the system to fail
    waitForZeroThrottle();  // If the system was reset, wait for the throttle to go to zero before giving control back
    fault = 0; // Make sure the fault flag is cleared since the system is no longer faulted
    reset = 0; // The reset has been completed
    controller_status = 0; // The system should be good after this
  }
  delay(100); //Delay the system from updating too often
}

void setup_FAST_PWM() {
  //Function to setup the Hardware PWM generators. Clears the pins at compare match and sets them at top
  //FAST PWM mode with ICR1 as the top value for the PWM (Mode 14)(Sets the PWM frequency)

  //Sets OC1B to outputs

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
  last_receive_time = millis();
  dir = bitRead(recieve_byte, 7); //Mask of the upper bit for the direction and shift it 7 places to be in the LSB which can be stored in a bool
  duty_cycle = recieve_byte & (B01111111); //Mask off the lower 7 bits and convert them to an int. (Need to get rid of the direction bit)
  checkReset(); // Check to see if the system has been reset
}

void requestEvent() {
  Wire.write(controller_status); // Give the main controller the status of this motor driver (0 means everything is okay)(1 means a watchdog timeout)()()
}

void setSpeedandDir() {
  if (dir == 1) {
    OCR1B = map(duty_cycle, 0, 100, 0, 8000000 / frequency - 1); // Map the 0-100% duty cycle to the counts needed to make the PWM that duty cycle
    digitalWrite(DirPin, HIGH); // Set rhe direction pin to be high
  }
  if (dir == 0) {
    OCR1B = map(duty_cycle, 0, 100, 0, 8000000 / frequency - 1);
    digitalWrite(DirPin, LOW); // Set rhe direction pin to be low
  }
}

void killMotors(bool emergency) { // Function to kill the motors
  int delay_time;
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
  controller_status = 15; // This code means the system is waiting for the input to be zero

  while (millis() - start_time < start_up_delay) { // While the start_up_delay timer has not elapsed
    if (duty_cycle >= deadband) { // If the duty cycle ever goes above the deadband zone, reset the timer
      start_time = millis();
    }
  }
  controller_status = 0; // Once we make it through this code, reset the status so the main controller knows everything is good
}

void checkReset() { // Checks to see if the system has been issued the reset command
  if (recieve_byte == 112) { // If the byte coming in is 112 (Normally not something sent to the controller) then increase the counter
    reset_count++;
  }
  else if (reset_count >= 1 && recieve_byte == 229) { //otherwise reset the counter
    reset = 1;
    reset_count = 0;
  }
  else { // If the first byte is 112 and the next byte is 229, then the fault will be allowed to clear
    reset_count = 0;
  }
}

void resetDriver() {
  //Save the current configuration to restore back to
  byte t1 = TCCR1A;
  byte t2 = TCCR1B;
  byte t3 = PORTB;
  
  TCCR1A = 0;
  TCCR1B = 0;
  delay(50);
  
  PORTB &= ~(1 << PB4); // Write a 0 to PB4 (Enable pin on driver)
  delay(10); // Allow the system to reset
  PORTB |= (1 << PB4); // Write a 1 to PB4
  delayMicroseconds(20); //Wake the system from standby
  PORTB &= ~(1 << PB4); //Write a zero to stop it from being active during the reset

  //Restore PWM operation as was before
  TCCR1A = t1;
  TCCR1B = t2;
  PORTB = t3;

  OCR1B = 0;
}
