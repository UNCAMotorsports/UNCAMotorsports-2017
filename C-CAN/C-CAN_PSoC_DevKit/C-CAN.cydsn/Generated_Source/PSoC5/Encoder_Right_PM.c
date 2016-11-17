/*******************************************************************************
* File Name: Encoder_Right_PM.c  
* Version 3.0
*
*  Description:
*    This file provides the power management source code to API for the
*    Counter.  
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

static Encoder_Right_backupStruct Encoder_Right_backup;


/*******************************************************************************
* Function Name: Encoder_Right_SaveConfig
********************************************************************************
* Summary:
*     Save the current user configuration
*
* Parameters:  
*  void
*
* Return: 
*  void
*
* Global variables:
*  Encoder_Right_backup:  Variables of this global structure are modified to 
*  store the values of non retention configuration registers when Sleep() API is 
*  called.
*
*******************************************************************************/
void Encoder_Right_SaveConfig(void) 
{
    #if (!Encoder_Right_UsingFixedFunction)

        Encoder_Right_backup.CounterUdb = Encoder_Right_ReadCounter();

        #if(!Encoder_Right_ControlRegRemoved)
            Encoder_Right_backup.CounterControlRegister = Encoder_Right_ReadControlRegister();
        #endif /* (!Encoder_Right_ControlRegRemoved) */

    #endif /* (!Encoder_Right_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Encoder_Right_RestoreConfig
********************************************************************************
*
* Summary:
*  Restores the current user configuration.
*
* Parameters:  
*  void
*
* Return: 
*  void
*
* Global variables:
*  Encoder_Right_backup:  Variables of this global structure are used to 
*  restore the values of non retention registers on wakeup from sleep mode.
*
*******************************************************************************/
void Encoder_Right_RestoreConfig(void) 
{      
    #if (!Encoder_Right_UsingFixedFunction)

       Encoder_Right_WriteCounter(Encoder_Right_backup.CounterUdb);

        #if(!Encoder_Right_ControlRegRemoved)
            Encoder_Right_WriteControlRegister(Encoder_Right_backup.CounterControlRegister);
        #endif /* (!Encoder_Right_ControlRegRemoved) */

    #endif /* (!Encoder_Right_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Encoder_Right_Sleep
********************************************************************************
* Summary:
*     Stop and Save the user configuration
*
* Parameters:  
*  void
*
* Return: 
*  void
*
* Global variables:
*  Encoder_Right_backup.enableState:  Is modified depending on the enable 
*  state of the block before entering sleep mode.
*
*******************************************************************************/
void Encoder_Right_Sleep(void) 
{
    #if(!Encoder_Right_ControlRegRemoved)
        /* Save Counter's enable state */
        if(Encoder_Right_CTRL_ENABLE == (Encoder_Right_CONTROL & Encoder_Right_CTRL_ENABLE))
        {
            /* Counter is enabled */
            Encoder_Right_backup.CounterEnableState = 1u;
        }
        else
        {
            /* Counter is disabled */
            Encoder_Right_backup.CounterEnableState = 0u;
        }
    #else
        Encoder_Right_backup.CounterEnableState = 1u;
        if(Encoder_Right_backup.CounterEnableState != 0u)
        {
            Encoder_Right_backup.CounterEnableState = 0u;
        }
    #endif /* (!Encoder_Right_ControlRegRemoved) */
    
    Encoder_Right_Stop();
    Encoder_Right_SaveConfig();
}


/*******************************************************************************
* Function Name: Encoder_Right_Wakeup
********************************************************************************
*
* Summary:
*  Restores and enables the user configuration
*  
* Parameters:  
*  void
*
* Return: 
*  void
*
* Global variables:
*  Encoder_Right_backup.enableState:  Is used to restore the enable state of 
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void Encoder_Right_Wakeup(void) 
{
    Encoder_Right_RestoreConfig();
    #if(!Encoder_Right_ControlRegRemoved)
        if(Encoder_Right_backup.CounterEnableState == 1u)
        {
            /* Enable Counter's operation */
            Encoder_Right_Enable();
        } /* Do nothing if Counter was disabled before */    
    #endif /* (!Encoder_Right_ControlRegRemoved) */
    
}


/* [] END OF FILE */
