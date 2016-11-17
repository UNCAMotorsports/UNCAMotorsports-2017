/*******************************************************************************
* File Name: Encoder_Cnt_PM.c  
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

#include "Encoder_Cnt.h"

static Encoder_Cnt_backupStruct Encoder_Cnt_backup;


/*******************************************************************************
* Function Name: Encoder_Cnt_SaveConfig
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
*  Encoder_Cnt_backup:  Variables of this global structure are modified to 
*  store the values of non retention configuration registers when Sleep() API is 
*  called.
*
*******************************************************************************/
void Encoder_Cnt_SaveConfig(void) 
{
    #if (!Encoder_Cnt_UsingFixedFunction)

        Encoder_Cnt_backup.CounterUdb = Encoder_Cnt_ReadCounter();

        #if(!Encoder_Cnt_ControlRegRemoved)
            Encoder_Cnt_backup.CounterControlRegister = Encoder_Cnt_ReadControlRegister();
        #endif /* (!Encoder_Cnt_ControlRegRemoved) */

    #endif /* (!Encoder_Cnt_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Encoder_Cnt_RestoreConfig
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
*  Encoder_Cnt_backup:  Variables of this global structure are used to 
*  restore the values of non retention registers on wakeup from sleep mode.
*
*******************************************************************************/
void Encoder_Cnt_RestoreConfig(void) 
{      
    #if (!Encoder_Cnt_UsingFixedFunction)

       Encoder_Cnt_WriteCounter(Encoder_Cnt_backup.CounterUdb);

        #if(!Encoder_Cnt_ControlRegRemoved)
            Encoder_Cnt_WriteControlRegister(Encoder_Cnt_backup.CounterControlRegister);
        #endif /* (!Encoder_Cnt_ControlRegRemoved) */

    #endif /* (!Encoder_Cnt_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Encoder_Cnt_Sleep
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
*  Encoder_Cnt_backup.enableState:  Is modified depending on the enable 
*  state of the block before entering sleep mode.
*
*******************************************************************************/
void Encoder_Cnt_Sleep(void) 
{
    #if(!Encoder_Cnt_ControlRegRemoved)
        /* Save Counter's enable state */
        if(Encoder_Cnt_CTRL_ENABLE == (Encoder_Cnt_CONTROL & Encoder_Cnt_CTRL_ENABLE))
        {
            /* Counter is enabled */
            Encoder_Cnt_backup.CounterEnableState = 1u;
        }
        else
        {
            /* Counter is disabled */
            Encoder_Cnt_backup.CounterEnableState = 0u;
        }
    #else
        Encoder_Cnt_backup.CounterEnableState = 1u;
        if(Encoder_Cnt_backup.CounterEnableState != 0u)
        {
            Encoder_Cnt_backup.CounterEnableState = 0u;
        }
    #endif /* (!Encoder_Cnt_ControlRegRemoved) */
    
    Encoder_Cnt_Stop();
    Encoder_Cnt_SaveConfig();
}


/*******************************************************************************
* Function Name: Encoder_Cnt_Wakeup
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
*  Encoder_Cnt_backup.enableState:  Is used to restore the enable state of 
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void Encoder_Cnt_Wakeup(void) 
{
    Encoder_Cnt_RestoreConfig();
    #if(!Encoder_Cnt_ControlRegRemoved)
        if(Encoder_Cnt_backup.CounterEnableState == 1u)
        {
            /* Enable Counter's operation */
            Encoder_Cnt_Enable();
        } /* Do nothing if Counter was disabled before */    
    #endif /* (!Encoder_Cnt_ControlRegRemoved) */
    
}


/* [] END OF FILE */
