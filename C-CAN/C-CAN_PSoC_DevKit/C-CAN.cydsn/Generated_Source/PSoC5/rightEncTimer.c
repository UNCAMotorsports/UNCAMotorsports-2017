/*******************************************************************************
* File Name: rightEncTimer.c  
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

#include "rightEncTimer.h"

uint8 rightEncTimer_initVar = 0u;


/*******************************************************************************
* Function Name: rightEncTimer_Init
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
void rightEncTimer_Init(void) 
{
        #if (!rightEncTimer_UsingFixedFunction && !rightEncTimer_ControlRegRemoved)
            uint8 ctrl;
        #endif /* (!rightEncTimer_UsingFixedFunction && !rightEncTimer_ControlRegRemoved) */
        
        #if(!rightEncTimer_UsingFixedFunction) 
            /* Interrupt State Backup for Critical Region*/
            uint8 rightEncTimer_interruptState;
        #endif /* (!rightEncTimer_UsingFixedFunction) */
        
        #if (rightEncTimer_UsingFixedFunction)
            /* Clear all bits but the enable bit (if it's already set for Timer operation */
            rightEncTimer_CONTROL &= rightEncTimer_CTRL_ENABLE;
            
            /* Clear the mode bits for continuous run mode */
            #if (CY_PSOC5A)
                rightEncTimer_CONTROL2 &= ((uint8)(~rightEncTimer_CTRL_MODE_MASK));
            #endif /* (CY_PSOC5A) */
            #if (CY_PSOC3 || CY_PSOC5LP)
                rightEncTimer_CONTROL3 &= ((uint8)(~rightEncTimer_CTRL_MODE_MASK));                
            #endif /* (CY_PSOC3 || CY_PSOC5LP) */
            /* Check if One Shot mode is enabled i.e. RunMode !=0*/
            #if (rightEncTimer_RunModeUsed != 0x0u)
                /* Set 3rd bit of Control register to enable one shot mode */
                rightEncTimer_CONTROL |= rightEncTimer_ONESHOT;
            #endif /* (rightEncTimer_RunModeUsed != 0x0u) */
            
            /* Set the IRQ to use the status register interrupts */
            rightEncTimer_CONTROL2 |= rightEncTimer_CTRL2_IRQ_SEL;
            
            /* Clear and Set SYNCTC and SYNCCMP bits of RT1 register */
            rightEncTimer_RT1 &= ((uint8)(~rightEncTimer_RT1_MASK));
            rightEncTimer_RT1 |= rightEncTimer_SYNC;     
                    
            /*Enable DSI Sync all all inputs of the Timer*/
            rightEncTimer_RT1 &= ((uint8)(~rightEncTimer_SYNCDSI_MASK));
            rightEncTimer_RT1 |= rightEncTimer_SYNCDSI_EN;

        #else
            #if(!rightEncTimer_ControlRegRemoved)
            /* Set the default compare mode defined in the parameter */
            ctrl = rightEncTimer_CONTROL & ((uint8)(~rightEncTimer_CTRL_CMPMODE_MASK));
            rightEncTimer_CONTROL = ctrl | rightEncTimer_DEFAULT_COMPARE_MODE;
            
            /* Set the default capture mode defined in the parameter */
            ctrl = rightEncTimer_CONTROL & ((uint8)(~rightEncTimer_CTRL_CAPMODE_MASK));
            
            #if( 0 != rightEncTimer_CAPTURE_MODE_CONF)
                rightEncTimer_CONTROL = ctrl | rightEncTimer_DEFAULT_CAPTURE_MODE;
            #else
                rightEncTimer_CONTROL = ctrl;
            #endif /* 0 != rightEncTimer_CAPTURE_MODE */ 
            
            #endif /* (!rightEncTimer_ControlRegRemoved) */
        #endif /* (rightEncTimer_UsingFixedFunction) */
        
        /* Clear all data in the FIFO's */
        #if (!rightEncTimer_UsingFixedFunction)
            rightEncTimer_ClearFIFO();
        #endif /* (!rightEncTimer_UsingFixedFunction) */
        
        /* Set Initial values from Configuration */
        rightEncTimer_WritePeriod(rightEncTimer_INIT_PERIOD_VALUE);
        #if (!(rightEncTimer_UsingFixedFunction && (CY_PSOC5A)))
            rightEncTimer_WriteCounter(rightEncTimer_INIT_COUNTER_VALUE);
        #endif /* (!(rightEncTimer_UsingFixedFunction && (CY_PSOC5A))) */
        rightEncTimer_SetInterruptMode(rightEncTimer_INIT_INTERRUPTS_MASK);
        
        #if (!rightEncTimer_UsingFixedFunction)
            /* Read the status register to clear the unwanted interrupts */
            (void)rightEncTimer_ReadStatusRegister();
            /* Set the compare value (only available to non-fixed function implementation */
            rightEncTimer_WriteCompare(rightEncTimer_INIT_COMPARE_VALUE);
            /* Use the interrupt output of the status register for IRQ output */
            
            /* CyEnterCriticalRegion and CyExitCriticalRegion are used to mark following region critical*/
            /* Enter Critical Region*/
            rightEncTimer_interruptState = CyEnterCriticalSection();
            
            rightEncTimer_STATUS_AUX_CTRL |= rightEncTimer_STATUS_ACTL_INT_EN_MASK;
            
            /* Exit Critical Region*/
            CyExitCriticalSection(rightEncTimer_interruptState);
            
        #endif /* (!rightEncTimer_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: rightEncTimer_Enable
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
void rightEncTimer_Enable(void) 
{
    /* Globally Enable the Fixed Function Block chosen */
    #if (rightEncTimer_UsingFixedFunction)
        rightEncTimer_GLOBAL_ENABLE |= rightEncTimer_BLOCK_EN_MASK;
        rightEncTimer_GLOBAL_STBY_ENABLE |= rightEncTimer_BLOCK_STBY_EN_MASK;
    #endif /* (rightEncTimer_UsingFixedFunction) */  
        
    /* Enable the counter from the control register  */
    /* If Fixed Function then make sure Mode is set correctly */
    /* else make sure reset is clear */
    #if(!rightEncTimer_ControlRegRemoved || rightEncTimer_UsingFixedFunction)
        rightEncTimer_CONTROL |= rightEncTimer_CTRL_ENABLE;                
    #endif /* (!rightEncTimer_ControlRegRemoved || rightEncTimer_UsingFixedFunction) */
    
}


