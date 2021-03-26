/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "adc.h"
#include "dma.h"
#include "i2c-lcd.h"
#include "tim.h"
#include "usart.h"
#include "gpio.h"
#include "keypad.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "stdio.h"	//printf function
#include "string.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
#ifdef __GNUC__
#define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#else
#define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif

PUTCHAR_PROTOTYPE
{
    HAL_UART_Transmit(&huart2, (uint8_t *)&ch, 1 , 0xffff);
    return ch;
}

void delay (uint16_t time)
{
	__HAL_TIM_SET_COUNTER(&htim1, 0);
	while (__HAL_TIM_GET_COUNTER (&htim1) < time);
}

uint32_t IC_Val1 = 0;
uint32_t IC_Val2 = 0;
uint32_t Difference = 0;
uint8_t Is_First_Captured = 0;  // is the first value captured ?
uint8_t Distance  = 0;
// dma adc_buffer
uint16_t adc_buf[4];



//humidity part
const float air_humidity=3400;
const  float water_humidity=1680;
uint8_t key;
float humidity;
char RH[10];
char set_humidity[10];	//for humidity function
char set_data[10]; 		// for wanted distance, light power, and distance
int light_power = 0;
int wanted_distance = 4;
float target_TEMP = 24;
uint16_t set_value=20;
////////////////////////////////////////////

#define TRIG_PIN GPIO_PIN_9
#define TRIG_PORT GPIOA

// Let's write the callback function

void HAL_TIM_IC_CaptureCallback(TIM_HandleTypeDef *htim)
{
	if (htim->Channel == HAL_TIM_ACTIVE_CHANNEL_1)  // if the interrupt source is channel1
	{
		if (Is_First_Captured==0) // if the first value is not captured
		{
			IC_Val1 = HAL_TIM_ReadCapturedValue(htim, TIM_CHANNEL_1); // read the first value
			Is_First_Captured = 1;  // set the first captured as true
			// Now change the polarity to falling edge
			__HAL_TIM_SET_CAPTUREPOLARITY(htim, TIM_CHANNEL_1, TIM_INPUTCHANNELPOLARITY_FALLING);
		}

		else if (Is_First_Captured==1)   // if the first is already captured
		{
			IC_Val2 = HAL_TIM_ReadCapturedValue(htim, TIM_CHANNEL_1);  // read second value
			__HAL_TIM_SET_COUNTER(htim, 0);  // reset the counter

			if (IC_Val2 > IC_Val1)
			{
				Difference = IC_Val2-IC_Val1;
			}

			else if (IC_Val1 > IC_Val2)
			{
				Difference = (0xffff - IC_Val1) + IC_Val2;
			}

			Distance = Difference * .034/2;
			Is_First_Captured = 0; // set it back to false

			// set polarity to rising edge
			__HAL_TIM_SET_CAPTUREPOLARITY(htim, TIM_CHANNEL_1, TIM_INPUTCHANNELPOLARITY_RISING);
			__HAL_TIM_DISABLE_IT(&htim1, TIM_IT_CC1);
		}
	}
}

void HCSR04_Read (void)
{
	HAL_GPIO_WritePin(TRIG_PORT, TRIG_PIN, GPIO_PIN_SET);  // pull the TRIG pin HIGH
	delay(10);  // wait for 10 us
	HAL_GPIO_WritePin(TRIG_PORT, TRIG_PIN, GPIO_PIN_RESET);  // pull the TRIG pin low

	__HAL_TIM_ENABLE_IT(&htim1, TIM_IT_CC1);
}

void Humidity_Read(void)
{
	               humidity= adc_buf[2];//读取湿度
			       if( humidity>air_humidity)//读取的温度与比较空气湿度比较
			       {
			    	   humidity=0;
			       }

			       else if( water_humidity<humidity&&humidity< air_humidity)//读取的湿度与空气湿度和水里的湿度比较
			       {

			    	   humidity=(1-(humidity-water_humidity)/(air_humidity-water_humidity))*100;
			       }
			       else
			       {
			    	   humidity=100;

			       }

			       sprintf(RH,"%.1f%%", humidity);

}

void humidity_run(float humidity)
{

	              HAL_GPIO_WritePin(GPIOA,GPIO_PIN_11,GPIO_PIN_RESET);
			       if(humidity<set_value)
			       {

			    	   HAL_GPIO_WritePin(GPIOA,GPIO_PIN_12,GPIO_PIN_SET);
			       }

			       else if(humidity>=set_value)
				   {
			    	   HAL_GPIO_WritePin(GPIOA,GPIO_PIN_12,GPIO_PIN_RESET);
				   }

}

