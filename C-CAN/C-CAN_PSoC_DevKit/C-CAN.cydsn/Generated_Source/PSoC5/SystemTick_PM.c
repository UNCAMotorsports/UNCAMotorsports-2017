/*******************************************************************************
* File Name: SystemTick_PM.c
* Version 2.70
*
*  Description:
*     This file provides the power management source code to API for the
*     Timer.
*
*   Note:
*     None
*
*******************************************************************************
* Copyright 2008-2014, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
********************************************************************************/

#include "SystemTick.h"

static SystemTick_backupStruct SystemTick_backup;


/*******************************************************************************
* Function Name: SystemTick_SaveConfig
********************************************************************************
*
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
*  SystemTick_backup:  Variables of this global structure are modified to
*  store the values of non retention configuration registers when Sleep() API is
*  called.
*
*******************************************************************************/
void SystemTick_SaveConfig(void) 
{
    #if (!SystemTick_UsingFixedFunction)
        SystemTick_backup.TimerUdb = SystemTick_ReadCounter();
        SystemTick_backup.InterruptMaskValue = SystemTick_STATUS_MASK;
        #if (SystemTick_UsingHWCaptureCounter)
            SystemTick_backup.TimerCaptureCounter = SystemTick_ReadCaptureCount();
        #endif /* Back Up capture counter register  */

        #if(!SystemTick_UDB_CONTROL_REG_REMOVED)
            SystemTick_backup.TimerControlRegister = SystemTick_ReadControlRegister();
        #endif /* Backup the enable state of the Timer component */
    #endif /* Backup non retention registers in UDB implementation. All fixed function registers are retention */
}


/*******************************************************************************
* Function Name: SystemTick_RestoreConfig
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
*  SystemTick_backup:  Variables of this global structure are used to
*  restore the values of non retention registers on wakeup from sleep mode.
*
*******************************************************************************/
void SystemTick_RestoreConfig(void) 
{   
    #if (!SystemTick_UsingFixedFunction)

        SystemTick_WriteCounter(SystemTick_backup.TimerUdb);
        SystemTick_STATUS_MASK =SystemTick_backup.InterruptMaskValue;
        #if (SystemTick_UsingHWCaptureCounter)
            SystemTick_SetCaptureCount(SystemTick_backup.TimerCaptureCounter);
        #endif /* Restore Capture counter register*/

        #if(!SystemTick_UDB_CONTROL_REG_REMOVED)
            SystemTick_WriteControlRegister(SystemTick_backup.TimerControlRegister);
        #endif /* Restore the enable state of the Timer component */
    #endif /* Restore non retention registers in the UDB implementation only */
}


/*******************************************************************************
* Function Name: SystemTick_Sleep
********************************************************************************
*
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
*  SystemTick_backup.TimerEnableState:  Is modified depending on the
*  enable state of the block before entering sleep mode.
*
*******************************************************************************/
void SystemTick_Sleep(void) 
{
    #if(!SystemTick_UDB_CONTROL_REG_REMOVED)
        /* Save Counter's enable state */
        if(SystemTick_CTRL_ENABLE == (SystemTick_CONTROL & SystemTick_CTRL_ENABLE))
        {
            /* Timer is enabled */
            SystemTick_backup.TimerEnableState = 1u;
        }
        else
        {
            /* Timer is disabled */
            SystemTick_backup.TimerEnableState = 0u;
        }
    #endif /* Back up enable state from the Timer control register */
    SystemTick_Stop();
    SystemTick_SaveConfig();
}


/*******************************************************************************
* Function Name: SystemTick_Wakeup
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
*  SystemTick_backup.enableState:  Is used to restore the enable state of
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void SystemTick_Wakeup(void) 
{
    SystemTick_RestoreConfig();
    #if(!SystemTick_UDB_CONTROL_REG_REMOVED)
        if(SystemTick_backup.TimerEnableState == 1u)
        {     /* Enable Timer's operation */
                SystemTick_Enable();
        } /* Do nothing if Timer was disabled before */
    #endif /* Remove this code section if Control register is removed */
}


/* [] END OF FILE */
