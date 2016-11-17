/*******************************************************************************
* File Name: Enc_L.h  
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

#if !defined(CY_PINS_Enc_L_H) /* Pins Enc_L_H */
#define CY_PINS_Enc_L_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "Enc_L_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 Enc_L__PORT == 15 && ((Enc_L__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    Enc_L_Write(uint8 value);
void    Enc_L_SetDriveMode(uint8 mode);
uint8   Enc_L_ReadDataReg(void);
uint8   Enc_L_Read(void);
void    Enc_L_SetInterruptMode(uint16 position, uint16 mode);
uint8   Enc_L_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the Enc_L_SetDriveMode() function.
     *  @{
     */
        #define Enc_L_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define Enc_L_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define Enc_L_DM_RES_UP          PIN_DM_RES_UP
        #define Enc_L_DM_RES_DWN         PIN_DM_RES_DWN
        #define Enc_L_DM_OD_LO           PIN_DM_OD_LO
        #define Enc_L_DM_OD_HI           PIN_DM_OD_HI
        #define Enc_L_DM_STRONG          PIN_DM_STRONG
        #define Enc_L_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define Enc_L_MASK               Enc_L__MASK
#define Enc_L_SHIFT              Enc_L__SHIFT
#define Enc_L_WIDTH              1u

/* Interrupt constants */
#if defined(Enc_L__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in Enc_L_SetInterruptMode() function.
     *  @{
     */
        #define Enc_L_INTR_NONE      (uint16)(0x0000u)
        #define Enc_L_INTR_RISING    (uint16)(0x0001u)
        #define Enc_L_INTR_FALLING   (uint16)(0x0002u)
        #define Enc_L_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define Enc_L_INTR_MASK      (0x01u) 
#endif /* (Enc_L__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define Enc_L_PS                     (* (reg8 *) Enc_L__PS)
/* Data Register */
#define Enc_L_DR                     (* (reg8 *) Enc_L__DR)
/* Port Number */
#define Enc_L_PRT_NUM                (* (reg8 *) Enc_L__PRT) 
/* Connect to Analog Globals */                                                  
#define Enc_L_AG                     (* (reg8 *) Enc_L__AG)                       
/* Analog MUX bux enable */
#define Enc_L_AMUX                   (* (reg8 *) Enc_L__AMUX) 
/* Bidirectional Enable */                                                        
#define Enc_L_BIE                    (* (reg8 *) Enc_L__BIE)
/* Bit-mask for Aliased Register Access */
#define Enc_L_BIT_MASK               (* (reg8 *) Enc_L__BIT_MASK)
/* Bypass Enable */
#define Enc_L_BYP                    (* (reg8 *) Enc_L__BYP)
/* Port wide control signals */                                                   
#define Enc_L_CTL                    (* (reg8 *) Enc_L__CTL)
/* Drive Modes */
#define Enc_L_DM0                    (* (reg8 *) Enc_L__DM0) 
#define Enc_L_DM1                    (* (reg8 *) Enc_L__DM1)
#define Enc_L_DM2                    (* (reg8 *) Enc_L__DM2) 
/* Input Buffer Disable Override */
#define Enc_L_INP_DIS                (* (reg8 *) Enc_L__INP_DIS)
/* LCD Common or Segment Drive */
#define Enc_L_LCD_COM_SEG            (* (reg8 *) Enc_L__LCD_COM_SEG)
/* Enable Segment LCD */
#define Enc_L_LCD_EN                 (* (reg8 *) Enc_L__LCD_EN)
/* Slew Rate Control */
#define Enc_L_SLW                    (* (reg8 *) Enc_L__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define Enc_L_PRTDSI__CAPS_SEL       (* (reg8 *) Enc_L__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define Enc_L_PRTDSI__DBL_SYNC_IN    (* (reg8 *) Enc_L__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define Enc_L_PRTDSI__OE_SEL0        (* (reg8 *) Enc_L__PRTDSI__OE_SEL0) 
#define Enc_L_PRTDSI__OE_SEL1        (* (reg8 *) Enc_L__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define Enc_L_PRTDSI__OUT_SEL0       (* (reg8 *) Enc_L__PRTDSI__OUT_SEL0) 
#define Enc_L_PRTDSI__OUT_SEL1       (* (reg8 *) Enc_L__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define Enc_L_PRTDSI__SYNC_OUT       (* (reg8 *) Enc_L__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(Enc_L__SIO_CFG)
    #define Enc_L_SIO_HYST_EN        (* (reg8 *) Enc_L__SIO_HYST_EN)
    #define Enc_L_SIO_REG_HIFREQ     (* (reg8 *) Enc_L__SIO_REG_HIFREQ)
    #define Enc_L_SIO_CFG            (* (reg8 *) Enc_L__SIO_CFG)
    #define Enc_L_SIO_DIFF           (* (reg8 *) Enc_L__SIO_DIFF)
#endif /* (Enc_L__SIO_CFG) */

/* Interrupt Registers */
#if defined(Enc_L__INTSTAT)
    #define Enc_L_INTSTAT            (* (reg8 *) Enc_L__INTSTAT)
    #define Enc_L_SNAP               (* (reg8 *) Enc_L__SNAP)
    
	#define Enc_L_0_INTTYPE_REG 		(* (reg8 *) Enc_L__0__INTTYPE)
#endif /* (Enc_L__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_Enc_L_H */


/* [] END OF FILE */