void set_humidity_mode()
{

	if(key=='A')
	{
					  int i=0;
					  int temp=1;
					  lcd_clear();
					  lcd_put_cur(0,0);
					  lcd_send_string("set humidity mode");
					  lcd_put_cur(1,0);
					  lcd_send_string("enter value:");
					  while(key!='*')
					  {
					 	 key=read_keypad();
					 	 set_value=0;
					 	 if(key!='E')
					 	  {
					 	    lcd_send_data(key);
					 	    set_humidity[i]=key;
					 	    i++;
					 	  }
					 	  HAL_Delay(1000);

					 	  if(key=='*')
					 	  {
					 	     int counter=0;
					 	     int flag=0;
					 	     while(set_humidity[flag]!='*')
					 	     {
					 	    	   flag++;
					 	    	   counter++;
					 	     }
					 	    for(int j=0;j<=counter-1;j++)
					 	    {
					 	    	set_value+=(set_humidity[counter-1-j]-'0')*temp;
					 	    	temp=temp*10;
					 	    }

					 	    	 lcd_clear();
					 	    	 lcd_put_cur(0,0);

					 	    }
					 	   }
					 	         HAL_Delay(1000);
					 	         key=' ';
		}

}

void set_illuminance_mode()
{
	char* buffer[2];

	{
					  int i=0;
					  int temp=1;
					  lcd_clear();
					  lcd_put_cur(0,0);
					  lcd_send_string("set illuminance mode");
					  lcd_put_cur(1,0);
					  lcd_send_string("enter value:");
					  while(key!='*')	//判断是否确认
					  {
					 	 key=read_keypad();
					 	 //set_value=0;
					 	 if(key!='E')	// 判断是否有输入
					 	  {
					 	    lcd_send_data(key);
					 	   set_data[i]=key;
					 	    i++;
					 	  }
					 	  HAL_Delay(1000);

					 	  if(key=='*')
					 	  {
					 	     int counter=0;	//Array position number for for loop
					 	     int flag=0;	//Array position
					 	     while(set_data[flag]!='*')	//IF present location is not the final '*'
					 	     {
					 	    	   flag++;		//judge array length
					 	    	   counter++;
					 	     }
					 	    for(int j=0;j<=counter-1;j++)
					 	    {
					 	    	light_power+=(set_data[counter-1-j]-'0')*temp;
					 	    	temp=temp*10;
					 	    }

					 	    	 lcd_clear();
					 	    	 lcd_put_cur(0,0);
					 	    	sprintf(buffer, "%d", light_power);
					 	    	lcd_send_string(buffer);
					 	    	while(1);

					 	    }
					 	   }
					 	         HAL_Delay(1000);
					 	         key=' ';
		}

}





