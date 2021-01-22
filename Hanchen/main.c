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
#include "tim.h"
#include "usart.h"
#include "gpio.h"
#include "stdint.h"
#include "stdlib.h"
#include "string.h"
#include <stdio.h>
#include "math.h"
/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
uint8_t cliBufferTX[1000];
uint8_t cliBufferRX[1000];
uint8_t BufferX[100];
uint8_t temp[10];
uint16_t period = 1000;
uint16_t counter = 0;
uint16_t length = 0;
uint16_t pwm_change = 0; // set up three level
uint32_t IC_Val1 = 0;
uint32_t IC_Val2 = 0;
uint32_t Difference = 0;
uint8_t Is_First_Captured = 0;  // is the first value captured ?
uint8_t Distance  = 0;

void running();
void HCSR04_Read (void);
void delay (uint16_t time);
void HAL_TIM_IC_CaptureCallback(TIM_HandleTypeDef *htim);
void Print_Time(uint8_t T);
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


/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

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
  MX_USART2_UART_Init();
  MX_TIM4_Init();
  MX_USART3_UART_Init();
  MX_TIM1_Init();
  /* USER CODE BEGIN 2 */

  //HAL_TIM_PWM_Start(&htim4, TIM_CHANNEL_2);
  HAL_TIM_PWM_Stop(&htim4, TIM_CHANNEL_1);
  HAL_TIM_PWM_Stop(&htim4, TIM_CHANNEL_3);
 // HAL_TIM_PWM_Start(&htim4, TIM_CHANNEL_1);
  /* USER CODE END 2 */
  strcpy((char *)cliBufferTX, "Testing CLI!\r\n");
  HAL_UART_Transmit(&huart2, cliBufferTX, strlen((char *) cliBufferTX), 1000);
  HAL_TIM_IC_Start_IT(&htim1, TIM_CHANNEL_1);
  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  char d[3];
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
	  if( HAL_UART_Receive(&huart2,cliBufferRX,1,1000)== HAL_OK)
	  		{
	  			  HAL_UART_Transmit(&huart2,cliBufferRX,strlen((char *)cliBufferRX),1000);
	  			  BufferX[length] = cliBufferRX[0];
	  			  length++;

	  			  if(BufferX[length - 1] == '\r')
	  			  {

	  				  if (BufferX[0] == 'q')
	  				  {
	  					  while(1)
	  					  {
		  					  HCSR04_Read();
		  					  temp[0] = '\r';
		  					  temp[1] = '\n';
		  					  HAL_UART_Transmit(&huart2, temp, 2, 333);
		  					  itoa(Distance, d, 10);
		  					  HAL_UART_Transmit(&huart2, d, strlen((char *) d), 1000);
		  					  HAL_Delay(500);
		  					  if(Distance >= 100)
		  					  {
		  						  HAL_TIM_PWM_Start(&htim4, TIM_CHANNEL_1);
		  					  }
		  					  else
		  					  {
		  						  HAL_TIM_PWM_Stop(&htim4, TIM_CHANNEL_1);
		  						  HAL_Delay(5000);
		  					  }
	  					  }

	  				  }


	  				  else
	  				  {
	  					  strcpy((char*)cliBufferTX, "\x1b[1j");
	  					  HAL_UART_Transmit(&huart2, cliBufferTX, strlen((char*)cliBufferTX),1000);
	  					  strcpy((char *)cliBufferTX, "Invalid Input");
	  					  HAL_UART_Transmit(&huart2, cliBufferTX, strlen((char *) cliBufferTX), 1000);
	  				  }

	  					temp[0] = '\r';
	  					temp[1] = '\n';
	  				    HAL_UART_Transmit(&huart2, temp, 2, 666);

	  				  for (int i = 0; i < 1000; i++)
	  				  {
	  						cliBufferTX[i] = 0;
	  				   	    cliBufferRX[i] = 0;
	  					    BufferX[i]=0;
	  					    length = 0;
	  				  }
	  				  strcpy((char *)cliBufferTX,"cmd>>");
	  				  HAL_UART_Transmit(&huart2,cliBufferTX,strlen((char *)cliBufferTX),1000);
	  			  }
	  		}

	  //HAL_TIM_PWM_Start(&htim4, TIM_CHANNEL_1);

	  //__HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_1, 500);
	  //__HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_2, 700);
  }
  /* USER CODE END 3 */
}

