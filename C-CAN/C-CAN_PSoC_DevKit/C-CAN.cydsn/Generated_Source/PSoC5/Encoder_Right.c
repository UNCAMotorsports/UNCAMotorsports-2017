/*******************************************************************************
* File Name: Encoder_Right.c  
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

#include "Encoder_Right.h"

uint8 Encoder_Right_initVar = 0u;


/*******************************************************************************
* Function Name: Encoder_Right_Init
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
void Encoder_Right_Init(void) 
{
        #if (!Encoder_Right_UsingFixedFunction && !Encoder_Right_ControlRegRemoved)
            uint8 ctrl;
        #endif /* (!Encoder_Right_UsingFixedFunction && !Encoder_Right_ControlRegRemoved) */
        
        #if(!Encoder_Right_UsingFixedFunction) 
            /* Interrupt State Backup for Critical Region*/
            uint8 Encoder_Right_interruptState;
        #endif /* (!Encoder_Right_UsingFixedFunction) */
        
        #if (Encoder_Right_UsingFixedFunction)
            /* Clear all bits but the enable bit (if it's already set for Timer operation */
            Encoder_Right_CONTROL &= Encoder_Right_CTRL_ENABLE;
            
            /* Clear the mode bits for continuous run mode */
            #if (CY_PSOC5A)
                Encoder_Right_CONTROL2 &= ((uint8)(~Encoder_Right_CTRL_MODE_MASK));
            #endif /* (CY_PSOC5A) */
            #if (CY_PSOC3 || CY_PSOC5LP)
                Encoder_Right_CONTROL3 &= ((uint8)(~Encoder_Right_CTRL_MODE_MASK));                
            #endif /* (CY_PSOC3 || CY_PSOC5LP) */
            /* Check if One Shot mode is enabled i.e. RunMode !=0*/
            #if (Encoder_Right_RunModeUsed != 0x0u)
                /* Set 3rd bit of Control register to enable one shot mode */
                Encoder_Right_CONTROL |= Encoder_Right_ONESHOT;
            #endif /* (Encoder_Right_RunModeUsed != 0x0u) */
            
            /* Set the IRQ to use the status register interrupts */
            Encoder_Right_CONTROL2 |= Encoder_Right_CTRL2_IRQ_SEL;
            
            /* Clear and Set SYNCTC and SYNCCMP bits of RT1 register */
            Encoder_Right_RT1 &= ((uint8)(~Encoder_Right_RT1_MASK));
            Encoder_Right_RT1 |= Encoder_Right_SYNC;     
                    
            /*Enable DSI Sync all all inputs of the Timer*/
            Encoder_Right_RT1 &= ((uint8)(~Encoder_Right_SYNCDSI_MASK));
            Encoder_Right_RT1 |= Encoder_Right_SYNCDSI_EN;

        #else
            #if(!Encoder_Right_ControlRegRemoved)
            /* Set the default compare mode defined in the parameter */
            ctrl = Encoder_Right_CONTROL & ((uint8)(~Encoder_Right_CTRL_CMPMODE_MASK));
            Encoder_Right_CONTROL = ctrl | Encoder_Right_DEFAULT_COMPARE_MODE;
            
            /* Set the default capture mode defined in the parameter */
            ctrl = Encoder_Right_CONTROL & ((uint8)(~Encoder_Right_CTRL_CAPMODE_MASK));
            
            #if( 0 != Encoder_Right_CAPTURE_MODE_CONF)
                Encoder_Right_CONTROL = ctrl | Encoder_Right_DEFAULT_CAPTURE_MODE;
            #else
                Encoder_Right_CONTROL = ctrl;
            #endif /* 0 != Encoder_Right_CAPTURE_MODE */ 
            
            #endif /* (!Encoder_Right_ControlRegRemoved) */
        #endif /* (Encoder_Right_UsingFixedFunction) */
        
        /* Clear all data in the FIFO's */
        #if (!Encoder_Right_UsingFixedFunction)
            Encoder_Right_ClearFIFO();
        #endif /* (!Encoder_Right_UsingFixedFunction) */
        
        /* Set Initial values from Configuration */
        Encoder_Right_WritePeriod(Encoder_Right_INIT_PERIOD_VALUE);
        #if (!(Encoder_Right_UsingFixedFunction && (CY_PSOC5A)))
            Encoder_Right_WriteCounter(Encoder_Right_INIT_COUNTER_VALUE);
        #endif /* (!(Encoder_Right_UsingFixedFunction && (CY_PSOC5A))) */
        Encoder_Right_SetInterruptMode(Encoder_Right_INIT_INTERRUPTS_MASK);
        
        #if (!Encoder_Right_UsingFixedFunction)
            /* Read the status register to clear the unwanted interrupts */
            (void)Encoder_Right_ReadStatusRegister();
            /* Set the compare value (only available to non-fixed function implementation */
            Encoder_Right_WriteCompare(Encoder_Right_INIT_COMPARE_VALUE);
            /* Use the interrupt output of the status register for IRQ output */
            
            /* CyEnterCriticalRegion and CyExitCriticalRegion are used to mark following region critical*/
            /* Enter Critical Region*/
            Encoder_Right_interruptState = CyEnterCriticalSection();
            
            Encoder_Right_STATUS_AUX_CTRL |= Encoder_Right_STATUS_ACTL_INT_EN_MASK;
            
            /* Exit Critical Region*/
            CyExitCriticalSection(Encoder_Right_interruptState);
            
        #endif /* (!Encoder_Right_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Encoder_Right_Enable
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
void Encoder_Right_Enable(void) 
{
    /* Globally Enable the Fixed Function Block chosen */
    #if (Encoder_Right_UsingFixedFunction)
        Encoder_Right_GLOBAL_ENABLE |= Encoder_Right_BLOCK_EN_MASK;
        Encoder_Right_GLOBAL_STBY_ENABLE |= Encoder_Right_BLOCK_STBY_EN_MASK;
    #endif /* (Encoder_Right_UsingFixedFunction) */  
        
    /* Enable the counter from the control register  */
    /* If Fixed Function then make sure Mode is set correctly */
    /* else make sure reset is clear */
    #if(!Encoder_Right_ControlRegRemoved || Encoder_Right_UsingFixedFunction)
        Encoder_Right_CONTROL |= Encoder_Right_CTRL_ENABLE;                
    #endif /* (!Encoder_Right_ControlRegRemoved || Encoder_Right_UsingFixedFunction) */
    
}


