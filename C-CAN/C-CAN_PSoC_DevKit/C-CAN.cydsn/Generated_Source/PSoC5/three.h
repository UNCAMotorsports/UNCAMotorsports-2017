/*******************************************************************************
* File Name: three.h  
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

#if !defined(CY_PINS_three_H) /* Pins three_H */
#define CY_PINS_three_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "three_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 three__PORT == 15 && ((three__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    three_Write(uint8 value);
void    three_SetDriveMode(uint8 mode);
uint8   three_ReadDataReg(void);
uint8   three_Read(void);
void    three_SetInterruptMode(uint16 position, uint16 mode);
uint8   three_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the three_SetDriveMode() function.
     *  @{
     */
        #define three_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define three_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define three_DM_RES_UP          PIN_DM_RES_UP
        #define three_DM_RES_DWN         PIN_DM_RES_DWN
        #define three_DM_OD_LO           PIN_DM_OD_LO
        #define three_DM_OD_HI           PIN_DM_OD_HI
        #define three_DM_STRONG          PIN_DM_STRONG
        #define three_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define three_MASK               three__MASK
#define three_SHIFT              three__SHIFT
#define three_WIDTH              1u

/* Interrupt constants */
#if defined(three__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in three_SetInterruptMode() function.
     *  @{
     */
        #define three_INTR_NONE      (uint16)(0x0000u)
        #define three_INTR_RISING    (uint16)(0x0001u)
        #define three_INTR_FALLING   (uint16)(0x0002u)
        #define three_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define three_INTR_MASK      (0x01u) 
#endif /* (three__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define three_PS                     (* (reg8 *) three__PS)
/* Data Register */
#define three_DR                     (* (reg8 *) three__DR)
/* Port Number */
#define three_PRT_NUM                (* (reg8 *) three__PRT) 
/* Connect to Analog Globals */                                                  
#define three_AG                     (* (reg8 *) three__AG)                       
/* Analog MUX bux enable */
#define three_AMUX                   (* (reg8 *) three__AMUX) 
/* Bidirectional Enable */                                                        
#define three_BIE                    (* (reg8 *) three__BIE)
/* Bit-mask for Aliased Register Access */
#define three_BIT_MASK               (* (reg8 *) three__BIT_MASK)
/* Bypass Enable */
#define three_BYP                    (* (reg8 *) three__BYP)
/* Port wide control signals */                                                   
#define three_CTL                    (* (reg8 *) three__CTL)
/* Drive Modes */
#define three_DM0                    (* (reg8 *) three__DM0) 
#define three_DM1                    (* (reg8 *) three__DM1)
#define three_DM2                    (* (reg8 *) three__DM2) 
/* Input Buffer Disable Override */
#define three_INP_DIS                (* (reg8 *) three__INP_DIS)
/* LCD Common or Segment Drive */
#define three_LCD_COM_SEG            (* (reg8 *) three__LCD_COM_SEG)
/* Enable Segment LCD */
#define three_LCD_EN                 (* (reg8 *) three__LCD_EN)
/* Slew Rate Control */
#define three_SLW                    (* (reg8 *) three__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define three_PRTDSI__CAPS_SEL       (* (reg8 *) three__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define three_PRTDSI__DBL_SYNC_IN    (* (reg8 *) three__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define three_PRTDSI__OE_SEL0        (* (reg8 *) three__PRTDSI__OE_SEL0) 
#define three_PRTDSI__OE_SEL1        (* (reg8 *) three__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define three_PRTDSI__OUT_SEL0       (* (reg8 *) three__PRTDSI__OUT_SEL0) 
#define three_PRTDSI__OUT_SEL1       (* (reg8 *) three__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define three_PRTDSI__SYNC_OUT       (* (reg8 *) three__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(three__SIO_CFG)
    #define three_SIO_HYST_EN        (* (reg8 *) three__SIO_HYST_EN)
    #define three_SIO_REG_HIFREQ     (* (reg8 *) three__SIO_REG_HIFREQ)
    #define three_SIO_CFG            (* (reg8 *) three__SIO_CFG)
    #define three_SIO_DIFF           (* (reg8 *) three__SIO_DIFF)
#endif /* (three__SIO_CFG) */

/* Interrupt Registers */
#if defined(three__INTSTAT)
    #define three_INTSTAT            (* (reg8 *) three__INTSTAT)
    #define three_SNAP               (* (reg8 *) three__SNAP)
    
	#define three_0_INTTYPE_REG 		(* (reg8 *) three__0__INTTYPE)
#endif /* (three__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_three_H */


/* [] END OF FILE */
