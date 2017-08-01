#include <EEPROM.h>
#include "VC_Timers.h"
#include "VC_VarStore.h"
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

IntervalTimer msTimer;

vc_state_type state = VC_INIT_STATE;

void msTimerISR() {
    if (throttleTimer) throttleTimer--;
    if (brakeTimer) brakeTimer--;
}

void setup(){

    // Increment & store the number of times the device has started
    uint16_t numStartups = EEPROM.read(EEPROM_STARTUP_INDEX) << 8 | EEPROM.read(EEPROM_STARTUP_INDEX + 1);
    numStartups++;
    EEPROM.write(EEPROM_STARTUP_INDEX, numStartups >> 8);   // MSB
    EEPROM.write(EEPROM_STARTUP_INDEX + 1, numStartups & 0xff); // LSB

    // Set Pin Modes
    pinMode(PIN_START_CAR, INPUT_PULLUP);
    pinMode(PIN_BRAKE_IN, INPUT);
    pinMode(PIN_1PPS, INPUT);
    pinMode(PIN_3D_FIX, INPUT);
    pinMode(PIN_IMD_F, INPUT);
    pinMode(PIN_AMS_F, INPUT);
    pinMode(PIN_BATT_SENSE, INPUT);

    pinMode(PIN_FAULT_L1, INPUT);
    pinMode(PIN_FAULT_L2, INPUT);
    pinMode(PIN_FAULT_R1, INPUT);
    pinMode(PIN_FAULT_R2, INPUT);

    // Set 12V Output Pin initial state
    pinMode(PIN_12V_0, OUTPUT);
    pinMode(PIN_12V_1, OUTPUT);
    pinMode(PIN_12V_2, OUTPUT);
    pinMode(PIN_12V_3, OUTPUT);

    digitalWriteFast(PIN_12V_0, LOW);
    digitalWriteFast(PIN_12V_1, LOW);
    digitalWriteFast(PIN_12V_2, LOW);
    digitalWriteFast(PIN_12V_3, LOW);

    // Set 5V Output Pin initial state
    pinMode(PIN_5V_0, OUTPUT);
    pinMode(PIN_5V_1, OUTPUT);
    pinMode(PIN_5V_2, OUTPUT);
    pinMode(PIN_5V_3, OUTPUT);

    digitalWriteFast(PIN_5V_0, LOW);
    digitalWriteFast(PIN_5V_1, LOW);
    digitalWriteFast(PIN_5V_2, LOW);
    digitalWriteFast(PIN_5V_3, LOW);

    // DAC Latch is Active LOW, but is actually NC
    pinMode(PIN_DAC_LATCH, OUTPUT);
    digitalWriteFast(PIN_DAC_LATCH, LOW);

    // CLOSE_AIR controls the +AIR (powered from TSMS)
    pinMode(PIN_CLOSE_AIR, OUTPUT);
    digitalWriteFast(PIN_CLOSE_AIR, LOW);

    // GPS Reset is active low, so make sure we're out of RESET
    pinMode(PIN_GPS_RST, OUTPUT);
    digitalWriteFast(PIN_GPS_RST, HIGH);

    // Precharge is a relay coil, powered by a low side N-FET.  Active HIGH
    pinMode(PIN_PRECHARGE, OUTPUT);
    digitalWriteFast(PIN_PRECHARGE, LOW);

    // Controls the shutdown circuit via high side driver.  Active HIGH
    pinMode(PIN_SHUTDOWN_CTRL, OUTPUT);
    digitalWriteFast(PIN_SHUTDOWN_CTRL, LOW);

    // SENTRAL/Sensor Fusion interrupt.  Not connected due to board mistake.
    pinMode(PIN_IMU_INT, INPUT);

    pinMode(PIN_BATT_SENSE, INPUT);
    pinMode(PIN_SHUTDOWN_CURRENT, INPUT);


    analogReadResolution(12);

    Serial.begin(VC_SERIAL_BAUD);
    Serial.print("UNCA Motorsports VCU Firmware Version ");
    Serial.println(VC_FW_VERSION);

    uint16_t battVal = analogRead(PIN_BATT_SENSE);
    Serial.print("Battery Voltage: ");
    Serial.print(battVal*battVal*0.000003 - 0.0073*battVal + 11.738);   // Calculated from curve regression test
    Serial.println("V");

    // Let's wait a bit to make sure the Serial monitor etc catch up.
    delay(1000);
    
    // Initialize CAN Bus
    CANBus.begin(VC_CAN_BAUD);

    // Initialize GPS Module
    gpsBegin();
    gpsPt = getGPS();

    // Initialize I2C Busses
    // Start the Sensor Fusion bus
    Wire.begin(I2C_MASTER, 0, I2C_PINS_18_19, I2C_PULLUP_INT, I2C_RATE_400);
#ifdef DEBUG_I2C
    Serial.println("I2C Bus 0: ");
    scanI2CBus(&Wire);
    Serial.println("Done scanning bus 0.");
#endif

    // Start the DAC bus
    Wire1.begin(I2C_MASTER, 0, I2C_PINS_37_38, I2C_PULLUP_EXT, I2C_RATE_400);
#ifdef DEBUG_I2C
    Serial.println("I2C Bus 1: ");
    scanI2CBus(&Wire1);
    Serial.println("Done scanning bus 1.");
#endif

    // Start communication to the DAC & zero the outputs
    myDAC.begin();
    myDAC.analogWrite(0, 0);

#ifdef DEBUG_STATE
    Serial.println("State: INIT_STATE");
#endif
    Serial.println("Waiting on CAN Bus");
    while (!CANBus.available()){
        checkIncomingBytes();
    }
    Serial.println("First CAN message received!");
}

