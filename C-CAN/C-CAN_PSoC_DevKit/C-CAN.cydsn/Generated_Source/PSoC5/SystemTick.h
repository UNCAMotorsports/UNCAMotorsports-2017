/*******************************************************************************
* File Name: SystemTick.h
* Version 2.70
*
*  Description:
*     Contains the function prototypes and constants available to the timer
*     user module.
*
*   Note:
*     None
*
********************************************************************************
* Copyright 2008-2014, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
********************************************************************************/

#if !defined(CY_Timer_v2_60_SystemTick_H)
#define CY_Timer_v2_60_SystemTick_H

#include "cytypes.h"
#include "cyfitter.h"
#include "CyLib.h" /* For CyEnterCriticalSection() and CyExitCriticalSection() functions */

extern uint8 SystemTick_initVar;

/* Check to see if required defines such as CY_PSOC5LP are available */
/* They are defined starting with cy_boot v3.0 */
#if !defined (CY_PSOC5LP)
    #error Component Timer_v2_70 requires cy_boot v3.0 or later
#endif /* (CY_ PSOC5LP) */


/**************************************
*           Parameter Defaults
**************************************/

#define SystemTick_Resolution                 8u
#define SystemTick_UsingFixedFunction         1u
#define SystemTick_UsingHWCaptureCounter      0u
#define SystemTick_SoftwareCaptureMode        0u
#define SystemTick_SoftwareTriggerMode        0u
#define SystemTick_UsingHWEnable              0u
#define SystemTick_EnableTriggerMode          0u
#define SystemTick_InterruptOnCaptureCount    0u
#define SystemTick_RunModeUsed                0u
#define SystemTick_ControlRegRemoved          0u

#if defined(SystemTick_TimerUDB_sCTRLReg_SyncCtl_ctrlreg__CONTROL_REG)
    #define SystemTick_UDB_CONTROL_REG_REMOVED            (0u)
#elif  (SystemTick_UsingFixedFunction)
    #define SystemTick_UDB_CONTROL_REG_REMOVED            (0u)
#else 
    #define SystemTick_UDB_CONTROL_REG_REMOVED            (1u)
#endif /* End SystemTick_TimerUDB_sCTRLReg_SyncCtl_ctrlreg__CONTROL_REG */


/***************************************
*       Type defines
***************************************/


/**************************************************************************
 * Sleep Wakeup Backup structure for Timer Component
 *************************************************************************/
typedef struct
{
    uint8 TimerEnableState;
    #if(!SystemTick_UsingFixedFunction)

        uint8 TimerUdb;
        uint8 InterruptMaskValue;
        #if (SystemTick_UsingHWCaptureCounter)
            uint8 TimerCaptureCounter;
        #endif /* variable declarations for backing up non retention registers in CY_UDB_V1 */

        #if (!SystemTick_UDB_CONTROL_REG_REMOVED)
            uint8 TimerControlRegister;
        #endif /* variable declaration for backing up enable state of the Timer */
    #endif /* define backup variables only for UDB implementation. Fixed function registers are all retention */

}SystemTick_backupStruct;


/***************************************
*       Function Prototypes
***************************************/

void    SystemTick_Start(void) ;
void    SystemTick_Stop(void) ;

void    SystemTick_SetInterruptMode(uint8 interruptMode) ;
uint8   SystemTick_ReadStatusRegister(void) ;
/* Deprecated function. Do not use this in future. Retained for backward compatibility */
#define SystemTick_GetInterruptSource() SystemTick_ReadStatusRegister()

#if(!SystemTick_UDB_CONTROL_REG_REMOVED)
    uint8   SystemTick_ReadControlRegister(void) ;
    void    SystemTick_WriteControlRegister(uint8 control) ;
#endif /* (!SystemTick_UDB_CONTROL_REG_REMOVED) */

uint8  SystemTick_ReadPeriod(void) ;
void    SystemTick_WritePeriod(uint8 period) ;
uint8  SystemTick_ReadCounter(void) ;
void    SystemTick_WriteCounter(uint8 counter) ;
uint8  SystemTick_ReadCapture(void) ;
void    SystemTick_SoftwareCapture(void) ;

