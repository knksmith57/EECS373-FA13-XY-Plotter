/******************************************************************************
 * (c) Copyright 2009 Actel Corporation.  All rights reserved.
 *
 *  Application demo for Smartfusion
 *
 *
 * Author : Actel Application Team
 * Rev    : 1.0.0.0
 * Description: Device driver for the on-board NOR flash for SmartFusion KITS
 *
 ******************************************************************************/

/******************************************************************************/
/* Driver Includes */
/******************************************************************************/
#include <assert.h>
#include "nor.h"

#define ASSERT(X)    assert(X)

/*****************************************************************************/
/* There is a maximum of two NVM blocks */
/*****************************************************************************/
#define MAX_NB_EXT_NOR_BLOCKS         2

/*****************************************************************************/
/* eNVM registers status bits locations.*/
/*****************************************************************************/

typedef enum
{
    SUCCESS = 0,
    BLOCK_LOCKED_ERROR,
    PROGRAM_SUSPEND_IND,
    ABORT_ERROR,
    PROGRAM_ERROR,
    ERASE_ERROR,
    ERASE_SUSPEND_STATUS,
    READY_STATUS,
    INVALID_ADDRESS
} nor_status_t;

/*****************************************************************************/
/* Command Bus Operations for Numonyx Flash*/
/* JS28F640J3D-75 */
/*****************************************************************************/

/* Registers */
#define PROGRAM_CONFIG_REG              0x60
#define PROGRAM_OPT_REG                 0xC0
#define CLEAR_STATUS_REG                0x50
#define PROGRAM_STATUS_CONFIG_REG       0xB8
/* Read Modes */
#define READ_ARRAY                      0xFF
#define READ_STATUS_REGISTER            0x70
#define READ_DEVICE_INFO                0x90
#define CFI_QUERY                       0x98
/* Program(write) */
#define WORD_PROGRAM                    0x40
#define BYTE_PROGRAM                    0x10
#define BUFFERED_PROGRAM                0xE8
#define PROGRAM_SUSPEND                 0xB0
#define PROGRAM_RESUME                  0xD0
/* ERASE */
#define BLOCK_ERASE                     0x20
#define ERASE_SUSPEND                   0xB0
#define ERASE_RESUME                    0xD0
/* Security */
#define LOCK_BLOCK                      0x60
#define UNLOCK_BLOCK                    0x60

#define STATUS_READY_MASK               0x00000080UL
#define STATUS_ERASE_SUSPEND_MASK       0x00000040UL
#define STATUS_CMD_SEQ_ERROR_MASK       0x00000030UL
#define STATUS_ERASE_ERROR_MASK         0x00000020UL
#define STATUS_PROGRAM_ERROR_MASK       0x00000010UL
#define STATUS_GENERAL_ERROR_MASK       0x00000008UL
#define STATUS_PROGRAM_SUSPEND_MASK     0x00000004UL
#define STATUS_BLOCK_LOCK_ERROR_MASK    0x00000002UL

/*****************************************************************************/
/* External Flash memory mapping. Two Chips with each 8M */
/*****************************************************************************/

#define F2DSS_EMC_BASE_ADDR             0x70000000
#define EXT_FLASH_START_ADDR            0x74000000
#define EXT_FLASH_END_ADDR              0x74FFFFFF

#define IS_VALID_ADDR(x) (((x<=EXT_FLASH_END_ADDR)&&(x>=EXT_FLASH_START_ADDR))?1:0)

#define EXT_FLASH0_START_ADDR           0x74000000
#define EXT_FLASH0_END_ADDR             0x747FFFFF

#define EXT_FLASH1_START_ADDR           0x74800000
#define EXT_FLASH1_END_ADDR             0x74FFFFFF

#define WORD_ALIGNED_MASK               0x03
#define NVM_OFFSET_MASK                 0x000FFFFF
#define PAGE_ALIGN_MASK                 0xFFFFFF80