void loop(){

    // Check for bytes waiting on the Serial connection (Primarily for debug purposes)
    checkIncomingBytes();

    if (CANBus.available()) {
        CANBus.read(rxmsg);
        handleCANMessage(&rxmsg);
    }

    gpsTask();

    if (state == VC_INIT_STATE) {
        
        // Start the car!
        if(digitalRead(PIN_START_CAR) == LOW){

            // Beep the beeper
            //digitalWriteFast(PIN_5V_0, HIGH);
            //delay(1500);
            //digitalWriteFast(PIN_5V_0, LOW);

            // Close the shutdown circuit, and precharge for 100ms
            digitalWriteFast(PIN_SHUTDOWN_CTRL, HIGH);
            digitalWriteFast(PIN_PRECHARGE, HIGH);
            delay(100);

            // Close AIR+
            digitalWriteFast(PIN_CLOSE_AIR, HIGH);
            digitalWriteFast(PIN_PRECHARGE, LOW);
            delay(100);

            msTimer.begin(msTimerISR, 1000); // Starts a 1ms timer interrupt
            state = VC_RUNNING_STATE;
#ifdef DEBUG_STATE
            Serial.println("State:  RUNNING_STATE");
#endif
        }
    }

    if (state == VC_RUNNING_STATE) {

        if (digitalRead(PIN_START_CAR) == HIGH) {
            digitalWriteFast(PIN_CLOSE_AIR, LOW);
            digitalWriteFast(PIN_SHUTDOWN_CTRL, LOW);
            msTimer.end();
            
            state = VC_INIT_STATE;
        }

        uint16_t tempThrottle = getThrottle();
        if (tempThrottle > 4095) {
            tempThrottle = 0;
            state = VC_ABORT_STATE;
        }
        myDAC.analogWrite(tempThrottle, tempThrottle);

        if (!throttleTimer) {
            state = VC_ABORT_STATE;
#ifdef DEBUG_STATE
            Serial.println("State:  ABORT_STATE");
#endif
            myDAC.analogWrite(0, 0);
            Serial.println("Throttle timeout!");
        }

        if (!brakeTimer) {
            state = VC_ABORT_STATE;
#ifdef DEBUG_STATE
            Serial.println("State:  ABORT_STATE");
#endif
            myDAC.analogWrite(0, 0);
            Serial.println("Brake timeout!");
        }
    }
}

// Called at the beginning of every loop
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

// Begins transmission for all available on a given i2c_t3 bus
// If a device reports back, this function will alert the user
void scanI2CBus(i2c_t3* buspt){
    int nDevices = 0;
    for (uint8_t i = 1; i < 127; i++){
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
}