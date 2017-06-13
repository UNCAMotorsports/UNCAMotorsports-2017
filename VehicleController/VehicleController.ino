
#include "VCDefines.h"
#include "VC_GPS.h"
#include <i2c_t3.h>
#include <kinetis_flexcan.h>
#include <FlexCAN.h>


Adafruit_GPS* gpsPt;

FlexCAN CANBus(VC_CAN_BAUD);
CAN_message_t rxmsg, txmsg;

void setup(){
    
    Serial.begin(VC_SERIAL_BAUD);
    Serial.print("UNCA Motorsports VCU Firmware Version ");
    Serial.println(VC_FW_VERSION);
    delay(1000);

    // Set Pin Modes
    pinMode(PIN_START_CAR, INPUT);
    pinMode(PIN_BRAKE_IN, INPUT);
    pinMode(PIN_1PPS, INPUT);
    pinMode(PIN_3D_FIX, INPUT);
    pinMode(PIN_GPS_RST, OUTPUT);
    pinMode(PIN_IMD_F, INPUT);
    pinMode(PIN_AMS_F, INPUT);

    pinMode(PIN_12V_0, OUTPUT);
    pinMode(PIN_12V_1, OUTPUT);
    pinMode(PIN_12V_2, OUTPUT);
    pinMode(PIN_12V_3, OUTPUT);

    pinMode(PIN_5V_0, OUTPUT);
    pinMode(PIN_5V_1, OUTPUT);
    pinMode(PIN_5V_2, OUTPUT);
    pinMode(PIN_5V_3, OUTPUT);

    pinMode(PIN_CLOSE_AIR, OUTPUT);


    // Init pins
    // Init sensors
    // Init state machine
    // Check Shutdown Circuit
    gpsBegin();
    gpsPt = getGPS();
    Serial.println(F("GPS Initialized."));
}

void loop(){

    readGPS();
    gpsTask();
    // Read CAN message
        // Handle CAN message

    // Anything changed?
        // Update Filter Measurements

    // Any Timeouts?
        // Handle Timeout

    // Compute New(est) state

    // Every 1ms:
        // Update Control Loop
        // Update Throttle
    delay(1);
}