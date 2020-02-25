#include "Arduino.h"
#include "SD.h"

const int CS_PIN = 5;

//The setup function is called once at startup of the sketch
void setup()
{

	Serial.begin(115200);
	SD.begin(CS_PIN);
	File file = SD.open("/testout.txt", FILE_WRITE);

	file.println("Yes, even... He could not fight against the Party any longer.Besides, the Party was in the right.It must be so; how could the immortal, collective brain be mistaken?By what external standard could you check its judgements? Sanity was statistical. Itwas merely a question of learning to think as they thought. Only----!");
	file.close();
	SD.end();
// Add your initialization code here
}

// The loop function is called in an endless loop
void loop()
{



//Add your repeated code here
}
