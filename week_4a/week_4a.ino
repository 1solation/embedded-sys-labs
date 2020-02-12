#include "Arduino.h"

#include "Button.h"
#include <esp32-hal-gpio.h>
#include <HardwareSerial.h>

//global vars
ButtonState btnCurrent;
int btnPresses = 0;
const int SWITCH_PIN = 26;
Button* button = NULL;

//The setup function is called once at startup of the sketch
void setup()
{
// Add your initialization code her
	Serial.begin(115200);
	pinMode(SWITCH_PIN, INPUT);
	button = new Button(SWITCH_PIN); // should configure pinMode too
	std::vector<int> btnPresses;

}

// The loop function is called in an endless loop
void loop()
{
//Add your repeated code here

//	if (digitalRead(SWITCH_PIN) == HIGH) {
//		Serial.println("hdkjasodhsauiou");
//	}

	ButtonState btnRead = button->checkState();
	if (btnRead != btnCurrent) {
		// button state changed
		btnCurrent = btnRead;
		switch (btnCurrent) {
		case ButtonState::ON:
			btnPresses++;
			Serial.print("Class Btn Pressed (");
			Serial.print(btnPresses);
			Serial.println(")");
			break;
		case ButtonState::OFF:
			break;
		}
	}

/*	const char * charStr = "Hello";
	char charArrStr[] = {'H', 'e', 'l', 'l', 'o', '\0', 'a', 'l', 'l'};
	String ardStr = "Hello";

	char* dynCharArr = new char[20];
	dynCharArr[0] = 'H';
	dynCharArr[1] = 'e';
	dynCharArr[2] = 'l';
	dynCharArr[3] = 'l';
	dynCharArr[4] = 'o';
	dynCharArr[5] = '\0';

	char* dynCharArr2 = new char[20];
	dynCharArr2[0] = 'H';
	dynCharArr2[1] = 'e';
	dynCharArr2[2] = 'l';
	dynCharArr2[3] = 'l';
	dynCharArr2[4] = 'o';

	Serial.println(charStr);
	delay(5);
	Serial.println(charArrStr);
	delay(5);
	Serial.println(ardStr);
	delay(5);
	Serial.println(dynCharArr);
	delay(5);
	Serial.println(dynCharArr2);
	delete[] dynCharArr;
	delete[] dynCharArr2;
*/



}
