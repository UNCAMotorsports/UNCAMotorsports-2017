// Section:  Defines

// Comment or remove these definitions to stop respective debug code from being compiled
//#define DEBUG_THROTTLE
//#define DEBUG_RPM
//#define DEBUG_STEERING
//#define DEBUG_PROFILING
//#define LOGGER_DEBUG
//#define LOGGING

// Teensy's max and min macros use non-standard gnu extensions... these are simpler for integers etc.
#define simple_max(a,b) (((a)>(b)) ? (a) : (b))
#define simple_min(a,b) (((a)<(b)) ? (a) : (b))
#define simple_constrain(amt,low,high) (((amt)<(low)) ? (low) : ((amt > high) ? (high) : (amt)))

#define RPM_TO_RADS(a)  ((a)*2*PI/60)

// Chip selects for SPI devices
#define CS_FLASH            (2)
#define CS_DAC0		        (8)
#define CS_DAC1		        (7)
#define CS_SD               (10)

// DAC latch pin
#define LATCH_PIN	        (9)

// Measurements of vehicle dimensions for use in differential steering
#define WHEELBASE_IN        (72.0)      // In Inches
#define REAR_TRACK_IN       (42.0)      // In inches
#define TRACK_TO_WHEEL      (REAR_TRACK_IN/WHEELBASE_IN)

// Steering sensor calibration values
#define DEG_PER_VAL         (.03)
#define STEERING_CENTER     (2645)

// CAN IDs
#define THROTTLE_ID         (0x040)
#define STEERING_ID         (0x041)
#define LEFT_RPM_ID         (0x042)
#define RIGHT_RPM_ID        (0x043)

// CAN controller pins
#define CANTX               (3)
#define CANRX               (4)

// Steering Differential mode


enum eDifferentialMode{
    diffModeNone        =   0,
    diffModeOpenLoop    =   1,
    diffModeClosedLoop  =   2
};

eDifferentialMode DIFFERENTIAL_MODE = diffModeOpenLoop;