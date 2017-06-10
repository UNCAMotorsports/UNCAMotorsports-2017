/*******************************************************************************
* File Name: Encoder_PM.c  
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

#include "Encoder.h"

static Encoder_backupStruct Encoder_backup;


/*******************************************************************************
* Function Name: Encoder_SaveConfig
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
*  Encoder_backup:  Variables of this global structure are modified to 
*  store the values of non retention configuration registers when Sleep() API is 
*  called.
*
*******************************************************************************/
void Encoder_SaveConfig(void) 
{
    #if (!Encoder_UsingFixedFunction)

        Encoder_backup.CounterUdb = Encoder_ReadCounter();

        #if(!Encoder_ControlRegRemoved)
            Encoder_backup.CounterControlRegister = Encoder_ReadControlRegister();
        #endif /* (!Encoder_ControlRegRemoved) */

    #endif /* (!Encoder_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Encoder_RestoreConfig
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
*  Encoder_backup:  Variables of this global structure are used to 
*  restore the values of non retention registers on wakeup from sleep mode.
*
*******************************************************************************/
void Encoder_RestoreConfig(void) 
{      
    #if (!Encoder_UsingFixedFunction)

       Encoder_WriteCounter(Encoder_backup.CounterUdb);

        #if(!Encoder_ControlRegRemoved)
            Encoder_WriteControlRegister(Encoder_backup.CounterControlRegister);
        #endif /* (!Encoder_ControlRegRemoved) */

    #endif /* (!Encoder_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Encoder_Sleep
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
*  Encoder_backup.enableState:  Is modified depending on the enable 
*  state of the block before entering sleep mode.
*
*******************************************************************************/
void Encoder_Sleep(void) 
{
    #if(!Encoder_ControlRegRemoved)
        /* Save Counter's enable state */
        if(Encoder_CTRL_ENABLE == (Encoder_CONTROL & Encoder_CTRL_ENABLE))
        {
            /* Counter is enabled */
            Encoder_backup.CounterEnableState = 1u;
        }
        else
        {
            /* Counter is disabled */
            Encoder_backup.CounterEnableState = 0u;
        }
    #else
        Encoder_backup.CounterEnableState = 1u;
        if(Encoder_backup.CounterEnableState != 0u)
        {
            Encoder_backup.CounterEnableState = 0u;
        }
    #endif /* (!Encoder_ControlRegRemoved) */
    
    Encoder_Stop();
    Encoder_SaveConfig();
}


/*******************************************************************************
* Function Name: Encoder_Wakeup
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
*  Encoder_backup.enableState:  Is used to restore the enable state of 
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void Encoder_Wakeup(void) 
{
    Encoder_RestoreConfig();
    #if(!Encoder_ControlRegRemoved)
        if(Encoder_backup.CounterEnableState == 1u)
        {
            /* Enable Counter's operation */
            Encoder_Enable();
        } /* Do nothing if Counter was disabled before */    
    #endif /* (!Encoder_ControlRegRemoved) */
    
}


/* [] END OF FILE */
