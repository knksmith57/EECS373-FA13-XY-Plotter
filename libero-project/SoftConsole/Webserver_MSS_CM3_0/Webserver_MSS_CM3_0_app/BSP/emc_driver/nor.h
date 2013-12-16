/******************************************************************************
 * (c) Copyright 2009 Actel Corporation.  All rights reserved.
 *
 *
 *
 * Author : Actel Application Team
 * Rev    : 1.0.0.0
 * Description: Device driver for the on-board NOR flash for SmartFusion KITS
 * SmartFusion external Flash bare metal driver public application
 * programming interface (API).
 ******************************************************************************/
#ifndef EXT_NOR_H_
#define EXT_NOR_H_

#include <stdint.h>
#include <stddef.h>

/*****************************************************************************/
/* Possible return values from functions on NOR FLASH. */
/*****************************************************************************/
typedef enum
{
    NOR_SUCCESS            = 0,
    NOR_BLOCK_LOCK_ERROR   = 0x2,
    NOR_PROGRAM_SUSPEND    = 0x4,
    NOR_GENERAL_ERROR      = 0x08,
    NOR_PROGRAM_ERROR      = 0x10,
    NOR_ERASE_ERROR        = 0x20,
    NOR_CMD_SEQ_ERROR      = 0x30,
    NOR_ERASE_SUSPEND      = 0x40,
    NOR_INVALID_ARGUMENTS,
    NOR_INVALID_ADDRESS,
    NOR_UNSUCCESS
} emc_flash_status_t;

/*****************************************************************************
 * This function initializes the EMC controller for external RAM and
 * external Flash
 *****************************************************************************/
void emc_init(void);

/*****************************************************************************
 * This function writes the content of the buffer passed as parameter to Fusion
 * external NOR Flash. The data is written from the memory location specified
 * by the first parameter.
 * This address is the absolute address in the processor's memory
 * space at which the External Flash is located.
 *
 * @param start_addr    This is the address at which data willbe written.
 *                      This address is the absolute address in the processor's
 *                      memory space at which the external Flash is located.
 * @param p_data        This is a pointer to the buffer holding the data to be
 *                      written into external Flash.
 * @param nb_bytes      This is the number of bytes to be written into external Flash.
 * @return              The return value indicates if the write was successful.
 *                      Possible values are:
 *                             - NOR_SUCCESS
 *                             - NOR_INVALID_ADDRESS
 *                             - NOR_UNSUCCESS
 ******************************************************************************/
emc_flash_status_t
emc_flash_write
(
    uint32_t start_addr,
    const uint8_t * p_data,
    size_t nb_bytes
);

/*****************************************************************************
 * This function reads the content of the smart Fusion emc
 * external NOR Flash. The data is read from the memory location specified
 * by the first parameter.
 * This address is the absolute address in the processor's memory
 * space at which the External Flash is located.
 *
 * @param start_addr   This is the address at which data willbe read.
 *                     This address is the absolute address in the processor's
 *                     memory space at which the external Flash is located.
 * @param p_data       This is a pointer to the buffer for holding the read data.
 * @param nb_bytes     This is the number of bytes to be read from external Flash.
 * @return             The return value indicates if the write was successful.
 *                     Possible values are:
 *                           - NOR_SUCCESS
 *                           - NOR_INVALID_ADDRESS
 *                           - NOR_UNSUCCESS
  ******************************************************************************/
emc_flash_status_t
emc_flash_read
(
    uint32_t start_addr,
    uint8_t * p_data,
    size_t nb_bytes
);

/*****************************************************************************
 * This function erases the content of the smart Fusion emc
 * external NOR Flash. It takes the start address of the flash as input.
 * This address is the absolute address in the processor's memory
 * space at which the External Flash is located.
 *
 * @param start_addr   This is the address at which flash is located.
 *                     This address is the absolute address in the processor's
 *                     memory space at which the external Flash is located.
 * @return             The return value indicates if the write was successful.
 *                     Possible values are:
 *                           - NOR_SUCCESS
 *                           - NOR_INVALID_ADDRESS
 *                           - NOR_UNSUCCESS
  ******************************************************************************/
emc_flash_status_t
emc_flash_chip_erase
(
    uint32_t start_addr
);

/*****************************************************************************
 * This function erases the block of the smart Fusion emc
 * external NOR Flash. It takes the start address of the block as input.
 * This address is the absolute address in the processor's memory
 * space at which the External Flash is located.
 *
 * @param start_addr   This is the address at which block is located.
 *                     This address is the absolute address in the processor's
 *                     memory space at which the external Flash is located.
 * @return             The return value indicates if the write was successful.
 *                     Possible values are:
 *                           - NOR_SUCCESS
 *                           - NOR_INVALID_ADDRESS
 *                           - NOR_UNSUCCESS
  ******************************************************************************/
emc_flash_status_t
emc_flash_block_erase
(
    uint16_t *blockAddr
);

#endif
