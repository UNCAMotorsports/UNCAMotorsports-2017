/*******************************************************************************
* File Name: Enc_Timer.c  
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

#include "Enc_Timer.h"

uint8 Enc_Timer_initVar = 0u;


/*******************************************************************************
* Function Name: Enc_Timer_Init
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
void Enc_Timer_Init(void) 
{
        #if (!Enc_Timer_UsingFixedFunction && !Enc_Timer_ControlRegRemoved)
            uint8 ctrl;
        #endif /* (!Enc_Timer_UsingFixedFunction && !Enc_Timer_ControlRegRemoved) */
        
        #if(!Enc_Timer_UsingFixedFunction) 
            /* Interrupt State Backup for Critical Region*/
            uint8 Enc_Timer_interruptState;
        #endif /* (!Enc_Timer_UsingFixedFunction) */
        
        #if (Enc_Timer_UsingFixedFunction)
            /* Clear all bits but the enable bit (if it's already set for Timer operation */
            Enc_Timer_CONTROL &= Enc_Timer_CTRL_ENABLE;
            
            /* Clear the mode bits for continuous run mode */
            #if (CY_PSOC5A)
                Enc_Timer_CONTROL2 &= ((uint8)(~Enc_Timer_CTRL_MODE_MASK));
            #endif /* (CY_PSOC5A) */
            #if (CY_PSOC3 || CY_PSOC5LP)
                Enc_Timer_CONTROL3 &= ((uint8)(~Enc_Timer_CTRL_MODE_MASK));                
            #endif /* (CY_PSOC3 || CY_PSOC5LP) */
            /* Check if One Shot mode is enabled i.e. RunMode !=0*/
            #if (Enc_Timer_RunModeUsed != 0x0u)
                /* Set 3rd bit of Control register to enable one shot mode */
                Enc_Timer_CONTROL |= Enc_Timer_ONESHOT;
            #endif /* (Enc_Timer_RunModeUsed != 0x0u) */
            
            /* Set the IRQ to use the status register interrupts */
            Enc_Timer_CONTROL2 |= Enc_Timer_CTRL2_IRQ_SEL;
            
            /* Clear and Set SYNCTC and SYNCCMP bits of RT1 register */
            Enc_Timer_RT1 &= ((uint8)(~Enc_Timer_RT1_MASK));
            Enc_Timer_RT1 |= Enc_Timer_SYNC;     
                    
            /*Enable DSI Sync all all inputs of the Timer*/
            Enc_Timer_RT1 &= ((uint8)(~Enc_Timer_SYNCDSI_MASK));
            Enc_Timer_RT1 |= Enc_Timer_SYNCDSI_EN;

        #else
            #if(!Enc_Timer_ControlRegRemoved)
            /* Set the default compare mode defined in the parameter */
            ctrl = Enc_Timer_CONTROL & ((uint8)(~Enc_Timer_CTRL_CMPMODE_MASK));
            Enc_Timer_CONTROL = ctrl | Enc_Timer_DEFAULT_COMPARE_MODE;
            
            /* Set the default capture mode defined in the parameter */
            ctrl = Enc_Timer_CONTROL & ((uint8)(~Enc_Timer_CTRL_CAPMODE_MASK));
            
            #if( 0 != Enc_Timer_CAPTURE_MODE_CONF)
                Enc_Timer_CONTROL = ctrl | Enc_Timer_DEFAULT_CAPTURE_MODE;
            #else
                Enc_Timer_CONTROL = ctrl;
            #endif /* 0 != Enc_Timer_CAPTURE_MODE */ 
            
            #endif /* (!Enc_Timer_ControlRegRemoved) */
        #endif /* (Enc_Timer_UsingFixedFunction) */
        
        /* Clear all data in the FIFO's */
        #if (!Enc_Timer_UsingFixedFunction)
            Enc_Timer_ClearFIFO();
        #endif /* (!Enc_Timer_UsingFixedFunction) */
        
        /* Set Initial values from Configuration */
        Enc_Timer_WritePeriod(Enc_Timer_INIT_PERIOD_VALUE);
        #if (!(Enc_Timer_UsingFixedFunction && (CY_PSOC5A)))
            Enc_Timer_WriteCounter(Enc_Timer_INIT_COUNTER_VALUE);
        #endif /* (!(Enc_Timer_UsingFixedFunction && (CY_PSOC5A))) */
        Enc_Timer_SetInterruptMode(Enc_Timer_INIT_INTERRUPTS_MASK);
        
        #if (!Enc_Timer_UsingFixedFunction)
            /* Read the status register to clear the unwanted interrupts */
            (void)Enc_Timer_ReadStatusRegister();
            /* Set the compare value (only available to non-fixed function implementation */
            Enc_Timer_WriteCompare(Enc_Timer_INIT_COMPARE_VALUE);
            /* Use the interrupt output of the status register for IRQ output */
            
            /* CyEnterCriticalRegion and CyExitCriticalRegion are used to mark following region critical*/
            /* Enter Critical Region*/
            Enc_Timer_interruptState = CyEnterCriticalSection();
            
            Enc_Timer_STATUS_AUX_CTRL |= Enc_Timer_STATUS_ACTL_INT_EN_MASK;
            
            /* Exit Critical Region*/
            CyExitCriticalSection(Enc_Timer_interruptState);
            
        #endif /* (!Enc_Timer_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Enc_Timer_Enable
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
void Enc_Timer_Enable(void) 
{
    /* Globally Enable the Fixed Function Block chosen */
    #if (Enc_Timer_UsingFixedFunction)
        Enc_Timer_GLOBAL_ENABLE |= Enc_Timer_BLOCK_EN_MASK;
        Enc_Timer_GLOBAL_STBY_ENABLE |= Enc_Timer_BLOCK_STBY_EN_MASK;
    #endif /* (Enc_Timer_UsingFixedFunction) */  
        
    /* Enable the counter from the control register  */
    /* If Fixed Function then make sure Mode is set correctly */
    /* else make sure reset is clear */
    #if(!Enc_Timer_ControlRegRemoved || Enc_Timer_UsingFixedFunction)
        Enc_Timer_CONTROL |= Enc_Timer_CTRL_ENABLE;                
    #endif /* (!Enc_Timer_ControlRegRemoved || Enc_Timer_UsingFixedFunction) */
    
}


