/*******************************************************************************
* File Name: Port_for_fun.h  
* Version 1.80
*
* Description:
*  This file containts Control Register function prototypes and register defines
*
* Note:
*
********************************************************************************
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#if !defined(CY_CONTROL_REG_Port_for_fun_H) /* CY_CONTROL_REG_Port_for_fun_H */
#define CY_CONTROL_REG_Port_for_fun_H

#include "cytypes.h"

    
/***************************************
*     Data Struct Definitions
***************************************/

/* Sleep Mode API Support */
typedef struct
{
    uint8 controlState;

} Port_for_fun_BACKUP_STRUCT;


/***************************************
*         Function Prototypes 
***************************************/

void    Port_for_fun_Write(uint8 control) ;
uint8   Port_for_fun_Read(void) ;

void Port_for_fun_SaveConfig(void) ;
void Port_for_fun_RestoreConfig(void) ;
void Port_for_fun_Sleep(void) ; 
void Port_for_fun_Wakeup(void) ;


/***************************************
*            Registers        
***************************************/

/* Control Register */
#define Port_for_fun_Control        (* (reg8 *) Port_for_fun_Sync_ctrl_reg__CONTROL_REG )
#define Port_for_fun_Control_PTR    (  (reg8 *) Port_for_fun_Sync_ctrl_reg__CONTROL_REG )

#endif /* End CY_CONTROL_REG_Port_for_fun_H */


/* [] END OF FILE */
