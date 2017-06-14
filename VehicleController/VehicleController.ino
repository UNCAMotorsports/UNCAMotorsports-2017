
#include "VC_CAN.h"
#include "VCDefines.h"
#include "VC_GPS.h"
#include <i2c_t3.h>
#include <kinetis_flexcan.h>

#include <mcp47FEB22.h>

Adafruit_GPS* gpsPt;

FlexCAN CANBus(0);
CAN_message_t rxmsg, txmsg;

mcp47FEB22 myDAC(0);

void setup(){
    
    analogReadResolution(12);

    Serial.begin(VC_SERIAL_BAUD);
    Serial.print("UNCA Motorsports VCU Firmware Version ");
    Serial.println(VC_FW_VERSION);

    uint16_t battVal = analogRead(PIN_BATT_SENSE);
    Serial.print("Battery Voltage: ");
    Serial.print(battVal*battVal*0.000003 - 0.0073*battVal + 11.738);   // Made with 
    Serial.println("V");

    // Set Pin Modes
    pinMode(PIN_START_CAR, INPUT);
    pinMode(PIN_BRAKE_IN, INPUT);
    pinMode(PIN_1PPS, INPUT_PULLUP);
    pinMode(PIN_3D_FIX, INPUT);
    pinMode(PIN_IMD_F, INPUT);
    pinMode(PIN_AMS_F, INPUT);
    pinMode(PIN_BATT_SENSE, INPUT);

    pinMode(PIN_GPS_RST, OUTPUT);

    pinMode(PIN_12V_0, OUTPUT);
    pinMode(PIN_12V_1, OUTPUT);
    pinMode(PIN_12V_2, OUTPUT);
    pinMode(PIN_12V_3, OUTPUT);

    digitalWriteFast(PIN_12V_0, LOW);

    pinMode(PIN_5V_0, OUTPUT);
    pinMode(PIN_5V_1, OUTPUT);
    pinMode(PIN_5V_2, OUTPUT);
    pinMode(PIN_5V_3, OUTPUT);

    pinMode(PIN_DAC_LATCH, OUTPUT);
    pinMode(PIN_CLOSE_AIR, OUTPUT);

    digitalWriteFast(PIN_GPS_RST, HIGH);
    digitalWriteFast(PIN_DAC_LATCH, LOW);

    digitalWriteFast(PIN_12V_0, LOW);
    digitalWriteFast(PIN_12V_1, LOW);
    digitalWriteFast(PIN_12V_2, LOW);
    digitalWriteFast(PIN_12V_3, LOW);

    digitalWriteFast(PIN_5V_0, LOW);
    digitalWriteFast(PIN_5V_1, LOW);
    digitalWriteFast(PIN_5V_2, LOW);
    digitalWriteFast(PIN_5V_3, LOW);

    delay(1000);
    // Init pins
    // Init sensors
    // Init state machine
    // Check Shutdown Circuit
    
    
    // Initialize CAN Bus
    CANBus.begin(VC_CAN_BAUD);

    // Initialize GPS Module
    gpsBegin();
    gpsPt = getGPS();




    // Initialize I2C Bus

    Wire.begin(I2C_MASTER, 0, I2C_PINS_18_19, I2C_PULLUP_INT, I2C_RATE_400);
#ifdef DEBUG_I2C
    Serial.println("I2C Bus 0: ");
    scanI2CBus(&Wire);
#endif


    Wire1.begin(I2C_MASTER, 0, I2C_PINS_37_38, I2C_PULLUP_EXT, I2C_RATE_400);
#ifdef DEBUG_I2C
    Serial.println("I2C Bus 1: ");
    scanI2CBus(&Wire1);
#endif

    myDAC.begin();
    myDAC.analogWrite(0, 0);
}

void loop(){

    checkIncomingBytes();

    if (CANBus.available()){
        CANBus.read(rxmsg);
        handleCANMessage(&rxmsg);
    }

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
}

void checkIncomingBytes(){
    if (Serial.available()){
        char in = Serial.read();
        switch (in){
        case 'v':
            Serial.print("UNCA Motorsports VCU Firmware Version ");
            Serial.println(VC_FW_VERSION);
            break;
        case 'b':
            uint16_t battVal = analogRead(PIN_BATT_SENSE);
            Serial.print("Battery Voltage: ");
            Serial.print(battVal*battVal*0.000003 - 0.0073*battVal + 11.738);
            Serial.println("V");
            break;
        }
        Serial.clear(); // Only accept one command per transaction.
    }
}

void scanI2CBus(i2c_t3* buspt){
    int nDevices = 0;
    for (uint8_t i = 0; i < 127; i++){
        buspt->beginTransmission(i);
        byte error = buspt->endTransmission();

        if (error == 0){
            Serial.print("I2C Device Found at address 0x");
            if (i < 16)
                Serial.print("0");
            Serial.print(i, HEX);
            Serial.println("!");
            nDevices++;
        }

        else if (error == 4){
            Serial.print("Unknown error at address 0x");
            if (i < 16)
                Serial.print("0");
            Serial.println(i, HEX);
        }
    }
    if (nDevices == 0)
        Serial.println("No I2C Devices found.");
    else
        Serial.println("Done.");
}