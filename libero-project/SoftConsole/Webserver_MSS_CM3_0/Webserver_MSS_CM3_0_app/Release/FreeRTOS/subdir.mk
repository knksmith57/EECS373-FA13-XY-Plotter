################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS/list.c \
../FreeRTOS/queue.c \
../FreeRTOS/tasks.c \
../FreeRTOS/timers.c 

OBJS += \
./FreeRTOS/list.o \
./FreeRTOS/queue.o \
./FreeRTOS/tasks.o \
./FreeRTOS/timers.o 

C_DEPS += \
./FreeRTOS/list.d \
./FreeRTOS/queue.d \
./FreeRTOS/tasks.d \
./FreeRTOS/timers.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS/%.o: ../FreeRTOS/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU C Compiler'
	arm-none-eabi-gcc -mthumb -mcpu=cortex-m3 -DNDEBUG -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\application_tasks" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\BSP" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\BSP\emc_driver" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\BSP\i2c_driver" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\BSP\oled_driver" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\BSP\spi_flash_driver" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\FreeRTOS" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\FreeRTOS\include" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\FreeRTOS\portable" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\FreeRTOS\portable\GCC" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\FreeRTOS\portable\GCC\ARM_CM3" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\FreeRTOS\portable\MemMang" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\mac" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\port_config" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\uipstack" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\webserver" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app\webserver\httpd-fs" -I"C:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_app" -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\CMSIS -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\CMSIS\startup_gcc -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\drivers -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\drivers\mss_ace -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\drivers\mss_ethernet_mac -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\drivers\mss_gpio -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\drivers\mss_i2c -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\drivers\mss_pdma -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\drivers\mss_spi -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\drivers\mss_uart -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\drivers_config -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\drivers_config\mss_ace -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\hal -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\hal\CortexM3 -IC:\Users\kylebs\Desktop\FreeRTOS-lwIP\Webserver_uIPRTOS_SC_DF\EVAL_KIT\SF_Webserver_Demo\SoftConsole\Webserver_MSS_CM3_0\Webserver_MSS_CM3_0_hw_platform\hal\CortexM3\GNU -O2 -ffunction-sections -fdata-sections -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


