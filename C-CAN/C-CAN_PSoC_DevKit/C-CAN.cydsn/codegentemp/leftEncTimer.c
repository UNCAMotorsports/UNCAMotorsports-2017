/*******************************************************************************
* File Name: leftEncTimer.c  
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

#include "leftEncTimer.h"

uint8 leftEncTimer_initVar = 0u;


/*******************************************************************************
* Function Name: leftEncTimer_Init
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
void leftEncTimer_Init(void) 
{
        #if (!leftEncTimer_UsingFixedFunction && !leftEncTimer_ControlRegRemoved)
            uint8 ctrl;
        #endif /* (!leftEncTimer_UsingFixedFunction && !leftEncTimer_ControlRegRemoved) */
        
        #if(!leftEncTimer_UsingFixedFunction) 
            /* Interrupt State Backup for Critical Region*/
            uint8 leftEncTimer_interruptState;
        #endif /* (!leftEncTimer_UsingFixedFunction) */
        
        #if (leftEncTimer_UsingFixedFunction)
            /* Clear all bits but the enable bit (if it's already set for Timer operation */
            leftEncTimer_CONTROL &= leftEncTimer_CTRL_ENABLE;
            
            /* Clear the mode bits for continuous run mode */
            #if (CY_PSOC5A)
                leftEncTimer_CONTROL2 &= ((uint8)(~leftEncTimer_CTRL_MODE_MASK));
            #endif /* (CY_PSOC5A) */
            #if (CY_PSOC3 || CY_PSOC5LP)
                leftEncTimer_CONTROL3 &= ((uint8)(~leftEncTimer_CTRL_MODE_MASK));                
            #endif /* (CY_PSOC3 || CY_PSOC5LP) */
            /* Check if One Shot mode is enabled i.e. RunMode !=0*/
            #if (leftEncTimer_RunModeUsed != 0x0u)
                /* Set 3rd bit of Control register to enable one shot mode */
                leftEncTimer_CONTROL |= leftEncTimer_ONESHOT;
            #endif /* (leftEncTimer_RunModeUsed != 0x0u) */
            
            /* Set the IRQ to use the status register interrupts */
            leftEncTimer_CONTROL2 |= leftEncTimer_CTRL2_IRQ_SEL;
            
            /* Clear and Set SYNCTC and SYNCCMP bits of RT1 register */
            leftEncTimer_RT1 &= ((uint8)(~leftEncTimer_RT1_MASK));
            leftEncTimer_RT1 |= leftEncTimer_SYNC;     
                    
            /*Enable DSI Sync all all inputs of the Timer*/
            leftEncTimer_RT1 &= ((uint8)(~leftEncTimer_SYNCDSI_MASK));
            leftEncTimer_RT1 |= leftEncTimer_SYNCDSI_EN;

        #else
            #if(!leftEncTimer_ControlRegRemoved)
            /* Set the default compare mode defined in the parameter */
            ctrl = leftEncTimer_CONTROL & ((uint8)(~leftEncTimer_CTRL_CMPMODE_MASK));
            leftEncTimer_CONTROL = ctrl | leftEncTimer_DEFAULT_COMPARE_MODE;
            
            /* Set the default capture mode defined in the parameter */
            ctrl = leftEncTimer_CONTROL & ((uint8)(~leftEncTimer_CTRL_CAPMODE_MASK));
            
            #if( 0 != leftEncTimer_CAPTURE_MODE_CONF)
                leftEncTimer_CONTROL = ctrl | leftEncTimer_DEFAULT_CAPTURE_MODE;
            #else
                leftEncTimer_CONTROL = ctrl;
            #endif /* 0 != leftEncTimer_CAPTURE_MODE */ 
            
            #endif /* (!leftEncTimer_ControlRegRemoved) */
        #endif /* (leftEncTimer_UsingFixedFunction) */
        
        /* Clear all data in the FIFO's */
        #if (!leftEncTimer_UsingFixedFunction)
            leftEncTimer_ClearFIFO();
        #endif /* (!leftEncTimer_UsingFixedFunction) */
        
        /* Set Initial values from Configuration */
        leftEncTimer_WritePeriod(leftEncTimer_INIT_PERIOD_VALUE);
        #if (!(leftEncTimer_UsingFixedFunction && (CY_PSOC5A)))
            leftEncTimer_WriteCounter(leftEncTimer_INIT_COUNTER_VALUE);
        #endif /* (!(leftEncTimer_UsingFixedFunction && (CY_PSOC5A))) */
        leftEncTimer_SetInterruptMode(leftEncTimer_INIT_INTERRUPTS_MASK);
        
        #if (!leftEncTimer_UsingFixedFunction)
            /* Read the status register to clear the unwanted interrupts */
            (void)leftEncTimer_ReadStatusRegister();
            /* Set the compare value (only available to non-fixed function implementation */
            leftEncTimer_WriteCompare(leftEncTimer_INIT_COMPARE_VALUE);
            /* Use the interrupt output of the status register for IRQ output */
            
            /* CyEnterCriticalRegion and CyExitCriticalRegion are used to mark following region critical*/
            /* Enter Critical Region*/
            leftEncTimer_interruptState = CyEnterCriticalSection();
            
            leftEncTimer_STATUS_AUX_CTRL |= leftEncTimer_STATUS_ACTL_INT_EN_MASK;
            
            /* Exit Critical Region*/
            CyExitCriticalSection(leftEncTimer_interruptState);
            
        #endif /* (!leftEncTimer_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: leftEncTimer_Enable
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
void leftEncTimer_Enable(void) 
{
    /* Globally Enable the Fixed Function Block chosen */
    #if (leftEncTimer_UsingFixedFunction)
        leftEncTimer_GLOBAL_ENABLE |= leftEncTimer_BLOCK_EN_MASK;
        leftEncTimer_GLOBAL_STBY_ENABLE |= leftEncTimer_BLOCK_STBY_EN_MASK;
    #endif /* (leftEncTimer_UsingFixedFunction) */  
        
    /* Enable the counter from the control register  */
    /* If Fixed Function then make sure Mode is set correctly */
    /* else make sure reset is clear */
    #if(!leftEncTimer_ControlRegRemoved || leftEncTimer_UsingFixedFunction)
        leftEncTimer_CONTROL |= leftEncTimer_CTRL_ENABLE;                
    #endif /* (!leftEncTimer_ControlRegRemoved || leftEncTimer_UsingFixedFunction) */
    
}


