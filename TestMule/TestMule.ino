/* UNC Asheville Motorsports 2016 test mule code */

#include <kinetis_flexcan.h>
#include <FlexCAN.h>
#include <i2c_t3.h>
#include <Arduino.h>
#include "MuleDefines.h"
#include "DAC_MCP49xx.h"
#include "DataLogger.h"
#include "MuleThrottle.h"


/* ---------------------------------------------------------------------------- +
 *
 *      Set up the multi-rate main loop timer
 *
 * ---------------------------------------------------------------------------- */
#define TIMER_RATE          (1000)                          // Check the timer every 1 millisecond
#define RPM_RATE            (TIMER_RATE / 200)             // How often to check if we've stopped getting RPM readings
#define THROTTLE_RATE       (TIMER_RATE / 200)             // Read throttle at 200Hz
#define STEERING_RATE       (TIMER_RATE / 200)             // Read steering at 200Hz
#define LOGGING_RATE        (TIMER_RATE / 200)             // Create data entries at 200Hz (10-entry FIFO)

bool rpm_flag = false;
bool throttle_flag = false;
bool steering_flag = false;
bool logging_flag = false;

IntervalTimer loopTimer;
uint32_t timer = 0;
uint32_t globalClock = 0;

// Runs in an interrupt and sets the flags for our multi-rate main loop
void multiRateISR(){
    
    timer++;
    globalClock++;

    //if (timer % THROTTLE_RATE == 0) { throttle_flag = true; }
    if (timer % STEERING_RATE == 0) { steering_flag = true; }
    if (timer % RPM_RATE == 0)      { rpm_flag = true; }
    if (timer % LOGGING_RATE == 0)  { logging_flag = true; }
    if (timer >= TIMER_RATE)        { timer = 0; }
}
/* ---------------------------------------------------------------------------- */

DAC_MCP49xx dac0(DAC_MCP49xx::MCP4921, CS_DAC0);
DAC_MCP49xx dac1(DAC_MCP49xx::MCP4921, CS_DAC1);

uint32_t lastThrottle = 0;
uint32_t lastSteering = 0;
uint32_t lastLeftRPM = 0;
uint32_t lastRightRPM = 0;

FlexCAN CANBus(1000000);

static CAN_message_t rxmsg;

DataLogger sdLogger;
MuleThrottle throttle;
int16_t leftThrottle = 0;
int16_t rightThrottle = 0;
uint16_t requestedThrottle = 0;

uint32_t lastTime;

float steerAngle = 0.0;
float tanSteer = 0.0;

void setup()
{
    // Set pin modes
    pinMode(CS_FLASH, OUTPUT);
    pinMode(CS_DAC0, OUTPUT);
    pinMode(CS_DAC1, OUTPUT);
    pinMode(CS_SD, OUTPUT);
    pinMode(LATCH_PIN, OUTPUT);

    pinMode(LEFT_ENC_PIN, INPUT_PULLUP);
    pinMode(RIGHT_ENC_PIN, INPUT_PULLUP);

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

    lastTime = micros();
}

uint16_t CANtoDEC(uint8_t* arr){
    return (uint32_t)arr[0] << 8 | arr[1];
}

/* ---------------------------------------------------------------------------- +
*       Main Loop
*  ---------------------------------------------------------------------------- */
void loop()
{
    if (CANBus.available())
    {
        while (CANBus.read(rxmsg)){
            switch (rxmsg.id) {
                case THROTTLE_ID: throttleTask(rxmsg); lastThrottle = globalClock; break;
                //case STEERING_ID: steeringTask(rxmsg); break;
                case LEFT_RPM_ID: leftRPMTask(rxmsg); break;
                case RIGHT_RPM_ID: rightRPMTask(rxmsg); break;
            }
        }
    }
    if (globalClock - lastThrottle > 100){
        requestedThrottle = 0;
        dac0.output(requestedThrottle);
        dac1.output(requestedThrottle);
#ifdef DEBUG_THROTTLE        
        Serial.println("Missing throttle messages!");
#endif
        lastThrottle = globalClock;
    }
#ifdef DEBUG_PROFILING
    profiler = micros() - profiler;
    Serial.print("Loop Time: ");
    Serial.println(profiler);
#endif
}
/* ---------------------------------------------------------------------------- */

void leftRPMTask(struct CAN_message_t msg){
    uint16_t leftRPM = msg.buf[0] << 8 | msg.buf[1];
}

void rightRPMTask(struct CAN_message_t msg){
    uint16_t rightRPM = msg.buf[0] << 8 | msg.buf[1];
}

/* ---------------------------------------------------------------------------- +
*   Find the tangent of the steering angle
* ---------------------------------------------------------------------------- */
void steeringTask(struct CAN_message_t msg){

    uint16_t steeringVal = msg.buf[0] << 8 | msg.buf[1];
    steerAngle = (steeringVal - STEERING_CENTER) * RAD_PER_VAL;

#ifdef DEBUG_STEERING

    Serial.printf("Raw Steering: %d\tSteer Angle: %0.2f\n", steeringPot0, steerAngle);
#endif

    tanSteer = tan(radians(steerAngle));
}
/* ---------------------------------------------------------------------------- */


/* ---------------------------------------------------------------------------- +
*   Poll the throttle sensor and calculate the differential action to each wheel
* ---------------------------------------------------------------------------- */
void throttleTask(struct CAN_message_t msg){

#ifdef DEBUG_PROFILING
    uint16_t profiler = micros();
#endif

    if (msg.buf[0] & (1 << 7)) {
        requestedThrottle = 0;
    }
    else {
        requestedThrottle = msg.buf[0] << 8 | msg.buf[1];
    }

#ifdef DEBUG_THROTTLE
    Serial.printf("\tRequested: %d\n", requestedThrottle);
#endif
    
    if (requestedThrottle < 75)     // Filter the lowest values so the car doesn't crawl
        requestedThrottle = 0;

    switch (DIFFERENTIAL_MODE)
    {
    case 0:
        leftThrottle = requestedThrottle;
        rightThrottle = requestedThrottle;
        break;

    case 1:
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

#ifdef DEBUG_THROTTLE
    Serial.printf("Left Throttle: %d\tRight Throttle: %d\n", leftThrottle, rightThrottle);
#endif
    // Write to the DACs
    dac0.output(leftThrottle);
    dac1.output(rightThrottle);

#ifdef DEBUG_PROFILING
    profiler = micros() - profiler;
    Serial.print("Throttle Time: ");
    Serial.println(profiler);
#endif
}