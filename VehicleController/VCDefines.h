#pragma once

#define VC_FW_VERSION   ("0.1")
#define VC_CAN_BAUD     (1000000)
#define VC_SERIAL_BAUD  (250000)

#define PIN_START_CAR   (0)     // Input
#define PIN_BRAKE_IN    (5)     // Input
#define PIN_1PPS        (6)     // Input
#define PIN_3D_FIX      (9)     // Input
#define PIN_GPS_RST     (10)    // Output
#define PIN_IMD_F       (11)    // Input
#define PIN_AMS_F       (12)    // Input

#define PIN_12V_3       (24)    // Output
#define PIN_12V_2       (25)    // Output
#define PIN_12V_1       (26)    // Output
#define PIN_12V_0       (27)    // Output

#define PIN_5V_3        (28)    // Output
#define PIN_5V_2        (29)    // Output
#define PIN_5V_1        (30)    // Output
#define PIN_5V_0        (31)    // Output

#define PIN_CLOSE_AIR   (32)    // Output
#define PIN_SHUTDOWN    (36)    // Output


#define PIN_FAULT_L1    (17)    // Input
#define PIN_FAULT_L2    (16)    // Input
#define PIN_FAULT_R1    (15)    // Input
#define PIN_FAULT_R2    (14)    // Input

#define PIN_BATT_SENSE          (A21)
#define PIN_SHUTDOWN_CURRENT    (A22)

#define PIN_DAC_LATCH   (39)

#define GPS_DEBUG
//#define WAIT_GPS