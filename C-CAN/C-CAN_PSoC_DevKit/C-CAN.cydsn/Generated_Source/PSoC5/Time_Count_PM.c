/*******************************************************************************
* File Name: Time_Count_PM.c  
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

#include "Time_Count.h"

static Time_Count_backupStruct Time_Count_backup;


/*******************************************************************************
* Function Name: Time_Count_SaveConfig
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
*  Time_Count_backup:  Variables of this global structure are modified to 
*  store the values of non retention configuration registers when Sleep() API is 
*  called.
*
*******************************************************************************/
void Time_Count_SaveConfig(void) 
{
    #if (!Time_Count_UsingFixedFunction)

        Time_Count_backup.CounterUdb = Time_Count_ReadCounter();

        #if(!Time_Count_ControlRegRemoved)
            Time_Count_backup.CounterControlRegister = Time_Count_ReadControlRegister();
        #endif /* (!Time_Count_ControlRegRemoved) */

    #endif /* (!Time_Count_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Time_Count_RestoreConfig
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
*  Time_Count_backup:  Variables of this global structure are used to 
*  restore the values of non retention registers on wakeup from sleep mode.
*
*******************************************************************************/
void Time_Count_RestoreConfig(void) 
{      
    #if (!Time_Count_UsingFixedFunction)

       Time_Count_WriteCounter(Time_Count_backup.CounterUdb);

        #if(!Time_Count_ControlRegRemoved)
            Time_Count_WriteControlRegister(Time_Count_backup.CounterControlRegister);
        #endif /* (!Time_Count_ControlRegRemoved) */

    #endif /* (!Time_Count_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Time_Count_Sleep
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
*  Time_Count_backup.enableState:  Is modified depending on the enable 
*  state of the block before entering sleep mode.
*
*******************************************************************************/
void Time_Count_Sleep(void) 
{
    #if(!Time_Count_ControlRegRemoved)
        /* Save Counter's enable state */
        if(Time_Count_CTRL_ENABLE == (Time_Count_CONTROL & Time_Count_CTRL_ENABLE))
        {
            /* Counter is enabled */
            Time_Count_backup.CounterEnableState = 1u;
        }
        else
        {
            /* Counter is disabled */
            Time_Count_backup.CounterEnableState = 0u;
        }
    #else
        Time_Count_backup.CounterEnableState = 1u;
        if(Time_Count_backup.CounterEnableState != 0u)
        {
            Time_Count_backup.CounterEnableState = 0u;
        }
    #endif /* (!Time_Count_ControlRegRemoved) */
    
    Time_Count_Stop();
    Time_Count_SaveConfig();
}


/*******************************************************************************
* Function Name: Time_Count_Wakeup
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
*  Time_Count_backup.enableState:  Is used to restore the enable state of 
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void Time_Count_Wakeup(void) 
{
    Time_Count_RestoreConfig();
    #if(!Time_Count_ControlRegRemoved)
        if(Time_Count_backup.CounterEnableState == 1u)
        {
            /* Enable Counter's operation */
            Time_Count_Enable();
        } /* Do nothing if Counter was disabled before */    
    #endif /* (!Time_Count_ControlRegRemoved) */
    
}


/* [] END OF FILE */
