/* UNC Asheville Motorsports 2016 test mule code */

#include <Arduino.h>
#include <SPI.h>
#include <kinetis_flexcan.h>
#include <FlexCAN.h>
#include <i2c_t3.h>

#include "MuleDefines.h"
#include "DAC_MCP49xx.h"


/* ---------------------------------------------------------------------------- +
 *
 *      Set up the multi-rate main loop timer
 *
 * ---------------------------------------------------------------------------- */
#define TIMER_RATE          (1000)                  // Check the timer every 1 millisecond
#define THROTTLE_TIMEOUT    (100)                   // Timeout throttle after 100ms    
#define STEERING_TIMEOUT    (100)                   // Timeout steering after 100ms
#define RPM_TIMEOUT         (100)
#define DRIVE_COMPUTE_TIMER (10)

IntervalTimer loopTimer;
uint32_t throttleTimer = THROTTLE_TIMEOUT;
uint32_t steeringTimer = STEERING_TIMEOUT;
uint32_t leftRPMTimer = RPM_TIMEOUT;
uint32_t rightRPMTimer = RPM_TIMEOUT;

uint32_t torqueVectorTimer = DRIVE_COMPUTE_TIMER;

// Runs in an interrupt and sets the flags for our multi-rate main loop
void multiRateISR(){
    if (throttleTimer) throttleTimer--;
    if (steeringTimer) steeringTimer--;
    if (torqueVectorTimer) torqueVectorTimer--;
}
/* ---------------------------------------------------------------------------- */

DAC_MCP49xx dac0(DAC_MCP49xx::MCP4921, CS_DAC0);
DAC_MCP49xx dac1(DAC_MCP49xx::MCP4921, CS_DAC1);

FlexCAN CANBus(1000000);

CAN_message_t rxmsg;

int16_t leftThrottle = 0;
int16_t rightThrottle = 0;

uint16_t requestedThrottle;
uint16_t steeringVal;
uint16_t leftRPM;
uint16_t rightRPM;

float steerAngle = 0.0;
float tanSteer = 0.0;

bool throttleError = false;
bool steeringError = false;

void setup()
{
    // Set pin modes
    pinMode(CS_FLASH, OUTPUT);
    pinMode(CS_DAC0, OUTPUT);
    pinMode(CS_DAC1, OUTPUT);
    pinMode(CS_SD, OUTPUT);
    pinMode(LATCH_PIN, OUTPUT);

    // Set the default states for the various pins we're using
    digitalWriteFast(CS_FLASH, HIGH);
    digitalWriteFast(CS_DAC0, HIGH);
    digitalWriteFast(CS_DAC1, HIGH);
    digitalWriteFast(CS_SD, HIGH);

    digitalWriteFast(LATCH_PIN, LOW);   // LOW if you want the DAC values to change immediately.

    // Start Serial Communications with a host computer
    Serial.begin(250000);
    delay(1000);

    // Set Up DACs
    dac0.setSPIDivider(SPI_CLOCK_DIV8);
    dac1.setSPIDivider(SPI_CLOCK_DIV8);
    dac0.setPortWrite(false);
    dac1.setPortWrite(false);
    dac0.output(0);
    dac1.output(0);

    // Set up ADCs
    analogReadResolution(12);
    analogReadAveraging(4);


    // Start datalogging
    #ifdef LOGGING
        sdLogger.startBinLogger();
    #endif

    CANBus.begin();
    loopTimer.begin(multiRateISR, TIMER_RATE);        // Start the main loop timer
    while (!CANBus.available()){
        // Wait until we get at least one CAN message, so we know we've booted up.
    }

}

