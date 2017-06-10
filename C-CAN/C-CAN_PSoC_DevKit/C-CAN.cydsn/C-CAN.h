/* ========================================
 *
 * Copyright YOUR COMPANY, THE YEAR
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.
 *
 * CONFIDENTIAL AND PROPRIETARY INFORMATION
 * WHICH IS THE PROPERTY OF your company.
 *
 * ========================================
*/

#include <project.h>  
#include "stdlib.h"
#include "stdio.h"
#include "string.h"

#define BUFF 64
#define FALSE  0
#define TRUE   1
#define SYSTICK_INTERRUPT_VECTOR_NUMBER 15u  //SysTick defines
#define CLOCK_FREQ BCLK__BUS_CLK__HZ
#define INTERRUPT_FREQ 15000u
#define TRANSMIT_BUFFER_SIZE  80
#define PEDAL_THROW 2564

//throttle maximums and minimums in millivolts

#define T_ONE_MAX 5000
#define T_TWO_MAX 5000
#define T_ONE_MIN 0
#define T_TWO_MIN 0

typedef unsigned char bool; //C doesn't have a boolean type by default

bool THROTTLE_IMPLAUSIBLE;

typedef struct Sensors { //Struct that holds all necessary data for a sensor
    char name[17];
    uint16 data[BUFF];
    uint16 sample;
    uint32 accumulator;
    uint8 number;
    uint8 index;
    uint8 window;
    bool flag;
    bool CAN_flag;
    bool enable;
    uint16 rate;
    uint16 CAN_rate;
    CAN_1_TX_MSG sensorMsg;
    CAN_1_DATA_BYTES_MSG sensorData;
}Sensor;

typedef struct Pots { //Pot objects inherit Sensor variables
    Sensor sensor;
    int16 mV;
}Pot;

typedef struct Encoders { //Encoder objects inherit Sensor variables
    Sensor sensor;
    float accumulator;
    int16 rpm;
}Encoder;

typedef struct Throttle {
    Pot * pot;
    int16 throttleMin;
    int16 throttleMax;
    int16 throttle;
    int16 timer_constant;
}Throttle;

//Each C-CAN is set up to read 4 analog pots and 1 encoder
Pot one;
Pot two;
Pot three;
Pot four;
Encoder wheel;
Throttle tOne;
Throttle tTwo;


static bool temp_enable[8]; //Holds previous enable configuration during config()

uint8 TxMessage0[8];
uint8 TxMessage1[8];
uint8 TxMessage2[8];
uint8 TxMessage3[8];
uint8 RxMessage1[8];
uint8 RXDLC1;
uint8 RxFlag1;


void GetSample(Pot * pot);
void GetRPM(Encoder * encoder);
void GetThrottle(Throttle * throttleOne, Throttle * throttleTwo);

void SensorSet(Sensor * sensor, uint8 number_set,
    uint8 window_set, uint16 rate_set, uint16 CAN_rate_set, uint32 CAN_ID_set);

void ThrottleInit(Throttle * throttle, Pot * pot, int16 min, int16 max);
void PotInit(Pot * pot);
void EncoderInit(Encoder * encoder);

void SetFlag(Sensor * sensor, bool flag_set);
void SetCANFlag(Sensor * sensor, bool CAN_set);
uint16 GetRate(Sensor * sensor);
uint16 GetCANRate(Sensor * sensor);
void SensorEnable(Sensor * sensor, bool enable_set);
void Config(void);
void EnableSave(Sensor * sensor);
void EnableRestore(Sensor * sensor);


/* [] END OF FILE */