/*******************************************************************************
* Function Name: rightEncTimer_Start
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
*  rightEncTimer_initVar: Is modified when this function is called for the  
*   first time. Is used to ensure that initialization happens only once.
*
*******************************************************************************/
void rightEncTimer_Start(void) 
{
    if(rightEncTimer_initVar == 0u)
    {
        rightEncTimer_Init();
        
        rightEncTimer_initVar = 1u; /* Clear this bit for Initialization */        
    }
    
    /* Enable the Counter */
    rightEncTimer_Enable();        
}


/*******************************************************************************
* Function Name: rightEncTimer_Stop
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
void rightEncTimer_Stop(void) 
{
    /* Disable Counter */
    #if(!rightEncTimer_ControlRegRemoved || rightEncTimer_UsingFixedFunction)
        rightEncTimer_CONTROL &= ((uint8)(~rightEncTimer_CTRL_ENABLE));        
    #endif /* (!rightEncTimer_ControlRegRemoved || rightEncTimer_UsingFixedFunction) */
    
    /* Globally disable the Fixed Function Block chosen */
    #if (rightEncTimer_UsingFixedFunction)
        rightEncTimer_GLOBAL_ENABLE &= ((uint8)(~rightEncTimer_BLOCK_EN_MASK));
        rightEncTimer_GLOBAL_STBY_ENABLE &= ((uint8)(~rightEncTimer_BLOCK_STBY_EN_MASK));
    #endif /* (rightEncTimer_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: rightEncTimer_SetInterruptMode
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
void rightEncTimer_SetInterruptMode(uint8 interruptsMask) 
{
    rightEncTimer_STATUS_MASK = interruptsMask;
}


/*******************************************************************************
* Function Name: rightEncTimer_ReadStatusRegister
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
uint8   rightEncTimer_ReadStatusRegister(void) 
{
    return rightEncTimer_STATUS;
}


#if(!rightEncTimer_ControlRegRemoved)
/*******************************************************************************
* Function Name: rightEncTimer_ReadControlRegister
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
uint8   rightEncTimer_ReadControlRegister(void) 
{
    return rightEncTimer_CONTROL;
}


/*******************************************************************************
* Function Name: rightEncTimer_WriteControlRegister
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
void    rightEncTimer_WriteControlRegister(uint8 control) 
{
    rightEncTimer_CONTROL = control;
}

#endif  /* (!rightEncTimer_ControlRegRemoved) */


#if (!(rightEncTimer_UsingFixedFunction && (CY_PSOC5A)))
/*******************************************************************************
* Function Name: rightEncTimer_WriteCounter
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
void rightEncTimer_WriteCounter(uint16 counter) \
                                   
{
    #if(rightEncTimer_UsingFixedFunction)
        /* assert if block is already enabled */
        CYASSERT (0u == (rightEncTimer_GLOBAL_ENABLE & rightEncTimer_BLOCK_EN_MASK));
        /* If block is disabled, enable it and then write the counter */
        rightEncTimer_GLOBAL_ENABLE |= rightEncTimer_BLOCK_EN_MASK;
        CY_SET_REG16(rightEncTimer_COUNTER_LSB_PTR, (uint16)counter);
        rightEncTimer_GLOBAL_ENABLE &= ((uint8)(~rightEncTimer_BLOCK_EN_MASK));
    #else
        CY_SET_REG16(rightEncTimer_COUNTER_LSB_PTR, counter);
    #endif /* (rightEncTimer_UsingFixedFunction) */
}
#endif /* (!(rightEncTimer_UsingFixedFunction && (CY_PSOC5A))) */


