/*******************************************************************************
* File Name: Encoder_Left_PM.c  
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

#include "Encoder_Left.h"

static Encoder_Left_backupStruct Encoder_Left_backup;


/*******************************************************************************
* Function Name: Encoder_Left_SaveConfig
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
*  Encoder_Left_backup:  Variables of this global structure are modified to 
*  store the values of non retention configuration registers when Sleep() API is 
*  called.
*
*******************************************************************************/
void Encoder_Left_SaveConfig(void) 
{
    #if (!Encoder_Left_UsingFixedFunction)

        Encoder_Left_backup.CounterUdb = Encoder_Left_ReadCounter();

        #if(!Encoder_Left_ControlRegRemoved)
            Encoder_Left_backup.CounterControlRegister = Encoder_Left_ReadControlRegister();
        #endif /* (!Encoder_Left_ControlRegRemoved) */

    #endif /* (!Encoder_Left_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Encoder_Left_RestoreConfig
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
*  Encoder_Left_backup:  Variables of this global structure are used to 
*  restore the values of non retention registers on wakeup from sleep mode.
*
*******************************************************************************/
void Encoder_Left_RestoreConfig(void) 
{      
    #if (!Encoder_Left_UsingFixedFunction)

       Encoder_Left_WriteCounter(Encoder_Left_backup.CounterUdb);

        #if(!Encoder_Left_ControlRegRemoved)
            Encoder_Left_WriteControlRegister(Encoder_Left_backup.CounterControlRegister);
        #endif /* (!Encoder_Left_ControlRegRemoved) */

    #endif /* (!Encoder_Left_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Encoder_Left_Sleep
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
*  Encoder_Left_backup.enableState:  Is modified depending on the enable 
*  state of the block before entering sleep mode.
*
*******************************************************************************/
void Encoder_Left_Sleep(void) 
{
    #if(!Encoder_Left_ControlRegRemoved)
        /* Save Counter's enable state */
        if(Encoder_Left_CTRL_ENABLE == (Encoder_Left_CONTROL & Encoder_Left_CTRL_ENABLE))
        {
            /* Counter is enabled */
            Encoder_Left_backup.CounterEnableState = 1u;
        }
        else
        {
            /* Counter is disabled */
            Encoder_Left_backup.CounterEnableState = 0u;
        }
    #else
        Encoder_Left_backup.CounterEnableState = 1u;
        if(Encoder_Left_backup.CounterEnableState != 0u)
        {
            Encoder_Left_backup.CounterEnableState = 0u;
        }
    #endif /* (!Encoder_Left_ControlRegRemoved) */
    
    Encoder_Left_Stop();
    Encoder_Left_SaveConfig();
}


/*******************************************************************************
* Function Name: Encoder_Left_Wakeup
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
*  Encoder_Left_backup.enableState:  Is used to restore the enable state of 
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void Encoder_Left_Wakeup(void) 
{
    Encoder_Left_RestoreConfig();
    #if(!Encoder_Left_ControlRegRemoved)
        if(Encoder_Left_backup.CounterEnableState == 1u)
        {
            /* Enable Counter's operation */
            Encoder_Left_Enable();
        } /* Do nothing if Counter was disabled before */    
    #endif /* (!Encoder_Left_ControlRegRemoved) */
    
}


/* [] END OF FILE */
