/*******************************************************************************
* File Name: Vin_180.h  
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

#if !defined(CY_PINS_Vin_180_H) /* Pins Vin_180_H */
#define CY_PINS_Vin_180_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "Vin_180_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 Vin_180__PORT == 15 && ((Vin_180__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    Vin_180_Write(uint8 value);
void    Vin_180_SetDriveMode(uint8 mode);
uint8   Vin_180_ReadDataReg(void);
uint8   Vin_180_Read(void);
void    Vin_180_SetInterruptMode(uint16 position, uint16 mode);
uint8   Vin_180_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the Vin_180_SetDriveMode() function.
     *  @{
     */
        #define Vin_180_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define Vin_180_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define Vin_180_DM_RES_UP          PIN_DM_RES_UP
        #define Vin_180_DM_RES_DWN         PIN_DM_RES_DWN
        #define Vin_180_DM_OD_LO           PIN_DM_OD_LO
        #define Vin_180_DM_OD_HI           PIN_DM_OD_HI
        #define Vin_180_DM_STRONG          PIN_DM_STRONG
        #define Vin_180_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define Vin_180_MASK               Vin_180__MASK
#define Vin_180_SHIFT              Vin_180__SHIFT
#define Vin_180_WIDTH              1u

/* Interrupt constants */
#if defined(Vin_180__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in Vin_180_SetInterruptMode() function.
     *  @{
     */
        #define Vin_180_INTR_NONE      (uint16)(0x0000u)
        #define Vin_180_INTR_RISING    (uint16)(0x0001u)
        #define Vin_180_INTR_FALLING   (uint16)(0x0002u)
        #define Vin_180_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define Vin_180_INTR_MASK      (0x01u) 
#endif /* (Vin_180__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define Vin_180_PS                     (* (reg8 *) Vin_180__PS)
/* Data Register */
#define Vin_180_DR                     (* (reg8 *) Vin_180__DR)
/* Port Number */
#define Vin_180_PRT_NUM                (* (reg8 *) Vin_180__PRT) 
/* Connect to Analog Globals */                                                  
#define Vin_180_AG                     (* (reg8 *) Vin_180__AG)                       
/* Analog MUX bux enable */
#define Vin_180_AMUX                   (* (reg8 *) Vin_180__AMUX) 
/* Bidirectional Enable */                                                        
#define Vin_180_BIE                    (* (reg8 *) Vin_180__BIE)
/* Bit-mask for Aliased Register Access */
#define Vin_180_BIT_MASK               (* (reg8 *) Vin_180__BIT_MASK)
/* Bypass Enable */
#define Vin_180_BYP                    (* (reg8 *) Vin_180__BYP)
/* Port wide control signals */                                                   
#define Vin_180_CTL                    (* (reg8 *) Vin_180__CTL)
/* Drive Modes */
#define Vin_180_DM0                    (* (reg8 *) Vin_180__DM0) 
#define Vin_180_DM1                    (* (reg8 *) Vin_180__DM1)
#define Vin_180_DM2                    (* (reg8 *) Vin_180__DM2) 
/* Input Buffer Disable Override */
#define Vin_180_INP_DIS                (* (reg8 *) Vin_180__INP_DIS)
/* LCD Common or Segment Drive */
#define Vin_180_LCD_COM_SEG            (* (reg8 *) Vin_180__LCD_COM_SEG)
/* Enable Segment LCD */
#define Vin_180_LCD_EN                 (* (reg8 *) Vin_180__LCD_EN)
/* Slew Rate Control */
#define Vin_180_SLW                    (* (reg8 *) Vin_180__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define Vin_180_PRTDSI__CAPS_SEL       (* (reg8 *) Vin_180__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define Vin_180_PRTDSI__DBL_SYNC_IN    (* (reg8 *) Vin_180__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define Vin_180_PRTDSI__OE_SEL0        (* (reg8 *) Vin_180__PRTDSI__OE_SEL0) 
#define Vin_180_PRTDSI__OE_SEL1        (* (reg8 *) Vin_180__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define Vin_180_PRTDSI__OUT_SEL0       (* (reg8 *) Vin_180__PRTDSI__OUT_SEL0) 
#define Vin_180_PRTDSI__OUT_SEL1       (* (reg8 *) Vin_180__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define Vin_180_PRTDSI__SYNC_OUT       (* (reg8 *) Vin_180__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(Vin_180__SIO_CFG)
    #define Vin_180_SIO_HYST_EN        (* (reg8 *) Vin_180__SIO_HYST_EN)
    #define Vin_180_SIO_REG_HIFREQ     (* (reg8 *) Vin_180__SIO_REG_HIFREQ)
    #define Vin_180_SIO_CFG            (* (reg8 *) Vin_180__SIO_CFG)
    #define Vin_180_SIO_DIFF           (* (reg8 *) Vin_180__SIO_DIFF)
#endif /* (Vin_180__SIO_CFG) */

/* Interrupt Registers */
#if defined(Vin_180__INTSTAT)
    #define Vin_180_INTSTAT            (* (reg8 *) Vin_180__INTSTAT)
    #define Vin_180_SNAP               (* (reg8 *) Vin_180__SNAP)
    
	#define Vin_180_0_INTTYPE_REG 		(* (reg8 *) Vin_180__0__INTTYPE)
#endif /* (Vin_180__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_Vin_180_H */


/* [] END OF FILE */
