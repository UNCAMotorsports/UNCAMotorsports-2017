// VC_Timers.h

#ifndef _VC_TIMERS_h
#define _VC_TIMERS_h

#if defined(ARDUINO) && ARDUINO >= 100
	#include "Arduino.h"
#else
	#include "WProgram.h"
#endif

#define TIMEOUT_THROTTLE    (100)                   // Timeout throttle after 100ms
#define TIMEOUT_BRAKE       (100)                   // Timeout brake after 100ms

#define MSG_RATE_GPS        (10)                    // GPS will send a message at 10Hz

extern uint32_t throttleTimer;
extern uint32_t brakeTimer;

extern volatile uint8_t gpsFlag;

#endif