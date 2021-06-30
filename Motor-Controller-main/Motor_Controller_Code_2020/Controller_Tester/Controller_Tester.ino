#include <Wire.h>

void setup() {
  Wire.begin(); // join i2c bus (address optional for master)
  Serial.begin(9600);
  
  pinMode(5, INPUT); // Pin used to reset the controller
  pinMode(6, OUTPUT); // Used to reset the controller
  pinMode(A0, INPUT); //Used to set the speed
  pinMode(7, INPUT_PULLUP); //Used to set the direction

// Start the motor controller
  digitalWrite(6, LOW);
  delay(300);
  digitalWrite(6, HIGH);
}

byte value = 0;
bool dir = 0;
byte duty = 0;


void loop() {

  duty = map(analogRead(A0), 0, 1023, 0, 100); //Read the value and map it between 0 and 100.
  dir = digitalRead(7);
  value = bitWrite(duty, 7, dir);

  Wire.beginTransmission(7); // transmit to device #8
  Wire.write(value);              // sends one byte
  Wire.endTransmission();    // stop transmitting

  Wire.requestFrom(7, 1); // Request the controller status from the motor controller
  byte c = Wire.read();
  Serial.println(c); // Print out the status

  if (digitalRead(5) == 1) { // If the reset pin is on, then reset
    Serial.println("Reset");

    Wire.beginTransmission(7); // transmit to device #8
    Wire.write(112);              // sends one byte
    Wire.endTransmission();    // stop transmitting

    Wire.beginTransmission(7); // transmit to device #8
    Wire.write(229);              // sends one byte
    Wire.endTransmission();    // stop transmitting

    delay(2000);
  }
  delay(200);
}
