// VC_VarStore.h

#ifndef _VC_VARSTORE_h
#define _VC_VARSTORE_h

#if defined(ARDUINO) && ARDUINO >= 100
	#include "Arduino.h"
#else
	#include "WProgram.h"
#endif


void setThrottle(uint16_t);
void setBrake(uint16_t);

uint16_t getThrottle();
uint16_t getBrake();

#endif

