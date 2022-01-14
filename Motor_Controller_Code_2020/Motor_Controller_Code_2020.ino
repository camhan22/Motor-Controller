/*
   MOTOR CONTROLLER CODE 2020
   BY: CAMERON HANSON
   REVISION: 3.1
   RELEASE DATE: 10/18/2021

   RELEASE NOTES:
   V3.1: Changed how address selection is done to have consistency with the PCB
   V3.0: Added CRC check for incoming data to ensure that the data was actually valid, this avoids a problem where spotty connections can lead to the system randomly jumping and going out of control
   V2.3: Added status LED indication to help diagnose problems without a computer being attached. Also added a DEADBAND to the throttle to avoid wasting power
   V2.2.2: Added code to check that duty cycle was within bounds of 0-100%. If it is beyond the bounds, it gets set to the appropriate bound
   V2.2.1: Fixed a bug with the reset driver where PB4 was not being set as an output and the reset process was allowed to be interrupted
   V2.2: Fixed a bug that would have caused the kart to slam to a stop if a false reset code was sent when no controllerFault existed and restructured the code to be more readable
   V2.1: Added controllerFault line from driver chip to code and added some controllerFault codes to be put to the main controller if the driver chip is controllerFaulted
   V2.0: Changed controller to a more robust driver that handles more features of the H-Bridge. The microcontroller just converts the I2C into a PWM and controllerDirectionection for the driver as well as checking controllerFaults)

   THINGS TO UPDATE:

   Definitions:
   Controller - Arduino chip (ATTINY4313)
   Driver - MOSFET driver chip (A4956 motor driver)
   Main Controller - Sends the I2C commands to the motor controller (Acts as the master for all motor controllers) (In my application, it will be a raspberry Pi 4)
*/

//LIBRARIES//
#include <Wire.h> //Add the wire library for the I2C protocol
#include "CRC8.h" //Add the CRC8 library for calculating 8 bit crc values
#include "CRC.h" //Include the CRC library which is used in the crc8 library
//END LIBRARIES//

//DEFINES// These will save a slight amount of space for things that cannot change mid run
#define FREQUENCY 25000 // FREQUENCY of the motor driver (minimum is 1.5kHz due to standby mode timer on the A4956 driver chip)
#define DEADBAND 10 //If the incoming duty cycle is less than this limit, then it will make the motor output a zero PWM signal to avoid wasting power when it cannot move
#define START_UP_DELAY 2000 // Specifies how long to take ramping the controller down
#define RAMP_DOWN_TIME 2000 // Controller must be at zero on I2C for greater than this value to allow user control
#define WATCHDOG_TIME_LIMIT 2000 //Specifies how often the system should get a message in milliseconds
#define DIR_PIN 12 // Tells which pin the controllerDirectionection pin is on
#define MODE_PIN 8 // Defines which pin the mode selector for the driver chip is
#define FAULT_PIN 5 // Defines which pin the fault pin from the driver chip is on
#define STATUS_RED_PIN 0 //Defines which pin the red LED status light is on
#define STATUS_YELLOW_PIN 1 //Defines which pin the yellow LED status light is on
#define STATUS_BLINK_RATE 500 //defines how long each state will last. Total blink time is twice this.
//The above 2 pins need to be flipped in order to make this work with the new board design

//USER FUNCTIONS//
void setup_Fast_PWM(); // Sets up the PWM pins
void recieve_Event(int howMany); // Function that gets called when data is delivered to the motor driver
void request_Event(); // Function to send data back to the master controller

void set_Speed_and_Direction();// Function to set the speed and direction of the controller
void kill_Motors(bool emergency); // Function to shut down the motors (If the boolean inside is set, then it will instantly kill the motors
void reset_Driver(); //Function to reset driver chip
bool is_Data_Good(byte data, byte crc); //Function to check I2C CRC data to make sure data is valid

void wait_Zero_Throttle(); // Function to listen to I2C communication and wait for throttle to be set at zero before it will allow for user control
void check_Reset(byte data); // Checks to see if the system has been issued the reset command
void set_LED_Status(); //Sets the LED lights depending on the status of the system
//END USER FUNCTIONS


