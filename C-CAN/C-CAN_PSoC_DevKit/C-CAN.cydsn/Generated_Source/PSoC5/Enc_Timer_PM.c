/*******************************************************************************
* File Name: Enc_Timer_PM.c  
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

#include "Enc_Timer.h"

static Enc_Timer_backupStruct Enc_Timer_backup;


/*******************************************************************************
* Function Name: Enc_Timer_SaveConfig
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
*  Enc_Timer_backup:  Variables of this global structure are modified to 
*  store the values of non retention configuration registers when Sleep() API is 
*  called.
*
*******************************************************************************/
void Enc_Timer_SaveConfig(void) 
{
    #if (!Enc_Timer_UsingFixedFunction)

        Enc_Timer_backup.CounterUdb = Enc_Timer_ReadCounter();

        #if(!Enc_Timer_ControlRegRemoved)
            Enc_Timer_backup.CounterControlRegister = Enc_Timer_ReadControlRegister();
        #endif /* (!Enc_Timer_ControlRegRemoved) */

    #endif /* (!Enc_Timer_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Enc_Timer_RestoreConfig
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
*  Enc_Timer_backup:  Variables of this global structure are used to 
*  restore the values of non retention registers on wakeup from sleep mode.
*
*******************************************************************************/
void Enc_Timer_RestoreConfig(void) 
{      
    #if (!Enc_Timer_UsingFixedFunction)

       Enc_Timer_WriteCounter(Enc_Timer_backup.CounterUdb);

        #if(!Enc_Timer_ControlRegRemoved)
            Enc_Timer_WriteControlRegister(Enc_Timer_backup.CounterControlRegister);
        #endif /* (!Enc_Timer_ControlRegRemoved) */

    #endif /* (!Enc_Timer_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Enc_Timer_Sleep
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
*  Enc_Timer_backup.enableState:  Is modified depending on the enable 
*  state of the block before entering sleep mode.
*
*******************************************************************************/
void Enc_Timer_Sleep(void) 
{
    #if(!Enc_Timer_ControlRegRemoved)
        /* Save Counter's enable state */
        if(Enc_Timer_CTRL_ENABLE == (Enc_Timer_CONTROL & Enc_Timer_CTRL_ENABLE))
        {
            /* Counter is enabled */
            Enc_Timer_backup.CounterEnableState = 1u;
        }
        else
        {
            /* Counter is disabled */
            Enc_Timer_backup.CounterEnableState = 0u;
        }
    #else
        Enc_Timer_backup.CounterEnableState = 1u;
        if(Enc_Timer_backup.CounterEnableState != 0u)
        {
            Enc_Timer_backup.CounterEnableState = 0u;
        }
    #endif /* (!Enc_Timer_ControlRegRemoved) */
    
    Enc_Timer_Stop();
    Enc_Timer_SaveConfig();
}


/*******************************************************************************
* Function Name: Enc_Timer_Wakeup
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
*  Enc_Timer_backup.enableState:  Is used to restore the enable state of 
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void Enc_Timer_Wakeup(void) 
{
    Enc_Timer_RestoreConfig();
    #if(!Enc_Timer_ControlRegRemoved)
        if(Enc_Timer_backup.CounterEnableState == 1u)
        {
            /* Enable Counter's operation */
            Enc_Timer_Enable();
        } /* Do nothing if Counter was disabled before */    
    #endif /* (!Enc_Timer_ControlRegRemoved) */
    
}


/* [] END OF FILE */