#if(!SystemTick_UsingFixedFunction) /* UDB Prototypes */
    #if (SystemTick_SoftwareCaptureMode)
        void    SystemTick_SetCaptureMode(uint8 captureMode) ;
    #endif /* (!SystemTick_UsingFixedFunction) */

    #if (SystemTick_SoftwareTriggerMode)
        void    SystemTick_SetTriggerMode(uint8 triggerMode) ;
    #endif /* (SystemTick_SoftwareTriggerMode) */

    #if (SystemTick_EnableTriggerMode)
        void    SystemTick_EnableTrigger(void) ;
        void    SystemTick_DisableTrigger(void) ;
    #endif /* (SystemTick_EnableTriggerMode) */


    #if(SystemTick_InterruptOnCaptureCount)
        void    SystemTick_SetInterruptCount(uint8 interruptCount) ;
    #endif /* (SystemTick_InterruptOnCaptureCount) */

    #if (SystemTick_UsingHWCaptureCounter)
        void    SystemTick_SetCaptureCount(uint8 captureCount) ;
        uint8   SystemTick_ReadCaptureCount(void) ;
    #endif /* (SystemTick_UsingHWCaptureCounter) */

    void SystemTick_ClearFIFO(void) ;
#endif /* UDB Prototypes */

/* Sleep Retention APIs */
void SystemTick_Init(void)          ;
void SystemTick_Enable(void)        ;
void SystemTick_SaveConfig(void)    ;
void SystemTick_RestoreConfig(void) ;
void SystemTick_Sleep(void)         ;
void SystemTick_Wakeup(void)        ;


/***************************************
*   Enumerated Types and Parameters
***************************************/

/* Enumerated Type B_Timer__CaptureModes, Used in Capture Mode */
#define SystemTick__B_TIMER__CM_NONE 0
#define SystemTick__B_TIMER__CM_RISINGEDGE 1
#define SystemTick__B_TIMER__CM_FALLINGEDGE 2
#define SystemTick__B_TIMER__CM_EITHEREDGE 3
#define SystemTick__B_TIMER__CM_SOFTWARE 4



/* Enumerated Type B_Timer__TriggerModes, Used in Trigger Mode */
#define SystemTick__B_TIMER__TM_NONE 0x00u
#define SystemTick__B_TIMER__TM_RISINGEDGE 0x04u
#define SystemTick__B_TIMER__TM_FALLINGEDGE 0x08u
#define SystemTick__B_TIMER__TM_EITHEREDGE 0x0Cu
#define SystemTick__B_TIMER__TM_SOFTWARE 0x10u


/***************************************
*    Initialial Parameter Constants
***************************************/

#define SystemTick_INIT_PERIOD             71u
#define SystemTick_INIT_CAPTURE_MODE       ((uint8)((uint8)1u << SystemTick_CTRL_CAP_MODE_SHIFT))
#define SystemTick_INIT_TRIGGER_MODE       ((uint8)((uint8)0u << SystemTick_CTRL_TRIG_MODE_SHIFT))
#if (SystemTick_UsingFixedFunction)
    #define SystemTick_INIT_INTERRUPT_MODE (((uint8)((uint8)1u << SystemTick_STATUS_TC_INT_MASK_SHIFT)) | \
                                                  ((uint8)((uint8)0 << SystemTick_STATUS_CAPTURE_INT_MASK_SHIFT)))
#else
    #define SystemTick_INIT_INTERRUPT_MODE (((uint8)((uint8)1u << SystemTick_STATUS_TC_INT_MASK_SHIFT)) | \
                                                 ((uint8)((uint8)0 << SystemTick_STATUS_CAPTURE_INT_MASK_SHIFT)) | \
                                                 ((uint8)((uint8)0 << SystemTick_STATUS_FIFOFULL_INT_MASK_SHIFT)))
#endif /* (SystemTick_UsingFixedFunction) */
#define SystemTick_INIT_CAPTURE_COUNT      (2u)
#define SystemTick_INIT_INT_CAPTURE_COUNT  ((uint8)((uint8)(1u - 1u) << SystemTick_CTRL_INTCNT_SHIFT))


/***************************************
*           Registers
***************************************/

