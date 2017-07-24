/*******************************************************************************
* File Name: cymetadata.c
* 
* PSoC Creator  4.0 Update 1
*
* Description:
* This file defines all extra memory spaces that need to be included.
* This file is automatically generated by PSoC Creator.
*
********************************************************************************
* Copyright (c) 2007-2016 Cypress Semiconductor.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
********************************************************************************/


#include "cytypes.h"


#if defined(__GNUC__) || defined(__ARMCC_VERSION)
#ifndef CY_LOADABLE_META_SECTION
#define CY_LOADABLE_META_SECTION __attribute__ ((__section__(".cyloadablemeta"), used))
#endif
CY_LOADABLE_META_SECTION
#elif defined(__ICCARM__)
#pragma  location=".cyloadablemeta"
#else
#error "Unsupported toolchain"
#endif
const uint8 cy_meta_loadable[] = {
    0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u,
    0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u,
    0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u,
    0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u,
    0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u,
    0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u,
    0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u,
    0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u
};

#if defined(__GNUC__) || defined(__ARMCC_VERSION)
#ifndef CY_CONFIG_ECC_SECTION
#define CY_CONFIG_ECC_SECTION __attribute__ ((__section__(".cyconfigecc"), used))
#endif
CY_CONFIG_ECC_SECTION
#elif defined(__ICCARM__)
#pragma  location=".cyconfigecc"
#else
#error "Unsupported toolchain"
#endif
const uint8 cy_meta_configecc[] = {
    0x01u, 0x45u, 0x00u, 0x40u, 0x03u, 0x52u, 0x00u, 0x40u,
    0x01u, 0x07u, 0x01u, 0x40u, 0x01u, 0x09u, 0x01u, 0x40u,
    0x02u, 0x0Cu, 0x01u, 0x40u, 0x02u, 0x0Du, 0x01u, 0x40u,
    0x01u, 0x15u, 0x01u, 0x40u, 0x02u, 0x17u, 0x01u, 0x40u,
    0x02u, 0x19u, 0x01u, 0x40u, 0x01u, 0x1Bu, 0x01u, 0x40u,
    0x03u, 0x40u, 0x01u, 0x40u, 0x03u, 0x41u, 0x01u, 0x40u,
    0x05u, 0x42u, 0x01u, 0x40u, 0x04u, 0x43u, 0x01u, 0x40u,
    0x04u, 0x45u, 0x01u, 0x40u, 0x07u, 0x47u, 0x01u, 0x40u,
    0x04u, 0x48u, 0x01u, 0x40u, 0x03u, 0x49u, 0x01u, 0x40u,
    0x03u, 0x4Cu, 0x01u, 0x40u, 0x07u, 0x4Du, 0x01u, 0x40u,
    0x01u, 0x50u, 0x01u, 0x40u, 0x01u, 0x51u, 0x01u, 0x40u,
    0x7Eu, 0x02u, 0x11u, 0x02u, 0x60u, 0x08u, 0x7Cu, 0x40u,
    0xE8u, 0x20u, 0xE8u, 0x20u, 0xDBu, 0x04u, 0xDFu, 0x01u,
    0x68u, 0x01u, 0x88u, 0x01u, 0xE2u, 0x10u, 0xEAu, 0x02u,
    0xEEu, 0x0Au, 0xEAu, 0x02u, 0xEEu, 0x0Au, 0xE2u, 0x10u,
    0x33u, 0x81u, 0x36u, 0x40u, 0xCCu, 0x70u, 0x9Fu, 0x01u,
    0xA6u, 0x40u, 0xA7u, 0x80u, 0x00u, 0x08u, 0x9Fu, 0x01u,
    0xA6u, 0x40u, 0xA7u, 0x80u, 0xC0u, 0x10u, 0x9Fu, 0x01u,
    0xA6u, 0x40u, 0xA7u, 0x80u, 0xB0u, 0x04u, 0x58u, 0x40u,
    0x88u, 0x40u, 0xD4u, 0x01u, 0xE0u, 0x01u, 0x08u, 0x08u,
    0x0Bu, 0x04u, 0x0Fu, 0x40u, 0x98u, 0x02u, 0xB0u, 0x02u,
    0xC2u, 0x0Eu, 0xE8u, 0x04u, 0xAEu, 0x40u, 0xAFu, 0x81u,
    0xEAu, 0x40u, 0xEEu, 0x50u, 0x7Cu, 0x80u, 0x8Cu, 0x80u,
    0xDEu, 0x20u, 0x98u, 0x02u, 0xACu, 0x08u, 0xAFu, 0x44u,
    0x18u, 0x10u, 0x78u, 0x02u, 0x8Cu, 0x10u, 0x98u, 0x02u,
    0xC6u, 0x08u, 0xDEu, 0x02u, 0xE2u, 0x08u, 0x02u, 0x14u,
    0x00u, 0x2Au, 0x00u, 0x00u, 0x04u, 0x08u, 0x08u, 0x00u,
    0x08u, 0x00u, 0x00u, 0x00u, 0x40u, 0x00u, 0x00u, 0x00u,
    0x00u, 0x00u, 0x00u, 0x00u, 0xC0u, 0x00u, 0x00u, 0x00u,
    0x00u, 0x0Bu, 0x0Bu, 0x00u, 0x00u, 0x00u, 0x00u, 0x00u,
    0x00u, 0x02u, 0x02u, 0x00u, 0x02u, 0x00u, 0x00u, 0x00u
};