/*******************************************************************************
* Function Name: Enc_Timer_Start
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
*  Enc_Timer_initVar: Is modified when this function is called for the  
*   first time. Is used to ensure that initialization happens only once.
*
*******************************************************************************/
void Enc_Timer_Start(void) 
{
    if(Enc_Timer_initVar == 0u)
    {
        Enc_Timer_Init();
        
        Enc_Timer_initVar = 1u; /* Clear this bit for Initialization */        
    }
    
    /* Enable the Counter */
    Enc_Timer_Enable();        
}


/*******************************************************************************
* Function Name: Enc_Timer_Stop
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
void Enc_Timer_Stop(void) 
{
    /* Disable Counter */
    #if(!Enc_Timer_ControlRegRemoved || Enc_Timer_UsingFixedFunction)
        Enc_Timer_CONTROL &= ((uint8)(~Enc_Timer_CTRL_ENABLE));        
    #endif /* (!Enc_Timer_ControlRegRemoved || Enc_Timer_UsingFixedFunction) */
    
    /* Globally disable the Fixed Function Block chosen */
    #if (Enc_Timer_UsingFixedFunction)
        Enc_Timer_GLOBAL_ENABLE &= ((uint8)(~Enc_Timer_BLOCK_EN_MASK));
        Enc_Timer_GLOBAL_STBY_ENABLE &= ((uint8)(~Enc_Timer_BLOCK_STBY_EN_MASK));
    #endif /* (Enc_Timer_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Enc_Timer_SetInterruptMode
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
void Enc_Timer_SetInterruptMode(uint8 interruptsMask) 
{
    Enc_Timer_STATUS_MASK = interruptsMask;
}