//USER PARAMETERS//
//controller physical attributes
byte controllerAddress = 0; // Holds the address of the device. This will be read by dip switches and set inside the setup function

//controller output variables
bool controllerDirection = 1; //Holds the direction the controller should go
int controllerDutyCycle = 0; // Holds the percentage that will be passed to the motor

//controller reset variables
byte resetCount = 0; // Holds a number used to determine if the first byte of a reset command happened
bool resetController = 0; // Holds whether a reset should be initaited
byte dataCount = 0; //Holds how many data bytes have been recieved, a complete packet is 2 bytes (one data and one crc)
byte lastData = 0; //Holds the last recieved data byte for crc checking

//controller status variables
byte controllerStatus = 0; // Tells the controller if there are any problems and if so, what they are (This is requested by the master each loop)
bool controllerFault = 0; // Tells controller if it is controllerFaulted or not. This can be cleared by sending a specific command to the controller

//last update times
unsigned long lastReceiveTime = 0; // Holds when the last time an I2C command was given to the board
unsigned long lastStatusTime = 0; //Holds the last time the LED changed state

//crc variable
CRC8 incoming_CRC; //Create a CRC object to test whether data is good
//END USER PARAMETERS//

void setup() {
  //Set the controllerAddress lines to be inputs with pull-ups
  pinMode(2, INPUT_PULLUP); // MSB
  pinMode(3, INPUT_PULLUP);
  pinMode(4, INPUT_PULLUP); // LSB

  //Read the controllerAddress values on startup and connect to the I2C bus as that controllerAddress
  bool controllerAddress_b2 = !digitalRead(2); // MSB
  bool controllerAddress_b1 = !digitalRead(3);
  bool controllerAddress_b0 = !digitalRead(4); // LSB

  //Order the bits to give the correct controllerAddress for the I2C bus
  controllerAddress |= controllerAddress_b2 << 2; // Shift the MSB by two positions
  controllerAddress |= controllerAddress_b1 << 1; // Shift the middle bit by 1
  controllerAddress |= controllerAddress_b0; //  Add the last bit to the controllerAddress

  incoming_CRC.setPolynome(0xD5); //Polynomial to use for CRC generation (Uses standard CRC-8 polynome)

  //Put the controller in slow decay mode (Braking)
  pinMode(MODE_PIN, OUTPUT);
  digitalWrite(MODE_PIN, HIGH);

  // Define the controllerFault pin from the driver as an input with pullup
  pinMode(FAULT_PIN, INPUT_PULLUP);

  //Set the controllerDirection pin as an output
  pinMode(DIR_PIN, OUTPUT);

  //Set status lights as outputs
  pinMode(STATUS_RED_PIN, OUTPUT);
  pinMode(STATUS_YELLOW_PIN, OUTPUT);

  //Set the status lights to off in the beginning
  digitalWrite(STATUS_RED_PIN, LOW);
  digitalWrite(STATUS_YELLOW_PIN, LOW);

  setup_Fast_PWM(); // Setup and start hardware PWM generator (MUST DO THIS FIRST!!!!) (Messes up some bits in the port that controls the I2C bus)
  reset_Driver(); //Reset the driver chip on controller startup

  Wire.begin(controllerAddress);// join i2c bus with controllerAddress that was read by the dip switches (This needs to be unique for each controller on the system)
  Wire.onReceive(recieve_Event); // Add an event to the arduino for receiving I2C communications
  Wire.onRequest(request_Event); // Add an event for when the controller is requested to give information


  wait_Zero_Throttle(); // Wait until the throttle has been reset to 0% PWM to ensure it doesn't takeoff unexpectedly
}