void delay (uint16_t time)
{
	__HAL_TIM_SET_COUNTER(&htim1, 0);
	while (__HAL_TIM_GET_COUNTER (&htim1) < time);
}

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
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_9, GPIO_PIN_SET);  // pull the TRIG pin HIGH
	delay(10);  // wait for 10 us
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_9, GPIO_PIN_RESET);  // pull the TRIG pin low

	__HAL_TIM_ENABLE_IT(&htim1, TIM_IT_CC1);
}

void running()
{
	 while( HAL_UART_Receive(&huart2,cliBufferRX,1,1000)== HAL_OK)
	{
		  HAL_UART_Transmit(&huart2,cliBufferRX,strlen((char *)cliBufferRX),1000);
		  BufferX[length] = cliBufferRX[0];
		  length++;

		  if(BufferX[length - 1] == '\r')
		  {

			  if (BufferX[0] == 'f') // up
	 		  {
	 			  temp[0] = '\n';
	 			  HAL_UART_Transmit(&huart2, temp, 1, 333);
	 			  HAL_TIM_PWM_Start(&htim4, TIM_CHANNEL_1);
	 			 __HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_1, 800);
	 			 HAL_Delay(5000);
	 			 HAL_TIM_PWM_Stop(&htim4, TIM_CHANNEL_1);
	 			 /*
	 			 if(distance <= 3)
	 			 {
	 			 	 HAL_TIM_PWM_Stop(&htim4, TIM_CHANNEL_1);
	 			 }

	 			 */
	 		  }

	 		  else if (BufferX[0] == 'b') // down
	 		  {
	 			  temp[0] = '\n';

	 			  HAL_UART_Transmit(&huart2, temp, 1, 333);
	 			  HAL_TIM_PWM_Start(&htim4, TIM_CHANNEL_3);
	 			 __HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_3, 500);
	 			 HAL_Delay(5000);
	 			 HAL_TIM_PWM_Stop(&htim4, TIM_CHANNEL_3);
	 			 /*
	 			 if(distance <= value) // user input value, this distance is from LED to plant
	 			 {
	 			 	 HAL_TIM_PWM_Stop(&htim4, TIM_CHANNEL_3);
	 			 }

	 			 */

	 		  }
	 		  else if (BufferX[0] == 'd')
	 		  {
	 			  temp[0] = '\n';

	 			  HAL_UART_Transmit(&huart2, temp, 1, 333);
	 			  HAL_TIM_PWM_Start(&htim4, TIM_CHANNEL_4);
	 			 __HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_4, 500);

	 		  }
	 		  else if (BufferX[0] == 's')
	 		  {
	 			  temp[0] = '\n';
	 			  HAL_UART_Transmit(&huart2, temp, 1, 333);
	 			 HAL_TIM_PWM_Stop(&htim4, TIM_CHANNEL_1);
	 			 HAL_TIM_PWM_Stop(&htim4, TIM_CHANNEL_3);
	 			 HAL_TIM_PWM_Stop(&htim4, TIM_CHANNEL_4);
	 		  }
	 		  else if(BufferX[0] == 'c')
	 		  {
	 			  temp[0] = '\n';
	 			  HAL_UART_Transmit(&huart2, temp, 1, 333);
	 			  HCSR04_Read();
				  strcpy((char *)cliBufferTX, "///////Input\r\n");
				  HAL_UART_Transmit(&huart2, cliBufferTX, strlen((char *) cliBufferTX), 1000);


	 		  }
			  else
			  {
				  temp[0]='\r';
				  temp[1]='\n';
				  HAL_UART_Transmit(&huart2,temp,2,1000);
				  strcpy((char *)cliBufferTX, "Invalid Input\r\n");
				  HAL_UART_Transmit(&huart2, cliBufferTX, strlen((char *) cliBufferTX), 1000);
			  }
			  for (int i = 0; i < 1000; i++)
			  {
					cliBufferTX[i] = 0;
			   	    cliBufferRX[i] = 0;
				    BufferX[i]=0;
				    length = 0;
			  }
		  }
	}
}
/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

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
