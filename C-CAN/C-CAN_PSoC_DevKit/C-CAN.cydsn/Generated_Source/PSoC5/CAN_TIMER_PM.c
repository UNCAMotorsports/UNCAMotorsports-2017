/*******************************************************************************
* File Name: CAN_TIMER_PM.c
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

#include "CAN_TIMER.h"

static CAN_TIMER_backupStruct CAN_TIMER_backup;


/*******************************************************************************
* Function Name: CAN_TIMER_SaveConfig
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
*  CAN_TIMER_backup:  Variables of this global structure are modified to
*  store the values of non retention configuration registers when Sleep() API is
*  called.
*
*******************************************************************************/
void CAN_TIMER_SaveConfig(void) 
{
    #if (!CAN_TIMER_UsingFixedFunction)
        CAN_TIMER_backup.TimerUdb = CAN_TIMER_ReadCounter();
        CAN_TIMER_backup.InterruptMaskValue = CAN_TIMER_STATUS_MASK;
        #if (CAN_TIMER_UsingHWCaptureCounter)
            CAN_TIMER_backup.TimerCaptureCounter = CAN_TIMER_ReadCaptureCount();
        #endif /* Back Up capture counter register  */

        #if(!CAN_TIMER_UDB_CONTROL_REG_REMOVED)
            CAN_TIMER_backup.TimerControlRegister = CAN_TIMER_ReadControlRegister();
        #endif /* Backup the enable state of the Timer component */
    #endif /* Backup non retention registers in UDB implementation. All fixed function registers are retention */
}


/*******************************************************************************
* Function Name: CAN_TIMER_RestoreConfig
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
*  CAN_TIMER_backup:  Variables of this global structure are used to
*  restore the values of non retention registers on wakeup from sleep mode.
*
*******************************************************************************/
void CAN_TIMER_RestoreConfig(void) 
{   
    #if (!CAN_TIMER_UsingFixedFunction)

        CAN_TIMER_WriteCounter(CAN_TIMER_backup.TimerUdb);
        CAN_TIMER_STATUS_MASK =CAN_TIMER_backup.InterruptMaskValue;
        #if (CAN_TIMER_UsingHWCaptureCounter)
            CAN_TIMER_SetCaptureCount(CAN_TIMER_backup.TimerCaptureCounter);
        #endif /* Restore Capture counter register*/

        #if(!CAN_TIMER_UDB_CONTROL_REG_REMOVED)
            CAN_TIMER_WriteControlRegister(CAN_TIMER_backup.TimerControlRegister);
        #endif /* Restore the enable state of the Timer component */
    #endif /* Restore non retention registers in the UDB implementation only */
}


/*******************************************************************************
* Function Name: CAN_TIMER_Sleep
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
*  CAN_TIMER_backup.TimerEnableState:  Is modified depending on the
*  enable state of the block before entering sleep mode.
*
*******************************************************************************/
void CAN_TIMER_Sleep(void) 
{
    #if(!CAN_TIMER_UDB_CONTROL_REG_REMOVED)
        /* Save Counter's enable state */
        if(CAN_TIMER_CTRL_ENABLE == (CAN_TIMER_CONTROL & CAN_TIMER_CTRL_ENABLE))
        {
            /* Timer is enabled */
            CAN_TIMER_backup.TimerEnableState = 1u;
        }
        else
        {
            /* Timer is disabled */
            CAN_TIMER_backup.TimerEnableState = 0u;
        }
    #endif /* Back up enable state from the Timer control register */
    CAN_TIMER_Stop();
    CAN_TIMER_SaveConfig();
}


/*******************************************************************************
* Function Name: CAN_TIMER_Wakeup
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
*  CAN_TIMER_backup.enableState:  Is used to restore the enable state of
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void CAN_TIMER_Wakeup(void) 
{
    CAN_TIMER_RestoreConfig();
    #if(!CAN_TIMER_UDB_CONTROL_REG_REMOVED)
        if(CAN_TIMER_backup.TimerEnableState == 1u)
        {     /* Enable Timer's operation */
                CAN_TIMER_Enable();
        } /* Do nothing if Timer was disabled before */
    #endif /* Remove this code section if Control register is removed */
}


/* [] END OF FILE */
