/*******************************************************************************
* File Name: placeholder.h  
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

#if !defined(CY_PINS_placeholder_H) /* Pins placeholder_H */
#define CY_PINS_placeholder_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "placeholder_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 placeholder__PORT == 15 && ((placeholder__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    placeholder_Write(uint8 value);
void    placeholder_SetDriveMode(uint8 mode);
uint8   placeholder_ReadDataReg(void);
uint8   placeholder_Read(void);
void    placeholder_SetInterruptMode(uint16 position, uint16 mode);
uint8   placeholder_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the placeholder_SetDriveMode() function.
     *  @{
     */
        #define placeholder_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define placeholder_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define placeholder_DM_RES_UP          PIN_DM_RES_UP
        #define placeholder_DM_RES_DWN         PIN_DM_RES_DWN
        #define placeholder_DM_OD_LO           PIN_DM_OD_LO
        #define placeholder_DM_OD_HI           PIN_DM_OD_HI
        #define placeholder_DM_STRONG          PIN_DM_STRONG
        #define placeholder_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define placeholder_MASK               placeholder__MASK
#define placeholder_SHIFT              placeholder__SHIFT
#define placeholder_WIDTH              1u

/* Interrupt constants */
#if defined(placeholder__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in placeholder_SetInterruptMode() function.
     *  @{
     */
        #define placeholder_INTR_NONE      (uint16)(0x0000u)
        #define placeholder_INTR_RISING    (uint16)(0x0001u)
        #define placeholder_INTR_FALLING   (uint16)(0x0002u)
        #define placeholder_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define placeholder_INTR_MASK      (0x01u) 
#endif /* (placeholder__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define placeholder_PS                     (* (reg8 *) placeholder__PS)
/* Data Register */
#define placeholder_DR                     (* (reg8 *) placeholder__DR)
/* Port Number */
#define placeholder_PRT_NUM                (* (reg8 *) placeholder__PRT) 
/* Connect to Analog Globals */                                                  
#define placeholder_AG                     (* (reg8 *) placeholder__AG)                       
/* Analog MUX bux enable */
#define placeholder_AMUX                   (* (reg8 *) placeholder__AMUX) 
/* Bidirectional Enable */                                                        
#define placeholder_BIE                    (* (reg8 *) placeholder__BIE)
/* Bit-mask for Aliased Register Access */
#define placeholder_BIT_MASK               (* (reg8 *) placeholder__BIT_MASK)
/* Bypass Enable */
#define placeholder_BYP                    (* (reg8 *) placeholder__BYP)
/* Port wide control signals */                                                   
#define placeholder_CTL                    (* (reg8 *) placeholder__CTL)
/* Drive Modes */
#define placeholder_DM0                    (* (reg8 *) placeholder__DM0) 
#define placeholder_DM1                    (* (reg8 *) placeholder__DM1)
#define placeholder_DM2                    (* (reg8 *) placeholder__DM2) 
/* Input Buffer Disable Override */
#define placeholder_INP_DIS                (* (reg8 *) placeholder__INP_DIS)
/* LCD Common or Segment Drive */
#define placeholder_LCD_COM_SEG            (* (reg8 *) placeholder__LCD_COM_SEG)
/* Enable Segment LCD */
#define placeholder_LCD_EN                 (* (reg8 *) placeholder__LCD_EN)
/* Slew Rate Control */
#define placeholder_SLW                    (* (reg8 *) placeholder__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define placeholder_PRTDSI__CAPS_SEL       (* (reg8 *) placeholder__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define placeholder_PRTDSI__DBL_SYNC_IN    (* (reg8 *) placeholder__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define placeholder_PRTDSI__OE_SEL0        (* (reg8 *) placeholder__PRTDSI__OE_SEL0) 
#define placeholder_PRTDSI__OE_SEL1        (* (reg8 *) placeholder__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define placeholder_PRTDSI__OUT_SEL0       (* (reg8 *) placeholder__PRTDSI__OUT_SEL0) 
#define placeholder_PRTDSI__OUT_SEL1       (* (reg8 *) placeholder__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define placeholder_PRTDSI__SYNC_OUT       (* (reg8 *) placeholder__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(placeholder__SIO_CFG)
    #define placeholder_SIO_HYST_EN        (* (reg8 *) placeholder__SIO_HYST_EN)
    #define placeholder_SIO_REG_HIFREQ     (* (reg8 *) placeholder__SIO_REG_HIFREQ)
    #define placeholder_SIO_CFG            (* (reg8 *) placeholder__SIO_CFG)
    #define placeholder_SIO_DIFF           (* (reg8 *) placeholder__SIO_DIFF)
#endif /* (placeholder__SIO_CFG) */

/* Interrupt Registers */
#if defined(placeholder__INTSTAT)
    #define placeholder_INTSTAT            (* (reg8 *) placeholder__INTSTAT)
    #define placeholder_SNAP               (* (reg8 *) placeholder__SNAP)
    
	#define placeholder_0_INTTYPE_REG 		(* (reg8 *) placeholder__0__INTTYPE)
#endif /* (placeholder__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_placeholder_H */


/* [] END OF FILE */
