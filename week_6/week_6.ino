#include "Arduino.h"
#include "HttpClient.h"

const char* PASS = "cjry3646";
const char* SSID = "JcPhone";

void setup() {
	Serial.begin(115200);

	Serial.print("Connecting to ");
	Serial.println(SSID);
	WiFi.begin(SSID, PASS);

	//THIS PART WOULD HAVE TO BE MORE SOPHISTICATED IN CW
	while (WiFi.status() != WL_CONNECTED) {
		delay(250);
		Serial.print(".");
	}

	Serial.print("Connected as : ");
	Serial.println(WiFi.localIP());
	HTTP();

}
void HTTP() {
	const char* HOST = "www.google.com";
	String id = "q";
	String val = "esp32";
	String id2 = "as_qdr";
	String val2 = "m";
	String url = "/search?";

	url.concat(id);
	url.concat("=");
	url.concat(val);
	url.concat("&");
	url.concat(id2);
	url.concat("=");
	url.concat(val2);

	WiFiClient client;

	if (!client.connect(HOST, 80)) {
		Serial.println("connection failed");
		return;
	}

	Serial.print("GET ");
	Serial.print(HOST);
	Serial.println(url);

	client.print("GET ");
	client.print(url);
	client.println(" HTTP/1.1");
	client.print("Host: ");
	client.println(HOST);
	client.println();

	const int TIMEOUT = 10000;

	long timing = millis();
	Serial.println("Waiting for response");
	while (client.available() == 0) {
		// wait for response
		if (millis() - timing > TIMEOUT) {
			Serial.println("Timed out waiting for client");
			client.stop();
			break;
		} else {
			delay(100);
			Serial.print(".");
		}
	}

	char buff[200];
	while (client.available()) {
		// get response, dump to console
		int len = client.readBytes(buff, 199);
		buff[len] = '\0';
		Serial.println(buff);
	}

	if (client.connected())
		client.stop();

}

void loop() {

}
