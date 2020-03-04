#include "Arduino.h"
#include "HttpClient.h"

const char* PASS = "rteclrya";
const char* SSID = "Jamie";

WiFiServer server;

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

	//HTTP();

	server.begin(1337);

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
	WiFiClient client = server.available();
	if (client) {
		delay(100);
		handleClient(client);
		client.stop();
		Serial.println("--- Disconnected Client");
	}
}

void processRequest(const String& header) {
	if (header.indexOf("GET /helloworld") != -1) {
		Serial.println("Hello World!");
	}
}

void handleClient(WiFiClient& client) {
	Serial.println(client.remoteIP());
	String header;
	header.reserve(512);
	String currentLine;
	currentLine.reserve(196);

	while (client.connected()) {
		char c = client.read();
		if (c < 255) {
			Serial.print(c);
			header.concat(c);
			if (c == '\n') {
				// end of request - send response
				if (currentLine.length() == 0) {
					processRequest(header);
					sendHeaders(client);
					sendHTML(client);
				} else {
					currentLine = "";
				}
			} else if (c != '\r') {
				currentLine += c;
			}
		} else { // JUNK - Break out!
			break;
		}
	}
}

void sendHeaders(WiFiClient& client) {
	client.println("HTTP/1.1 200 OK");
	client.println("Content-type: text/html");
	client.println("Connection: close");
	client.println();
	client.println("<!DOCTYPE html>");
}

void sendHTML(WiFiClient& client) {
	client.println("<html>");
	client.println("<head><title>ESP Web Server</title></html>");
	client.println("<body>");
	client.println("<h1>Welcome to the ESP server!</h1>");
	client.print("<p> hasib is late </p> ");
	client.println("</body>");
	client.println("</html>");
	client.println();
}