#if (SystemTick_UsingFixedFunction) /* Implementation Specific Registers and Register Constants */


    /***************************************
    *    Fixed Function Registers
    ***************************************/

    #define SystemTick_STATUS         (*(reg8 *) SystemTick_TimerHW__SR0 )
    /* In Fixed Function Block Status and Mask are the same register */
    #define SystemTick_STATUS_MASK    (*(reg8 *) SystemTick_TimerHW__SR0 )
    #define SystemTick_CONTROL        (*(reg8 *) SystemTick_TimerHW__CFG0)
    #define SystemTick_CONTROL2       (*(reg8 *) SystemTick_TimerHW__CFG1)
    #define SystemTick_CONTROL2_PTR   ( (reg8 *) SystemTick_TimerHW__CFG1)
    #define SystemTick_RT1            (*(reg8 *) SystemTick_TimerHW__RT1)
    #define SystemTick_RT1_PTR        ( (reg8 *) SystemTick_TimerHW__RT1)

    #if (CY_PSOC3 || CY_PSOC5LP)
        #define SystemTick_CONTROL3       (*(reg8 *) SystemTick_TimerHW__CFG2)
        #define SystemTick_CONTROL3_PTR   ( (reg8 *) SystemTick_TimerHW__CFG2)
    #endif /* (CY_PSOC3 || CY_PSOC5LP) */
    #define SystemTick_GLOBAL_ENABLE  (*(reg8 *) SystemTick_TimerHW__PM_ACT_CFG)
    #define SystemTick_GLOBAL_STBY_ENABLE  (*(reg8 *) SystemTick_TimerHW__PM_STBY_CFG)

    #define SystemTick_CAPTURE_LSB         (* (reg16 *) SystemTick_TimerHW__CAP0 )
    #define SystemTick_CAPTURE_LSB_PTR       ((reg16 *) SystemTick_TimerHW__CAP0 )
    #define SystemTick_PERIOD_LSB          (* (reg16 *) SystemTick_TimerHW__PER0 )
    #define SystemTick_PERIOD_LSB_PTR        ((reg16 *) SystemTick_TimerHW__PER0 )
    #define SystemTick_COUNTER_LSB         (* (reg16 *) SystemTick_TimerHW__CNT_CMP0 )
    #define SystemTick_COUNTER_LSB_PTR       ((reg16 *) SystemTick_TimerHW__CNT_CMP0 )


    /***************************************
    *    Register Constants
    ***************************************/

    /* Fixed Function Block Chosen */
    #define SystemTick_BLOCK_EN_MASK                     SystemTick_TimerHW__PM_ACT_MSK
    #define SystemTick_BLOCK_STBY_EN_MASK                SystemTick_TimerHW__PM_STBY_MSK

    /* Control Register Bit Locations */
    /* Interrupt Count - Not valid for Fixed Function Block */
    #define SystemTick_CTRL_INTCNT_SHIFT                  0x00u
    /* Trigger Polarity - Not valid for Fixed Function Block */
    #define SystemTick_CTRL_TRIG_MODE_SHIFT               0x00u
    /* Trigger Enable - Not valid for Fixed Function Block */
    #define SystemTick_CTRL_TRIG_EN_SHIFT                 0x00u
    /* Capture Polarity - Not valid for Fixed Function Block */
    #define SystemTick_CTRL_CAP_MODE_SHIFT                0x00u
    /* Timer Enable - As defined in Register Map, part of TMRX_CFG0 register */
    #define SystemTick_CTRL_ENABLE_SHIFT                  0x00u

    /* Control Register Bit Masks */
    #define SystemTick_CTRL_ENABLE                        ((uint8)((uint8)0x01u << SystemTick_CTRL_ENABLE_SHIFT))

    /* Control2 Register Bit Masks */
    /* As defined in Register Map, Part of the TMRX_CFG1 register */
    #define SystemTick_CTRL2_IRQ_SEL_SHIFT                 0x00u
    #define SystemTick_CTRL2_IRQ_SEL                      ((uint8)((uint8)0x01u << SystemTick_CTRL2_IRQ_SEL_SHIFT))

    #if (CY_PSOC5A)
        /* Use CFG1 Mode bits to set run mode */
        /* As defined by Verilog Implementation */
        #define SystemTick_CTRL_MODE_SHIFT                 0x01u
        #define SystemTick_CTRL_MODE_MASK                 ((uint8)((uint8)0x07u << SystemTick_CTRL_MODE_SHIFT))
    #endif /* (CY_PSOC5A) */
    #if (CY_PSOC3 || CY_PSOC5LP)
        /* Control3 Register Bit Locations */
        #define SystemTick_CTRL_RCOD_SHIFT        0x02u
        #define SystemTick_CTRL_ENBL_SHIFT        0x00u
        #define SystemTick_CTRL_MODE_SHIFT        0x00u

        /* Control3 Register Bit Masks */
        #define SystemTick_CTRL_RCOD_MASK  ((uint8)((uint8)0x03u << SystemTick_CTRL_RCOD_SHIFT)) /* ROD and COD bit masks */
        #define SystemTick_CTRL_ENBL_MASK  ((uint8)((uint8)0x80u << SystemTick_CTRL_ENBL_SHIFT)) /* HW_EN bit mask */
        #define SystemTick_CTRL_MODE_MASK  ((uint8)((uint8)0x03u << SystemTick_CTRL_MODE_SHIFT)) /* Run mode bit mask */

        #define SystemTick_CTRL_RCOD       ((uint8)((uint8)0x03u << SystemTick_CTRL_RCOD_SHIFT))
        #define SystemTick_CTRL_ENBL       ((uint8)((uint8)0x80u << SystemTick_CTRL_ENBL_SHIFT))
    #endif /* (CY_PSOC3 || CY_PSOC5LP) */

    /*RT1 Synch Constants: Applicable for PSoC3 and PSoC5LP */
    #define SystemTick_RT1_SHIFT                       0x04u
    /* Sync TC and CMP bit masks */
    #define SystemTick_RT1_MASK                        ((uint8)((uint8)0x03u << SystemTick_RT1_SHIFT))
    #define SystemTick_SYNC                            ((uint8)((uint8)0x03u << SystemTick_RT1_SHIFT))
    #define SystemTick_SYNCDSI_SHIFT                   0x00u
    /* Sync all DSI inputs with Mask  */
    #define SystemTick_SYNCDSI_MASK                    ((uint8)((uint8)0x0Fu << SystemTick_SYNCDSI_SHIFT))
    /* Sync all DSI inputs */
    #define SystemTick_SYNCDSI_EN                      ((uint8)((uint8)0x0Fu << SystemTick_SYNCDSI_SHIFT))

    #define SystemTick_CTRL_MODE_PULSEWIDTH            ((uint8)((uint8)0x01u << SystemTick_CTRL_MODE_SHIFT))
    #define SystemTick_CTRL_MODE_PERIOD                ((uint8)((uint8)0x02u << SystemTick_CTRL_MODE_SHIFT))
    #define SystemTick_CTRL_MODE_CONTINUOUS            ((uint8)((uint8)0x00u << SystemTick_CTRL_MODE_SHIFT))

    /* Status Register Bit Locations */
    /* As defined in Register Map, part of TMRX_SR0 register */
    #define SystemTick_STATUS_TC_SHIFT                 0x07u
    /* As defined in Register Map, part of TMRX_SR0 register, Shared with Compare Status */
    #define SystemTick_STATUS_CAPTURE_SHIFT            0x06u
    /* As defined in Register Map, part of TMRX_SR0 register */
    #define SystemTick_STATUS_TC_INT_MASK_SHIFT        (SystemTick_STATUS_TC_SHIFT - 0x04u)
    /* As defined in Register Map, part of TMRX_SR0 register, Shared with Compare Status */
    #define SystemTick_STATUS_CAPTURE_INT_MASK_SHIFT   (SystemTick_STATUS_CAPTURE_SHIFT - 0x04u)

    /* Status Register Bit Masks */
    #define SystemTick_STATUS_TC                       ((uint8)((uint8)0x01u << SystemTick_STATUS_TC_SHIFT))
    #define SystemTick_STATUS_CAPTURE                  ((uint8)((uint8)0x01u << SystemTick_STATUS_CAPTURE_SHIFT))
    /* Interrupt Enable Bit-Mask for interrupt on TC */
    #define SystemTick_STATUS_TC_INT_MASK              ((uint8)((uint8)0x01u << SystemTick_STATUS_TC_INT_MASK_SHIFT))
    /* Interrupt Enable Bit-Mask for interrupt on Capture */
    #define SystemTick_STATUS_CAPTURE_INT_MASK         ((uint8)((uint8)0x01u << SystemTick_STATUS_CAPTURE_INT_MASK_SHIFT))

