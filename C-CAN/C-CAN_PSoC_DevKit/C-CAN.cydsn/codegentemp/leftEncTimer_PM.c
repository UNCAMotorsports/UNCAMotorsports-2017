/*******************************************************************************
* File Name: leftEncTimer_PM.c  
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

#include "leftEncTimer.h"

static leftEncTimer_backupStruct leftEncTimer_backup;


/*******************************************************************************
* Function Name: leftEncTimer_SaveConfig
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
*  leftEncTimer_backup:  Variables of this global structure are modified to 
*  store the values of non retention configuration registers when Sleep() API is 
*  called.
*
*******************************************************************************/
void leftEncTimer_SaveConfig(void) 
{
    #if (!leftEncTimer_UsingFixedFunction)

        leftEncTimer_backup.CounterUdb = leftEncTimer_ReadCounter();

        #if(!leftEncTimer_ControlRegRemoved)
            leftEncTimer_backup.CounterControlRegister = leftEncTimer_ReadControlRegister();
        #endif /* (!leftEncTimer_ControlRegRemoved) */

    #endif /* (!leftEncTimer_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: leftEncTimer_RestoreConfig
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
*  leftEncTimer_backup:  Variables of this global structure are used to 
*  restore the values of non retention registers on wakeup from sleep mode.
*
*******************************************************************************/
void leftEncTimer_RestoreConfig(void) 
{      
    #if (!leftEncTimer_UsingFixedFunction)

       leftEncTimer_WriteCounter(leftEncTimer_backup.CounterUdb);

        #if(!leftEncTimer_ControlRegRemoved)
            leftEncTimer_WriteControlRegister(leftEncTimer_backup.CounterControlRegister);
        #endif /* (!leftEncTimer_ControlRegRemoved) */

    #endif /* (!leftEncTimer_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: leftEncTimer_Sleep
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
*  leftEncTimer_backup.enableState:  Is modified depending on the enable 
*  state of the block before entering sleep mode.
*
*******************************************************************************/
void leftEncTimer_Sleep(void) 
{
    #if(!leftEncTimer_ControlRegRemoved)
        /* Save Counter's enable state */
        if(leftEncTimer_CTRL_ENABLE == (leftEncTimer_CONTROL & leftEncTimer_CTRL_ENABLE))
        {
            /* Counter is enabled */
            leftEncTimer_backup.CounterEnableState = 1u;
        }
        else
        {
            /* Counter is disabled */
            leftEncTimer_backup.CounterEnableState = 0u;
        }
    #else
        leftEncTimer_backup.CounterEnableState = 1u;
        if(leftEncTimer_backup.CounterEnableState != 0u)
        {
            leftEncTimer_backup.CounterEnableState = 0u;
        }
    #endif /* (!leftEncTimer_ControlRegRemoved) */
    
    leftEncTimer_Stop();
    leftEncTimer_SaveConfig();
}


/*******************************************************************************
* Function Name: leftEncTimer_Wakeup
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
*  leftEncTimer_backup.enableState:  Is used to restore the enable state of 
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void leftEncTimer_Wakeup(void) 
{
    leftEncTimer_RestoreConfig();
    #if(!leftEncTimer_ControlRegRemoved)
        if(leftEncTimer_backup.CounterEnableState == 1u)
        {
            /* Enable Counter's operation */
            leftEncTimer_Enable();
        } /* Do nothing if Counter was disabled before */    
    #endif /* (!leftEncTimer_ControlRegRemoved) */
    
}


/* [] END OF FILE */
