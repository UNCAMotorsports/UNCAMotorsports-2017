/*******************************************************************************
* File Name: Port_for_fun_PM.c
* Version 1.80
*
* Description:
*  This file contains the setup, control, and status commands to support 
*  the component operation in the low power mode. 
*
* Note:
*
********************************************************************************
* Copyright 2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#include "Port_for_fun.h"

/* Check for removal by optimization */
#if !defined(Port_for_fun_Sync_ctrl_reg__REMOVED)

static Port_for_fun_BACKUP_STRUCT  Port_for_fun_backup = {0u};

    
/*******************************************************************************
* Function Name: Port_for_fun_SaveConfig
********************************************************************************
*
* Summary:
*  Saves the control register value.
*
* Parameters:
*  None
*
* Return:
*  None
*
*******************************************************************************/
void Port_for_fun_SaveConfig(void) 
{
    Port_for_fun_backup.controlState = Port_for_fun_Control;
}


/*******************************************************************************
* Function Name: Port_for_fun_RestoreConfig
********************************************************************************
*
* Summary:
*  Restores the control register value.
*
* Parameters:
*  None
*
* Return:
*  None
*
*
*******************************************************************************/
void Port_for_fun_RestoreConfig(void) 
{
     Port_for_fun_Control = Port_for_fun_backup.controlState;
}


/*******************************************************************************
* Function Name: Port_for_fun_Sleep
********************************************************************************
*
* Summary:
*  Prepares the component for entering the low power mode.
*
* Parameters:
*  None
*
* Return:
*  None
*
*******************************************************************************/
void Port_for_fun_Sleep(void) 
{
    Port_for_fun_SaveConfig();
}


/*******************************************************************************
* Function Name: Port_for_fun_Wakeup
********************************************************************************
*
* Summary:
*  Restores the component after waking up from the low power mode.
*
* Parameters:
*  None
*
* Return:
*  None
*
*******************************************************************************/
void Port_for_fun_Wakeup(void)  
{
    Port_for_fun_RestoreConfig();
}

#endif /* End check for removal by optimization */


/* [] END OF FILE */
