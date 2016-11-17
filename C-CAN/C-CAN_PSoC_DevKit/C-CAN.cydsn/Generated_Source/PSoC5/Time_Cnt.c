/*******************************************************************************
* File Name: Time_Cnt.c  
* Version 3.0
*
*  Description:
*     The Counter component consists of a 8, 16, 24 or 32-bit counter with
*     a selectable period between 2 and 2^Width - 1.  
*
*   Note:
*     None
*
********************************************************************************
* Copyright 2008-2012, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#include "Time_Cnt.h"

uint8 Time_Cnt_initVar = 0u;


/*******************************************************************************
* Function Name: Time_Cnt_Init
********************************************************************************
* Summary:
*     Initialize to the schematic state
* 
* Parameters:  
*  void  
*
* Return: 
*  void
*
*******************************************************************************/
void Time_Cnt_Init(void) 
{
        #if (!Time_Cnt_UsingFixedFunction && !Time_Cnt_ControlRegRemoved)
            uint8 ctrl;
        #endif /* (!Time_Cnt_UsingFixedFunction && !Time_Cnt_ControlRegRemoved) */
        
        #if(!Time_Cnt_UsingFixedFunction) 
            /* Interrupt State Backup for Critical Region*/
            uint8 Time_Cnt_interruptState;
        #endif /* (!Time_Cnt_UsingFixedFunction) */
        
        #if (Time_Cnt_UsingFixedFunction)
            /* Clear all bits but the enable bit (if it's already set for Timer operation */
            Time_Cnt_CONTROL &= Time_Cnt_CTRL_ENABLE;
            
            /* Clear the mode bits for continuous run mode */
            #if (CY_PSOC5A)
                Time_Cnt_CONTROL2 &= ((uint8)(~Time_Cnt_CTRL_MODE_MASK));
            #endif /* (CY_PSOC5A) */
            #if (CY_PSOC3 || CY_PSOC5LP)
                Time_Cnt_CONTROL3 &= ((uint8)(~Time_Cnt_CTRL_MODE_MASK));                
            #endif /* (CY_PSOC3 || CY_PSOC5LP) */
            /* Check if One Shot mode is enabled i.e. RunMode !=0*/
            #if (Time_Cnt_RunModeUsed != 0x0u)
                /* Set 3rd bit of Control register to enable one shot mode */
                Time_Cnt_CONTROL |= Time_Cnt_ONESHOT;
            #endif /* (Time_Cnt_RunModeUsed != 0x0u) */
            
            /* Set the IRQ to use the status register interrupts */
            Time_Cnt_CONTROL2 |= Time_Cnt_CTRL2_IRQ_SEL;
            
            /* Clear and Set SYNCTC and SYNCCMP bits of RT1 register */
            Time_Cnt_RT1 &= ((uint8)(~Time_Cnt_RT1_MASK));
            Time_Cnt_RT1 |= Time_Cnt_SYNC;     
                    
            /*Enable DSI Sync all all inputs of the Timer*/
            Time_Cnt_RT1 &= ((uint8)(~Time_Cnt_SYNCDSI_MASK));
            Time_Cnt_RT1 |= Time_Cnt_SYNCDSI_EN;

        #else
            #if(!Time_Cnt_ControlRegRemoved)
            /* Set the default compare mode defined in the parameter */
            ctrl = Time_Cnt_CONTROL & ((uint8)(~Time_Cnt_CTRL_CMPMODE_MASK));
            Time_Cnt_CONTROL = ctrl | Time_Cnt_DEFAULT_COMPARE_MODE;
            
            /* Set the default capture mode defined in the parameter */
            ctrl = Time_Cnt_CONTROL & ((uint8)(~Time_Cnt_CTRL_CAPMODE_MASK));
            
            #if( 0 != Time_Cnt_CAPTURE_MODE_CONF)
                Time_Cnt_CONTROL = ctrl | Time_Cnt_DEFAULT_CAPTURE_MODE;
            #else
                Time_Cnt_CONTROL = ctrl;
            #endif /* 0 != Time_Cnt_CAPTURE_MODE */ 
            
            #endif /* (!Time_Cnt_ControlRegRemoved) */
        #endif /* (Time_Cnt_UsingFixedFunction) */
        
        /* Clear all data in the FIFO's */
        #if (!Time_Cnt_UsingFixedFunction)
            Time_Cnt_ClearFIFO();
        #endif /* (!Time_Cnt_UsingFixedFunction) */
        
        /* Set Initial values from Configuration */
        Time_Cnt_WritePeriod(Time_Cnt_INIT_PERIOD_VALUE);
        #if (!(Time_Cnt_UsingFixedFunction && (CY_PSOC5A)))
            Time_Cnt_WriteCounter(Time_Cnt_INIT_COUNTER_VALUE);
        #endif /* (!(Time_Cnt_UsingFixedFunction && (CY_PSOC5A))) */
        Time_Cnt_SetInterruptMode(Time_Cnt_INIT_INTERRUPTS_MASK);
        
        #if (!Time_Cnt_UsingFixedFunction)
            /* Read the status register to clear the unwanted interrupts */
            (void)Time_Cnt_ReadStatusRegister();
            /* Set the compare value (only available to non-fixed function implementation */
            Time_Cnt_WriteCompare(Time_Cnt_INIT_COMPARE_VALUE);
            /* Use the interrupt output of the status register for IRQ output */
            
            /* CyEnterCriticalRegion and CyExitCriticalRegion are used to mark following region critical*/
            /* Enter Critical Region*/
            Time_Cnt_interruptState = CyEnterCriticalSection();
            
            Time_Cnt_STATUS_AUX_CTRL |= Time_Cnt_STATUS_ACTL_INT_EN_MASK;
            
            /* Exit Critical Region*/
            CyExitCriticalSection(Time_Cnt_interruptState);
            
        #endif /* (!Time_Cnt_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Time_Cnt_Enable
********************************************************************************
* Summary:
*     Enable the Counter
* 
* Parameters:  
*  void  
*
* Return: 
*  void
*
* Side Effects: 
*   If the Enable mode is set to Hardware only then this function has no effect 
*   on the operation of the counter.
*
*******************************************************************************/
void Time_Cnt_Enable(void) 
{
    /* Globally Enable the Fixed Function Block chosen */
    #if (Time_Cnt_UsingFixedFunction)
        Time_Cnt_GLOBAL_ENABLE |= Time_Cnt_BLOCK_EN_MASK;
        Time_Cnt_GLOBAL_STBY_ENABLE |= Time_Cnt_BLOCK_STBY_EN_MASK;
    #endif /* (Time_Cnt_UsingFixedFunction) */  
        
    /* Enable the counter from the control register  */
    /* If Fixed Function then make sure Mode is set correctly */
    /* else make sure reset is clear */
    #if(!Time_Cnt_ControlRegRemoved || Time_Cnt_UsingFixedFunction)
        Time_Cnt_CONTROL |= Time_Cnt_CTRL_ENABLE;                
    #endif /* (!Time_Cnt_ControlRegRemoved || Time_Cnt_UsingFixedFunction) */
    
}


/*******************************************************************************
* Function Name: Time_Cnt_Start
********************************************************************************
* Summary:
*  Enables the counter for operation 
*
* Parameters:  
*  void  
*
* Return: 
*  void
*
* Global variables:
*  Time_Cnt_initVar: Is modified when this function is called for the  
*   first time. Is used to ensure that initialization happens only once.
*
*******************************************************************************/
void Time_Cnt_Start(void) 
{
    if(Time_Cnt_initVar == 0u)
    {
        Time_Cnt_Init();
        
        Time_Cnt_initVar = 1u; /* Clear this bit for Initialization */        
    }
    
    /* Enable the Counter */
    Time_Cnt_Enable();        
}


/*******************************************************************************
* Function Name: Time_Cnt_Stop
********************************************************************************
* Summary:
* Halts the counter, but does not change any modes or disable interrupts.
*
* Parameters:  
*  void  
*
* Return: 
*  void
*
* Side Effects: If the Enable mode is set to Hardware only then this function
*               has no effect on the operation of the counter.
*
*******************************************************************************/
void Time_Cnt_Stop(void) 
{
    /* Disable Counter */
    #if(!Time_Cnt_ControlRegRemoved || Time_Cnt_UsingFixedFunction)
        Time_Cnt_CONTROL &= ((uint8)(~Time_Cnt_CTRL_ENABLE));        
    #endif /* (!Time_Cnt_ControlRegRemoved || Time_Cnt_UsingFixedFunction) */
    
    /* Globally disable the Fixed Function Block chosen */
    #if (Time_Cnt_UsingFixedFunction)
        Time_Cnt_GLOBAL_ENABLE &= ((uint8)(~Time_Cnt_BLOCK_EN_MASK));
        Time_Cnt_GLOBAL_STBY_ENABLE &= ((uint8)(~Time_Cnt_BLOCK_STBY_EN_MASK));
    #endif /* (Time_Cnt_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Time_Cnt_SetInterruptMode
********************************************************************************
* Summary:
* Configures which interrupt sources are enabled to generate the final interrupt
*
* Parameters:  
*  InterruptsMask: This parameter is an or'd collection of the status bits
*                   which will be allowed to generate the counters interrupt.   
*
* Return: 
*  void
*
*******************************************************************************/
void Time_Cnt_SetInterruptMode(uint8 interruptsMask) 
{
    Time_Cnt_STATUS_MASK = interruptsMask;
}


/*******************************************************************************
* Function Name: Time_Cnt_ReadStatusRegister
********************************************************************************
* Summary:
*   Reads the status register and returns it's state. This function should use
*       defined types for the bit-field information as the bits in this
*       register may be permuteable.
*
* Parameters:  
*  void
*
* Return: 
*  (uint8) The contents of the status register
*
* Side Effects:
*   Status register bits may be clear on read. 
*
*******************************************************************************/
uint8   Time_Cnt_ReadStatusRegister(void) 
{
    return Time_Cnt_STATUS;
}


#if(!Time_Cnt_ControlRegRemoved)
/*******************************************************************************
* Function Name: Time_Cnt_ReadControlRegister
********************************************************************************
* Summary:
*   Reads the control register and returns it's state. This function should use
*       defined types for the bit-field information as the bits in this
*       register may be permuteable.
*
* Parameters:  
*  void
*
* Return: 
*  (uint8) The contents of the control register
*
*******************************************************************************/
uint8   Time_Cnt_ReadControlRegister(void) 
{
    return Time_Cnt_CONTROL;
}


/*******************************************************************************
* Function Name: Time_Cnt_WriteControlRegister
********************************************************************************
* Summary:
*   Sets the bit-field of the control register.  This function should use
*       defined types for the bit-field information as the bits in this
*       register may be permuteable.
*
* Parameters:  
*  void
*
* Return: 
*  (uint8) The contents of the control register
*
*******************************************************************************/
void    Time_Cnt_WriteControlRegister(uint8 control) 
{
    Time_Cnt_CONTROL = control;
}

#endif  /* (!Time_Cnt_ControlRegRemoved) */


#if (!(Time_Cnt_UsingFixedFunction && (CY_PSOC5A)))
/*******************************************************************************
* Function Name: Time_Cnt_WriteCounter
********************************************************************************
* Summary:
*   This funtion is used to set the counter to a specific value
*
* Parameters:  
*  counter:  New counter value. 
*
* Return: 
*  void 
*
*******************************************************************************/
void Time_Cnt_WriteCounter(uint16 counter) \
                                   
{
    #if(Time_Cnt_UsingFixedFunction)
        /* assert if block is already enabled */
        CYASSERT (0u == (Time_Cnt_GLOBAL_ENABLE & Time_Cnt_BLOCK_EN_MASK));
        /* If block is disabled, enable it and then write the counter */
        Time_Cnt_GLOBAL_ENABLE |= Time_Cnt_BLOCK_EN_MASK;
        CY_SET_REG16(Time_Cnt_COUNTER_LSB_PTR, (uint16)counter);
        Time_Cnt_GLOBAL_ENABLE &= ((uint8)(~Time_Cnt_BLOCK_EN_MASK));
    #else
        CY_SET_REG16(Time_Cnt_COUNTER_LSB_PTR, counter);
    #endif /* (Time_Cnt_UsingFixedFunction) */
}
#endif /* (!(Time_Cnt_UsingFixedFunction && (CY_PSOC5A))) */


/*******************************************************************************
* Function Name: Time_Cnt_ReadCounter
********************************************************************************
* Summary:
* Returns the current value of the counter.  It doesn't matter
* if the counter is enabled or running.
*
* Parameters:  
*  void:  
*
* Return: 
*  (uint16) The present value of the counter.
*
*******************************************************************************/
uint16 Time_Cnt_ReadCounter(void) 
{
    /* Force capture by reading Accumulator */
    /* Must first do a software capture to be able to read the counter */
    /* It is up to the user code to make sure there isn't already captured data in the FIFO */
    #if(Time_Cnt_UsingFixedFunction)
		(void)CY_GET_REG16(Time_Cnt_COUNTER_LSB_PTR);
	#else
		(void)CY_GET_REG8(Time_Cnt_COUNTER_LSB_PTR_8BIT);
	#endif/* (Time_Cnt_UsingFixedFunction) */
    
    /* Read the data from the FIFO (or capture register for Fixed Function)*/
    #if(Time_Cnt_UsingFixedFunction)
        return ((uint16)CY_GET_REG16(Time_Cnt_STATICCOUNT_LSB_PTR));
    #else
        return (CY_GET_REG16(Time_Cnt_STATICCOUNT_LSB_PTR));
    #endif /* (Time_Cnt_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Time_Cnt_ReadCapture
********************************************************************************
* Summary:
*   This function returns the last value captured.
*
* Parameters:  
*  void
*
* Return: 
*  (uint16) Present Capture value.
*
*******************************************************************************/
uint16 Time_Cnt_ReadCapture(void) 
{
    #if(Time_Cnt_UsingFixedFunction)
        return ((uint16)CY_GET_REG16(Time_Cnt_STATICCOUNT_LSB_PTR));
    #else
        return (CY_GET_REG16(Time_Cnt_STATICCOUNT_LSB_PTR));
    #endif /* (Time_Cnt_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Time_Cnt_WritePeriod
********************************************************************************
* Summary:
* Changes the period of the counter.  The new period 
* will be loaded the next time terminal count is detected.
*
* Parameters:  
*  period: (uint16) A value of 0 will result in
*         the counter remaining at zero.  
*
* Return: 
*  void
*
*******************************************************************************/
void Time_Cnt_WritePeriod(uint16 period) 
{
    #if(Time_Cnt_UsingFixedFunction)
        CY_SET_REG16(Time_Cnt_PERIOD_LSB_PTR,(uint16)period);
    #else
        CY_SET_REG16(Time_Cnt_PERIOD_LSB_PTR, period);
    #endif /* (Time_Cnt_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Time_Cnt_ReadPeriod
********************************************************************************
* Summary:
* Reads the current period value without affecting counter operation.
*
* Parameters:  
*  void:  
*
* Return: 
*  (uint16) Present period value.
*
*******************************************************************************/
uint16 Time_Cnt_ReadPeriod(void) 
{
    #if(Time_Cnt_UsingFixedFunction)
        return ((uint16)CY_GET_REG16(Time_Cnt_PERIOD_LSB_PTR));
    #else
        return (CY_GET_REG16(Time_Cnt_PERIOD_LSB_PTR));
    #endif /* (Time_Cnt_UsingFixedFunction) */
}


#if (!Time_Cnt_UsingFixedFunction)
/*******************************************************************************
* Function Name: Time_Cnt_WriteCompare
********************************************************************************
* Summary:
* Changes the compare value.  The compare output will 
* reflect the new value on the next UDB clock.  The compare output will be 
* driven high when the present counter value compares true based on the 
* configured compare mode setting. 
*
* Parameters:  
*  Compare:  New compare value. 
*
* Return: 
*  void
*
*******************************************************************************/
void Time_Cnt_WriteCompare(uint16 compare) \
                                   
{
    #if(Time_Cnt_UsingFixedFunction)
        CY_SET_REG16(Time_Cnt_COMPARE_LSB_PTR, (uint16)compare);
    #else
        CY_SET_REG16(Time_Cnt_COMPARE_LSB_PTR, compare);
    #endif /* (Time_Cnt_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Time_Cnt_ReadCompare
********************************************************************************
* Summary:
* Returns the compare value.
*
* Parameters:  
*  void:
*
* Return: 
*  (uint16) Present compare value.
*
*******************************************************************************/
uint16 Time_Cnt_ReadCompare(void) 
{
    return (CY_GET_REG16(Time_Cnt_COMPARE_LSB_PTR));
}


#if (Time_Cnt_COMPARE_MODE_SOFTWARE)
/*******************************************************************************
* Function Name: Time_Cnt_SetCompareMode
********************************************************************************
* Summary:
*  Sets the software controlled Compare Mode.
*
* Parameters:
*  compareMode:  Compare Mode Enumerated Type.
*
* Return:
*  void
*
*******************************************************************************/
void Time_Cnt_SetCompareMode(uint8 compareMode) 
{
    /* Clear the compare mode bits in the control register */
    Time_Cnt_CONTROL &= ((uint8)(~Time_Cnt_CTRL_CMPMODE_MASK));
    
    /* Write the new setting */
    Time_Cnt_CONTROL |= compareMode;
}
#endif  /* (Time_Cnt_COMPARE_MODE_SOFTWARE) */


#if (Time_Cnt_CAPTURE_MODE_SOFTWARE)
/*******************************************************************************
* Function Name: Time_Cnt_SetCaptureMode
********************************************************************************
* Summary:
*  Sets the software controlled Capture Mode.
*
* Parameters:
*  captureMode:  Capture Mode Enumerated Type.
*
* Return:
*  void
*
*******************************************************************************/
void Time_Cnt_SetCaptureMode(uint8 captureMode) 
{
    /* Clear the capture mode bits in the control register */
    Time_Cnt_CONTROL &= ((uint8)(~Time_Cnt_CTRL_CAPMODE_MASK));
    
    /* Write the new setting */
    Time_Cnt_CONTROL |= ((uint8)((uint8)captureMode << Time_Cnt_CTRL_CAPMODE0_SHIFT));
}
#endif  /* (Time_Cnt_CAPTURE_MODE_SOFTWARE) */


/*******************************************************************************
* Function Name: Time_Cnt_ClearFIFO
********************************************************************************
* Summary:
*   This function clears all capture data from the capture FIFO
*
* Parameters:  
*  void:
*
* Return: 
*  None
*
*******************************************************************************/
void Time_Cnt_ClearFIFO(void) 
{

    while(0u != (Time_Cnt_ReadStatusRegister() & Time_Cnt_STATUS_FIFONEMP))
    {
        (void)Time_Cnt_ReadCapture();
    }

}
#endif  /* (!Time_Cnt_UsingFixedFunction) */


/* [] END OF FILE */

