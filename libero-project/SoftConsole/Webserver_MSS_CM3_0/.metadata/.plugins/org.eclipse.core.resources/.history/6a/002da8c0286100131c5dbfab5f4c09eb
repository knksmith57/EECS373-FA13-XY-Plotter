################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS/startup_gcc/newlib_stubs.c 

S_SRCS += \
../CMSIS/startup_gcc/startup_a2fxxxm3.s 

OBJS += \
./CMSIS/startup_gcc/newlib_stubs.o \
./CMSIS/startup_gcc/startup_a2fxxxm3.o 

C_DEPS += \
./CMSIS/startup_gcc/newlib_stubs.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS/startup_gcc/%.o: ../CMSIS/startup_gcc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU C Compiler'
	arm-none-eabi-gcc -mthumb -mcpu=cortex-m3 -DACTEL_STDIO_THRU_UART -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\plotter" -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\CMSIS -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\CMSIS\startup_gcc -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\drivers -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\drivers\mss_ethernet_mac -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\drivers\mss_gpio -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\drivers\mss_i2c -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\drivers\mss_pdma -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\drivers\mss_spi -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\drivers\mss_uart -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\hal -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\hal\CortexM3 -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\hal\CortexM3\GNU -O0 -ffunction-sections -fdata-sections -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CMSIS/startup_gcc/%.o: ../CMSIS/startup_gcc/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Assembler'
	arm-none-eabi-gcc -c -mthumb -mcpu=cortex-m3 -specs=bare.specs  -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


