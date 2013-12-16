################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include webserver/subdir.mk
-include uipstack/subdir.mk
-include mac/subdir.mk
-include application_tasks/subdir.mk
-include FreeRTOS/subdir.mk
-include FreeRTOS/portable/MemMang/subdir.mk
-include FreeRTOS/portable/GCC/ARM_CM3/subdir.mk
-include BSP/spi_flash_driver/subdir.mk
-include BSP/oled_driver/subdir.mk
-include BSP/i2c_driver/subdir.mk
-include BSP/emc_driver/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
MEMORYMAP += \
memory-map.xml \

IHEXFILES += \
Webserver_MSS_CM3_0_app.hex \

SRECFILES += \
Webserver_MSS_CM3_0_app.srec \

LISTINGS += \
Webserver_MSS_CM3_0_app.lst \


# All Target
all: Webserver_MSS_CM3_0_app secondary-outputs

# Tool invocations
Webserver_MSS_CM3_0_app: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU C Linker'
	arm-none-eabi-gcc -mthumb -mcpu=cortex-m3 -specs=bare.specs -L"" -T../../Webserver_MSS_CM3_0_hw_platform/CMSIS/startup_gcc/production-execute-in-place.ld -Wl,-Map=$(EXECUTABLE).map -Xlinker -gc-sections -o"Webserver_MSS_CM3_0_app" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

memory-map.xml: $(EXECUTABLE)
	@echo 'Invoking: Memory map generator'
	actel-map -o "memory-map.xml" $(EXECUTABLE) $(BUILDCMD)
	@echo 'Finished building: $@'
	@echo ' '

Webserver_MSS_CM3_0_app.hex: $(EXECUTABLE)
	@echo 'Invoking: GNU Intel Hex File Generator'
	arm-none-eabi-objcopy -O ihex $(EXECUTABLE) "Webserver_MSS_CM3_0_app.hex"
	@echo 'Finished building: $@'
	@echo ' '

Webserver_MSS_CM3_0_app.srec: $(EXECUTABLE)
	@echo 'Invoking: GNU S-Record Generator'
	arm-none-eabi-objcopy -O srec $(EXECUTABLE) "Webserver_MSS_CM3_0_app.srec"
	@echo 'Finished building: $@'
	@echo ' '

Webserver_MSS_CM3_0_app.lst: $(EXECUTABLE)
	@echo 'Invoking: GNU Listing Generator'
	arm-none-eabi-objdump -h -S $(EXECUTABLE) > "Webserver_MSS_CM3_0_app.lst"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean::
	-$(RM) $(MEMORYMAP)$(OBJS)$(C_DEPS)$(SRECFILES)$(IHEXFILES)$(LISTINGS)$(EXECUTABLE) Webserver_MSS_CM3_0_app
	-@echo ' '

secondary-outputs: $(MEMORYMAP) $(IHEXFILES) $(SRECFILES) $(LISTINGS)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
