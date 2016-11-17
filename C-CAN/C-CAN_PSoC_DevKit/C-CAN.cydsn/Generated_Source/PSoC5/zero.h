/*******************************************************************************
* File Name: zero.h  
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

#if !defined(CY_PINS_zero_H) /* Pins zero_H */
#define CY_PINS_zero_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "zero_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 zero__PORT == 15 && ((zero__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    zero_Write(uint8 value);
void    zero_SetDriveMode(uint8 mode);
uint8   zero_ReadDataReg(void);
uint8   zero_Read(void);
void    zero_SetInterruptMode(uint16 position, uint16 mode);
uint8   zero_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the zero_SetDriveMode() function.
     *  @{
     */
        #define zero_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define zero_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define zero_DM_RES_UP          PIN_DM_RES_UP
        #define zero_DM_RES_DWN         PIN_DM_RES_DWN
        #define zero_DM_OD_LO           PIN_DM_OD_LO
        #define zero_DM_OD_HI           PIN_DM_OD_HI
        #define zero_DM_STRONG          PIN_DM_STRONG
        #define zero_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define zero_MASK               zero__MASK
#define zero_SHIFT              zero__SHIFT
#define zero_WIDTH              1u

/* Interrupt constants */
#if defined(zero__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in zero_SetInterruptMode() function.
     *  @{
     */
        #define zero_INTR_NONE      (uint16)(0x0000u)
        #define zero_INTR_RISING    (uint16)(0x0001u)
        #define zero_INTR_FALLING   (uint16)(0x0002u)
        #define zero_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define zero_INTR_MASK      (0x01u) 
#endif /* (zero__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define zero_PS                     (* (reg8 *) zero__PS)
/* Data Register */
#define zero_DR                     (* (reg8 *) zero__DR)
/* Port Number */
#define zero_PRT_NUM                (* (reg8 *) zero__PRT) 
/* Connect to Analog Globals */                                                  
#define zero_AG                     (* (reg8 *) zero__AG)                       
/* Analog MUX bux enable */
#define zero_AMUX                   (* (reg8 *) zero__AMUX) 
/* Bidirectional Enable */                                                        
#define zero_BIE                    (* (reg8 *) zero__BIE)
/* Bit-mask for Aliased Register Access */
#define zero_BIT_MASK               (* (reg8 *) zero__BIT_MASK)
/* Bypass Enable */
#define zero_BYP                    (* (reg8 *) zero__BYP)
/* Port wide control signals */                                                   
#define zero_CTL                    (* (reg8 *) zero__CTL)
/* Drive Modes */
#define zero_DM0                    (* (reg8 *) zero__DM0) 
#define zero_DM1                    (* (reg8 *) zero__DM1)
#define zero_DM2                    (* (reg8 *) zero__DM2) 
/* Input Buffer Disable Override */
#define zero_INP_DIS                (* (reg8 *) zero__INP_DIS)
/* LCD Common or Segment Drive */
#define zero_LCD_COM_SEG            (* (reg8 *) zero__LCD_COM_SEG)
/* Enable Segment LCD */
#define zero_LCD_EN                 (* (reg8 *) zero__LCD_EN)
/* Slew Rate Control */
#define zero_SLW                    (* (reg8 *) zero__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define zero_PRTDSI__CAPS_SEL       (* (reg8 *) zero__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define zero_PRTDSI__DBL_SYNC_IN    (* (reg8 *) zero__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define zero_PRTDSI__OE_SEL0        (* (reg8 *) zero__PRTDSI__OE_SEL0) 
#define zero_PRTDSI__OE_SEL1        (* (reg8 *) zero__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define zero_PRTDSI__OUT_SEL0       (* (reg8 *) zero__PRTDSI__OUT_SEL0) 
#define zero_PRTDSI__OUT_SEL1       (* (reg8 *) zero__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define zero_PRTDSI__SYNC_OUT       (* (reg8 *) zero__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(zero__SIO_CFG)
    #define zero_SIO_HYST_EN        (* (reg8 *) zero__SIO_HYST_EN)
    #define zero_SIO_REG_HIFREQ     (* (reg8 *) zero__SIO_REG_HIFREQ)
    #define zero_SIO_CFG            (* (reg8 *) zero__SIO_CFG)
    #define zero_SIO_DIFF           (* (reg8 *) zero__SIO_DIFF)
#endif /* (zero__SIO_CFG) */

/* Interrupt Registers */
#if defined(zero__INTSTAT)
    #define zero_INTSTAT            (* (reg8 *) zero__INTSTAT)
    #define zero_SNAP               (* (reg8 *) zero__SNAP)
    
	#define zero_0_INTTYPE_REG 		(* (reg8 *) zero__0__INTTYPE)
#endif /* (zero__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_zero_H */


/* [] END OF FILE */
