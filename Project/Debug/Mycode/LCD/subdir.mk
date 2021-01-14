################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Mycode/LCD/i2c-lcd.c 

OBJS += \
./Mycode/LCD/i2c-lcd.o 

C_DEPS += \
./Mycode/LCD/i2c-lcd.d 


# Each subdirectory must supply rules for building sources it contributes
Mycode/LCD/i2c-lcd.o: ../Mycode/LCD/i2c-lcd.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/61644/Desktop/ENEL417/Project/Mycode" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Mycode/LCD/i2c-lcd.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