#define PROGRAM_ALIGN_MASK              0x0000007F

#define STICKY_BITS_RESET               0xFFFFFFFF

#define ENVM_MAIN_ARRAY_SIZE            0x00040000
#define ENVM_SPARE_PAGE_SIZE            0x00002000
#define ENVM_USER_DATA_SIZE             0x00002000
#define ENVM_USER_SPARE_PAGE_SIZE       0x00000100

/* Chip size 64Mbit = (64/8)x1024x1024 */
#define CHIP_SIZE                       0x800000
/* 128KB = 64Kword (word x16) */
#define BLOCK_SIZE                      0x20000
#define NO_OF_BLOCKS                    64

#define BUFFER_SIZE_WORDS 16
#define BUFFER_SIZE_BYTES 32

/*****************************************************************************/
/* See nor.h for details. */
/*****************************************************************************/
void emc_init(void)
{
    *(volatile unsigned long *)0xE0042040 = 0x00207FFD;
    *(volatile unsigned long *)0xE0042044 = 0x00265557;/* 10ws */

}

static void flash_delay(void)
{
    uint32_t i;
    volatile uint32_t a=0;
    for (i=0; i<40; i++)
    a++;
}

static int status_wait (uint32_t address)
{
    volatile uint16_t status;
    uint32_t a=0;

    do
    {
        a++;
        flash_delay();
        status = *((volatile uint16_t *)address);
    } while (((status) != 0x0080) && (a < 0x7ffffff));
    flash_delay();
    if( (a >=0x7ffffff) && (status != 0x80))
    {
       return 1;
    }

    return 0;
}

/*****************************************************************************/
/* See nor.h for details. */
/*****************************************************************************/
emc_flash_status_t
emc_flash_block_erase
(
    uint16_t *blockAddr
)
{

    *(volatile uint16_t*)blockAddr = CLEAR_STATUS_REG;
    *(volatile uint16_t*)blockAddr = UNLOCK_BLOCK;
    *(volatile uint16_t*)blockAddr = PROGRAM_RESUME;
    *(volatile uint16_t*)blockAddr = READ_STATUS_REGISTER;

    if(status_wait((uint32_t)blockAddr))
    {
        return (*((volatile uint16_t *)blockAddr));
    }

    *(volatile uint16_t*)blockAddr = CLEAR_STATUS_REG;
    *(volatile uint16_t*)blockAddr = READ_ARRAY;
    *(volatile uint16_t*)blockAddr = BLOCK_ERASE;
    *(volatile uint16_t*)blockAddr = ERASE_RESUME;
    *(volatile uint16_t*)blockAddr = READ_STATUS_REGISTER;

    if(status_wait((uint32_t)blockAddr))
    {
        return (*((volatile uint16_t *)blockAddr));
    }
    return 0;
}

/*****************************************************************************/
/* See nor.h for details. */
/*****************************************************************************/
emc_flash_status_t
emc_flash_chip_erase
(
    uint32_t startAddr
)
{
    uint32_t status = 0;
    uint32_t blkNumber = 0;
    uint16_t *baseAddr = (uint16_t *) startAddr;

    for(blkNumber=0; blkNumber < NO_OF_BLOCKS; blkNumber++)
    {
        status += emc_flash_block_erase(baseAddr + (blkNumber)*(0x10000) );
        if (status > 0)
        {
            return status;
        }
    }
    return status;
}

