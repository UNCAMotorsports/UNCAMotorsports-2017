/*******************************************************************************
* File Name: five.h  
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

#if !defined(CY_PINS_five_H) /* Pins five_H */
#define CY_PINS_five_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "five_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 five__PORT == 15 && ((five__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    five_Write(uint8 value);
void    five_SetDriveMode(uint8 mode);
uint8   five_ReadDataReg(void);
uint8   five_Read(void);
void    five_SetInterruptMode(uint16 position, uint16 mode);
uint8   five_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the five_SetDriveMode() function.
     *  @{
     */
        #define five_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define five_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define five_DM_RES_UP          PIN_DM_RES_UP
        #define five_DM_RES_DWN         PIN_DM_RES_DWN
        #define five_DM_OD_LO           PIN_DM_OD_LO
        #define five_DM_OD_HI           PIN_DM_OD_HI
        #define five_DM_STRONG          PIN_DM_STRONG
        #define five_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define five_MASK               five__MASK
#define five_SHIFT              five__SHIFT
#define five_WIDTH              1u

/* Interrupt constants */
#if defined(five__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in five_SetInterruptMode() function.
     *  @{
     */
        #define five_INTR_NONE      (uint16)(0x0000u)
        #define five_INTR_RISING    (uint16)(0x0001u)
        #define five_INTR_FALLING   (uint16)(0x0002u)
        #define five_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define five_INTR_MASK      (0x01u) 
#endif /* (five__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define five_PS                     (* (reg8 *) five__PS)
/* Data Register */
#define five_DR                     (* (reg8 *) five__DR)
/* Port Number */
#define five_PRT_NUM                (* (reg8 *) five__PRT) 
/* Connect to Analog Globals */                                                  
#define five_AG                     (* (reg8 *) five__AG)                       
/* Analog MUX bux enable */
#define five_AMUX                   (* (reg8 *) five__AMUX) 
/* Bidirectional Enable */                                                        
#define five_BIE                    (* (reg8 *) five__BIE)
/* Bit-mask for Aliased Register Access */
#define five_BIT_MASK               (* (reg8 *) five__BIT_MASK)
/* Bypass Enable */
#define five_BYP                    (* (reg8 *) five__BYP)
/* Port wide control signals */                                                   
#define five_CTL                    (* (reg8 *) five__CTL)
/* Drive Modes */
#define five_DM0                    (* (reg8 *) five__DM0) 
#define five_DM1                    (* (reg8 *) five__DM1)
#define five_DM2                    (* (reg8 *) five__DM2) 
/* Input Buffer Disable Override */
#define five_INP_DIS                (* (reg8 *) five__INP_DIS)
/* LCD Common or Segment Drive */
#define five_LCD_COM_SEG            (* (reg8 *) five__LCD_COM_SEG)
/* Enable Segment LCD */
#define five_LCD_EN                 (* (reg8 *) five__LCD_EN)
/* Slew Rate Control */
#define five_SLW                    (* (reg8 *) five__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define five_PRTDSI__CAPS_SEL       (* (reg8 *) five__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define five_PRTDSI__DBL_SYNC_IN    (* (reg8 *) five__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define five_PRTDSI__OE_SEL0        (* (reg8 *) five__PRTDSI__OE_SEL0) 
#define five_PRTDSI__OE_SEL1        (* (reg8 *) five__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define five_PRTDSI__OUT_SEL0       (* (reg8 *) five__PRTDSI__OUT_SEL0) 
#define five_PRTDSI__OUT_SEL1       (* (reg8 *) five__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define five_PRTDSI__SYNC_OUT       (* (reg8 *) five__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(five__SIO_CFG)
    #define five_SIO_HYST_EN        (* (reg8 *) five__SIO_HYST_EN)
    #define five_SIO_REG_HIFREQ     (* (reg8 *) five__SIO_REG_HIFREQ)
    #define five_SIO_CFG            (* (reg8 *) five__SIO_CFG)
    #define five_SIO_DIFF           (* (reg8 *) five__SIO_DIFF)
#endif /* (five__SIO_CFG) */

/* Interrupt Registers */
#if defined(five__INTSTAT)
    #define five_INTSTAT            (* (reg8 *) five__INTSTAT)
    #define five_SNAP               (* (reg8 *) five__SNAP)
    
	#define five_0_INTTYPE_REG 		(* (reg8 *) five__0__INTTYPE)
#endif /* (five__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_five_H */


/* [] END OF FILE */