void loop() {
  if (controllerFault == 1) { //If there is an active fault, wait for a reset event, it is the only thing the controller should be doing
    if (resetController == 1) { //Wait for a reset event to come in
      reset_Driver(); // Reset the driver chip just to make sure any faults are cleared since they can cause the system to fail
      wait_Zero_Throttle();  // If the system was reset, wait for the throttle to go to zero before giving control back
      controllerFault = 0; // Make sure the fault flag is cleared since the system is no longer faulted
      resetController = 0; // The reset has been completed
      controllerStatus = 0; // The system should be good after this
    }
  } else { //If no active controllerFaults exist, check for new ones and if none exist, then set the speed and direction
    if (millis() - lastReceiveTime > WATCHDOG_TIME_LIMIT) { // Check if commands have stopped for too long
      controllerStatus = 1;
      controllerFault = 1;
      kill_Motors(0); //Kill the motors but shutdown in non-emergency way
    }

    // If the driver chip is in fault mode, then let the arduino know. There isn't a way  to tell why the driver has failed but there are only a few causes
    // Causes: A VDS fault has occured meaning it saw too much voltage across the mosfet and could be damaged
    // Causes: Internal current limit has tripped (This is disabled in this version and cannot occur)
    if (digitalRead(FAULT_PIN) == 0) {
      controllerFault = 1;
      controllerStatus = 2; // This code means the driver chip has faulted in some way. Can be reset by sending a reset command to the controller
      kill_Motors(0); //Kill the motors but shutdown in non-emergency way
    }
    set_LED_Status(); //Set the status LEDs
    set_Speed_and_Direction(); // Set the speed and direction of the motor driver (If any controllerFaults occur on the way, the duty cycle will be set to zero by the time it gets here)
    delay(10); //Delay the system from updating too often (having higher refresh rate may help with VDS controllerFaults since the changes will be smaller
  }
}

void setup_Fast_PWM() {
  //Function to setup the Hardware PWM generators. Clears the pins at compare match and sets them at top
  //FAST PWM mode with ICR1 as the top value for the PWM (Mode 14)(Sets the PWM FREQUENCY)
  //Sets OC1B to output the PWM signal
  //Uses internal 8MHz clock (Makes the board easier and cheaper to manufacture) (Actual PWM FREQUENCY is not that important due to openloop control)

  TCCR1A |= (1 << COM1B1) + (1 << WGM11); //Set B channel to clear at compare match and set at top
  TCCR1B |= (1 << WGM12) + (1 << WGM13) + (1 << CS10); // No prescaling
  ICR1 = 8000000 / FREQUENCY - 1; //Calculates the FREQUENCY of the PWM pins
  OCR1B = 0; // Set to zero to decontrollerFault the controller at startup
  DDRB |= (1 << PB4); //Pin 14 on the chip should be an output
}

void recieve_Event(int howMany) {
  // function that executes whenever data is received from master
  // this function is registered as an event
  byte recieve_byte = Wire.read();    // receive byte as an integer (MUST DO THIS FIRST!!!!!!! otherwise a NACK will occur due to it taking too long to read)
  byte crc_byte = Wire.read(); //Read in the crc byte from the bus

  if (is_Data_Good(recieve_byte, crc_byte) == 1) { //Check if the last recieved byte (the data) crc and the current byte (the crc) are the same
    lastReceiveTime = millis(); //Update the last time a command was recieved

    controllerDirection = bitRead(recieve_byte, 7); //Mask of the upper bit for the direction and shift it 7 places to be in the LSB which can be stored in a bool
    controllerDutyCycle = recieve_byte & (B01111111); //Mask off the lower 7 bits and convert them to an int. (Need to get rid of the direction bit)

    if (controllerDutyCycle > 100) { //If the duty cycle is greater than 100, just set it to 100
      controllerDutyCycle = 100;
    } else if (controllerDutyCycle < DEADBAND) { //If the duty cycle is less than 0, set it to 0
      controllerDutyCycle = 0;
    }
  }
}

void request_Event() {
  Wire.write(controllerStatus); // Give the main controller the status of this motor driver (0 means everything is okay)(1 means a watchdog timeout)
}