/* ---------------------------------------------------------------------------- +
*       Main Loop
*  ---------------------------------------------------------------------------- */
void loop()
{
    // Only pull one CAN message per loop
    if (CANBus.available())
    {
        CANBus.read(rxmsg);

        switch (rxmsg.id) {
        case THROTTLE_ID: throttleTask(&rxmsg); throttleTimer = THROTTLE_TIMEOUT; break;
        case STEERING_ID: steeringTask(&rxmsg); steeringTimer = STEERING_TIMEOUT; break;
        case LEFT_RPM_ID: leftRPMTask(&rxmsg); leftRPMTimer = RPM_TIMEOUT; break;
        case RIGHT_RPM_ID: rightRPMTask(&rxmsg); rightRPMTimer = RPM_TIMEOUT; break;
        }
    }
    
    if (throttleTimer == 0)
    {
        if (throttleError == false){
            requestedThrottle = 0;
            dac0.output(requestedThrottle);
            dac1.output(requestedThrottle);
            throttleError = true;
            #ifdef DEBUG_THROTTLE
                        Serial.println("Error:\tThrottle timeout!");
            #endif
        }
    }

    if (steeringTimer == 0 && DIFFERENTIAL_MODE != diffModeNone)
    {
        if (steeringError == false){
            DIFFERENTIAL_MODE = diffModeNone;
            steeringError = true;
            #ifdef DEBUG_STEERING
                        Serial.println("Error:\tSteering Timeout!");
            #endif
        }
    }

    if (DIFFERENTIAL_MODE == diffModeClosedLoop && (leftRPMTimer == 0 || rightRPMTimer == 0))
    {
        DIFFERENTIAL_MODE = diffModeOpenLoop;
    }

    if (torqueVectorTimer == 0)
    {
        calculateDifferentialSteering();
    }
    #ifdef DEBUG_PROFILING
        profiler = micros() - profiler;
        Serial.print("Loop Time: ");
        Serial.println(profiler);
    #endif
}

/* ---------------------------------------------------------------------------- */
void leftRPMTask(const struct CAN_message_t *msg){
    leftRPM = msg->buf[0] << 8 | msg->buf[1];
}

void rightRPMTask(const struct CAN_message_t *msg){
    rightRPM = msg->buf[0] << 8 | msg->buf[1];
}

void steeringTask(const struct CAN_message_t *msg){
    steeringVal = msg->buf[0] << 8 | msg->buf[1];
}

void throttleTask(const struct CAN_message_t *msg){
    requestedThrottle = msg->buf[0] << 8 | msg->buf[1];
}
/* ---------------------------------------------------------------------------- */

// Calculates how much throttle each wheel gets based on the throttle and steering positions
void calculateDifferentialSteering(){
    switch (DIFFERENTIAL_MODE)
    {
    case diffModeNone:
        leftThrottle = requestedThrottle;
        rightThrottle = requestedThrottle;
        break;

    case diffModeOpenLoop:
    {
        rightThrottle = requestedThrottle + requestedThrottle * .5 * TRACK_TO_WHEEL * tanSteer;
        leftThrottle = requestedThrottle - requestedThrottle * .5 * TRACK_TO_WHEEL * tanSteer;

        #ifdef DEBUG_THROTTLE
                Serial.printf("Delta: %f\n", requestedThrottle * .5 * TRACK_TO_WHEEL * tanSteer);
        #endif

        double ratio = 1.0;
        if (rightThrottle > 4095){
            ratio = 4095.0 / rightThrottle;
        }
        else if (leftThrottle > 4095){
            ratio = 4095.0 / leftThrottle;
        }

        rightThrottle *= ratio;
        leftThrottle *= ratio;

        // The throttles should already be constrained by the above calculation, but just to make sure...
        rightThrottle = simple_constrain(rightThrottle, 0, 4095);
        leftThrottle = simple_constrain(leftThrottle, 0, 4095);
        break;
    }
    case diffModeClosedLoop:
        float vehicleSpeed = RPM_TO_RADS((leftRPM + rightRPM) / 2.0);
        float dOmega = TRACK_TO_WHEEL*tan(radians((steeringVal - STEERING_CENTER)*DEG_PER_VAL))*vehicleSpeed;
        break;
    }
}