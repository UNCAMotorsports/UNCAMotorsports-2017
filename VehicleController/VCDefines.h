#pragma once

// Comment or remove these definitions to stop respective debug code from being compiled
//+
//#define DEBUG_I2C
#define DEBUG_STATE
//#define DEBUG_NO_TIMEOUTS
//#define DEBUG_GPS
#define DEBUG_THROTTLE
//#define DEBUG_RPM
//#define DEBUG_STEERING
//#define DEBUG_PROFILING
//#define LOGGER_DEBUG
//#define LOGGING

// Teensy's max and min macros use non-standard gnu extensions... these are simpler for integers etc.
#define simple_max(a,b) (((a)>(b)) ? (a) : (b))
#define simple_min(a,b) (((a)<(b)) ? (a) : (b))
#define simple_constrain(amt,low,high) (((amt)<(low)) ? (low) : ((amt > high) ? (high) : (amt)))

#define VC_FW_VERSION   ("0.7")
#define VC_CAN_BAUD     (1000000)
#define VC_SERIAL_BAUD  (250000)

#define EEPROM_STARTUP_INDEX    (0)

// Pin Definitions
#define PIN_START_CAR   (0)     // Input
#define PIN_CANTX       (3)
#define PIN_CANRX       (4)
#define PIN_BRAKE_IN    (5)     // Input
#define PIN_1PPS        (6)     // Input
#define PIN_GPSTX       (7)
#define PIN_GPSRX       (8)
#define PIN_3D_FIX      (9)     // Input
#define PIN_GPS_RST     (10)    // Output
#define PIN_IMD_F       (11)    // Input
#define PIN_AMS_F       (12)    // Input

#define PIN_GLV_CURRENT (13)    // Input    - Should have been Analog.  Oops.

#define PIN_FAULT_R2    (14)    // Input
#define PIN_FAULT_R1    (15)    // Input
#define PIN_FAULT_L2    (16)    // Input
#define PIN_FAULT_L1    (17)    // Input

#define PIN_12V_3       (24)    // Output
#define PIN_12V_2       (25)    // Output
#define PIN_12V_1       (26)    // Output
#define PIN_12V_0       (27)    // Output

#define PIN_5V_3        (28)    // Output
#define PIN_5V_2        (29)    // Output
#define PIN_5V_1        (30)    // Output
#define PIN_5V_0        (31)    // Output

#define PIN_CLOSE_AIR   (32)    // Output
#define PIN_PRECHARGE   (33)    // Output
#define PIN_IMU_INT     (35)    // Input
#define PIN_SHUTDOWN_CTRL (36)    // Output

#define PIN_SCL1        (37)    // Open Drain
#define PIN_SDA1        (38)    // Open Drain
#define PIN_SDA0        (18)    // Open Drain
#define PIN_SCL0        (19)    // Open Drain

#define PIN_DAC_LATCH   (39)    // Output

#define PIN_BATT_SENSE          (A21)
#define PIN_SHUTDOWN_CURRENT    (A22)


typedef enum {
    VC_INIT_STATE,
    VC_RUNNING_STATE,
    VC_ABORT_STATE
} vc_state_type;