/*****************************************************************************/
/* See nor.h for details. */
/*****************************************************************************/
emc_flash_status_t
emc_flash_write
(
    uint32_t start_addr,
    const uint8_t * p_data,
    size_t nb_bytes
)
{
    volatile uint16_t *currAddr;
    uint16_t *buffPtr = (uint16_t *)p_data;
    int16_t nb_left_bytes = nb_bytes;
    uint32_t ii =0, temp =0;
    uint16_t loopCnt = 0;

    if( (start_addr == (uint32_t)NULL) ||
         (p_data == NULL)      ||
         (nb_bytes <= 0))
    {
         return NOR_INVALID_ARGUMENTS;
    }
    if( ! (IS_VALID_ADDR(start_addr)))
    {
         return NOR_INVALID_ADDRESS;
    }

    currAddr = (volatile uint16_t *)start_addr;

    loopCnt = nb_bytes/BUFFER_SIZE_BYTES;

    for(ii=0; ii<loopCnt; ii++)
    {
        *(volatile uint16_t *)currAddr = CLEAR_STATUS_REG;
        *(volatile uint16_t *)currAddr = READ_ARRAY;
        *(volatile uint16_t *)currAddr = BUFFERED_PROGRAM;

        *(volatile uint16_t *)currAddr = BUFFER_SIZE_WORDS -1;
        for(temp=0; temp<BUFFER_SIZE_WORDS; temp++)
        {
             *(currAddr +temp ) = *(uint16_t *) (buffPtr+temp);
        }
        *(volatile uint16_t *)currAddr = PROGRAM_RESUME;
        *(volatile uint16_t *)currAddr = READ_STATUS_REGISTER;

        if(status_wait((uint32_t)currAddr))
        {
            return (*((volatile uint16_t *)currAddr));
        }

         for(temp=0; temp<BUFFER_SIZE_WORDS; temp++)
         {
             *(currAddr+temp) = READ_ARRAY;
             if( *(buffPtr + temp) != *(volatile uint16_t *)(currAddr + temp))
             {
                 /* Write Failed */
                 return NOR_UNSUCCESS;
              }
          }
          *currAddr = CLEAR_STATUS_REG;
          nb_left_bytes -= BUFFER_SIZE_BYTES;
          currAddr += BUFFER_SIZE_WORDS;
          buffPtr += BUFFER_SIZE_WORDS;

    }

    if (nb_left_bytes > 0)
    {

        for(ii=0; ii<nb_left_bytes; ii += 2)
        {
            *((volatile uint16_t *)(currAddr)) = CLEAR_STATUS_REG;
            *((volatile uint16_t *)(currAddr)) = READ_ARRAY;
            *((volatile uint16_t *)(currAddr)) = WORD_PROGRAM;
            *((volatile uint16_t *)(currAddr)) = *((volatile uint16_t *)buffPtr);

            *((volatile uint16_t *)(currAddr )) = READ_STATUS_REGISTER;

            if(status_wait((uint32_t)currAddr))
            {
                return (*((volatile uint16_t *)currAddr));
            }

            *((volatile uint16_t *)currAddr) = READ_ARRAY;
            if(*((volatile uint16_t *)buffPtr) != *((volatile uint16_t *)currAddr))
            {
                /* write word failed */
                return NOR_UNSUCCESS;
            }
            currAddr++;
            buffPtr++;

        }
        nb_left_bytes = 0;
    }
    return NOR_SUCCESS;
}

/*****************************************************************************/
/* See nor.h for details. */
/*****************************************************************************/
emc_flash_status_t
emc_flash_read
(
    uint32_t start_addr,
    uint8_t * p_data,
    size_t nb_bytes
)
{
    volatile uint16_t *currAddr = (volatile uint16_t *)start_addr;
    uint16_t *buffPtr = (uint16_t *)p_data;
    uint32_t loop = 0;

    if( (start_addr == (uint32_t)NULL) ||
         (p_data == NULL)      ||
         (nb_bytes <= 0))
    {
        return NOR_INVALID_ARGUMENTS;
    }
    if( ! (IS_VALID_ADDR(start_addr)))
    {
        return NOR_INVALID_ADDRESS;
    }

    for(loop=0; loop < nb_bytes; loop += 2)
    {
        *(currAddr+loop) = READ_ARRAY;
        *(buffPtr+loop)  = *(volatile uint16_t *)(currAddr + loop);
    }

    return NOR_SUCCESS;

}
