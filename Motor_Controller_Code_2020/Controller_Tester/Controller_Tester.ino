#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>


//Defines for OLED screen
#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 64 // OLED display height, in pixels
#define OLED_RESET     4 // Reset pin # (or -1 if sharing Arduino reset pin)
#define SCREEN_ADDRESS 0x3C ///< See datasheet for Address; 0x3D for 128x64, 0x3C for 128x32

void drawBarGraph(int level); //Function prototype to draw a bar graph at the top of the screen

byte value = 0;
bool dir = 0;
int throttle_val = 50;
int throttle_status = 16;
int motor_status = 15;

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET); //Create the oled screen variable

void setup() {
  Wire.begin(); // join i2c bus (address optional for master)
  Serial.begin(9600);

  pinMode(5, INPUT_PULLUP); // Pin used to reset the controller
  pinMode(6, INPUT_PULLUP); //Used to set the direction

  if (!display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS)) {
    Serial.println(F("SSD1306 allocation failed"));
    for (;;); // Don't proceed, loop forever
  }
}




void loop() {

  Wire.requestFrom(8, 2); // Request the controller status from the motor controller
  throttle_val = Wire.read();
  throttle_status = Wire.read();
  if (throttle_status == 16) {
    Wire.beginTransmission(7); // transmit to device #8
    Wire.write(112);              // sends one byte
    Wire.endTransmission();    // stop transmitting

    Wire.beginTransmission(7); // transmit to device #8
    Wire.write(229);              // sends one byte
    Wire.endTransmission();    // stop transmitting
  }



  dir = digitalRead(6);
  value = bitWrite(throttle_val, 7, dir);

  Wire.beginTransmission(7); // transmit to device #8
  Wire.write(value);              // sends one byte
  Wire.endTransmission();    // stop transmitting

  Wire.requestFrom(7, 1); // Request the controller status from the motor controller
  motor_status = Wire.read();
  //Serial.println(motor_status); // Print out the status

  if (digitalRead(5) == 0) { // If the reset pin is on, then reset
    Serial.println("Reset");

    Wire.beginTransmission(7); // transmit to device #8
    Wire.write(112);              // sends one byte
    Wire.endTransmission();    // stop transmitting

    Wire.beginTransmission(7); // transmit to device #8
    Wire.write(229);              // sends one byte
    Wire.endTransmission();    // stop transmitting

    delay(2000);
  }

  display.clearDisplay();

  display.setTextSize(2);      // Normal 1:1 pixel scale
  display.setTextColor(SSD1306_WHITE); // Draw white text
  value = bitWrite(throttle_val, 7, 0);
  drawBarGraph(throttle_val);
  display.setCursor(0, 16);     // Start at top-left corner

  String dir_s;
  if (dir == 1) {
    dir_s = "Forward";
  } else {
    dir_s = "Reverse";
  }
  display.write(dir_s.c_str(), dir_s.length());
  display.setCursor(0, 32);     // Start at top-left corner
  display.setTextSize(2);      // Normal 2:1 pixel scale
  String m_s = "Motor: " + (String)(motor_status);
  display.write(m_s.c_str(), m_s.length());


  display.setCursor(0, 48);     // Start at top-left corner
  String c_s = "Throt: " + (String)(throttle_status);
  display.write(c_s.c_str(), c_s.length());
  display.display();
  delay(10);
}

void drawBarGraph(int level) { //level is between 0 and 100%
  display.setCursor(0, 0);     // Start at top-left corner
  for (int i = 0; i < map(level, 0, 100, 0, 128); i++) {
    display.drawFastVLine(i, 0, 15, SSD1306_WHITE);
  }
}
