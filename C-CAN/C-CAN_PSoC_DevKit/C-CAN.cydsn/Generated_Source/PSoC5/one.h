/*******************************************************************************
* File Name: one.h  
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

#if !defined(CY_PINS_one_H) /* Pins one_H */
#define CY_PINS_one_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "one_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 one__PORT == 15 && ((one__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    one_Write(uint8 value);
void    one_SetDriveMode(uint8 mode);
uint8   one_ReadDataReg(void);
uint8   one_Read(void);
void    one_SetInterruptMode(uint16 position, uint16 mode);
uint8   one_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the one_SetDriveMode() function.
     *  @{
     */
        #define one_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define one_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define one_DM_RES_UP          PIN_DM_RES_UP
        #define one_DM_RES_DWN         PIN_DM_RES_DWN
        #define one_DM_OD_LO           PIN_DM_OD_LO
        #define one_DM_OD_HI           PIN_DM_OD_HI
        #define one_DM_STRONG          PIN_DM_STRONG
        #define one_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define one_MASK               one__MASK
#define one_SHIFT              one__SHIFT
#define one_WIDTH              1u

/* Interrupt constants */
#if defined(one__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in one_SetInterruptMode() function.
     *  @{
     */
        #define one_INTR_NONE      (uint16)(0x0000u)
        #define one_INTR_RISING    (uint16)(0x0001u)
        #define one_INTR_FALLING   (uint16)(0x0002u)
        #define one_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define one_INTR_MASK      (0x01u) 
#endif /* (one__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define one_PS                     (* (reg8 *) one__PS)
/* Data Register */
#define one_DR                     (* (reg8 *) one__DR)
/* Port Number */
#define one_PRT_NUM                (* (reg8 *) one__PRT) 
/* Connect to Analog Globals */                                                  
#define one_AG                     (* (reg8 *) one__AG)                       
/* Analog MUX bux enable */
#define one_AMUX                   (* (reg8 *) one__AMUX) 
/* Bidirectional Enable */                                                        
#define one_BIE                    (* (reg8 *) one__BIE)
/* Bit-mask for Aliased Register Access */
#define one_BIT_MASK               (* (reg8 *) one__BIT_MASK)
/* Bypass Enable */
#define one_BYP                    (* (reg8 *) one__BYP)
/* Port wide control signals */                                                   
#define one_CTL                    (* (reg8 *) one__CTL)
/* Drive Modes */
#define one_DM0                    (* (reg8 *) one__DM0) 
#define one_DM1                    (* (reg8 *) one__DM1)
#define one_DM2                    (* (reg8 *) one__DM2) 
/* Input Buffer Disable Override */
#define one_INP_DIS                (* (reg8 *) one__INP_DIS)
/* LCD Common or Segment Drive */
#define one_LCD_COM_SEG            (* (reg8 *) one__LCD_COM_SEG)
/* Enable Segment LCD */
#define one_LCD_EN                 (* (reg8 *) one__LCD_EN)
/* Slew Rate Control */
#define one_SLW                    (* (reg8 *) one__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define one_PRTDSI__CAPS_SEL       (* (reg8 *) one__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define one_PRTDSI__DBL_SYNC_IN    (* (reg8 *) one__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define one_PRTDSI__OE_SEL0        (* (reg8 *) one__PRTDSI__OE_SEL0) 
#define one_PRTDSI__OE_SEL1        (* (reg8 *) one__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define one_PRTDSI__OUT_SEL0       (* (reg8 *) one__PRTDSI__OUT_SEL0) 
#define one_PRTDSI__OUT_SEL1       (* (reg8 *) one__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define one_PRTDSI__SYNC_OUT       (* (reg8 *) one__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(one__SIO_CFG)
    #define one_SIO_HYST_EN        (* (reg8 *) one__SIO_HYST_EN)
    #define one_SIO_REG_HIFREQ     (* (reg8 *) one__SIO_REG_HIFREQ)
    #define one_SIO_CFG            (* (reg8 *) one__SIO_CFG)
    #define one_SIO_DIFF           (* (reg8 *) one__SIO_DIFF)
#endif /* (one__SIO_CFG) */

/* Interrupt Registers */
#if defined(one__INTSTAT)
    #define one_INTSTAT            (* (reg8 *) one__INTSTAT)
    #define one_SNAP               (* (reg8 *) one__SNAP)
    
	#define one_0_INTTYPE_REG 		(* (reg8 *) one__0__INTTYPE)
#endif /* (one__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_one_H */


/* [] END OF FILE */
