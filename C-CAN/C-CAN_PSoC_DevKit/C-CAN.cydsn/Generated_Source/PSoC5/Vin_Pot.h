/*******************************************************************************
* File Name: Vin_Pot.h  
* Version 2.20
*
* Description:
*  This file contains Pin function prototypes and register defines
*
* Note:
*
********************************************************************************
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#if !defined(CY_PINS_Vin_Pot_H) /* Pins Vin_Pot_H */
#define CY_PINS_Vin_Pot_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "Vin_Pot_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 Vin_Pot__PORT == 15 && ((Vin_Pot__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    Vin_Pot_Write(uint8 value);
void    Vin_Pot_SetDriveMode(uint8 mode);
uint8   Vin_Pot_ReadDataReg(void);
uint8   Vin_Pot_Read(void);
void    Vin_Pot_SetInterruptMode(uint16 position, uint16 mode);
uint8   Vin_Pot_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the Vin_Pot_SetDriveMode() function.
     *  @{
     */
        #define Vin_Pot_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define Vin_Pot_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define Vin_Pot_DM_RES_UP          PIN_DM_RES_UP
        #define Vin_Pot_DM_RES_DWN         PIN_DM_RES_DWN
        #define Vin_Pot_DM_OD_LO           PIN_DM_OD_LO
        #define Vin_Pot_DM_OD_HI           PIN_DM_OD_HI
        #define Vin_Pot_DM_STRONG          PIN_DM_STRONG
        #define Vin_Pot_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define Vin_Pot_MASK               Vin_Pot__MASK
#define Vin_Pot_SHIFT              Vin_Pot__SHIFT
#define Vin_Pot_WIDTH              1u

/* Interrupt constants */
#if defined(Vin_Pot__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in Vin_Pot_SetInterruptMode() function.
     *  @{
     */
        #define Vin_Pot_INTR_NONE      (uint16)(0x0000u)
        #define Vin_Pot_INTR_RISING    (uint16)(0x0001u)
        #define Vin_Pot_INTR_FALLING   (uint16)(0x0002u)
        #define Vin_Pot_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define Vin_Pot_INTR_MASK      (0x01u) 
#endif /* (Vin_Pot__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define Vin_Pot_PS                     (* (reg8 *) Vin_Pot__PS)
/* Data Register */
#define Vin_Pot_DR                     (* (reg8 *) Vin_Pot__DR)
/* Port Number */
#define Vin_Pot_PRT_NUM                (* (reg8 *) Vin_Pot__PRT) 
/* Connect to Analog Globals */                                                  
#define Vin_Pot_AG                     (* (reg8 *) Vin_Pot__AG)                       
/* Analog MUX bux enable */
#define Vin_Pot_AMUX                   (* (reg8 *) Vin_Pot__AMUX) 
/* Bidirectional Enable */                                                        
#define Vin_Pot_BIE                    (* (reg8 *) Vin_Pot__BIE)
/* Bit-mask for Aliased Register Access */
#define Vin_Pot_BIT_MASK               (* (reg8 *) Vin_Pot__BIT_MASK)
/* Bypass Enable */
#define Vin_Pot_BYP                    (* (reg8 *) Vin_Pot__BYP)
/* Port wide control signals */                                                   
#define Vin_Pot_CTL                    (* (reg8 *) Vin_Pot__CTL)
/* Drive Modes */
#define Vin_Pot_DM0                    (* (reg8 *) Vin_Pot__DM0) 
#define Vin_Pot_DM1                    (* (reg8 *) Vin_Pot__DM1)
#define Vin_Pot_DM2                    (* (reg8 *) Vin_Pot__DM2) 
/* Input Buffer Disable Override */
#define Vin_Pot_INP_DIS                (* (reg8 *) Vin_Pot__INP_DIS)
/* LCD Common or Segment Drive */
#define Vin_Pot_LCD_COM_SEG            (* (reg8 *) Vin_Pot__LCD_COM_SEG)
/* Enable Segment LCD */
#define Vin_Pot_LCD_EN                 (* (reg8 *) Vin_Pot__LCD_EN)
/* Slew Rate Control */
#define Vin_Pot_SLW                    (* (reg8 *) Vin_Pot__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define Vin_Pot_PRTDSI__CAPS_SEL       (* (reg8 *) Vin_Pot__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define Vin_Pot_PRTDSI__DBL_SYNC_IN    (* (reg8 *) Vin_Pot__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define Vin_Pot_PRTDSI__OE_SEL0        (* (reg8 *) Vin_Pot__PRTDSI__OE_SEL0) 
#define Vin_Pot_PRTDSI__OE_SEL1        (* (reg8 *) Vin_Pot__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define Vin_Pot_PRTDSI__OUT_SEL0       (* (reg8 *) Vin_Pot__PRTDSI__OUT_SEL0) 
#define Vin_Pot_PRTDSI__OUT_SEL1       (* (reg8 *) Vin_Pot__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define Vin_Pot_PRTDSI__SYNC_OUT       (* (reg8 *) Vin_Pot__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(Vin_Pot__SIO_CFG)
    #define Vin_Pot_SIO_HYST_EN        (* (reg8 *) Vin_Pot__SIO_HYST_EN)
    #define Vin_Pot_SIO_REG_HIFREQ     (* (reg8 *) Vin_Pot__SIO_REG_HIFREQ)
    #define Vin_Pot_SIO_CFG            (* (reg8 *) Vin_Pot__SIO_CFG)
    #define Vin_Pot_SIO_DIFF           (* (reg8 *) Vin_Pot__SIO_DIFF)
#endif /* (Vin_Pot__SIO_CFG) */

/* Interrupt Registers */
#if defined(Vin_Pot__INTSTAT)
    #define Vin_Pot_INTSTAT            (* (reg8 *) Vin_Pot__INTSTAT)
    #define Vin_Pot_SNAP               (* (reg8 *) Vin_Pot__SNAP)
    
	#define Vin_Pot_0_INTTYPE_REG 		(* (reg8 *) Vin_Pot__0__INTTYPE)
#endif /* (Vin_Pot__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_Vin_Pot_H */


/* [] END OF FILE */
