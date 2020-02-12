#include "Arduino.h"
//The setup function is called once at startup of the sketch
enum State {
	LED_ON, LED_OFF
};

const int LED_PIN = 13;
const int SWITCH_PIN = 14;
State current;
const int LED_DELAY = 1000;

void setup() {
	current = LED_OFF;
	pinMode(LED_PIN, OUTPUT);
	pinMode(SWITCH_PIN, INPUT);
	Serial.begin(9600);
}

unsigned long lastChangeTime;
boolean timeDiff(unsigned long start, int specifiedDelay) {
	return (millis() - start >= specifiedDelay);
}

void ledOff() {
	digitalWrite(LED_PIN, LOW);
	int delay = getLEDDelay();
	if (timeDiff(lastChangeTime, delay))
		current = LED_ON;
	//Serial.println("ON");
}

void ledOn() {
	digitalWrite(LED_PIN, HIGH);
	int delay = getLEDDelay();
	if (timeDiff(lastChangeTime, delay))
		current = LED_OFF;
	//Serial.println("OFF");
}

int getLEDDelay(){
	int delay = LED_DELAY;
	if(digitalRead(SWITCH_PIN) == HIGH){
		delay /= 2;
		Serial.println("BUTTON");
	}
	return delay;
}

// The loop function is called in an endless loop
void loop() {
	State old = current;
	switch (current) {
	case LED_OFF:
		ledOff();
		break;
	case LED_ON:
		ledOn();
		break;
	}
	if (old != current)
		lastChangeTime = millis();


}

