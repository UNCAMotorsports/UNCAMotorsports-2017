/*******************************************************************************
* File Name: Time_Cnt_PM.c  
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

#include "Time_Cnt.h"

static Time_Cnt_backupStruct Time_Cnt_backup;


/*******************************************************************************
* Function Name: Time_Cnt_SaveConfig
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
*  Time_Cnt_backup:  Variables of this global structure are modified to 
*  store the values of non retention configuration registers when Sleep() API is 
*  called.
*
*******************************************************************************/
void Time_Cnt_SaveConfig(void) 
{
    #if (!Time_Cnt_UsingFixedFunction)

        Time_Cnt_backup.CounterUdb = Time_Cnt_ReadCounter();

        #if(!Time_Cnt_ControlRegRemoved)
            Time_Cnt_backup.CounterControlRegister = Time_Cnt_ReadControlRegister();
        #endif /* (!Time_Cnt_ControlRegRemoved) */

    #endif /* (!Time_Cnt_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Time_Cnt_RestoreConfig
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
*  Time_Cnt_backup:  Variables of this global structure are used to 
*  restore the values of non retention registers on wakeup from sleep mode.
*
*******************************************************************************/
void Time_Cnt_RestoreConfig(void) 
{      
    #if (!Time_Cnt_UsingFixedFunction)

       Time_Cnt_WriteCounter(Time_Cnt_backup.CounterUdb);

        #if(!Time_Cnt_ControlRegRemoved)
            Time_Cnt_WriteControlRegister(Time_Cnt_backup.CounterControlRegister);
        #endif /* (!Time_Cnt_ControlRegRemoved) */

    #endif /* (!Time_Cnt_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Time_Cnt_Sleep
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
*  Time_Cnt_backup.enableState:  Is modified depending on the enable 
*  state of the block before entering sleep mode.
*
*******************************************************************************/
void Time_Cnt_Sleep(void) 
{
    #if(!Time_Cnt_ControlRegRemoved)
        /* Save Counter's enable state */
        if(Time_Cnt_CTRL_ENABLE == (Time_Cnt_CONTROL & Time_Cnt_CTRL_ENABLE))
        {
            /* Counter is enabled */
            Time_Cnt_backup.CounterEnableState = 1u;
        }
        else
        {
            /* Counter is disabled */
            Time_Cnt_backup.CounterEnableState = 0u;
        }
    #else
        Time_Cnt_backup.CounterEnableState = 1u;
        if(Time_Cnt_backup.CounterEnableState != 0u)
        {
            Time_Cnt_backup.CounterEnableState = 0u;
        }
    #endif /* (!Time_Cnt_ControlRegRemoved) */
    
    Time_Cnt_Stop();
    Time_Cnt_SaveConfig();
}


/*******************************************************************************
* Function Name: Time_Cnt_Wakeup
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
*  Time_Cnt_backup.enableState:  Is used to restore the enable state of 
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void Time_Cnt_Wakeup(void) 
{
    Time_Cnt_RestoreConfig();
    #if(!Time_Cnt_ControlRegRemoved)
        if(Time_Cnt_backup.CounterEnableState == 1u)
        {
            /* Enable Counter's operation */
            Time_Cnt_Enable();
        } /* Do nothing if Counter was disabled before */    
    #endif /* (!Time_Cnt_ControlRegRemoved) */
    
}


/* [] END OF FILE */