void set_Speed_and_Direction() {
  if (controllerDirection == 1) {
    OCR1B = map(controllerDutyCycle, 0, 100, 0, 8000000 / FREQUENCY - 1); // Map the 0-100% duty cycle to the counts needed to make the PWM that duty cycle
    digitalWrite(DIR_PIN, HIGH); // Set the direction pin to be high
  }
  if (controllerDirection == 0) {
    OCR1B = map(controllerDutyCycle, 0, 100, 0, 8000000 / FREQUENCY - 1);
    digitalWrite(DIR_PIN, LOW); // Set the direction pin to be low
  }
}

void kill_Motors(bool emergency) { //Function to kill the motors
  int delay_time;
  controllerDutyCycle = 0; //If the motors need to be shut down, make sure the command driving them is also turned off
  if (emergency) { // If it is an emergency, stop the motors immediately
    OCR1B = 0;
  } else {
    delay_time = RAMP_DOWN_TIME / OCR1B; // Determine how long to take between decrements to meet the stop time
    for (int i = OCR1B; i > 0; i--) { // Decrement from the current value to zero
      OCR1B = i;
      delay(delay_time); // Delay between each decrement to make it smooth, the length of this delay is determined by how long it should take for the system to slow down
    }
  }
}

//The watchdog is not needed here because if the I2C disappears during the startupdelay, the value will still be zero after exiting and then will be detected by the watchdog timer in the normal loop which will then controllerFault out if enough time passes by
void wait_Zero_Throttle() {
  unsigned long start_time = millis();
  int elapsed_time = 0;
  controllerStatus = 15; //This code means the system is waiting for the input to be zero

  while (millis() - start_time < START_UP_DELAY) { //While the START_UP_DELAY timer has not elapsed
    if (controllerDutyCycle >= DEADBAND) { //If the duty cycle ever goes above the deadband zone, reset the timer
      start_time = millis();
    }
  }
  controllerStatus = 0; // Once we make it through this code, reset the status so the main controller knows everything is good
}

void check_Reset(byte data) { // Checks to see if the system has been issued the reset command
  if (data == 112) { // If the byte coming in is 112 (Normally not something sent to the controller) then increase the counter
    resetCount++;
  } else if (resetCount >= 1 && data == 229 && controllerFault == 1) {// If the first byte is 112 and the next byte is 229, then the fault will be allowed to clear
    resetController = 1;
    resetCount = 0;
  } else {  //otherwise reset the counter
    resetCount = 0;
  }
}

void reset_Driver() {
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

  setup_Fast_PWM();
  interrupts(); //Allow interrupts after the driver chip is fully reset
}

bool is_Data_Good(byte data, byte crc) {
  incoming_CRC.restart(); //Reset the crc polynomial to default conditions
  incoming_CRC.add(data); //Add the recieved data byte to the crc check
  return incoming_CRC.getCRC() == crc ? 1 : 0; //If the crc's match, then return that data is good
}

void set_LED_Status() {
  if (controllerStatus == 0) { //If the controller is working properly, then turn the status off
    digitalWrite(STATUS_RED_PIN, LOW);
    digitalWrite(STATUS_YELLOW_PIN, LOW);
  } else if (controllerStatus == 15) { //If the controller is waiting for the throttle to reset, put the yellow light on to indicate that
    digitalWrite(STATUS_RED_PIN, LOW);
    digitalWrite(STATUS_YELLOW_PIN, HIGH);
  } else if (controllerStatus == 1) { //If the driver is controllerFaulted due to a communication issue, set the red led to on
    digitalWrite(STATUS_RED_PIN, HIGH);
    digitalWrite(STATUS_YELLOW_PIN, LOW);
  } else if (controllerStatus == 2) { //If a VDS controllerFault has occured, blink the red led
    digitalWrite(STATUS_YELLOW_PIN, LOW);
    if (millis() - lastStatusTime > STATUS_BLINK_RATE) {
      digitalWrite(STATUS_RED_PIN, !digitalRead(STATUS_RED_PIN)); //Toggle the red LED
      lastStatusTime = millis(); //Update the last time the state was changed
    }
  }
}
