/*******************************************************************************
* File Name: Vin_90.h  
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

#if !defined(CY_PINS_Vin_90_H) /* Pins Vin_90_H */
#define CY_PINS_Vin_90_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "Vin_90_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 Vin_90__PORT == 15 && ((Vin_90__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    Vin_90_Write(uint8 value);
void    Vin_90_SetDriveMode(uint8 mode);
uint8   Vin_90_ReadDataReg(void);
uint8   Vin_90_Read(void);
void    Vin_90_SetInterruptMode(uint16 position, uint16 mode);
uint8   Vin_90_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the Vin_90_SetDriveMode() function.
     *  @{
     */
        #define Vin_90_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define Vin_90_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define Vin_90_DM_RES_UP          PIN_DM_RES_UP
        #define Vin_90_DM_RES_DWN         PIN_DM_RES_DWN
        #define Vin_90_DM_OD_LO           PIN_DM_OD_LO
        #define Vin_90_DM_OD_HI           PIN_DM_OD_HI
        #define Vin_90_DM_STRONG          PIN_DM_STRONG
        #define Vin_90_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define Vin_90_MASK               Vin_90__MASK
#define Vin_90_SHIFT              Vin_90__SHIFT
#define Vin_90_WIDTH              1u

/* Interrupt constants */
#if defined(Vin_90__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in Vin_90_SetInterruptMode() function.
     *  @{
     */
        #define Vin_90_INTR_NONE      (uint16)(0x0000u)
        #define Vin_90_INTR_RISING    (uint16)(0x0001u)
        #define Vin_90_INTR_FALLING   (uint16)(0x0002u)
        #define Vin_90_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define Vin_90_INTR_MASK      (0x01u) 
#endif /* (Vin_90__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define Vin_90_PS                     (* (reg8 *) Vin_90__PS)
/* Data Register */
#define Vin_90_DR                     (* (reg8 *) Vin_90__DR)
/* Port Number */
#define Vin_90_PRT_NUM                (* (reg8 *) Vin_90__PRT) 
/* Connect to Analog Globals */                                                  
#define Vin_90_AG                     (* (reg8 *) Vin_90__AG)                       
/* Analog MUX bux enable */
#define Vin_90_AMUX                   (* (reg8 *) Vin_90__AMUX) 
/* Bidirectional Enable */                                                        
#define Vin_90_BIE                    (* (reg8 *) Vin_90__BIE)
/* Bit-mask for Aliased Register Access */
#define Vin_90_BIT_MASK               (* (reg8 *) Vin_90__BIT_MASK)
/* Bypass Enable */
#define Vin_90_BYP                    (* (reg8 *) Vin_90__BYP)
/* Port wide control signals */                                                   
#define Vin_90_CTL                    (* (reg8 *) Vin_90__CTL)
/* Drive Modes */
#define Vin_90_DM0                    (* (reg8 *) Vin_90__DM0) 
#define Vin_90_DM1                    (* (reg8 *) Vin_90__DM1)
#define Vin_90_DM2                    (* (reg8 *) Vin_90__DM2) 
/* Input Buffer Disable Override */
#define Vin_90_INP_DIS                (* (reg8 *) Vin_90__INP_DIS)
/* LCD Common or Segment Drive */
#define Vin_90_LCD_COM_SEG            (* (reg8 *) Vin_90__LCD_COM_SEG)
/* Enable Segment LCD */
#define Vin_90_LCD_EN                 (* (reg8 *) Vin_90__LCD_EN)
/* Slew Rate Control */
#define Vin_90_SLW                    (* (reg8 *) Vin_90__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define Vin_90_PRTDSI__CAPS_SEL       (* (reg8 *) Vin_90__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define Vin_90_PRTDSI__DBL_SYNC_IN    (* (reg8 *) Vin_90__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define Vin_90_PRTDSI__OE_SEL0        (* (reg8 *) Vin_90__PRTDSI__OE_SEL0) 
#define Vin_90_PRTDSI__OE_SEL1        (* (reg8 *) Vin_90__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define Vin_90_PRTDSI__OUT_SEL0       (* (reg8 *) Vin_90__PRTDSI__OUT_SEL0) 
#define Vin_90_PRTDSI__OUT_SEL1       (* (reg8 *) Vin_90__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define Vin_90_PRTDSI__SYNC_OUT       (* (reg8 *) Vin_90__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(Vin_90__SIO_CFG)
    #define Vin_90_SIO_HYST_EN        (* (reg8 *) Vin_90__SIO_HYST_EN)
    #define Vin_90_SIO_REG_HIFREQ     (* (reg8 *) Vin_90__SIO_REG_HIFREQ)
    #define Vin_90_SIO_CFG            (* (reg8 *) Vin_90__SIO_CFG)
    #define Vin_90_SIO_DIFF           (* (reg8 *) Vin_90__SIO_DIFF)
#endif /* (Vin_90__SIO_CFG) */

/* Interrupt Registers */
#if defined(Vin_90__INTSTAT)
    #define Vin_90_INTSTAT            (* (reg8 *) Vin_90__INTSTAT)
    #define Vin_90_SNAP               (* (reg8 *) Vin_90__SNAP)
    
	#define Vin_90_0_INTTYPE_REG 		(* (reg8 *) Vin_90__0__INTTYPE)
#endif /* (Vin_90__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_Vin_90_H */


/* [] END OF FILE */
