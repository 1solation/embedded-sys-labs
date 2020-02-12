#include "Arduino.h"
//The setup function is called once at startup of the sketch
enum State {
	LED_ON, LED_OFF
};

enum buttonState {
	BUTTON_PRESS, BUTTON_RELEASE
};

const int LED_PIN = 13;
const int SWITCH_PIN = 14;
State current;
buttonState state;
int count;
void ledSwitch() {

	if(current == LED_OFF){
		current = LED_ON;
	}else if(current == LED_ON){
		current = LED_OFF;
	}


}

void setup() {
	current = LED_OFF;
	state = BUTTON_RELEASE;
	pinMode(LED_PIN, OUTPUT);
	pinMode(SWITCH_PIN, INPUT);
	Serial.begin(9600);
	 count = 0;
}




// The loop function is called in an endless loop
void loop() {

	if (digitalRead(SWITCH_PIN) == LOW && state != BUTTON_RELEASE) {
		state = BUTTON_RELEASE;


	}

	if (digitalRead(SWITCH_PIN) == HIGH && state != BUTTON_PRESS) {
		state = BUTTON_PRESS;

		//if(state == BUTTON_PRESS){

		count++;
		Serial.println(count);
		}
/*
 *
 * HAVENT IMPLEMENTED BUTTON DEBOUNCE YET, FIX THIS FIRST BY LOKOING AT SLIDES THEN
 *
 */
	if(count == 3){
			ledSwitch();
			count = 0;
		}

	if(current == LED_OFF){
		digitalWrite(LED_PIN, LOW);
	}else if (current == LED_ON){
		digitalWrite(LED_PIN, HIGH);
	}

}


