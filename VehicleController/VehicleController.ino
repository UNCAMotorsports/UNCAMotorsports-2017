
#include "VCDefines.h"
#include "VC_GPS.h"
#include <i2c_t3.h>
#include <kinetis_flexcan.h>
#include <FlexCAN.h>

Adafruit_GPS* gpsPt;

FlexCAN CANBus(0);
CAN_message_t rxmsg, txmsg;

void setup(){
    
    Serial.begin(VC_SERIAL_BAUD);
    delay(100);
    Serial.print("UNCA Motorsports VCU Firmware Version ");
    delay(100);
    Serial.println(VC_FW_VERSION);

    // Set Pin Modes
    pinMode(PIN_START_CAR, INPUT);
    pinMode(PIN_BRAKE_IN, INPUT);
    pinMode(PIN_1PPS, INPUT_PULLUP);
    pinMode(PIN_3D_FIX, INPUT);
    pinMode(PIN_GPS_RST, OUTPUT);
    digitalWriteFast(PIN_GPS_RST, HIGH);
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

    pinMode(PIN_DAC_LATCH, OUTPUT);
    digitalWriteFast(PIN_DAC_LATCH, LOW);

    pinMode(PIN_CLOSE_AIR, OUTPUT);

    pinMode(PIN_BATT_SENSE, INPUT);

    

    analogReadResolution(12);

    // Init pins
    // Init sensors
    // Init state machine
    // Check Shutdown Circuit
    
    
    // Initialize CAN Bus
    CANBus.begin(VC_CAN_BAUD);

    // Initialize GPS Module
    gpsBegin();
    gpsPt = getGPS();
    Serial.println(F("GPS Initialized."));

    uint16_t battVal = analogRead(PIN_BATT_SENSE);
    Serial.print("Battery Voltage: ");
    Serial.print(battVal / 4095.0 / (2.2 / 12.2));
    Serial.println("V");

    // Initialize I2C Bus
    Serial.println("I2C Bus 0: ");
    Wire.begin(I2C_MASTER, 0, I2C_PINS_18_19, I2C_PULLUP_INT, I2C_RATE_400);
    scanI2CBus(&Wire);

    Serial.println("I2C Bus 1: ");
    Wire1.begin(I2C_MASTER, 0, I2C_PINS_37_38, I2C_PULLUP_EXT, I2C_RATE_400);
    scanI2CBus(&Wire1);
}

void loop(){

    checkIncomingBytes();
    if (CANBus.available()){
        CANBus.read(rxmsg);

        switch (rxmsg.id){

        }
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
    if (Serial.available())
        if (Serial.read() == 'v'){
            Serial.print("UNCA Motorsports VCU Firmware Version ");
            Serial.println(VC_FW_VERSION);
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