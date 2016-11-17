/*******************************************************************************
* File Name: rightEncTimer_PM.c  
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

#include "rightEncTimer.h"

static rightEncTimer_backupStruct rightEncTimer_backup;


/*******************************************************************************
* Function Name: rightEncTimer_SaveConfig
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
*  rightEncTimer_backup:  Variables of this global structure are modified to 
*  store the values of non retention configuration registers when Sleep() API is 
*  called.
*
*******************************************************************************/
void rightEncTimer_SaveConfig(void) 
{
    #if (!rightEncTimer_UsingFixedFunction)

        rightEncTimer_backup.CounterUdb = rightEncTimer_ReadCounter();

        #if(!rightEncTimer_ControlRegRemoved)
            rightEncTimer_backup.CounterControlRegister = rightEncTimer_ReadControlRegister();
        #endif /* (!rightEncTimer_ControlRegRemoved) */

    #endif /* (!rightEncTimer_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: rightEncTimer_RestoreConfig
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
*  rightEncTimer_backup:  Variables of this global structure are used to 
*  restore the values of non retention registers on wakeup from sleep mode.
*
*******************************************************************************/
void rightEncTimer_RestoreConfig(void) 
{      
    #if (!rightEncTimer_UsingFixedFunction)

       rightEncTimer_WriteCounter(rightEncTimer_backup.CounterUdb);

        #if(!rightEncTimer_ControlRegRemoved)
            rightEncTimer_WriteControlRegister(rightEncTimer_backup.CounterControlRegister);
        #endif /* (!rightEncTimer_ControlRegRemoved) */

    #endif /* (!rightEncTimer_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: rightEncTimer_Sleep
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
*  rightEncTimer_backup.enableState:  Is modified depending on the enable 
*  state of the block before entering sleep mode.
*
*******************************************************************************/
void rightEncTimer_Sleep(void) 
{
    #if(!rightEncTimer_ControlRegRemoved)
        /* Save Counter's enable state */
        if(rightEncTimer_CTRL_ENABLE == (rightEncTimer_CONTROL & rightEncTimer_CTRL_ENABLE))
        {
            /* Counter is enabled */
            rightEncTimer_backup.CounterEnableState = 1u;
        }
        else
        {
            /* Counter is disabled */
            rightEncTimer_backup.CounterEnableState = 0u;
        }
    #else
        rightEncTimer_backup.CounterEnableState = 1u;
        if(rightEncTimer_backup.CounterEnableState != 0u)
        {
            rightEncTimer_backup.CounterEnableState = 0u;
        }
    #endif /* (!rightEncTimer_ControlRegRemoved) */
    
    rightEncTimer_Stop();
    rightEncTimer_SaveConfig();
}


/*******************************************************************************
* Function Name: rightEncTimer_Wakeup
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
*  rightEncTimer_backup.enableState:  Is used to restore the enable state of 
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void rightEncTimer_Wakeup(void) 
{
    rightEncTimer_RestoreConfig();
    #if(!rightEncTimer_ControlRegRemoved)
        if(rightEncTimer_backup.CounterEnableState == 1u)
        {
            /* Enable Counter's operation */
            rightEncTimer_Enable();
        } /* Do nothing if Counter was disabled before */    
    #endif /* (!rightEncTimer_ControlRegRemoved) */
    
}


/* [] END OF FILE */