/*******************************************************************************
* Function Name: Enc_Timer_ReadStatusRegister
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
uint8   Enc_Timer_ReadStatusRegister(void) 
{
    return Enc_Timer_STATUS;
}


#if(!Enc_Timer_ControlRegRemoved)
/*******************************************************************************
* Function Name: Enc_Timer_ReadControlRegister
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
uint8   Enc_Timer_ReadControlRegister(void) 
{
    return Enc_Timer_CONTROL;
}


/*******************************************************************************
* Function Name: Enc_Timer_WriteControlRegister
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
void    Enc_Timer_WriteControlRegister(uint8 control) 
{
    Enc_Timer_CONTROL = control;
}

#endif  /* (!Enc_Timer_ControlRegRemoved) */


#if (!(Enc_Timer_UsingFixedFunction && (CY_PSOC5A)))
/*******************************************************************************
* Function Name: Enc_Timer_WriteCounter
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
void Enc_Timer_WriteCounter(uint32 counter) \
                                   
{
    #if(Enc_Timer_UsingFixedFunction)
        /* assert if block is already enabled */
        CYASSERT (0u == (Enc_Timer_GLOBAL_ENABLE & Enc_Timer_BLOCK_EN_MASK));
        /* If block is disabled, enable it and then write the counter */
        Enc_Timer_GLOBAL_ENABLE |= Enc_Timer_BLOCK_EN_MASK;
        CY_SET_REG16(Enc_Timer_COUNTER_LSB_PTR, (uint16)counter);
        Enc_Timer_GLOBAL_ENABLE &= ((uint8)(~Enc_Timer_BLOCK_EN_MASK));
    #else
        CY_SET_REG24(Enc_Timer_COUNTER_LSB_PTR, counter);
    #endif /* (Enc_Timer_UsingFixedFunction) */
}
#endif /* (!(Enc_Timer_UsingFixedFunction && (CY_PSOC5A))) */