/*******************************************************************************
* Function Name: rightEncTimer_ReadCounter
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
uint16 rightEncTimer_ReadCounter(void) 
{
    /* Force capture by reading Accumulator */
    /* Must first do a software capture to be able to read the counter */
    /* It is up to the user code to make sure there isn't already captured data in the FIFO */
    #if(rightEncTimer_UsingFixedFunction)
		(void)CY_GET_REG16(rightEncTimer_COUNTER_LSB_PTR);
	#else
		(void)CY_GET_REG8(rightEncTimer_COUNTER_LSB_PTR_8BIT);
	#endif/* (rightEncTimer_UsingFixedFunction) */
    
    /* Read the data from the FIFO (or capture register for Fixed Function)*/
    #if(rightEncTimer_UsingFixedFunction)
        return ((uint16)CY_GET_REG16(rightEncTimer_STATICCOUNT_LSB_PTR));
    #else
        return (CY_GET_REG16(rightEncTimer_STATICCOUNT_LSB_PTR));
    #endif /* (rightEncTimer_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: rightEncTimer_ReadCapture
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
uint16 rightEncTimer_ReadCapture(void) 
{
    #if(rightEncTimer_UsingFixedFunction)
        return ((uint16)CY_GET_REG16(rightEncTimer_STATICCOUNT_LSB_PTR));
    #else
        return (CY_GET_REG16(rightEncTimer_STATICCOUNT_LSB_PTR));
    #endif /* (rightEncTimer_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: rightEncTimer_WritePeriod
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
void rightEncTimer_WritePeriod(uint16 period) 
{
    #if(rightEncTimer_UsingFixedFunction)
        CY_SET_REG16(rightEncTimer_PERIOD_LSB_PTR,(uint16)period);
    #else
        CY_SET_REG16(rightEncTimer_PERIOD_LSB_PTR, period);
    #endif /* (rightEncTimer_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: rightEncTimer_ReadPeriod
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
uint16 rightEncTimer_ReadPeriod(void) 
{
    #if(rightEncTimer_UsingFixedFunction)
        return ((uint16)CY_GET_REG16(rightEncTimer_PERIOD_LSB_PTR));
    #else
        return (CY_GET_REG16(rightEncTimer_PERIOD_LSB_PTR));
    #endif /* (rightEncTimer_UsingFixedFunction) */
}


#if (!rightEncTimer_UsingFixedFunction)
/*******************************************************************************
* Function Name: rightEncTimer_WriteCompare
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
void rightEncTimer_WriteCompare(uint16 compare) \
                                   
{
    #if(rightEncTimer_UsingFixedFunction)
        CY_SET_REG16(rightEncTimer_COMPARE_LSB_PTR, (uint16)compare);
    #else
        CY_SET_REG16(rightEncTimer_COMPARE_LSB_PTR, compare);
    #endif /* (rightEncTimer_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: rightEncTimer_ReadCompare
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
uint16 rightEncTimer_ReadCompare(void) 
{
    return (CY_GET_REG16(rightEncTimer_COMPARE_LSB_PTR));
}


#if (rightEncTimer_COMPARE_MODE_SOFTWARE)
/*******************************************************************************
* Function Name: rightEncTimer_SetCompareMode
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
void rightEncTimer_SetCompareMode(uint8 compareMode) 
{
    /* Clear the compare mode bits in the control register */
    rightEncTimer_CONTROL &= ((uint8)(~rightEncTimer_CTRL_CMPMODE_MASK));
    
    /* Write the new setting */
    rightEncTimer_CONTROL |= compareMode;
}
#endif  /* (rightEncTimer_COMPARE_MODE_SOFTWARE) */


#if (rightEncTimer_CAPTURE_MODE_SOFTWARE)
/*******************************************************************************
* Function Name: rightEncTimer_SetCaptureMode
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
void rightEncTimer_SetCaptureMode(uint8 captureMode) 
{
    /* Clear the capture mode bits in the control register */
    rightEncTimer_CONTROL &= ((uint8)(~rightEncTimer_CTRL_CAPMODE_MASK));
    
    /* Write the new setting */
    rightEncTimer_CONTROL |= ((uint8)((uint8)captureMode << rightEncTimer_CTRL_CAPMODE0_SHIFT));
}
#endif  /* (rightEncTimer_CAPTURE_MODE_SOFTWARE) */


/*******************************************************************************
* Function Name: rightEncTimer_ClearFIFO
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
void rightEncTimer_ClearFIFO(void) 
{

    while(0u != (rightEncTimer_ReadStatusRegister() & rightEncTimer_STATUS_FIFONEMP))
    {
        (void)rightEncTimer_ReadCapture();
    }

}
#endif  /* (!rightEncTimer_UsingFixedFunction) */


/* [] END OF FILE */

