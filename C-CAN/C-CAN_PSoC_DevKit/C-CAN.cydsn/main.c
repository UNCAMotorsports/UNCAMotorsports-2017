/******************************************************************************
* C-CAN
* UNCA MOTORSPORTS
*******************************************************************************/

//0x040 is throttle ID
//0x041 is steering ID
//0x042 is left rpm (and perhaps also right rpm. might combine the two into one message)
//0x043 is right rpm

#include <device.h>
#include "stdio.h"
#include "stdlib.h"
#include "string.h"
#include "CAN_1_TX_RX_func.c"
#include "C-CAN.h"

/*Debug Defines*/
//#define DEBUG_MULTIRATE

#define LOOP

/* Project Defines */

#define FALSE  0
#define TRUE   1
#define BUFF 64
    
#define TIMER_RATE 500001
     
uint32 timer = 0;

static const uint8 CYCODE window_config[8]    = {0,0,0,0,0,0,0,0};
static const bool  CYCODE enable_config[8]    = {0,0,0,0,0,0,0,0};
static const uint8 CYCODE rate_config[16]     = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
static const uint8 CYCODE CAN_rate_config[16] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

#ifdef LOOP
CY_ISR(SysTick_ISR)
{
    timer++;
    if ((timer) % GetRate(&zero.sensor)  == 0) { SetFlag(&zero.sensor,  TRUE); }
    if ((timer+1) % GetRate(&one.sensor)   == 0) { SetFlag(&one.sensor,   TRUE); }
    if ((timer+2) % GetRate(&two.sensor)   == 0) { SetFlag(&two.sensor,   TRUE); }
    if ((timer+3) % GetRate(&three.sensor) == 0) { SetFlag(&three.sensor, TRUE); }
    if ((timer+4) % GetRate(&four.sensor)  == 0) { SetFlag(&four.sensor,  TRUE); }
    if ((timer+5) % GetRate(&five.sensor)  == 0) { SetFlag(&five.sensor,  TRUE); }
    if ((timer+6) % GetRate(&left.sensor)  == 0) { SetFlag(&left.sensor,  TRUE); }
    if ((timer+7) % GetRate(&right.sensor) == 0) { SetFlag(&right.sensor, TRUE); }
    if ((timer+8) % GetCANRate(&zero.sensor)  == 0) { SetCANFlag(&zero.sensor,  TRUE); }
    if ((timer+9) % GetCANRate(&one.sensor)   == 0) { SetCANFlag(&one.sensor,   TRUE); }
    if ((timer+10) % GetCANRate(&two.sensor)   == 0) { SetCANFlag(&two.sensor,   TRUE); }
    if ((timer+11) % GetCANRate(&three.sensor) == 0) { SetCANFlag(&three.sensor, TRUE); }
    if ((timer+12) % GetCANRate(&four.sensor)  == 0) { SetCANFlag(&four.sensor,  TRUE); }
    if ((timer+13) % GetCANRate(&five.sensor)  == 0) { SetCANFlag(&five.sensor,  TRUE); }
    if ((timer+14) % GetCANRate(&left.sensor)  == 0) { SetCANFlag(&left.sensor,  TRUE); }
    if ((timer+15) % GetCANRate(&right.sensor) == 0) { SetCANFlag(&right.sensor, TRUE); }
    //if ((timer) % 500 == 0) { Config();}
    if (timer >= TIMER_RATE)        { timer = 0; }
}
#endif