#else   /* UDB Registers and Register Constants */


    /***************************************
    *           UDB Registers
    ***************************************/

    #define SystemTick_STATUS              (* (reg8 *) SystemTick_TimerUDB_rstSts_stsreg__STATUS_REG )
    #define SystemTick_STATUS_MASK         (* (reg8 *) SystemTick_TimerUDB_rstSts_stsreg__MASK_REG)
    #define SystemTick_STATUS_AUX_CTRL     (* (reg8 *) SystemTick_TimerUDB_rstSts_stsreg__STATUS_AUX_CTL_REG)
    #define SystemTick_CONTROL             (* (reg8 *) SystemTick_TimerUDB_sCTRLReg_SyncCtl_ctrlreg__CONTROL_REG )
    
    #if(SystemTick_Resolution <= 8u) /* 8-bit Timer */
        #define SystemTick_CAPTURE_LSB         (* (reg8 *) SystemTick_TimerUDB_sT8_timerdp_u0__F0_REG )
        #define SystemTick_CAPTURE_LSB_PTR       ((reg8 *) SystemTick_TimerUDB_sT8_timerdp_u0__F0_REG )
        #define SystemTick_PERIOD_LSB          (* (reg8 *) SystemTick_TimerUDB_sT8_timerdp_u0__D0_REG )
        #define SystemTick_PERIOD_LSB_PTR        ((reg8 *) SystemTick_TimerUDB_sT8_timerdp_u0__D0_REG )
        #define SystemTick_COUNTER_LSB         (* (reg8 *) SystemTick_TimerUDB_sT8_timerdp_u0__A0_REG )
        #define SystemTick_COUNTER_LSB_PTR       ((reg8 *) SystemTick_TimerUDB_sT8_timerdp_u0__A0_REG )
    #elif(SystemTick_Resolution <= 16u) /* 8-bit Timer */
        #if(CY_PSOC3) /* 8-bit addres space */
            #define SystemTick_CAPTURE_LSB         (* (reg16 *) SystemTick_TimerUDB_sT8_timerdp_u0__F0_REG )
            #define SystemTick_CAPTURE_LSB_PTR       ((reg16 *) SystemTick_TimerUDB_sT8_timerdp_u0__F0_REG )
            #define SystemTick_PERIOD_LSB          (* (reg16 *) SystemTick_TimerUDB_sT8_timerdp_u0__D0_REG )
            #define SystemTick_PERIOD_LSB_PTR        ((reg16 *) SystemTick_TimerUDB_sT8_timerdp_u0__D0_REG )
            #define SystemTick_COUNTER_LSB         (* (reg16 *) SystemTick_TimerUDB_sT8_timerdp_u0__A0_REG )
            #define SystemTick_COUNTER_LSB_PTR       ((reg16 *) SystemTick_TimerUDB_sT8_timerdp_u0__A0_REG )
        #else /* 16-bit address space */
            #define SystemTick_CAPTURE_LSB         (* (reg16 *) SystemTick_TimerUDB_sT8_timerdp_u0__16BIT_F0_REG )
            #define SystemTick_CAPTURE_LSB_PTR       ((reg16 *) SystemTick_TimerUDB_sT8_timerdp_u0__16BIT_F0_REG )
            #define SystemTick_PERIOD_LSB          (* (reg16 *) SystemTick_TimerUDB_sT8_timerdp_u0__16BIT_D0_REG )
            #define SystemTick_PERIOD_LSB_PTR        ((reg16 *) SystemTick_TimerUDB_sT8_timerdp_u0__16BIT_D0_REG )
            #define SystemTick_COUNTER_LSB         (* (reg16 *) SystemTick_TimerUDB_sT8_timerdp_u0__16BIT_A0_REG )
            #define SystemTick_COUNTER_LSB_PTR       ((reg16 *) SystemTick_TimerUDB_sT8_timerdp_u0__16BIT_A0_REG )
        #endif /* CY_PSOC3 */
    #elif(SystemTick_Resolution <= 24u)/* 24-bit Timer */
        #define SystemTick_CAPTURE_LSB         (* (reg32 *) SystemTick_TimerUDB_sT8_timerdp_u0__F0_REG )
        #define SystemTick_CAPTURE_LSB_PTR       ((reg32 *) SystemTick_TimerUDB_sT8_timerdp_u0__F0_REG )
        #define SystemTick_PERIOD_LSB          (* (reg32 *) SystemTick_TimerUDB_sT8_timerdp_u0__D0_REG )
        #define SystemTick_PERIOD_LSB_PTR        ((reg32 *) SystemTick_TimerUDB_sT8_timerdp_u0__D0_REG )
        #define SystemTick_COUNTER_LSB         (* (reg32 *) SystemTick_TimerUDB_sT8_timerdp_u0__A0_REG )
        #define SystemTick_COUNTER_LSB_PTR       ((reg32 *) SystemTick_TimerUDB_sT8_timerdp_u0__A0_REG )
    #else /* 32-bit Timer */
        #if(CY_PSOC3 || CY_PSOC5) /* 8-bit address space */
            #define SystemTick_CAPTURE_LSB         (* (reg32 *) SystemTick_TimerUDB_sT8_timerdp_u0__F0_REG )
            #define SystemTick_CAPTURE_LSB_PTR       ((reg32 *) SystemTick_TimerUDB_sT8_timerdp_u0__F0_REG )
            #define SystemTick_PERIOD_LSB          (* (reg32 *) SystemTick_TimerUDB_sT8_timerdp_u0__D0_REG )
            #define SystemTick_PERIOD_LSB_PTR        ((reg32 *) SystemTick_TimerUDB_sT8_timerdp_u0__D0_REG )
            #define SystemTick_COUNTER_LSB         (* (reg32 *) SystemTick_TimerUDB_sT8_timerdp_u0__A0_REG )
            #define SystemTick_COUNTER_LSB_PTR       ((reg32 *) SystemTick_TimerUDB_sT8_timerdp_u0__A0_REG )
        #else /* 32-bit address space */
            #define SystemTick_CAPTURE_LSB         (* (reg32 *) SystemTick_TimerUDB_sT8_timerdp_u0__32BIT_F0_REG )
            #define SystemTick_CAPTURE_LSB_PTR       ((reg32 *) SystemTick_TimerUDB_sT8_timerdp_u0__32BIT_F0_REG )
            #define SystemTick_PERIOD_LSB          (* (reg32 *) SystemTick_TimerUDB_sT8_timerdp_u0__32BIT_D0_REG )
            #define SystemTick_PERIOD_LSB_PTR        ((reg32 *) SystemTick_TimerUDB_sT8_timerdp_u0__32BIT_D0_REG )
            #define SystemTick_COUNTER_LSB         (* (reg32 *) SystemTick_TimerUDB_sT8_timerdp_u0__32BIT_A0_REG )
            #define SystemTick_COUNTER_LSB_PTR       ((reg32 *) SystemTick_TimerUDB_sT8_timerdp_u0__32BIT_A0_REG )
        #endif /* CY_PSOC3 || CY_PSOC5 */ 
    #endif

    #define SystemTick_COUNTER_LSB_PTR_8BIT       ((reg8 *) SystemTick_TimerUDB_sT8_timerdp_u0__A0_REG )
    
    #if (SystemTick_UsingHWCaptureCounter)
        #define SystemTick_CAP_COUNT              (*(reg8 *) SystemTick_TimerUDB_sCapCount_counter__PERIOD_REG )
        #define SystemTick_CAP_COUNT_PTR          ( (reg8 *) SystemTick_TimerUDB_sCapCount_counter__PERIOD_REG )
        #define SystemTick_CAPTURE_COUNT_CTRL     (*(reg8 *) SystemTick_TimerUDB_sCapCount_counter__CONTROL_AUX_CTL_REG )
        #define SystemTick_CAPTURE_COUNT_CTRL_PTR ( (reg8 *) SystemTick_TimerUDB_sCapCount_counter__CONTROL_AUX_CTL_REG )
    #endif /* (SystemTick_UsingHWCaptureCounter) */


    /***************************************
    *       Register Constants
    ***************************************/

    /* Control Register Bit Locations */
    #define SystemTick_CTRL_INTCNT_SHIFT              0x00u       /* As defined by Verilog Implementation */
    #define SystemTick_CTRL_TRIG_MODE_SHIFT           0x02u       /* As defined by Verilog Implementation */
    #define SystemTick_CTRL_TRIG_EN_SHIFT             0x04u       /* As defined by Verilog Implementation */
    #define SystemTick_CTRL_CAP_MODE_SHIFT            0x05u       /* As defined by Verilog Implementation */
    #define SystemTick_CTRL_ENABLE_SHIFT              0x07u       /* As defined by Verilog Implementation */

    /* Control Register Bit Masks */
    #define SystemTick_CTRL_INTCNT_MASK               ((uint8)((uint8)0x03u << SystemTick_CTRL_INTCNT_SHIFT))
    #define SystemTick_CTRL_TRIG_MODE_MASK            ((uint8)((uint8)0x03u << SystemTick_CTRL_TRIG_MODE_SHIFT))
    #define SystemTick_CTRL_TRIG_EN                   ((uint8)((uint8)0x01u << SystemTick_CTRL_TRIG_EN_SHIFT))
    #define SystemTick_CTRL_CAP_MODE_MASK             ((uint8)((uint8)0x03u << SystemTick_CTRL_CAP_MODE_SHIFT))
    #define SystemTick_CTRL_ENABLE                    ((uint8)((uint8)0x01u << SystemTick_CTRL_ENABLE_SHIFT))

    /* Bit Counter (7-bit) Control Register Bit Definitions */
    /* As defined by the Register map for the AUX Control Register */
    #define SystemTick_CNTR_ENABLE                    0x20u

    /* Status Register Bit Locations */
    #define SystemTick_STATUS_TC_SHIFT                0x00u  /* As defined by Verilog Implementation */
    #define SystemTick_STATUS_CAPTURE_SHIFT           0x01u  /* As defined by Verilog Implementation */
    #define SystemTick_STATUS_TC_INT_MASK_SHIFT       SystemTick_STATUS_TC_SHIFT
    #define SystemTick_STATUS_CAPTURE_INT_MASK_SHIFT  SystemTick_STATUS_CAPTURE_SHIFT
    #define SystemTick_STATUS_FIFOFULL_SHIFT          0x02u  /* As defined by Verilog Implementation */
    #define SystemTick_STATUS_FIFONEMP_SHIFT          0x03u  /* As defined by Verilog Implementation */
    #define SystemTick_STATUS_FIFOFULL_INT_MASK_SHIFT SystemTick_STATUS_FIFOFULL_SHIFT

    /* Status Register Bit Masks */
    /* Sticky TC Event Bit-Mask */
    #define SystemTick_STATUS_TC                      ((uint8)((uint8)0x01u << SystemTick_STATUS_TC_SHIFT))
    /* Sticky Capture Event Bit-Mask */
    #define SystemTick_STATUS_CAPTURE                 ((uint8)((uint8)0x01u << SystemTick_STATUS_CAPTURE_SHIFT))
    /* Interrupt Enable Bit-Mask */
    #define SystemTick_STATUS_TC_INT_MASK             ((uint8)((uint8)0x01u << SystemTick_STATUS_TC_SHIFT))
    /* Interrupt Enable Bit-Mask */
    #define SystemTick_STATUS_CAPTURE_INT_MASK        ((uint8)((uint8)0x01u << SystemTick_STATUS_CAPTURE_SHIFT))
    /* NOT-Sticky FIFO Full Bit-Mask */
    #define SystemTick_STATUS_FIFOFULL                ((uint8)((uint8)0x01u << SystemTick_STATUS_FIFOFULL_SHIFT))
    /* NOT-Sticky FIFO Not Empty Bit-Mask */
    #define SystemTick_STATUS_FIFONEMP                ((uint8)((uint8)0x01u << SystemTick_STATUS_FIFONEMP_SHIFT))
    /* Interrupt Enable Bit-Mask */
    #define SystemTick_STATUS_FIFOFULL_INT_MASK       ((uint8)((uint8)0x01u << SystemTick_STATUS_FIFOFULL_SHIFT))

    #define SystemTick_STATUS_ACTL_INT_EN             0x10u   /* As defined for the ACTL Register */

    /* Datapath Auxillary Control Register definitions */
    #define SystemTick_AUX_CTRL_FIFO0_CLR             0x01u   /* As defined by Register map */
    #define SystemTick_AUX_CTRL_FIFO1_CLR             0x02u   /* As defined by Register map */
    #define SystemTick_AUX_CTRL_FIFO0_LVL             0x04u   /* As defined by Register map */
    #define SystemTick_AUX_CTRL_FIFO1_LVL             0x08u   /* As defined by Register map */
    #define SystemTick_STATUS_ACTL_INT_EN_MASK        0x10u   /* As defined for the ACTL Register */

#endif /* Implementation Specific Registers and Register Constants */

#endif  /* CY_Timer_v2_30_SystemTick_H */


/* [] END OF FILE */