/*******************************************************************************
* Function Name: Enc_Timer_ReadCounter
********************************************************************************
* Summary:
* Returns the current value of the counter.  It doesn't matter
* if the counter is enabled or running.
*
* Parameters:  
*  void:  
*
* Return: 
*  (uint32) The present value of the counter.
*
*******************************************************************************/
uint32 Enc_Timer_ReadCounter(void) 
{
    /* Force capture by reading Accumulator */
    /* Must first do a software capture to be able to read the counter */
    /* It is up to the user code to make sure there isn't already captured data in the FIFO */
    #if(Enc_Timer_UsingFixedFunction)
		(void)CY_GET_REG16(Enc_Timer_COUNTER_LSB_PTR);
	#else
		(void)CY_GET_REG8(Enc_Timer_COUNTER_LSB_PTR_8BIT);
	#endif/* (Enc_Timer_UsingFixedFunction) */
    
    /* Read the data from the FIFO (or capture register for Fixed Function)*/
    #if(Enc_Timer_UsingFixedFunction)
        return ((uint32)CY_GET_REG16(Enc_Timer_STATICCOUNT_LSB_PTR));
    #else
        return (CY_GET_REG24(Enc_Timer_STATICCOUNT_LSB_PTR));
    #endif /* (Enc_Timer_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Enc_Timer_ReadCapture
********************************************************************************
* Summary:
*   This function returns the last value captured.
*
* Parameters:  
*  void
*
* Return: 
*  (uint32) Present Capture value.
*
*******************************************************************************/
uint32 Enc_Timer_ReadCapture(void) 
{
    #if(Enc_Timer_UsingFixedFunction)
        return ((uint32)CY_GET_REG16(Enc_Timer_STATICCOUNT_LSB_PTR));
    #else
        return (CY_GET_REG24(Enc_Timer_STATICCOUNT_LSB_PTR));
    #endif /* (Enc_Timer_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Enc_Timer_WritePeriod
********************************************************************************
* Summary:
* Changes the period of the counter.  The new period 
* will be loaded the next time terminal count is detected.
*
* Parameters:  
*  period: (uint32) A value of 0 will result in
*         the counter remaining at zero.  
*
* Return: 
*  void
*
*******************************************************************************/
void Enc_Timer_WritePeriod(uint32 period) 
{
    #if(Enc_Timer_UsingFixedFunction)
        CY_SET_REG16(Enc_Timer_PERIOD_LSB_PTR,(uint16)period);
    #else
        CY_SET_REG24(Enc_Timer_PERIOD_LSB_PTR, period);
    #endif /* (Enc_Timer_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Enc_Timer_ReadPeriod
********************************************************************************
* Summary:
* Reads the current period value without affecting counter operation.
*
* Parameters:  
*  void:  
*
* Return: 
*  (uint32) Present period value.
*
*******************************************************************************/
uint32 Enc_Timer_ReadPeriod(void) 
{
    #if(Enc_Timer_UsingFixedFunction)
        return ((uint32)CY_GET_REG16(Enc_Timer_PERIOD_LSB_PTR));
    #else
        return (CY_GET_REG24(Enc_Timer_PERIOD_LSB_PTR));
    #endif /* (Enc_Timer_UsingFixedFunction) */
}


#if (!Enc_Timer_UsingFixedFunction)
/*******************************************************************************
* Function Name: Enc_Timer_WriteCompare
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
void Enc_Timer_WriteCompare(uint32 compare) \
                                   
{
    #if(Enc_Timer_UsingFixedFunction)
        CY_SET_REG16(Enc_Timer_COMPARE_LSB_PTR, (uint16)compare);
    #else
        CY_SET_REG24(Enc_Timer_COMPARE_LSB_PTR, compare);
    #endif /* (Enc_Timer_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Enc_Timer_ReadCompare
********************************************************************************
* Summary:
* Returns the compare value.
*
* Parameters:  
*  void:
*
* Return: 
*  (uint32) Present compare value.
*
*******************************************************************************/
uint32 Enc_Timer_ReadCompare(void) 
{
    return (CY_GET_REG24(Enc_Timer_COMPARE_LSB_PTR));
}


#if (Enc_Timer_COMPARE_MODE_SOFTWARE)
/*******************************************************************************
* Function Name: Enc_Timer_SetCompareMode
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
void Enc_Timer_SetCompareMode(uint8 compareMode) 
{
    /* Clear the compare mode bits in the control register */
    Enc_Timer_CONTROL &= ((uint8)(~Enc_Timer_CTRL_CMPMODE_MASK));
    
    /* Write the new setting */
    Enc_Timer_CONTROL |= compareMode;
}
#endif  /* (Enc_Timer_COMPARE_MODE_SOFTWARE) */


#if (Enc_Timer_CAPTURE_MODE_SOFTWARE)
/*******************************************************************************
* Function Name: Enc_Timer_SetCaptureMode
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
void Enc_Timer_SetCaptureMode(uint8 captureMode) 
{
    /* Clear the capture mode bits in the control register */
    Enc_Timer_CONTROL &= ((uint8)(~Enc_Timer_CTRL_CAPMODE_MASK));
    
    /* Write the new setting */
    Enc_Timer_CONTROL |= ((uint8)((uint8)captureMode << Enc_Timer_CTRL_CAPMODE0_SHIFT));
}
#endif  /* (Enc_Timer_CAPTURE_MODE_SOFTWARE) */


/*******************************************************************************
* Function Name: Enc_Timer_ClearFIFO
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
void Enc_Timer_ClearFIFO(void) 
{

    while(0u != (Enc_Timer_ReadStatusRegister() & Enc_Timer_STATUS_FIFONEMP))
    {
        (void)Enc_Timer_ReadCapture();
    }

}
#endif  /* (!Enc_Timer_UsingFixedFunction) */


/* [] END OF FILE */