/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
	float PA0_Vlotage;
	float PA1_Vlotage;
	float led_pwm = 250;
	char* buffer[2];
	int number = 0;
	float mean, sum;
	float TEMP = 0;
	float TEMP_LASTVALUE = 0;
	int keep_state = 0;	//判断是否保留上次温度状�??
	 uint16_t  hadc2_value = 0;
	    float hadc2_vol = 0;
	    int TEMP_Lock = 0;	//判断第几次温度大幅度变化�?????????????? 给予缓冲�??????????????
	    int HYSTERESIS = 0 ;// 温度变化缓冲 0 为初始�?�， 0 为上�?????????????? 1为下�??????????????
	    int HYSTERESIS_FAN = 1;
	    int TIM_4;


  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_ADC1_Init();
  MX_ADC2_Init();
  MX_TIM1_Init();
  MX_TIM2_Init();
  MX_TIM3_Init();
  MX_USART2_UART_Init();
  MX_I2C1_Init();
  MX_TIM4_Init();
  /* USER CODE BEGIN 2 */
  HAL_ADC_Start_DMA(&hadc1, adc_buf, 3);	//&hadc1, saved in adc_buf, length 3

  HAL_TIM_PWM_Start(&htim3,TIM_CHANNEL_3); //高频 �??????????????? 散热fan PB0
  HAL_TIM_PWM_Start(&htim2,TIM_CHANNEL_2);  //illuminance CHANNEL
  HAL_TIM_PWM_Start(&htim3,TIM_CHANNEL_4); // 高频 黄灯 给heater fan PB1
  HAL_TIM_PWM_Start(&htim4,TIM_CHANNEL_3);	//motor pwm zheng zhuan
  HAL_TIM_PWM_Start(&htim4,TIM_CHANNEL_4);	//motor pwm fanzhuan
  lcd_init();
  HAL_TIM_IC_Start_IT(&htim1, TIM_CHANNEL_1);



  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */



	   key=read_keypad();
	   if(key=='A'||key=='B'||key=='C'||key=='D')
	   {
		   if(key == 'A')
		   {
			   set_humidity_mode();
		   }
		   if(key == 'B')
		   {
			   set_illuminance_mode();
		   }
		   if(key == 'C')
		   {
			   set_humidity_mode();
		   }
		   if(key == 'D')
		   {
			   set_humidity_mode();
		   }
	   }

	  if(uwTick%1000==0)//reading section open
	  {

	  // Distance Sensor Reading to LCD

	  lcd_send_cmd (0x80|0x00);
	  lcd_send_string ("Dist= ");
	  HCSR04_Read();
	  lcd_send_data((Distance/100) + 48);   // 100th pos
	  lcd_send_data(((Distance/10)%10) +48);  // 10th pos
	  lcd_send_data((Distance%10)+48);  // 1st pos
	  lcd_send_string(" cm");


	  PA0_Vlotage = adc_buf[0]*(3.3/4096);
	  PA1_Vlotage = adc_buf[1];//*(6.3/4096);

	//  printf("\n PA0 Voltage is %.4f v\t\r\n PA1 Voltage is %.4f v\r\n\t",PA0_Vlotage,PA1_Vlotage);



	  //HADC2 读取 LM35
	  	  HAL_ADC_Start(&hadc2);
	  	HAL_ADC_PollForConversion(&hadc2, 50);

	  				for(int i = 0; i < 10 ; i++)
	  				{
	  		 	       if(HAL_IS_BIT_SET(HAL_ADC_GetState(&hadc2), HAL_ADC_STATE_REG_EOC))
	  		 	       {
	  		 	    	hadc2_value = HAL_ADC_GetValue(&hadc2);
	  		 	    	hadc2_vol = (float)(hadc2_value * 1.78/4096);
	  		 	       // printf("\n hadc2 value is %.4f v\t\r\n",hadc2_vol);
	  		 	       }

	  		 		 // float calculate_mean(float PA4)


	  		 		  	if(number == 10)
	  		 		  	{
	  		 		  		float mean = sum / 10;
	  		 		  		printf("\n mean is %.4f v\t\r\n",mean);
	  		 		  		TEMP = mean;
	  		 		  		TEMP = TEMP*100;
	  		 		  		number = 0;
	  		 		  		sum = 0;
	  		 		  		mean = 0;
	  		 		  		//HAL_Delay(5000);
	  		 		  	}
	  		 		  	else
	  		 		  	{
	  		 		  		number = number + 1;
	  		 		  		sum = sum + hadc2_vol;
	  		 		  		//HAL_Delay(10);
	  		 		  	}
	  				}
		  		 		// 预防误差读数
		  		 		 if((TEMP_LASTVALUE - TEMP > 1.5) || (TEMP - TEMP_LASTVALUE > 1.5))//如果这次读数和上次读数误差大�??????????????2  进入保留上次读数状�??
		  		 		 {
		  		 			keep_state = 1;
		  		 		 }
		  		 		 if((keep_state == 1) && (TEMP_Lock == 0))	 // 如果第一次进入保留上次， 温度等于上次读数�?????????????? 防止误差程序上锁
		  		 		 {
		  		 			TEMP = TEMP_LASTVALUE;	//温度保留上次温度状�??
		  		 			TEMP_Lock ++;
		  		 		 }
		  		 		 if((keep_state == 1) && (TEMP_Lock == 2))	//如果第二次进入保留上次状态， 保留状�?�取消，防止误差程序解锁
		  		 		 {
		  		 			keep_state = 0;
		  		 			TEMP_Lock = 0;
		  		 		 }
		  		 		 if((TEMP_Lock == 1) )
		  		 		 {
		  		 			TEMP_Lock ++;
		  		 		 }
		 	  		 	if (keep_state == 0)	//如果保留状�?�无须开启， 则将此次TEMP 存入TEMP_LASTVALUE 共给下次循环使用
		 	  		 	{
		 	  		 		TEMP_LASTVALUE = TEMP;
		 	  		 	}


	  //LCD显示光照参数
	  	lcd_send_cmd (0x80|0x40);
		sprintf(buffer, "%.1f", PA0_Vlotage*107);
		lcd_send_string("LM:");
		lcd_send_string(buffer);
		//lcd_put_cur(0,0);

		//LCD显示LM35读数


		lcd_send_cmd (0x80|0x14);
		sprintf(buffer, "%.3f", TEMP);
		lcd_send_string("TEMP:");
		lcd_send_string(buffer);

		//HUMIDITY

		lcd_send_cmd (0x80|0x54);
		Humidity_Read();
		lcd_send_string("RH:");
		lcd_send_string(RH);

	  }//reading section close


		//PWM led running logic
		__HAL_TIM_SET_COMPARE(&htim2,TIM_CHANNEL_2,PA0_Vlotage*520);


		//PWM HEATER Fan RUNNING 黄灯
		if ((TEMP > target_TEMP-2) && (TEMP < target_TEMP+2)) //温度大于 23 °C 并且小于25 °C PWM 50%
		{
			if (HYSTERESIS == 1)
			{
				__HAL_TIM_SET_COMPARE(&htim3,TIM_CHANNEL_4,5); // heater 100000HZ
			}

		}
		else if ((TEMP > target_TEMP-4)&&(TEMP < target_TEMP-2)) //温度大于 21 °C 并且小于23 °C PWM 80%
		{
			__HAL_TIM_SET_COMPARE(&htim3,TIM_CHANNEL_4,2);
		}

		else if (TEMP < target_TEMP-4) //温度小于 21 °C PWM 100%
				{
					__HAL_TIM_SET_COMPARE(&htim3,TIM_CHANNEL_4,0);
				}
		else __HAL_TIM_SET_COMPARE(&htim3,TIM_CHANNEL_4,11); //不工�??????????????

		//PWM FAN RUNNING 红灯

				if ((TEMP > target_TEMP) && (TEMP < target_TEMP+2)) //温度大于 25 °C 并且小于27 °C PWM 50%
				{
					if (HYSTERESIS == 0)
					{
						if (HYSTERESIS_FAN == 1)
						{
						__HAL_TIM_SET_COMPARE(&htim3,TIM_CHANNEL_3,6); // fan 100000HZ
							HYSTERESIS_FAN = 0;
						}
					}
				}
				else if ((TEMP > target_TEMP+2)&&(TEMP < target_TEMP+4)) //温度大于 27 °C 并且小于29 °C PWM 80%
				{
					__HAL_TIM_SET_COMPARE(&htim3,TIM_CHANNEL_3,3);
				}
				else if (TEMP >= target_TEMP+4) //温度大于 29 °C PWM 100%
						{
							__HAL_TIM_SET_COMPARE(&htim3,TIM_CHANNEL_3,0);
						}
				else
					__HAL_TIM_SET_COMPARE(&htim3,TIM_CHANNEL_3,11);//不工�??????????????

				if (TEMP < target_TEMP-1.5) //当温度小�?????????????? 23.5 ° 风扇 的HYSTERESIS反转
				{
					HYSTERESIS_FAN = 1;
				}
				//Heater Running PB0
					if (TEMP < target_TEMP) //温度小于 25 °C HEATER打开
					{
						if ((HYSTERESIS == 0) && (TEMP < target_TEMP-2))
						{
							HAL_GPIO_WritePin(GPIOC, GPIO_PIN_5, GPIO_PIN_SET);  // 打开PC5 蓝灯 高于27°关闭 低于23°打开

							HYSTERESIS = 1;//等待温度上升�?????????????? HEATER�??????????????�??????????????
						}

					}
							else if (TEMP > target_TEMP)// 温度大于25 HEATER关闭
							{
								if ((HYSTERESIS == 1) && (TEMP > target_TEMP+2))
								{
									HAL_GPIO_WritePin(GPIOC, GPIO_PIN_5, GPIO_PIN_RESET); //关闭PC5
									HYSTERESIS = 0;//等待温度下降�?????????????? HEATER关闭
								}
							}
				//HAL_Delay(800);

				//MOTOR PWM RUNNING CODE
					if(Distance <= wanted_distance-1)
							  		{
										__HAL_TIM_SET_COMPARE(&htim4,TIM_CHANNEL_3,800);
										__HAL_TIM_SET_COMPARE(&htim4,TIM_CHANNEL_4,1100);
							  		}

					else if(Distance >= wanted_distance+1)
									  {
										__HAL_TIM_SET_COMPARE(&htim4,TIM_CHANNEL_4,800);
										__HAL_TIM_SET_COMPARE(&htim4,TIM_CHANNEL_3,1100);
									  }
									else
									{
										__HAL_TIM_SET_COMPARE(&htim4,TIM_CHANNEL_4,1100);
										__HAL_TIM_SET_COMPARE(&htim4,TIM_CHANNEL_3,1100);
									 }

					//water pump runing code

					 humidity_run(humidity);



  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInit = {0};

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL9;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_ADC;
  PeriphClkInit.AdcClockSelection = RCC_ADCPCLK2_DIV6;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */

  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
