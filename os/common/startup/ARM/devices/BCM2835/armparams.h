/*
    ChibiOS/RT - Copyright (C) 2006,2007,2008,2009,2010,
                 2011,2012 Giovanni Di Sirio.

    This file is part of ChibiOS/RT.

    ChibiOS/RT is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 3 of the License, or
    (at your option) any later version.

    ChibiOS/RT is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

/**
 * @file    ARM/BCM2835/armparams.h
 * @brief   ARM7 BCM2835 Specific Parameters.
 *
 * @defgroup ARM_BCM2835 AT91SAM7 Specific Parameters
 * @ingroup ARM_SPECIFIC
 * @details This file contains the ARM specific parameters for the
 *          BCM2835 platform.
 * @{
 */

#ifndef _ARMPARAMS_H_
#define _ARMPARAMS_H_

/**
 * @brief   ARM core model.
 */
#define ARM_CORE                ARM_CORE_ARM1176

/**
 * @brief   Thumb-capable.
 */
#define ARM_SUPPORTS_THUMB      1

/**
 * @brief   Thumb2-capable.
 */
#define ARM_SUPPORTS_THUMB2     1

/**
 * @brief   BCM2835-specific wait for interrupt.
 */
#define ARM_WFI_IMPL \
	asm volatile ("MCR p15,0,r0,c7,c0,4" : : : "memory")

#if !defined(_FROM_ASM_) || defined(__DOXYGEN__)
/**
 * @brief   Address of the IRQ vector register in the interrupt controller.
 */
#define ARM_IRQ_VECTOR_REG      0xFFFF0018U
#else
#define ARM_IRQ_VECTOR_REG      0xFFFF0018
#endif
 
#endif /* _ARMPARAMS_H_ */

/** @} */
