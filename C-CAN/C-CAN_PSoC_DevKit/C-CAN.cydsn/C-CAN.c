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

#include <C-CAN.h>

void GetSample(Pot * pot){
    
    /*This function applies a moving average filter to the data read by the ADC. Each sensor
    *has an associated sensor struct that contains all necessary variables. The multiplexer
    *is switched such that the intended sensor is read by the ADC. The if loop waits for the
    *ADC to sample and then applies the circular buffer-based moving average.
    *
    *For serial debugging purposes, this function also converts the averaged sensor reading
    *to a millivolt value.
    *
    */
    pot->sensor.accumulator -= pot->sensor.data[pot->sensor.index];
    pot->sensor.data[pot->sensor.index] = pot->sensor.sample;
    pot->sensor.accumulator += pot->sensor.data[pot->sensor.index];
    
    pot->sensor.index++;
    if(pot->sensor.index>=pot->sensor.window){
        pot->sensor.index = 0;
    }
    
    pot->mV = ADC_SAR_1_CountsTo_mVolts((pot->sensor.accumulator)/pot->sensor.window);
    
    pot->sensor.flag = FALSE;

    #ifdef DEBUG_MULTIRATE
    UART_1_PutString("\n\rPot ");
    UART_1_PutChar(pot->sensor.number+48);
    UART_1_PutString("\n\r");
    #endif
    
    

    
}

void GetRPM(Encoder * encoder){
    
    /*This function applies a moving average filter to the number of encoder pulses
    *counted by an encoder counter. Each encoder has an encoder struct that contains
    *all of the relevant variables for an encoder. 
    *
    *The moving average filter implemented is the "shortcut" version, making use of a circular
    *buffer to keep things speedy. 
    *
    *Each encoder has an associated hardware pulse counter and time counter. As of 8/19/16
    *the time counter counts microseconds and the encoders are 600ppr. 
    
    *RPM is calculated as follows:
    *(pulses)*(1 rev/600 pulses)*(1/microseconds)*(10^6 microseconds/second)*(60 seconds/minute)=rpm
    *
    *This simplifies to (pulses * 100000) / (microseconds elapsed)
    *
    *With the current setup, the time counter does not reset and can only handle ~65milliseconds.
    *
    */
    
    
    encoder->accumulator -= encoder->sensor.data[encoder->sensor.index];
    encoder->sensor.data[encoder->sensor.index] = encoder->period;
    encoder->accumulator += encoder->sensor.data[encoder->sensor.index];
        
    
    encoder->rpm = 1200000*(encoder->sensor.window)/(encoder->accumulator);
    

    
    encoder->sensor.index++;
    if(encoder->sensor.index >= encoder->sensor.window){
        encoder->sensor.index = 0;
    }
    
    encoder->sensor.flag = FALSE;
    
    #ifdef DEBUG_MULTIRATE
    UART_1_PutString("\n\rEncoder ");
    UART_1_PutChar(encoder->sensor.number+48);
    UART_1_PutString("\n\r");
    #endif

}

void GetThrottle(Throttle * throttleOne, Throttle * throttleTwo){
    
    static uint16 implausible_timer = 0;
    
    GetSample(throttleOne->pot);        //sample first throttle pot
    GetSample(throttleTwo->pot);        //sample second throttle pot
    
    //The next bit of code scales the throttle such that the initial position is 0 and the maximum
    //position is 4095. PEDAL_THROW is a macro for the pedal throw in mV.
    //PEDAL_THROW can be approximated by mechanical_throw(degrees)/max_pot_throw(degrees)*5000
    
    throttleOne->throttle = (throttleOne->pot->mV - throttleOne->throttleMin) * 4095 / PEDAL_THROW;
    if(throttleOne->throttle > 4095){
        throttleOne->throttle = 4095;   
    }
    if(throttleOne->throttle <= 100){
        throttleOne->throttle = 0;
    }
    
    throttleTwo->throttle = (throttleOne->pot->mV - throttleTwo->throttleMin) * 4095 / PEDAL_THROW;
    if(throttleTwo->throttle > 4095){
        throttleTwo->throttle = 4095;
    }
    if(throttleTwo->throttle <=100){
        throttleTwo->throttle = 0;
    }
    
    if(abs(throttleOne->throttle-throttleTwo->throttle)>=409){
        implausible_timer++;
        if(implausible_timer>=throttleOne->timer_constant){
            THROTTLE_IMPLAUSIBLE = 1;
        }
    }
    else if(abs(throttleOne->throttle-throttleTwo->throttle)<409){
        implausible_timer = 0;
    }
    
}