/*******************************************************************************
* Function Name: leftEncTimer_Start
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
*  leftEncTimer_initVar: Is modified when this function is called for the  
*   first time. Is used to ensure that initialization happens only once.
*
*******************************************************************************/
void leftEncTimer_Start(void) 
{
    if(leftEncTimer_initVar == 0u)
    {
        leftEncTimer_Init();
        
        leftEncTimer_initVar = 1u; /* Clear this bit for Initialization */        
    }
    
    /* Enable the Counter */
    leftEncTimer_Enable();        
}


/*******************************************************************************
* Function Name: leftEncTimer_Stop
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
void leftEncTimer_Stop(void) 
{
    /* Disable Counter */
    #if(!leftEncTimer_ControlRegRemoved || leftEncTimer_UsingFixedFunction)
        leftEncTimer_CONTROL &= ((uint8)(~leftEncTimer_CTRL_ENABLE));        
    #endif /* (!leftEncTimer_ControlRegRemoved || leftEncTimer_UsingFixedFunction) */
    
    /* Globally disable the Fixed Function Block chosen */
    #if (leftEncTimer_UsingFixedFunction)
        leftEncTimer_GLOBAL_ENABLE &= ((uint8)(~leftEncTimer_BLOCK_EN_MASK));
        leftEncTimer_GLOBAL_STBY_ENABLE &= ((uint8)(~leftEncTimer_BLOCK_STBY_EN_MASK));
    #endif /* (leftEncTimer_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: leftEncTimer_SetInterruptMode
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
void leftEncTimer_SetInterruptMode(uint8 interruptsMask) 
{
    leftEncTimer_STATUS_MASK = interruptsMask;
}


/*******************************************************************************
* Function Name: leftEncTimer_ReadStatusRegister
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
uint8   leftEncTimer_ReadStatusRegister(void) 
{
    return leftEncTimer_STATUS;
}


#if(!leftEncTimer_ControlRegRemoved)
/*******************************************************************************
* Function Name: leftEncTimer_ReadControlRegister
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
uint8   leftEncTimer_ReadControlRegister(void) 
{
    return leftEncTimer_CONTROL;
}


/*******************************************************************************
* Function Name: leftEncTimer_WriteControlRegister
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
void    leftEncTimer_WriteControlRegister(uint8 control) 
{
    leftEncTimer_CONTROL = control;
}

#endif  /* (!leftEncTimer_ControlRegRemoved) */


#if (!(leftEncTimer_UsingFixedFunction && (CY_PSOC5A)))
/*******************************************************************************
* Function Name: leftEncTimer_WriteCounter
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
void leftEncTimer_WriteCounter(uint16 counter) \
                                   
{
    #if(leftEncTimer_UsingFixedFunction)
        /* assert if block is already enabled */
        CYASSERT (0u == (leftEncTimer_GLOBAL_ENABLE & leftEncTimer_BLOCK_EN_MASK));
        /* If block is disabled, enable it and then write the counter */
        leftEncTimer_GLOBAL_ENABLE |= leftEncTimer_BLOCK_EN_MASK;
        CY_SET_REG16(leftEncTimer_COUNTER_LSB_PTR, (uint16)counter);
        leftEncTimer_GLOBAL_ENABLE &= ((uint8)(~leftEncTimer_BLOCK_EN_MASK));
    #else
        CY_SET_REG16(leftEncTimer_COUNTER_LSB_PTR, counter);
    #endif /* (leftEncTimer_UsingFixedFunction) */
}
#endif /* (!(leftEncTimer_UsingFixedFunction && (CY_PSOC5A))) */


