// 
// 
// 

#include "VC_VarStore.h"

static uint16_t throttleVal;
static uint16_t brakeVal;

void setThrottle(uint16_t val)
{
    throttleVal = val;
}

void setBrake(uint16_t val)
{
    brakeVal = val;
}

uint16_t getThrottle() {
    return throttleVal;
}

uint16_t getBrake() {
    return brakeVal;
}