int main()
{
    

    /* Start the components */
    ADC_SAR_1_Start();
    AMux_1_Start();
    Encoder_Left_Start();
    Encoder_Right_Start();
    leftEncTimer_Start();
    rightEncTimer_Start();
    AMux_1_FastSelect(0);
    CAN_1_Start();
    //srand(12);
    
    uint32 temp = 0;
    THROTTLE_IMPLAUSIBLE = 0;
    
    /* Initialize Variables */
    CAN_Send_0(0xff,0,0xff,0,0xff,0,0xff,0);
    CAN_Send_1(0xff,0,0xff,0,0xff,0,0xff,0);
    Control_Reg_1_Write(1);
    
    
    PotInit(&zero);
    PotInit(&one);
    PotInit(&two);
    PotInit(&three);
    PotInit(&four);
    PotInit(&five);
    EncoderInit(&left);
    EncoderInit(&right);
    
    SensorEnable(&zero.sensor,  TRUE);
    SensorEnable(&one.sensor,   FALSE);
    SensorEnable(&two.sensor,   FALSE);
    SensorEnable(&three.sensor, FALSE);
    SensorEnable(&four.sensor,  FALSE);
    SensorEnable(&five.sensor,  FALSE);
    SensorEnable(&left.sensor,  FALSE);
    SensorEnable(&right.sensor, FALSE);
    
    SensorSet(&zero.sensor,  0, 50, 1000, 200); //sensor, number, window, rate, CAN rate
    SensorSet(&one.sensor,   1, 10, 1000, 200);
    SensorSet(&two.sensor,   2,  1,     1,  1);
    SensorSet(&three.sensor, 3,  1,     1,  1);
    SensorSet(&four.sensor,  4,  1,     1,  1);
    SensorSet(&five.sensor,  5,  1,     1,  1);
    SensorSet(&left.sensor,  6, 50, 1000, 200);
    SensorSet(&right.sensor, 7, 50, 1000, 200);
    
    ThrottleInit(&throttle,&zero);
    
    #ifdef LOOP
    /*Point the Systick vector to the ISR in this file */
    CyIntSetSysVector(SYSTICK_INTERRUPT_VECTOR_NUMBER, SysTick_ISR);
    
    /* Set the number of ticks between interrupts.
    Ignore the function success/fail return value.
    Defined in auto-generated core_cm3.h */
    (void)SysTick_Config(CLOCK_FREQ / INTERRUPT_FREQ); 
    #endif
    
    
    
    /* Send message to verify COM port is connected properly */
    //UART_1_PutString("\n\rCOM Port Open\n\r");
    CAN_Send_0(0xff,0,0xff,0,0xff,0,0xff,0);
    CAN_Send_1(0xff,0,0xff,0,0xff,0,0xff,0);
    Control_Reg_1_Write(1);
    //LED_Write(1);
    
    CYGlobalIntEnable;
    
    Control_Reg_1_Write(0);
    
    for(;;){
        //CAN_Send(0,0,0,0,0,0,0,0);
    
        //Config();
        #ifdef LOOP
        if((zero.sensor.flag==TRUE)&&(zero.sensor.enable==TRUE)){
            GetThrottle(&throttle,&throttle); //placeholder, will be throttleOne and throttleTwo.
            //CAN_Send((uint8)(zero.mV>>8),(uint8)zero.mV,0,0,0,0,0,0);
        }
        else if((one.sensor.flag==TRUE)&&(one.sensor.enable==TRUE)){
            GetSample(&one);
        }
        else if((two.sensor.flag==TRUE)&&(two.sensor.enable==TRUE)){
            GetSample(&two);
        }
        else if((three.sensor.flag==TRUE)&&(three.sensor.enable==TRUE)){
            GetSample(&three);
        }
        else if((four.sensor.flag==TRUE)&&(four.sensor.enable==TRUE)){
            GetSample(&four);
        }
        else if((five.sensor.flag==TRUE)&&(five.sensor.enable==TRUE)){
            GetSample(&five);
        }
        else if((left.sensor.flag==TRUE)&&(left.sensor.enable==TRUE)){
            GetRPM(&left);
        }
        else if((right.sensor.flag==TRUE)&&(right.sensor.enable==TRUE)){
            GetRPM(&right);     
        }
        else if((zero.sensor.CAN_flag==TRUE)&&(zero.sensor.enable==TRUE)){
            if(THROTTLE_IMPLAUSIBLE){
                CAN_Send_0(0x80,0,0,0,0,0,0,0); //put a 1 in the MSB to indicate implausible throttle
            }
            CAN_Send_0((uint8)(throttle.throttle>>8),(uint8)(throttle.throttle),0,0,0,0,0,0);
            zero.sensor.CAN_flag=FALSE;
        }
        else if((one.sensor.CAN_flag==TRUE)&&(one.sensor.enable==TRUE)){
            CAN_Send_1((uint8)(one.mV>>8) ,(uint8)(one.mV) ,0,0,0,0,0,0);
            one.sensor.CAN_flag=FALSE;
        }
        else if((two.sensor.CAN_flag==TRUE)&&(two.sensor.enable==TRUE)){
            
        }
        else if((three.sensor.CAN_flag==TRUE)&&(three.sensor.enable==TRUE)){
            
        }
        else if((four.sensor.CAN_flag==TRUE)&&(four.sensor.enable==TRUE)){
            
        }
        else if((five.sensor.CAN_flag==TRUE)&&(five.sensor.enable==TRUE)){
            
        }
        else if((left.sensor.CAN_flag==TRUE)&&(left.sensor.enable==TRUE)){
            CAN_Send_2((uint8)(left.rpm>>8),(uint8)(left.rpm),0,0,0,0,0,0);
            left.sensor.CAN_flag=FALSE;
        }
        else if((right.sensor.CAN_flag==TRUE)&&(right.sensor.enable==TRUE)){
            CAN_Send_3((uint8)(right.rpm>>8),(uint8)(right.rpm),0,0,0,0,0,0);
            right.sensor.CAN_flag=FALSE;
        }
        
        #endif
        
    }
}



/* [] END OF FILE */
