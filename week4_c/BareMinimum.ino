
#include "button.h"
#include <vector>
Button* button = NULL;
int counter;
unsigned long crntTime;
unsigned long oldTime;
ButtonState btnCurrent;
const int SWITCH_PIN = 19;
std::vector<long> arrout = {};
long out;

void setup() {
Serial.begin(9600);
crntTime = millis();
oldTime = 1;

button = new Button(SWITCH_PIN);

counter = 0;
}

void loop() {



	ButtonState btnRead = button->checkState();
	if(btnRead != btnCurrent){
					btnCurrent = btnRead;
					switch (btnCurrent) {
					case ButtonState::ON:
						Serial.print("Click");
						arrout.push_back(millis());
						break;
					case ButtonState::OFF:
						break;
					}
		}


	if ((crntTime - oldTime) > 10000){
		Serial.println("Past 10 sec's: Button Presses");

		oldTime = crntTime;
		if(!arrout.empty()){
			for (int i = 0; i != arrout.size(); i++){
					 out = millis() - arrout[i];
						Serial.print(out);
						Serial.println(":ago");
					}
			arrout.clear();
		}

	}
	crntTime = millis() - 1000;


}
