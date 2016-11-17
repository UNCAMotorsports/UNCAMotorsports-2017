/*******************************************************************************
* File Name: Vin_Pot.h  
* Version 2.20
*
* Description:
*  This file contains the Alias definitions for Per-Pin APIs in cypins.h. 
*  Information on using these APIs can be found in the System Reference Guide.
*
* Note:
*
********************************************************************************
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#if !defined(CY_PINS_Vin_Pot_ALIASES_H) /* Pins Vin_Pot_ALIASES_H */
#define CY_PINS_Vin_Pot_ALIASES_H

#include "cytypes.h"
#include "cyfitter.h"


/***************************************
*              Constants        
***************************************/
#define Vin_Pot_0			(Vin_Pot__0__PC)
#define Vin_Pot_0_INTR	((uint16)((uint16)0x0001u << Vin_Pot__0__SHIFT))

#define Vin_Pot_INTR_ALL	 ((uint16)(Vin_Pot_0_INTR))

#endif /* End Pins Vin_Pot_ALIASES_H */


/* [] END OF FILE */
