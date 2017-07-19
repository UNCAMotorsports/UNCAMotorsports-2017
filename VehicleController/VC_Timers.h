// VC_Timers.h

#ifndef _VC_TIMERS_h
#define _VC_TIMERS_h

#if defined(ARDUINO) && ARDUINO >= 100
	#include "Arduino.h"
#else
	#include "WProgram.h"
#endif

#define THROTTLE_TIMEOUT    (100)                   // Timeout throttle after 100ms
#define BRAKE_TIMEOUT       (100)                   // Timeout brake after 100ms

extern uint32_t throttleTimer;
extern uint32_t brakeTimer;

#endif