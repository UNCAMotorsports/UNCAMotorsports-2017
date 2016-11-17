/*******************************************************************************
* File Name: four.h  
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

#if !defined(CY_PINS_four_H) /* Pins four_H */
#define CY_PINS_four_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "four_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 four__PORT == 15 && ((four__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    four_Write(uint8 value);
void    four_SetDriveMode(uint8 mode);
uint8   four_ReadDataReg(void);
uint8   four_Read(void);
void    four_SetInterruptMode(uint16 position, uint16 mode);
uint8   four_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the four_SetDriveMode() function.
     *  @{
     */
        #define four_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define four_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define four_DM_RES_UP          PIN_DM_RES_UP
        #define four_DM_RES_DWN         PIN_DM_RES_DWN
        #define four_DM_OD_LO           PIN_DM_OD_LO
        #define four_DM_OD_HI           PIN_DM_OD_HI
        #define four_DM_STRONG          PIN_DM_STRONG
        #define four_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define four_MASK               four__MASK
#define four_SHIFT              four__SHIFT
#define four_WIDTH              1u

/* Interrupt constants */
#if defined(four__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in four_SetInterruptMode() function.
     *  @{
     */
        #define four_INTR_NONE      (uint16)(0x0000u)
        #define four_INTR_RISING    (uint16)(0x0001u)
        #define four_INTR_FALLING   (uint16)(0x0002u)
        #define four_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define four_INTR_MASK      (0x01u) 
#endif /* (four__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define four_PS                     (* (reg8 *) four__PS)
/* Data Register */
#define four_DR                     (* (reg8 *) four__DR)
/* Port Number */
#define four_PRT_NUM                (* (reg8 *) four__PRT) 
/* Connect to Analog Globals */                                                  
#define four_AG                     (* (reg8 *) four__AG)                       
/* Analog MUX bux enable */
#define four_AMUX                   (* (reg8 *) four__AMUX) 
/* Bidirectional Enable */                                                        
#define four_BIE                    (* (reg8 *) four__BIE)
/* Bit-mask for Aliased Register Access */
#define four_BIT_MASK               (* (reg8 *) four__BIT_MASK)
/* Bypass Enable */
#define four_BYP                    (* (reg8 *) four__BYP)
/* Port wide control signals */                                                   
#define four_CTL                    (* (reg8 *) four__CTL)
/* Drive Modes */
#define four_DM0                    (* (reg8 *) four__DM0) 
#define four_DM1                    (* (reg8 *) four__DM1)
#define four_DM2                    (* (reg8 *) four__DM2) 
/* Input Buffer Disable Override */
#define four_INP_DIS                (* (reg8 *) four__INP_DIS)
/* LCD Common or Segment Drive */
#define four_LCD_COM_SEG            (* (reg8 *) four__LCD_COM_SEG)
/* Enable Segment LCD */
#define four_LCD_EN                 (* (reg8 *) four__LCD_EN)
/* Slew Rate Control */
#define four_SLW                    (* (reg8 *) four__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define four_PRTDSI__CAPS_SEL       (* (reg8 *) four__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define four_PRTDSI__DBL_SYNC_IN    (* (reg8 *) four__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define four_PRTDSI__OE_SEL0        (* (reg8 *) four__PRTDSI__OE_SEL0) 
#define four_PRTDSI__OE_SEL1        (* (reg8 *) four__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define four_PRTDSI__OUT_SEL0       (* (reg8 *) four__PRTDSI__OUT_SEL0) 
#define four_PRTDSI__OUT_SEL1       (* (reg8 *) four__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define four_PRTDSI__SYNC_OUT       (* (reg8 *) four__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(four__SIO_CFG)
    #define four_SIO_HYST_EN        (* (reg8 *) four__SIO_HYST_EN)
    #define four_SIO_REG_HIFREQ     (* (reg8 *) four__SIO_REG_HIFREQ)
    #define four_SIO_CFG            (* (reg8 *) four__SIO_CFG)
    #define four_SIO_DIFF           (* (reg8 *) four__SIO_DIFF)
#endif /* (four__SIO_CFG) */

/* Interrupt Registers */
#if defined(four__INTSTAT)
    #define four_INTSTAT            (* (reg8 *) four__INTSTAT)
    #define four_SNAP               (* (reg8 *) four__SNAP)
    
	#define four_0_INTTYPE_REG 		(* (reg8 *) four__0__INTTYPE)
#endif /* (four__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_four_H */


/* [] END OF FILE */
