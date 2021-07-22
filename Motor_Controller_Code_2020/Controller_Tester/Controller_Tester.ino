#include <Wire.h>

byte value = 0;
bool dir = 0;
int throttle_val = 0;
int throttle_status = 16;


void setup() {
  Wire.begin(); // join i2c bus (address optional for master)
  Serial.begin(9600);

  pinMode(5, INPUT); // Pin used to reset the controller
  pinMode(6, OUTPUT); // Used to reset the controller
  pinMode(7, INPUT_PULLUP); //Used to set the direction

  // Start the motor controller
  digitalWrite(6, LOW);
  delay(300);
  digitalWrite(6, HIGH);
}




void loop() {

  Wire.requestFrom(8, 2); // Request the controller status from the motor controller
  throttle_val = Wire.read();
  throttle_status = Wire.read();
  Serial.print(throttle_status);
  Serial.print("-");

  dir = digitalRead(7);
  value = bitWrite(throttle_val, 7, dir);

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
  delay(10);
}
