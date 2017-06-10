/******************************************************************************
* C-CAN
* UNCA MOTORSPORTS
*******************************************************************************/
/*
*TODO for pedal box C-CAN
*
*
*
*
*
*/

//pedal C-CAN
//sensor 1 is throttle one
//sensor 2 is brake pedal
//sensor 3 is throttle two
//sensor 4 is steering


#include <cydevice.h>
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
    if ((timer+1)  % GetRate(&one.sensor)   == 0) { SetFlag(&one.sensor,   TRUE); }
    if ((timer+2)  % GetRate(&two.sensor)   == 0) { SetFlag(&two.sensor,   TRUE); }
    if ((timer+3)  % GetRate(&three.sensor) == 0) { SetFlag(&three.sensor, TRUE); }
    if ((timer+4)  % GetRate(&four.sensor)  == 0) { SetFlag(&four.sensor,  TRUE); }
    if ((timer+6)  % GetRate(&wheel.sensor)  == 0) { SetFlag(&wheel.sensor,  TRUE); }
    if ((timer+9)  % GetCANRate(&one.sensor)   == 0) { SetCANFlag(&one.sensor,   TRUE); }
    if ((timer+10) % GetCANRate(&two.sensor)   == 0) { SetCANFlag(&two.sensor,   TRUE); }
    if ((timer+11) % GetCANRate(&three.sensor) == 0) { SetCANFlag(&three.sensor, TRUE); }
    if ((timer+12) % GetCANRate(&four.sensor)  == 0) { SetCANFlag(&four.sensor,  TRUE); }
    if ((timer+14) % GetCANRate(&wheel.sensor)  == 0) { SetCANFlag(&wheel.sensor,  TRUE); }
    //if ((timer) % 500 == 0) { Config();}
    if (timer >= TIMER_RATE)        { timer = 0; }
}
#endif

void DMA_1_Config();

