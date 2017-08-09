// 
// 
// 

#include "VC_VarStore.h"

static uint16_t throttleVal;
static uint16_t brakeVal;

void setThrottle(uint16_t val)
{
	static int i = 0;
	if (i >= 25) {
		i = 0;
		Serial.println(val);

	}
	i++;
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