void ThrottleInit(Throttle * throttle, Pot * pot, int16 min, int16 max){
    int i = 0;
    throttle->pot = pot;
    for(i = 0; i < throttle->pot->sensor.window; i++){
        GetSample(throttle->pot);
    }
    throttle->throttleMin = min;
    throttle->throttleMax = max;
    throttle->timer_constant = throttle->pot->sensor.rate * 0.1;
}

void SensorSet(Sensor * sensor, uint8 number_set, uint8 window_set,
    uint16 rate_set, uint16 CAN_rate_set, uint32 CAN_ID_set){
    uint8 i = 0;
    /* This functions sets up a sensor. It should be called during initialization after
    *  the sensor objects have been initialized. It sets the filtering window, sensor number
    *  and sampling rate.
    */
    
    sensor->number = number_set;
    sensor->window = window_set;
    sensor->rate = rate_set;
    sensor->CAN_rate = CAN_rate_set;
    if(window_set>=BUFF){
        sensor->window = BUFF;
    }
    sensor->sensorMsg.dlc = CAN_1_TX_DLC_MAX_VALUE;
    sensor->sensorMsg.id = CAN_ID_set & 0x07FF;
    sensor->sensorMsg.ide = 0;
    sensor->sensorMsg.irq = 0;
    sensor->sensorMsg.msg = &(sensor->sensorData);
    sensor->sensorMsg.rtr = 0;
    for(i = 0; i < 8; i++){
        sensor->sensorData.byte[i] = 0;   
    }
}

void PotInit(Pot * pot){
    
    /* This function initializes a Pot object. It clears the accumulator, mV, and data buffer.
    *  It also clears the sensor flag and sets the sensor window index to 0.
    */
    
    int i = 0;
    pot->sensor.accumulator = 0;
    pot->mV = 0;
    pot->sensor.index = 0;
    pot->sensor.flag = 0;
    pot->sensor.CAN_flag = 0;
    for(i=0;i<BUFF;i++){
        pot->sensor.data[i]=0;
    }
}

void EncoderInit(Encoder * encoder){
    
    /* Same thing as the PotInit function, except Encoder objects have an accumulator that's a 
    *  float rather than an integer, so the Encoder accumulator is not inherited from the Sensor
    *  object.
    */
    int i = 0;
    encoder->accumulator = 0;
    encoder->rpm = 0;
    encoder->sensor.index = 0;
    encoder->sensor.flag = 0;
    encoder->sensor.CAN_flag = 0;
    for(i=0;i<BUFF;i++){
        encoder->sensor.data[i]=0;
    }
}

void Config(void){
    
}
    
void SetFlag(Sensor * sensor, bool flag_set){ //Sets the execution flag for sensor sampling
    sensor->flag = flag_set;
}

void SetCANFlag(Sensor * sensor, bool CAN_set){
    sensor->CAN_flag = CAN_set;   
}

uint16 GetRate(Sensor * sensor){ //Gets the sampling rate for a sensor to determine when to set the flag
    return INTERRUPT_FREQ/(sensor->rate);
}

uint16 GetCANRate(Sensor * sensor){ //Gets the messaging rate for a sensor to determine when to set the flag
    return INTERRUPT_FREQ/(sensor->CAN_rate);   
}

void SensorEnable(Sensor * sensor, bool enable_set){ //Enables or disables a sensor
    sensor->enable = enable_set;
}

void EnableSave(Sensor * sensor){ //Saves the enable bit for a given sensor to temp_enable
    temp_enable[sensor->number] = sensor->enable;
}

void EnableRestore(Sensor * sensor){ //Restores the enable setting for a sensor
    sensor->enable = temp_enable[sensor->number];
}


/* [] END OF FILE */