/*******************************************************************************
* Function Name: Encoder_Right_Start
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
*  Encoder_Right_initVar: Is modified when this function is called for the  
*   first time. Is used to ensure that initialization happens only once.
*
*******************************************************************************/
void Encoder_Right_Start(void) 
{
    if(Encoder_Right_initVar == 0u)
    {
        Encoder_Right_Init();
        
        Encoder_Right_initVar = 1u; /* Clear this bit for Initialization */        
    }
    
    /* Enable the Counter */
    Encoder_Right_Enable();        
}


/*******************************************************************************
* Function Name: Encoder_Right_Stop
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
void Encoder_Right_Stop(void) 
{
    /* Disable Counter */
    #if(!Encoder_Right_ControlRegRemoved || Encoder_Right_UsingFixedFunction)
        Encoder_Right_CONTROL &= ((uint8)(~Encoder_Right_CTRL_ENABLE));        
    #endif /* (!Encoder_Right_ControlRegRemoved || Encoder_Right_UsingFixedFunction) */
    
    /* Globally disable the Fixed Function Block chosen */
    #if (Encoder_Right_UsingFixedFunction)
        Encoder_Right_GLOBAL_ENABLE &= ((uint8)(~Encoder_Right_BLOCK_EN_MASK));
        Encoder_Right_GLOBAL_STBY_ENABLE &= ((uint8)(~Encoder_Right_BLOCK_STBY_EN_MASK));
    #endif /* (Encoder_Right_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Encoder_Right_SetInterruptMode
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
void Encoder_Right_SetInterruptMode(uint8 interruptsMask) 
{
    Encoder_Right_STATUS_MASK = interruptsMask;
}


/*******************************************************************************
* Function Name: Encoder_Right_ReadStatusRegister
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
uint8   Encoder_Right_ReadStatusRegister(void) 
{
    return Encoder_Right_STATUS;
}


#if(!Encoder_Right_ControlRegRemoved)
/*******************************************************************************
* Function Name: Encoder_Right_ReadControlRegister
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
uint8   Encoder_Right_ReadControlRegister(void) 
{
    return Encoder_Right_CONTROL;
}


/*******************************************************************************
* Function Name: Encoder_Right_WriteControlRegister
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
void    Encoder_Right_WriteControlRegister(uint8 control) 
{
    Encoder_Right_CONTROL = control;
}

#endif  /* (!Encoder_Right_ControlRegRemoved) */


#if (!(Encoder_Right_UsingFixedFunction && (CY_PSOC5A)))
/*******************************************************************************
* Function Name: Encoder_Right_WriteCounter
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
void Encoder_Right_WriteCounter(uint16 counter) \
                                   
{
    #if(Encoder_Right_UsingFixedFunction)
        /* assert if block is already enabled */
        CYASSERT (0u == (Encoder_Right_GLOBAL_ENABLE & Encoder_Right_BLOCK_EN_MASK));
        /* If block is disabled, enable it and then write the counter */
        Encoder_Right_GLOBAL_ENABLE |= Encoder_Right_BLOCK_EN_MASK;
        CY_SET_REG16(Encoder_Right_COUNTER_LSB_PTR, (uint16)counter);
        Encoder_Right_GLOBAL_ENABLE &= ((uint8)(~Encoder_Right_BLOCK_EN_MASK));
    #else
        CY_SET_REG16(Encoder_Right_COUNTER_LSB_PTR, counter);
    #endif /* (Encoder_Right_UsingFixedFunction) */
}
#endif /* (!(Encoder_Right_UsingFixedFunction && (CY_PSOC5A))) */


