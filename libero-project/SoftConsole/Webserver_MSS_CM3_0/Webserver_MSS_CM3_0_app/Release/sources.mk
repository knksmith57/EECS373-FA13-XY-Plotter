################################################################################
# Automatically-generated file. Do not edit!
################################################################################

O_SRCS := 
C_SRCS := 
S_UPPER_SRCS := 
S_SRCS := 
OBJ_SRCS := 
MEMORYMAP := 
OBJS := 
C_DEPS := 
SRECFILES := 
IHEXFILES := 
LISTINGS := 
EXECUTABLE := 

# Every subdirectory with source files must be described here
SUBDIRS := \
webserver \
uipstack \
. \
mac \
application_tasks \
FreeRTOS \
FreeRTOS/portable/MemMang \
FreeRTOS/portable/GCC/ARM_CM3 \
BSP/spi_flash_driver \
BSP/oled_driver \
BSP/i2c_driver \
BSP/emc_driver \

################################################################################
# Microsemi SoftConsole IDE Variables
################################################################################

BUILDCMD = arm-none-eabi-gcc -mthumb -mcpu=cortex-m3 -specs=bare.specs -L"" -T../../Webserver_MSS_CM3_0_hw_platform/CMSIS/startup_gcc/production-execute-in-place.ld -Wl,-Map=$(EXECUTABLE).map -Xlinker -gc-sections 
SHELL := cmd.exe
EXECUTABLE := Webserver_MSS_CM3_0_app

# Target-specific items to be cleaned up in the top directory.
clean::
	-$(RM) $(wildcard ./*.map) 
