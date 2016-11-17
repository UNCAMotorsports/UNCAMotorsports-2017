/*******************************************************************************
* File Name: Vin.h  
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

#if !defined(CY_PINS_Vin_H) /* Pins Vin_H */
#define CY_PINS_Vin_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "Vin_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 Vin__PORT == 15 && ((Vin__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    Vin_Write(uint8 value);
void    Vin_SetDriveMode(uint8 mode);
uint8   Vin_ReadDataReg(void);
uint8   Vin_Read(void);
void    Vin_SetInterruptMode(uint16 position, uint16 mode);
uint8   Vin_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the Vin_SetDriveMode() function.
     *  @{
     */
        #define Vin_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define Vin_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define Vin_DM_RES_UP          PIN_DM_RES_UP
        #define Vin_DM_RES_DWN         PIN_DM_RES_DWN
        #define Vin_DM_OD_LO           PIN_DM_OD_LO
        #define Vin_DM_OD_HI           PIN_DM_OD_HI
        #define Vin_DM_STRONG          PIN_DM_STRONG
        #define Vin_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define Vin_MASK               Vin__MASK
#define Vin_SHIFT              Vin__SHIFT
#define Vin_WIDTH              1u

/* Interrupt constants */
#if defined(Vin__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in Vin_SetInterruptMode() function.
     *  @{
     */
        #define Vin_INTR_NONE      (uint16)(0x0000u)
        #define Vin_INTR_RISING    (uint16)(0x0001u)
        #define Vin_INTR_FALLING   (uint16)(0x0002u)
        #define Vin_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define Vin_INTR_MASK      (0x01u) 
#endif /* (Vin__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define Vin_PS                     (* (reg8 *) Vin__PS)
/* Data Register */
#define Vin_DR                     (* (reg8 *) Vin__DR)
/* Port Number */
#define Vin_PRT_NUM                (* (reg8 *) Vin__PRT) 
/* Connect to Analog Globals */                                                  
#define Vin_AG                     (* (reg8 *) Vin__AG)                       
/* Analog MUX bux enable */
#define Vin_AMUX                   (* (reg8 *) Vin__AMUX) 
/* Bidirectional Enable */                                                        
#define Vin_BIE                    (* (reg8 *) Vin__BIE)
/* Bit-mask for Aliased Register Access */
#define Vin_BIT_MASK               (* (reg8 *) Vin__BIT_MASK)
/* Bypass Enable */
#define Vin_BYP                    (* (reg8 *) Vin__BYP)
/* Port wide control signals */                                                   
#define Vin_CTL                    (* (reg8 *) Vin__CTL)
/* Drive Modes */
#define Vin_DM0                    (* (reg8 *) Vin__DM0) 
#define Vin_DM1                    (* (reg8 *) Vin__DM1)
#define Vin_DM2                    (* (reg8 *) Vin__DM2) 
/* Input Buffer Disable Override */
#define Vin_INP_DIS                (* (reg8 *) Vin__INP_DIS)
/* LCD Common or Segment Drive */
#define Vin_LCD_COM_SEG            (* (reg8 *) Vin__LCD_COM_SEG)
/* Enable Segment LCD */
#define Vin_LCD_EN                 (* (reg8 *) Vin__LCD_EN)
/* Slew Rate Control */
#define Vin_SLW                    (* (reg8 *) Vin__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define Vin_PRTDSI__CAPS_SEL       (* (reg8 *) Vin__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define Vin_PRTDSI__DBL_SYNC_IN    (* (reg8 *) Vin__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define Vin_PRTDSI__OE_SEL0        (* (reg8 *) Vin__PRTDSI__OE_SEL0) 
#define Vin_PRTDSI__OE_SEL1        (* (reg8 *) Vin__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define Vin_PRTDSI__OUT_SEL0       (* (reg8 *) Vin__PRTDSI__OUT_SEL0) 
#define Vin_PRTDSI__OUT_SEL1       (* (reg8 *) Vin__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define Vin_PRTDSI__SYNC_OUT       (* (reg8 *) Vin__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(Vin__SIO_CFG)
    #define Vin_SIO_HYST_EN        (* (reg8 *) Vin__SIO_HYST_EN)
    #define Vin_SIO_REG_HIFREQ     (* (reg8 *) Vin__SIO_REG_HIFREQ)
    #define Vin_SIO_CFG            (* (reg8 *) Vin__SIO_CFG)
    #define Vin_SIO_DIFF           (* (reg8 *) Vin__SIO_DIFF)
#endif /* (Vin__SIO_CFG) */

/* Interrupt Registers */
#if defined(Vin__INTSTAT)
    #define Vin_INTSTAT            (* (reg8 *) Vin__INTSTAT)
    #define Vin_SNAP               (* (reg8 *) Vin__SNAP)
    
	#define Vin_0_INTTYPE_REG 		(* (reg8 *) Vin__0__INTTYPE)
#endif /* (Vin__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_Vin_H */


/* [] END OF FILE */