/*******************************************************************************
* Function Name: Encoder_Right_ReadCounter
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
uint16 Encoder_Right_ReadCounter(void) 
{
    /* Force capture by reading Accumulator */
    /* Must first do a software capture to be able to read the counter */
    /* It is up to the user code to make sure there isn't already captured data in the FIFO */
    #if(Encoder_Right_UsingFixedFunction)
		(void)CY_GET_REG16(Encoder_Right_COUNTER_LSB_PTR);
	#else
		(void)CY_GET_REG8(Encoder_Right_COUNTER_LSB_PTR_8BIT);
	#endif/* (Encoder_Right_UsingFixedFunction) */
    
    /* Read the data from the FIFO (or capture register for Fixed Function)*/
    #if(Encoder_Right_UsingFixedFunction)
        return ((uint16)CY_GET_REG16(Encoder_Right_STATICCOUNT_LSB_PTR));
    #else
        return (CY_GET_REG16(Encoder_Right_STATICCOUNT_LSB_PTR));
    #endif /* (Encoder_Right_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Encoder_Right_ReadCapture
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
uint16 Encoder_Right_ReadCapture(void) 
{
    #if(Encoder_Right_UsingFixedFunction)
        return ((uint16)CY_GET_REG16(Encoder_Right_STATICCOUNT_LSB_PTR));
    #else
        return (CY_GET_REG16(Encoder_Right_STATICCOUNT_LSB_PTR));
    #endif /* (Encoder_Right_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Encoder_Right_WritePeriod
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
void Encoder_Right_WritePeriod(uint16 period) 
{
    #if(Encoder_Right_UsingFixedFunction)
        CY_SET_REG16(Encoder_Right_PERIOD_LSB_PTR,(uint16)period);
    #else
        CY_SET_REG16(Encoder_Right_PERIOD_LSB_PTR, period);
    #endif /* (Encoder_Right_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Encoder_Right_ReadPeriod
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
uint16 Encoder_Right_ReadPeriod(void) 
{
    #if(Encoder_Right_UsingFixedFunction)
        return ((uint16)CY_GET_REG16(Encoder_Right_PERIOD_LSB_PTR));
    #else
        return (CY_GET_REG16(Encoder_Right_PERIOD_LSB_PTR));
    #endif /* (Encoder_Right_UsingFixedFunction) */
}


#if (!Encoder_Right_UsingFixedFunction)
/*******************************************************************************
* Function Name: Encoder_Right_WriteCompare
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
void Encoder_Right_WriteCompare(uint16 compare) \
                                   
{
    #if(Encoder_Right_UsingFixedFunction)
        CY_SET_REG16(Encoder_Right_COMPARE_LSB_PTR, (uint16)compare);
    #else
        CY_SET_REG16(Encoder_Right_COMPARE_LSB_PTR, compare);
    #endif /* (Encoder_Right_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Encoder_Right_ReadCompare
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
uint16 Encoder_Right_ReadCompare(void) 
{
    return (CY_GET_REG16(Encoder_Right_COMPARE_LSB_PTR));
}


#if (Encoder_Right_COMPARE_MODE_SOFTWARE)
/*******************************************************************************
* Function Name: Encoder_Right_SetCompareMode
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
void Encoder_Right_SetCompareMode(uint8 compareMode) 
{
    /* Clear the compare mode bits in the control register */
    Encoder_Right_CONTROL &= ((uint8)(~Encoder_Right_CTRL_CMPMODE_MASK));
    
    /* Write the new setting */
    Encoder_Right_CONTROL |= compareMode;
}
#endif  /* (Encoder_Right_COMPARE_MODE_SOFTWARE) */


#if (Encoder_Right_CAPTURE_MODE_SOFTWARE)
/*******************************************************************************
* Function Name: Encoder_Right_SetCaptureMode
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
void Encoder_Right_SetCaptureMode(uint8 captureMode) 
{
    /* Clear the capture mode bits in the control register */
    Encoder_Right_CONTROL &= ((uint8)(~Encoder_Right_CTRL_CAPMODE_MASK));
    
    /* Write the new setting */
    Encoder_Right_CONTROL |= ((uint8)((uint8)captureMode << Encoder_Right_CTRL_CAPMODE0_SHIFT));
}
#endif  /* (Encoder_Right_CAPTURE_MODE_SOFTWARE) */


/*******************************************************************************
* Function Name: Encoder_Right_ClearFIFO
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
void Encoder_Right_ClearFIFO(void) 
{

    while(0u != (Encoder_Right_ReadStatusRegister() & Encoder_Right_STATUS_FIFONEMP))
    {
        (void)Encoder_Right_ReadCapture();
    }

}
#endif  /* (!Encoder_Right_UsingFixedFunction) */


/* [] END OF FILE */

