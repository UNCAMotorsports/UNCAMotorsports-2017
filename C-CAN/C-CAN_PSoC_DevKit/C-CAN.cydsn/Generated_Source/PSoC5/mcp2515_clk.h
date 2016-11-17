/*******************************************************************************
* File Name: mcp2515_clk.h  
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

#if !defined(CY_PINS_mcp2515_clk_H) /* Pins mcp2515_clk_H */
#define CY_PINS_mcp2515_clk_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "mcp2515_clk_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 mcp2515_clk__PORT == 15 && ((mcp2515_clk__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    mcp2515_clk_Write(uint8 value);
void    mcp2515_clk_SetDriveMode(uint8 mode);
uint8   mcp2515_clk_ReadDataReg(void);
uint8   mcp2515_clk_Read(void);
void    mcp2515_clk_SetInterruptMode(uint16 position, uint16 mode);
uint8   mcp2515_clk_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the mcp2515_clk_SetDriveMode() function.
     *  @{
     */
        #define mcp2515_clk_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define mcp2515_clk_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define mcp2515_clk_DM_RES_UP          PIN_DM_RES_UP
        #define mcp2515_clk_DM_RES_DWN         PIN_DM_RES_DWN
        #define mcp2515_clk_DM_OD_LO           PIN_DM_OD_LO
        #define mcp2515_clk_DM_OD_HI           PIN_DM_OD_HI
        #define mcp2515_clk_DM_STRONG          PIN_DM_STRONG
        #define mcp2515_clk_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define mcp2515_clk_MASK               mcp2515_clk__MASK
#define mcp2515_clk_SHIFT              mcp2515_clk__SHIFT
#define mcp2515_clk_WIDTH              1u

/* Interrupt constants */
#if defined(mcp2515_clk__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in mcp2515_clk_SetInterruptMode() function.
     *  @{
     */
        #define mcp2515_clk_INTR_NONE      (uint16)(0x0000u)
        #define mcp2515_clk_INTR_RISING    (uint16)(0x0001u)
        #define mcp2515_clk_INTR_FALLING   (uint16)(0x0002u)
        #define mcp2515_clk_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define mcp2515_clk_INTR_MASK      (0x01u) 
#endif /* (mcp2515_clk__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define mcp2515_clk_PS                     (* (reg8 *) mcp2515_clk__PS)
/* Data Register */
#define mcp2515_clk_DR                     (* (reg8 *) mcp2515_clk__DR)
/* Port Number */
#define mcp2515_clk_PRT_NUM                (* (reg8 *) mcp2515_clk__PRT) 
/* Connect to Analog Globals */                                                  
#define mcp2515_clk_AG                     (* (reg8 *) mcp2515_clk__AG)                       
/* Analog MUX bux enable */
#define mcp2515_clk_AMUX                   (* (reg8 *) mcp2515_clk__AMUX) 
/* Bidirectional Enable */                                                        
#define mcp2515_clk_BIE                    (* (reg8 *) mcp2515_clk__BIE)
/* Bit-mask for Aliased Register Access */
#define mcp2515_clk_BIT_MASK               (* (reg8 *) mcp2515_clk__BIT_MASK)
/* Bypass Enable */
#define mcp2515_clk_BYP                    (* (reg8 *) mcp2515_clk__BYP)
/* Port wide control signals */                                                   
#define mcp2515_clk_CTL                    (* (reg8 *) mcp2515_clk__CTL)
/* Drive Modes */
#define mcp2515_clk_DM0                    (* (reg8 *) mcp2515_clk__DM0) 
#define mcp2515_clk_DM1                    (* (reg8 *) mcp2515_clk__DM1)
#define mcp2515_clk_DM2                    (* (reg8 *) mcp2515_clk__DM2) 
/* Input Buffer Disable Override */
#define mcp2515_clk_INP_DIS                (* (reg8 *) mcp2515_clk__INP_DIS)
/* LCD Common or Segment Drive */
#define mcp2515_clk_LCD_COM_SEG            (* (reg8 *) mcp2515_clk__LCD_COM_SEG)
/* Enable Segment LCD */
#define mcp2515_clk_LCD_EN                 (* (reg8 *) mcp2515_clk__LCD_EN)
/* Slew Rate Control */
#define mcp2515_clk_SLW                    (* (reg8 *) mcp2515_clk__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define mcp2515_clk_PRTDSI__CAPS_SEL       (* (reg8 *) mcp2515_clk__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define mcp2515_clk_PRTDSI__DBL_SYNC_IN    (* (reg8 *) mcp2515_clk__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define mcp2515_clk_PRTDSI__OE_SEL0        (* (reg8 *) mcp2515_clk__PRTDSI__OE_SEL0) 
#define mcp2515_clk_PRTDSI__OE_SEL1        (* (reg8 *) mcp2515_clk__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define mcp2515_clk_PRTDSI__OUT_SEL0       (* (reg8 *) mcp2515_clk__PRTDSI__OUT_SEL0) 
#define mcp2515_clk_PRTDSI__OUT_SEL1       (* (reg8 *) mcp2515_clk__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define mcp2515_clk_PRTDSI__SYNC_OUT       (* (reg8 *) mcp2515_clk__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(mcp2515_clk__SIO_CFG)
    #define mcp2515_clk_SIO_HYST_EN        (* (reg8 *) mcp2515_clk__SIO_HYST_EN)
    #define mcp2515_clk_SIO_REG_HIFREQ     (* (reg8 *) mcp2515_clk__SIO_REG_HIFREQ)
    #define mcp2515_clk_SIO_CFG            (* (reg8 *) mcp2515_clk__SIO_CFG)
    #define mcp2515_clk_SIO_DIFF           (* (reg8 *) mcp2515_clk__SIO_DIFF)
#endif /* (mcp2515_clk__SIO_CFG) */

/* Interrupt Registers */
#if defined(mcp2515_clk__INTSTAT)
    #define mcp2515_clk_INTSTAT            (* (reg8 *) mcp2515_clk__INTSTAT)
    #define mcp2515_clk_SNAP               (* (reg8 *) mcp2515_clk__SNAP)
    
	#define mcp2515_clk_0_INTTYPE_REG 		(* (reg8 *) mcp2515_clk__0__INTTYPE)
#endif /* (mcp2515_clk__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_mcp2515_clk_H */


/* [] END OF FILE */