int main()
{
    

    /* Start the components */
    DMA_1_Config();
    ADC_SAR_1_Start();
    ADC_SAR_1_StartConvert();
    Encoder_Start();
    Enc_Timer_Start();
    CAN_1_Start();
    //srand(12);
    
    uint32 temp = 0;
    THROTTLE_IMPLAUSIBLE = 0;
    
    /* Initialize Variables */
    Control_Reg_1_Write(1);
    
    
    PotInit(&one);
    PotInit(&two);
    PotInit(&three);
    PotInit(&four);
    EncoderInit(&wheel);
    
    SensorEnable(&one.sensor,   TRUE);
    SensorEnable(&two.sensor,   TRUE);
    SensorEnable(&three.sensor, TRUE);
    SensorEnable(&four.sensor,  TRUE);
    SensorEnable(&wheel.sensor, FALSE);
    
    //sensor, number, window, rate, CAN rate, CAN msg ID
    SensorSet(&one.sensor,   0, 50, 1000, 100, 0x01Du);
    SensorSet(&two.sensor,   1, 50, 1000, 100, 0x011u); //brakes
    SensorSet(&three.sensor, 2, 50, 1000, 100, 0x01Eu);
    SensorSet(&four.sensor,  3, 50, 1000, 100, 0x012u); //steering
    //SensorSet(&wheel.sensor, 6, 50, 1000, 100, );
    
    //ThrottleInit(&tOne, &one,   T_ONE_MIN, T_TWO_MAX);
    //ThrottleInit(&tTwo, &three, T_TWO_MIN, T_TWO_MAX);
    //SensorSet(&tOne.pot->sensor, 0, 50, 1000, 100, 0x010u);
    
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
    Control_Reg_1_Write(1);
    //LED_Write(1);
    
    CYGlobalIntEnable;
    
    Control_Reg_1_Write(0);
    
    for(;;){
        //CAN_Send(0,0,0,0,0,0,0,0);
    
        //Config();
        #ifdef LOOP
        //CAN_Send((uint8)(zero.mV>>8),(uint8)zero.mV,0,0,0,0,0,0);
        
        if((one.sensor.flag==TRUE)&&(one.sensor.enable==TRUE)){
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
        else if((wheel.sensor.flag==TRUE)&&(wheel.sensor.enable==TRUE)){
            GetRPM(&wheel);
        }
        else if((one.sensor.CAN_flag==TRUE)&&(one.sensor.enable==TRUE)){
            if(one.mV>4095){
                one.mV = 4095;
            }
            one.sensor.sensorData.byte[0] = (uint8)(one.mV>>8);
            one.sensor.sensorData.byte[1] = (uint8)(one.mV);
            one.sensor.CAN_flag = FALSE;
        }
        else if((two.sensor.CAN_flag==TRUE)&&(two.sensor.enable==TRUE)){
            if(two.mV>4095){
                two.mV = 4095;   
            }
            two.sensor.sensorData.byte[0] = (uint8)(two.mV>>8);
            two.sensor.sensorData.byte[1] = (uint8)(two.mV);
            CAN_1_SendMsg(&two.sensor.sensorMsg);
            two.sensor.CAN_flag = FALSE;
        }
        else if((three.sensor.CAN_flag==TRUE)&&(three.sensor.enable==TRUE)){
            if(three.mV>4095){
                three.mV = 4095;
            }
            three.sensor.sensorData.byte[0] = (uint8)(three.mV>>8);
            three.sensor.sensorData.byte[1] = (uint8)(three.mV);
            CAN_1_SendMsg(&three.sensor.sensorMsg);
            three.sensor.CAN_flag = FALSE;
        }
        else if((four.sensor.CAN_flag==TRUE)&&(four.sensor.enable==TRUE)){
            if(four.mV>4095){
                four.mV = 4095;
            }
            four.sensor.sensorData.byte[0] = (uint8)(four.mV>>8);
            four.sensor.sensorData.byte[1] = (uint8)(four.mV);
            CAN_1_SendMsg(&four.sensor.sensorMsg);
            four.sensor.CAN_flag=FALSE;
        }
//        else if((wheel.sensor.CAN_flag==TRUE)&&(wheel.sensor.enable==TRUE)){
//            CAN_Send_2((uint8)(wheel.rpm>>8),(uint8)(wheel.rpm),0,0,0,0,0,0);
//            wheel.sensor.CAN_flag=FALSE;
//        }
        
        #endif
        
    }
}

void DMA_1_Config(void)
{
    
/* Variable declarations for DMA_1 */
/* Move these variable declarations to the top of the function */
uint8 DMA_1_Chan;
uint8 DMA_1_TD[4];

/* Defines for DMA_1 */
#define DMA_1_BYTES_PER_BURST 2
#define DMA_1_REQUEST_PER_BURST 1
#define DMA_1_SRC_BASE (CYDEV_PERIPH_BASE)
#define DMA_1_DST_BASE (CYDEV_SRAM_BASE)


/* DMA Configuration for DMA_1 */
DMA_1_Chan = DMA_1_DmaInitialize(DMA_1_BYTES_PER_BURST, DMA_1_REQUEST_PER_BURST, 
    HI16(DMA_1_SRC_BASE), HI16(DMA_1_DST_BASE));
DMA_1_TD[0] = CyDmaTdAllocate();
DMA_1_TD[1] = CyDmaTdAllocate();
DMA_1_TD[2] = CyDmaTdAllocate();
DMA_1_TD[3] = CyDmaTdAllocate();
CyDmaTdSetConfiguration(DMA_1_TD[0], 2, DMA_1_TD[1], 0);
CyDmaTdSetConfiguration(DMA_1_TD[1], 2, DMA_1_TD[2], 0);
CyDmaTdSetConfiguration(DMA_1_TD[2], 2, DMA_1_TD[3], 0);
CyDmaTdSetConfiguration(DMA_1_TD[3], 2, DMA_1_TD[0], 0);
CyDmaTdSetAddress(DMA_1_TD[0], LO16((uint32)ADC_SAR_1_SAR_WRK0_PTR), LO16((uint32)&one.sensor.sample));
CyDmaTdSetAddress(DMA_1_TD[1], LO16((uint32)ADC_SAR_1_SAR_WRK0_PTR), LO16((uint32)&two.sensor.sample));
CyDmaTdSetAddress(DMA_1_TD[2], LO16((uint32)ADC_SAR_1_SAR_WRK0_PTR), LO16((uint32)&three.sensor.sample));
CyDmaTdSetAddress(DMA_1_TD[3], LO16((uint32)ADC_SAR_1_SAR_WRK0_PTR), LO16((uint32)&four.sensor.sample));
CyDmaChSetInitialTd(DMA_1_Chan, DMA_1_TD[0]);
CyDmaChEnable(DMA_1_Chan, 1);

    
}


/* [] END OF FILE */