/*******************************************************************************
* Function Name: leftEncTimer_ReadCounter
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
uint16 leftEncTimer_ReadCounter(void) 
{
    /* Force capture by reading Accumulator */
    /* Must first do a software capture to be able to read the counter */
    /* It is up to the user code to make sure there isn't already captured data in the FIFO */
    #if(leftEncTimer_UsingFixedFunction)
		(void)CY_GET_REG16(leftEncTimer_COUNTER_LSB_PTR);
	#else
		(void)CY_GET_REG8(leftEncTimer_COUNTER_LSB_PTR_8BIT);
	#endif/* (leftEncTimer_UsingFixedFunction) */
    
    /* Read the data from the FIFO (or capture register for Fixed Function)*/
    #if(leftEncTimer_UsingFixedFunction)
        return ((uint16)CY_GET_REG16(leftEncTimer_STATICCOUNT_LSB_PTR));
    #else
        return (CY_GET_REG16(leftEncTimer_STATICCOUNT_LSB_PTR));
    #endif /* (leftEncTimer_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: leftEncTimer_ReadCapture
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
uint16 leftEncTimer_ReadCapture(void) 
{
    #if(leftEncTimer_UsingFixedFunction)
        return ((uint16)CY_GET_REG16(leftEncTimer_STATICCOUNT_LSB_PTR));
    #else
        return (CY_GET_REG16(leftEncTimer_STATICCOUNT_LSB_PTR));
    #endif /* (leftEncTimer_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: leftEncTimer_WritePeriod
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
void leftEncTimer_WritePeriod(uint16 period) 
{
    #if(leftEncTimer_UsingFixedFunction)
        CY_SET_REG16(leftEncTimer_PERIOD_LSB_PTR,(uint16)period);
    #else
        CY_SET_REG16(leftEncTimer_PERIOD_LSB_PTR, period);
    #endif /* (leftEncTimer_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: leftEncTimer_ReadPeriod
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
uint16 leftEncTimer_ReadPeriod(void) 
{
    #if(leftEncTimer_UsingFixedFunction)
        return ((uint16)CY_GET_REG16(leftEncTimer_PERIOD_LSB_PTR));
    #else
        return (CY_GET_REG16(leftEncTimer_PERIOD_LSB_PTR));
    #endif /* (leftEncTimer_UsingFixedFunction) */
}


#if (!leftEncTimer_UsingFixedFunction)
/*******************************************************************************
* Function Name: leftEncTimer_WriteCompare
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
void leftEncTimer_WriteCompare(uint16 compare) \
                                   
{
    #if(leftEncTimer_UsingFixedFunction)
        CY_SET_REG16(leftEncTimer_COMPARE_LSB_PTR, (uint16)compare);
    #else
        CY_SET_REG16(leftEncTimer_COMPARE_LSB_PTR, compare);
    #endif /* (leftEncTimer_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: leftEncTimer_ReadCompare
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
uint16 leftEncTimer_ReadCompare(void) 
{
    return (CY_GET_REG16(leftEncTimer_COMPARE_LSB_PTR));
}


#if (leftEncTimer_COMPARE_MODE_SOFTWARE)
/*******************************************************************************
* Function Name: leftEncTimer_SetCompareMode
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
void leftEncTimer_SetCompareMode(uint8 compareMode) 
{
    /* Clear the compare mode bits in the control register */
    leftEncTimer_CONTROL &= ((uint8)(~leftEncTimer_CTRL_CMPMODE_MASK));
    
    /* Write the new setting */
    leftEncTimer_CONTROL |= compareMode;
}
#endif  /* (leftEncTimer_COMPARE_MODE_SOFTWARE) */


#if (leftEncTimer_CAPTURE_MODE_SOFTWARE)
/*******************************************************************************
* Function Name: leftEncTimer_SetCaptureMode
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
void leftEncTimer_SetCaptureMode(uint8 captureMode) 
{
    /* Clear the capture mode bits in the control register */
    leftEncTimer_CONTROL &= ((uint8)(~leftEncTimer_CTRL_CAPMODE_MASK));
    
    /* Write the new setting */
    leftEncTimer_CONTROL |= ((uint8)((uint8)captureMode << leftEncTimer_CTRL_CAPMODE0_SHIFT));
}
#endif  /* (leftEncTimer_CAPTURE_MODE_SOFTWARE) */


/*******************************************************************************
* Function Name: leftEncTimer_ClearFIFO
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
void leftEncTimer_ClearFIFO(void) 
{

    while(0u != (leftEncTimer_ReadStatusRegister() & leftEncTimer_STATUS_FIFONEMP))
    {
        (void)leftEncTimer_ReadCapture();
    }

}
#endif  /* (!leftEncTimer_UsingFixedFunction) */


/* [] END OF FILE */

