/*******************************************************************************
* File Name: zero_rpm.h
* Version 1.70
*
*  Description:
*   Provides the function definitions for the Interrupt Controller.
*
*
********************************************************************************
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/
#if !defined(CY_ISR_zero_rpm_H)
#define CY_ISR_zero_rpm_H


#include <cytypes.h>
#include <cyfitter.h>

/* Interrupt Controller API. */
void zero_rpm_Start(void);
void zero_rpm_StartEx(cyisraddress address);
void zero_rpm_Stop(void);

CY_ISR_PROTO(zero_rpm_Interrupt);

void zero_rpm_SetVector(cyisraddress address);
cyisraddress zero_rpm_GetVector(void);

void zero_rpm_SetPriority(uint8 priority);
uint8 zero_rpm_GetPriority(void);

void zero_rpm_Enable(void);
uint8 zero_rpm_GetState(void);
void zero_rpm_Disable(void);

void zero_rpm_SetPending(void);
void zero_rpm_ClearPending(void);


/* Interrupt Controller Constants */

/* Address of the INTC.VECT[x] register that contains the Address of the zero_rpm ISR. */
#define zero_rpm_INTC_VECTOR            ((reg32 *) zero_rpm__INTC_VECT)

/* Address of the zero_rpm ISR priority. */
#define zero_rpm_INTC_PRIOR             ((reg8 *) zero_rpm__INTC_PRIOR_REG)

/* Priority of the zero_rpm interrupt. */
#define zero_rpm_INTC_PRIOR_NUMBER      zero_rpm__INTC_PRIOR_NUM

/* Address of the INTC.SET_EN[x] byte to bit enable zero_rpm interrupt. */
#define zero_rpm_INTC_SET_EN            ((reg32 *) zero_rpm__INTC_SET_EN_REG)

/* Address of the INTC.CLR_EN[x] register to bit clear the zero_rpm interrupt. */
#define zero_rpm_INTC_CLR_EN            ((reg32 *) zero_rpm__INTC_CLR_EN_REG)

/* Address of the INTC.SET_PD[x] register to set the zero_rpm interrupt state to pending. */
#define zero_rpm_INTC_SET_PD            ((reg32 *) zero_rpm__INTC_SET_PD_REG)

/* Address of the INTC.CLR_PD[x] register to clear the zero_rpm interrupt. */
#define zero_rpm_INTC_CLR_PD            ((reg32 *) zero_rpm__INTC_CLR_PD_REG)


#endif /* CY_ISR_zero_rpm_H */


/* [] END OF FILE */
