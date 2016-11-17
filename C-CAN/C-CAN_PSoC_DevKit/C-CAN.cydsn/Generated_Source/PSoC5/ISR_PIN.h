/*******************************************************************************
* File Name: ISR_PIN.h  
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

#if !defined(CY_PINS_ISR_PIN_H) /* Pins ISR_PIN_H */
#define CY_PINS_ISR_PIN_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "ISR_PIN_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 ISR_PIN__PORT == 15 && ((ISR_PIN__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    ISR_PIN_Write(uint8 value);
void    ISR_PIN_SetDriveMode(uint8 mode);
uint8   ISR_PIN_ReadDataReg(void);
uint8   ISR_PIN_Read(void);
void    ISR_PIN_SetInterruptMode(uint16 position, uint16 mode);
uint8   ISR_PIN_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the ISR_PIN_SetDriveMode() function.
     *  @{
     */
        #define ISR_PIN_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define ISR_PIN_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define ISR_PIN_DM_RES_UP          PIN_DM_RES_UP
        #define ISR_PIN_DM_RES_DWN         PIN_DM_RES_DWN
        #define ISR_PIN_DM_OD_LO           PIN_DM_OD_LO
        #define ISR_PIN_DM_OD_HI           PIN_DM_OD_HI
        #define ISR_PIN_DM_STRONG          PIN_DM_STRONG
        #define ISR_PIN_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define ISR_PIN_MASK               ISR_PIN__MASK
#define ISR_PIN_SHIFT              ISR_PIN__SHIFT
#define ISR_PIN_WIDTH              1u

/* Interrupt constants */
#if defined(ISR_PIN__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in ISR_PIN_SetInterruptMode() function.
     *  @{
     */
        #define ISR_PIN_INTR_NONE      (uint16)(0x0000u)
        #define ISR_PIN_INTR_RISING    (uint16)(0x0001u)
        #define ISR_PIN_INTR_FALLING   (uint16)(0x0002u)
        #define ISR_PIN_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define ISR_PIN_INTR_MASK      (0x01u) 
#endif /* (ISR_PIN__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define ISR_PIN_PS                     (* (reg8 *) ISR_PIN__PS)
/* Data Register */
#define ISR_PIN_DR                     (* (reg8 *) ISR_PIN__DR)
/* Port Number */
#define ISR_PIN_PRT_NUM                (* (reg8 *) ISR_PIN__PRT) 
/* Connect to Analog Globals */                                                  
#define ISR_PIN_AG                     (* (reg8 *) ISR_PIN__AG)                       
/* Analog MUX bux enable */
#define ISR_PIN_AMUX                   (* (reg8 *) ISR_PIN__AMUX) 
/* Bidirectional Enable */                                                        
#define ISR_PIN_BIE                    (* (reg8 *) ISR_PIN__BIE)
/* Bit-mask for Aliased Register Access */
#define ISR_PIN_BIT_MASK               (* (reg8 *) ISR_PIN__BIT_MASK)
/* Bypass Enable */
#define ISR_PIN_BYP                    (* (reg8 *) ISR_PIN__BYP)
/* Port wide control signals */                                                   
#define ISR_PIN_CTL                    (* (reg8 *) ISR_PIN__CTL)
/* Drive Modes */
#define ISR_PIN_DM0                    (* (reg8 *) ISR_PIN__DM0) 
#define ISR_PIN_DM1                    (* (reg8 *) ISR_PIN__DM1)
#define ISR_PIN_DM2                    (* (reg8 *) ISR_PIN__DM2) 
/* Input Buffer Disable Override */
#define ISR_PIN_INP_DIS                (* (reg8 *) ISR_PIN__INP_DIS)
/* LCD Common or Segment Drive */
#define ISR_PIN_LCD_COM_SEG            (* (reg8 *) ISR_PIN__LCD_COM_SEG)
/* Enable Segment LCD */
#define ISR_PIN_LCD_EN                 (* (reg8 *) ISR_PIN__LCD_EN)
/* Slew Rate Control */
#define ISR_PIN_SLW                    (* (reg8 *) ISR_PIN__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define ISR_PIN_PRTDSI__CAPS_SEL       (* (reg8 *) ISR_PIN__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define ISR_PIN_PRTDSI__DBL_SYNC_IN    (* (reg8 *) ISR_PIN__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define ISR_PIN_PRTDSI__OE_SEL0        (* (reg8 *) ISR_PIN__PRTDSI__OE_SEL0) 
#define ISR_PIN_PRTDSI__OE_SEL1        (* (reg8 *) ISR_PIN__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define ISR_PIN_PRTDSI__OUT_SEL0       (* (reg8 *) ISR_PIN__PRTDSI__OUT_SEL0) 
#define ISR_PIN_PRTDSI__OUT_SEL1       (* (reg8 *) ISR_PIN__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define ISR_PIN_PRTDSI__SYNC_OUT       (* (reg8 *) ISR_PIN__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(ISR_PIN__SIO_CFG)
    #define ISR_PIN_SIO_HYST_EN        (* (reg8 *) ISR_PIN__SIO_HYST_EN)
    #define ISR_PIN_SIO_REG_HIFREQ     (* (reg8 *) ISR_PIN__SIO_REG_HIFREQ)
    #define ISR_PIN_SIO_CFG            (* (reg8 *) ISR_PIN__SIO_CFG)
    #define ISR_PIN_SIO_DIFF           (* (reg8 *) ISR_PIN__SIO_DIFF)
#endif /* (ISR_PIN__SIO_CFG) */

/* Interrupt Registers */
#if defined(ISR_PIN__INTSTAT)
    #define ISR_PIN_INTSTAT            (* (reg8 *) ISR_PIN__INTSTAT)
    #define ISR_PIN_SNAP               (* (reg8 *) ISR_PIN__SNAP)
    
	#define ISR_PIN_0_INTTYPE_REG 		(* (reg8 *) ISR_PIN__0__INTTYPE)
#endif /* (ISR_PIN__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_ISR_PIN_H */


/* [] END OF FILE */
