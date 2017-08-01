// 
// 
// 

#include "VC_Timers.h"

uint32_t throttleTimer = TIMEOUT_THROTTLE;
uint32_t brakeTimer = TIMEOUT_BRAKE;

volatile uint8_t gpsFlag = false;