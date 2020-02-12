#include "Arduino.h"
//The setup function is called once at startup of the sketch
int LED_PINR = 13;
int LED_PINB = 14;
int LED_PING = 15;


void setup()
{
	pinMode(LED_PINR, OUTPUT);
	pinMode(LED_PINB, OUTPUT);
	pinMode(LED_PING, OUTPUT);
}

// The loop function is called in an endless loop
void loop()
{
	digitalWrite(LED_PINR, HIGH);
	delay(1000);
	digitalWrite(LED_PINR, LOW);

	digitalWrite(LED_PINB, HIGH);
	delay(1000);
	digitalWrite(LED_PINB, LOW);

	digitalWrite(LED_PING, HIGH);
	delay(1000);
	digitalWrite(LED_PING, LOW);


}
