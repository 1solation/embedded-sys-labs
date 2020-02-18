
#include "button.h"
#include <vector>
#include <Preferences.h>

Button* button = NULL;
int hCounter, nCounter;
unsigned long crntTime;
unsigned long oldTime;
ButtonState btnCurrent;
const int SWITCH_PIN = 19;
std::vector<long> arrout = {};
long out;
Preferences preferences;

void setup() {
Serial.begin(9600);
crntTime = millis();
oldTime = 1;

button = new Button(SWITCH_PIN);
preferences.begin("hScore", false);

hCounter = preferences.getUInt("counter", 0);
}

void loop() {

	ButtonState btnRead = button->checkState();
	if(btnRead != btnCurrent){
					btnCurrent = btnRead;
					switch (btnCurrent) {
					case ButtonState::ON:
						Serial.print("Click");
						arrout.push_back(millis());
						nCounter++;
						break;
					case ButtonState::OFF:
						break;
					}
		}


	if ((crntTime - oldTime) > 10000){
		Serial.println("Past 10 sec's");
		Serial.print("Curernt Presees");
		Serial.println(nCounter);
		Serial.print("Curernt High score");
		Serial.println(hCounter);
		oldTime = crntTime;
		if(!arrout.empty()){


			if(nCounter > hCounter){

				Serial.print("New High Score ");
				Serial.println(nCounter);
				preferences.putUInt("counter", nCounter);
				hCounter = preferences.getUInt("counter", 0);
			}

			for (int i = 0; i != arrout.size(); i++){
					 out = millis() - arrout[i];
						Serial.print(out);
						Serial.println(":ago");
					}
			arrout.clear();
			nCounter = 0;
		}

	}
	crntTime = millis() - 1000;


}
