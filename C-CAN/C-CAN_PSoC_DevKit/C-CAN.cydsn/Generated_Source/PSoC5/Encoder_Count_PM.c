/*******************************************************************************
* File Name: Encoder_Count_PM.c  
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

#include "Encoder_Count.h"

static Encoder_Count_backupStruct Encoder_Count_backup;


/*******************************************************************************
* Function Name: Encoder_Count_SaveConfig
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
*  Encoder_Count_backup:  Variables of this global structure are modified to 
*  store the values of non retention configuration registers when Sleep() API is 
*  called.
*
*******************************************************************************/
void Encoder_Count_SaveConfig(void) 
{
    #if (!Encoder_Count_UsingFixedFunction)

        Encoder_Count_backup.CounterUdb = Encoder_Count_ReadCounter();

        #if(!Encoder_Count_ControlRegRemoved)
            Encoder_Count_backup.CounterControlRegister = Encoder_Count_ReadControlRegister();
        #endif /* (!Encoder_Count_ControlRegRemoved) */

    #endif /* (!Encoder_Count_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Encoder_Count_RestoreConfig
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
*  Encoder_Count_backup:  Variables of this global structure are used to 
*  restore the values of non retention registers on wakeup from sleep mode.
*
*******************************************************************************/
void Encoder_Count_RestoreConfig(void) 
{      
    #if (!Encoder_Count_UsingFixedFunction)

       Encoder_Count_WriteCounter(Encoder_Count_backup.CounterUdb);

        #if(!Encoder_Count_ControlRegRemoved)
            Encoder_Count_WriteControlRegister(Encoder_Count_backup.CounterControlRegister);
        #endif /* (!Encoder_Count_ControlRegRemoved) */

    #endif /* (!Encoder_Count_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Encoder_Count_Sleep
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
*  Encoder_Count_backup.enableState:  Is modified depending on the enable 
*  state of the block before entering sleep mode.
*
*******************************************************************************/
void Encoder_Count_Sleep(void) 
{
    #if(!Encoder_Count_ControlRegRemoved)
        /* Save Counter's enable state */
        if(Encoder_Count_CTRL_ENABLE == (Encoder_Count_CONTROL & Encoder_Count_CTRL_ENABLE))
        {
            /* Counter is enabled */
            Encoder_Count_backup.CounterEnableState = 1u;
        }
        else
        {
            /* Counter is disabled */
            Encoder_Count_backup.CounterEnableState = 0u;
        }
    #else
        Encoder_Count_backup.CounterEnableState = 1u;
        if(Encoder_Count_backup.CounterEnableState != 0u)
        {
            Encoder_Count_backup.CounterEnableState = 0u;
        }
    #endif /* (!Encoder_Count_ControlRegRemoved) */
    
    Encoder_Count_Stop();
    Encoder_Count_SaveConfig();
}


/*******************************************************************************
* Function Name: Encoder_Count_Wakeup
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
*  Encoder_Count_backup.enableState:  Is used to restore the enable state of 
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void Encoder_Count_Wakeup(void) 
{
    Encoder_Count_RestoreConfig();
    #if(!Encoder_Count_ControlRegRemoved)
        if(Encoder_Count_backup.CounterEnableState == 1u)
        {
            /* Enable Counter's operation */
            Encoder_Count_Enable();
        } /* Do nothing if Counter was disabled before */    
    #endif /* (!Encoder_Count_ControlRegRemoved) */
    
}


/* [] END OF FILE */
