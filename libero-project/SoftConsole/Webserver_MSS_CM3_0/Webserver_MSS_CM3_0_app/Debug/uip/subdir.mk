################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../uip/psock.c \
../uip/uip-fw.c \
../uip/uip-neighbor.c \
../uip/uip-split.c \
../uip/uip.c \
../uip/uip_arp.c \
../uip/uiplib.c 

OBJS += \
./uip/psock.o \
./uip/uip-fw.o \
./uip/uip-neighbor.o \
./uip/uip-split.o \
./uip/uip.o \
./uip/uip_arp.o \
./uip/uiplib.o 

C_DEPS += \
./uip/psock.d \
./uip/uip-fw.d \
./uip/uip-neighbor.d \
./uip/uip-split.d \
./uip/uip.d \
./uip/uip_arp.d \
./uip/uiplib.d 


# Each subdirectory must supply rules for building sources it contributes
uip/%.o: ../uip/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU C Compiler'
	arm-none-eabi-gcc -mthumb -mcpu=cortex-m3 -DACTEL_STDIO_THRU_UART -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\uip" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\jsmn" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\webclient" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\resolv" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\application_tasks" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\BSP" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\BSP\spi_flash_driver" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\BSP\emc_driver" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\BSP\i2c_driver" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\FreeRTOS" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\FreeRTOS\include" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\FreeRTOS\portable" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\FreeRTOS\portable\GCC" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\FreeRTOS\portable\GCC\ARM_CM3" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\FreeRTOS\portable\MemMang" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\mac" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\port_config" -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\CMSIS -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\CMSIS\startup_gcc -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\drivers -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\drivers\CoreUARTapb" -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\drivers\mss_ethernet_mac -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\drivers\mss_gpio -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\drivers\mss_i2c -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\drivers\mss_pdma -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\drivers\mss_spi -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\drivers\mss_uart -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\hal -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\hal\CortexM3 -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP-takeDeux\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\hal\CortexM3\GNU -O0 -ffunction-sections -fdata-sections -g3 -Wall -c -fmessage-length=0 -v -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


