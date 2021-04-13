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
#include "i2c.h"
#include "tim.h"
#include "usart.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "stdio.h"	//printf function
#include "string.h"
#include "stdlib.h"
#include <math.h>
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

#define PB4_ON HAL_GPIO_WritePin(GPIOB, GPIO_PIN_4, GPIO_PIN_SET); //
#define PB4_OFF HAL_GPIO_WritePin(GPIOB, GPIO_PIN_4, GPIO_PIN_RESET); //
#define PB5_ON HAL_GPIO_WritePin(GPIOB, GPIO_PIN_5, GPIO_PIN_SET); //
#define PB5_OFF HAL_GPIO_WritePin(GPIOB, GPIO_PIN_5, GPIO_PIN_RESET); //

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
float humidity1;
char RH[10];
char set_humidity[10];	//for humidity function
char set_data[10]; // for wanted distance, light power, and distance
//int light_power = 0;
int position_gear;
int position_flag = 1;
float ilu_mode; //0 for auto mode, 1 for manual gear
float target_TEMP = 19;
float target_RH=40;
float avg_humidity;
int pump_flag=0;
int fan_flag=0;
int heater_flag=0;
////////////////////////////////////////////
uint8_t cliBufferTX[200];
uint8_t cliBufferRX[4];

//////////////////////////////////////////////
void Humidity_Read(void)
{
	               humidity= adc_buf[2];     // moisture sensor reading value1
	               humidity1=adc_buf[3];    //moisture sensor reading value2
	               avg_humidity=(humidity+humidity1)/2;  // take an average of reading value
	             //  printf(" humidity is %.1f v\t\r\n",humidity);
	             //  printf(" humidity is %.1f v\t\r\n",humidity1);
	            // compare the average reading value to reading value in air. 
			       if(avg_humidity>air_humidity) // if average_humidity is large than humidity in air,then the average is 0%;
			       {
			    	   avg_humidity=0;
			       }

			       else if( water_humidity<humidity&&humidity< air_humidity)// if average is large than humidity in air and less than humidity in water,then calculate the average_humidity;
			       {
			    	   avg_humidity=(1-(avg_humidity-water_humidity)/(air_humidity-water_humidity))*100;
			       }
			       else    //if average_humidity is less than humidity in water,then the average is 100 %;
			       {
			    	   avg_humidity=100;
			       }
			       sprintf(RH,"%.1f%%", avg_humidity);

}
////////////////////////////////////////////////////////
// turn on or off water pump
void humidity_run()
{
			       if((avg_humidity<target_RH)||(pump_flag==1)) // if moisture is less than target value or user press "pump on" on website , then turn on water pump
			       {
			    	   HAL_GPIO_WritePin(GPIOA,GPIO_PIN_12,GPIO_PIN_RESET); // using a low trigger relay,so voltage of PA12 is low
			       }

			       else if(avg_humidity>=target_RH||pump_flag==0)// if moisture is larger than target value or user press "pump off" on website , then turn on water pump
			       {
			    	   HAL_GPIO_WritePin(GPIOA,GPIO_PIN_12,GPIO_PIN_SET); // using a low trigger relay,so voltage of PA12 is high
			       }

}
///////////////////////////////////////////////////////
// set_humidity mode in local control function.
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
					 	 key=read_keypad();// read the keypad value.
					 	 target_RH=0;
					 	 if(key!='E')// if user press the keypad.
					 	  {
					 	    lcd_send_data(key);
					 	    set_humidity[i]=key;
					 	    i++;
					 	  }
					 	  HAL_Delay(1000);

					 	  if(key=='*')// checking key=='*'
					 	  {
					 	     int counter=0;
					 	     int flag=0;
					 	     while(set_humidity[flag]!='*')
					 	     {
					 	    	   flag++;
					 	    	   counter++;
					 	     }
					 	    for(int j=0;j<=counter-1;j++) // convert sting type to int type
					 	    {
					 	    	target_RH+=(set_humidity[counter-1-j]-'0')*temp;
					 	    	temp=temp*10;
					 	    }

					 	    	 lcd_clear();
					 	    	 lcd_put_cur(0,0);
					 	    	 if(target_RH>100||target_RH<0)
					 	    	 {
					 	    		 lcd_send_string("wrong input, the range is from 0 to 100");
					 	    		 target_RH=50;
					 	    	 }

					 	    }
					 	   }

					 	         HAL_Delay(1000);
					 	        lcd_clear();
					 	         key=' ';
		}

}
//////////////////////////////////////////////////////////////////////////////
// setting illuminance mode in local control function.
void set_illuminance_mode()
{
	char* buffer[2];
	 int i=0;
	 int temp=1;
	 ilu_mode;
	 	 	 	 	 	 lcd_clear();
						 lcd_put_cur(0,0);
						 lcd_send_string("set illuminance mode");
						 lcd_put_cur(1,0);
						 lcd_send_string("enter value:");
						  while(key!='*')
						  {
						 	 key=read_keypad();
						 	 ilu_mode=0;
						 	 if(key!='E')
						 	  {
						 	    lcd_send_data(key);
						 	    set_data[i]=key;
						 	    i++;
						 	  }
						 	  HAL_Delay(100);

						 	  if(key=='*')
						 	  {
						 	     int counter=0;
						 	     int flag=0;
						 	     while(set_data[flag]!='*')
						 	     {
						 	    	   flag++;
						 	    	   counter++;
						 	     }
						 	    for(int j=0;j<=counter-1;j++)
						 	    {
						 	    	ilu_mode+=(set_data[counter-1-j]-'0')*temp;
						 	    	temp=temp*10;
						 	    }

						 	    	 lcd_clear();
						 	    	 lcd_put_cur(0,0);

						 	    }
						 	   }
						 	         HAL_Delay(1000);
						 	         key=' ';


}
//////////////////////////////////////////////////////////////////////////////////
// setting position mode in local control function.
void set_position_mode()
{
	char* buffer[2];
	position_gear=0;

						  int i=0;
						  int temp=1;
						  lcd_clear();
						  lcd_put_cur(0,0);
						  lcd_send_string("set position mode");
						  lcd_put_cur(1,0);
						  lcd_send_string("enter value:");
						  while(key!='*')	//checking for '*'
						  {
						 	 key=read_keypad();
						 	 //set_value=0;
						 	 if(key!='E')	// checking for input value.
						 	  {
						 	    lcd_send_data(key);
						 	   set_data[i]=key;
						 	    i++;
						 	  }
						 	  HAL_Delay(100);

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
						 	    	position_gear+=(set_data[counter-1-j]-'0')*temp;
						 	    	temp=temp*10;
						 	    }

						 	    	 lcd_clear();
						 	    	 lcd_put_cur(0,0);
						 	    	 if (position_gear==1)
						 	    	 {
						 	    		position_flag=1;
						 	    		PB4_OFF;
										PB5_OFF;
							 	    	 lcd_clear();
							 	    	 lcd_put_cur(0,0);
							 	    	 lcd_send_string("Correct input, Now in Position Gear 1");
							 	    	position_gear=0;

						 	    	 }
						 	    	 else if(position_gear==2)
						 	    	 {
						 	    		position_flag=2;
							 	    		PB4_OFF;
											PB5_ON;
								 	    	 lcd_clear();
								 	    	 lcd_put_cur(0,0);
								 	    	 lcd_send_string("Correct input, Now in Position Gear 2");
								 	    	position_gear=0;
						 	    	 }
						 	    	 else if(position_gear==3)
						 	    	 {
						 	    		position_flag=3;
							 	    		PB4_ON;
											PB5_OFF;
								 	    	 lcd_clear();
								 	    	 lcd_put_cur(0,0);
								 	    	 lcd_send_string("Correct input, Now in Position Gear 3");
								 	    	position_gear=0;
						 	    	 }
						 	    	 else if(position_gear==4)
						 	    	 {
						 	    		position_flag=4;
							 	    		PB4_ON;
											PB5_ON;
								 	    	 lcd_clear();
								 	    	 lcd_put_cur(0,0);
								 	    	 lcd_send_string("Correct input, Now in Position Gear 4");
								 	    	position_gear=0;
						 	    	 }
						 	    	 else
									 {
						 	  		  lcd_send_string("Wrong input, please enter again");
									 }

						 	    	//while(1);

						 	    }
						 	   }
						 	         HAL_Delay(1000);
						 	        lcd_clear();
						 	         key=' ';

}
/////////////////////////////////////////////////////////////////////////////
//setting temperature mode in local control function.
void set_temperature_mode()
{
	char* buffer[2];
	 int i=0;
	 int temp=1;

	 	 	 	 	 	 lcd_clear();
						 lcd_put_cur(0,0);
						 lcd_send_string("set temperature mode");
						 lcd_put_cur(1,0);
						 lcd_send_string("enter temp");
						  while(key!='*')
						  {
						 	 key=read_keypad();
						 	target_TEMP=0;
						 	 if(key!='E')
						 	  {
						 	    lcd_send_data(key);
						 	    set_data[i]=key;
						 	    i++;
						 	  }
						 	  HAL_Delay(100);

						 	  if(key=='*')
						 	  {
						 	     int counter=0;
						 	     int flag=0;
						 	     while(set_data[flag]!='*')
						 	     {
						 	    	   flag++;
						 	    	   counter++;
						 	     }
						 	    for(int j=0;j<=counter-1;j++)
						 	    {
						 	    	target_TEMP+=(set_data[counter-1-j]-'0')*temp;
						 	    	temp=temp*10;
						 	    }

						 	    	 lcd_clear();
						 	    	 lcd_put_cur(0,0);

						 	    }
						 	   }
						 	         HAL_Delay(1000);
						 	         key=' ';


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
	float PA1;
	float led_pwm = 250;
	float led_previous_reading = 0;
	float led_current_reading = 0;
	float led_current_reading_1 = 0;
	float counter_led_reading = 0;
	float counter_led_reading_1 = 0;
	char* buffer[2];
	int number = 0;
	float mean, sum;
	float TEMP = 0;
	float TEMP_LASTVALUE = 0;
	int keep_state = 0;
	uint16_t  hadc2_value = 0;
	float hadc2_vol = 0;
	int TEMP_Lock = 0;
	int HYSTERESIS = 0 ;
	int HYSTERESIS_FAN = 1;
	int TIM_4;
	int flag=0;
//	int led_error_mode=0;
	int led_mode_lock=0;


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
  MX_TIM2_Init();
  MX_TIM3_Init();
  MX_I2C1_Init();
  MX_TIM4_Init();
  MX_USART3_UART_Init();
  MX_USART2_UART_Init();
  /* USER CODE BEGIN 2 */
  HAL_GPIO_WritePin(GPIOA,GPIO_PIN_12,GPIO_PIN_SET);
  HAL_ADC_Start_DMA(&hadc1, adc_buf, 4);//&hadc1, saved in adc_buf, length 3


  HAL_TIM_PWM_Start(&htim3,TIM_CHANNEL_3); // fan PB0
  HAL_TIM_PWM_Start(&htim2,TIM_CHANNEL_3);  //illuminance CHANNEL
  HAL_TIM_PWM_Start(&htim3,TIM_CHANNEL_4); // heater fan PB1
 // HAL_TIM_PWM_Start(&htim4,TIM_CHANNEL_3);//motor move forward
 // HAL_TIM_PWM_Start(&htim4,TIM_CHANNEL_4);//motor move backward
  lcd_init();
  //HAL_TIM_IC_Start_IT(&htim1, TIM_CHANNEL_1);
	//PB4_OFF;
	//PB5_OFF;
	//position_gear = 1;


  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
	   key=read_keypad(); // keypad input
	   if(key=='A'||key=='B'||key=='C'||key=='D') // if user press 'A','B','C','D'
	   {
		   if(key == 'A')// A for set_humidity_mode
		   {
			   set_humidity_mode();
		   }
		   if(key == 'B')// B for set_illuminance_mode
		   {
			   led_mode_lock = 0;
			   set_illuminance_mode();
		   }
		   if(key == 'C')// C for set_position_mode
		   {
			   set_position_mode();
		   }
		   if(key == 'D')// D for set_temperature_mode
		   {
			   set_temperature_mode();
		   }
	   }

	  if(uwTick%1000==0)//reading section open
	  {
	  // show Distance Sensor Reading on LCD

	  lcd_send_cmd (0x80|0x00);
	  lcd_send_string ("Dist= ");
	    sprintf(buffer, "%d", position_flag*4);
	    lcd_send_string(buffer);
	    lcd_send_string ("cm");

	  //HADC2 reads LM35
	  	HAL_ADC_Start(&hadc2);
	  	HAL_ADC_PollForConversion(&hadc2, 50);

                                        // read the output value of lm35, and convert it to temp value.
	  		 	       if(HAL_IS_BIT_SET(HAL_ADC_GetState(&hadc2), HAL_ADC_STATE_REG_EOC))
	  		 	       {
	  		 	    	hadc2_value = HAL_ADC_GetValue(&hadc2);
	  		 	    	hadc2_vol = (float)(hadc2_value * 2.29/4096);
	  		 	       }

	                                    // Take three readings of lm35, and take an average
	  		 		  	if(number == 3)
	  		 		  	{
	  		 		  		float mean = sum / 3;
	  		 		  		TEMP = mean;
	  		 		  		TEMP = TEMP*100;
	  		 		  		number = 0;
	  		 		  		sum = 0;
	  		 		  		mean = 0;
	  		 		  	}
	  		 		  	else
	  		 		  	{
	  		 		  		number = number + 1;
	  		 		  		sum = sum + hadc2_vol;
	  		 		  		//HAL_Delay(10);
	  		 		  	}
	  				//}
		  		 		// 
                                                //Prevent false readings
		  		 		 if((TEMP_LASTVALUE - TEMP > 1.5) || (TEMP - TEMP_LASTVALUE > 1.5))//If the error between this reading and the last reading is large, keep the last reading.
		  		 		 {
		  		 			keep_state = 1;
		  		 		 }
		  		 		 if((keep_state == 1) && (TEMP_Lock == 0))	 // 如果第一次进入保留上次， 温度等于上次读数. 防止误差程序上锁
		  		 		 {
		  		 			TEMP = TEMP_LASTVALUE;	//温度保留上次温度
		  		 			TEMP_Lock ++;
		  		 		 }
		  		 		 if((keep_state == 1) && (TEMP_Lock == 5))	//如果第二次进入保留上次状态， 保留状态取消，防止误差程序解锁
		  		 		 {
		  		 			keep_state = 0;
		  		 			TEMP_Lock = 0;
		  		 		 }
		  		 		 if((TEMP_Lock == 1) || (TEMP_Lock == 2)|| (TEMP_Lock == 3)|| (TEMP_Lock == 4))
		  		 		 {
		  		 			TEMP_Lock ++;
		  		 		 }
		 	  		 	if (keep_state == 0)	//如果保留状态无须开启， 则将此次TEMP 存入TEMP_LASTVALUE 共给下次循环使用
		 	  		 	{
		 	  		 		TEMP_LASTVALUE = TEMP;
		 	  		 	}


	      //show LM on lcd
	  	lcd_send_cmd (0x80|0x40);
		sprintf(buffer, "%.1f", PA1*350);
		lcd_send_string("LM:");
		lcd_send_string(buffer);
		//lcd_put_cur(0,0);

		//show TEM on lcd

		lcd_send_cmd (0x80|0x14);
		sprintf(buffer, "%.3f", TEMP);
		lcd_send_string("TEMP:");
		lcd_send_string(buffer);

		//show RH on cld

		lcd_send_cmd (0x80|0x54);
		Humidity_Read();
		lcd_send_string("RH:");
		lcd_send_string(RH);


                 // transmit TEM , LM, and RH value to raspiberry PI with UART
	       char data[100];
	       sprintf(data,"%.1f", avg_humidity);
	       HAL_UART_Transmit(&huart3, data, strlen((char*)data),1000);  // transmit RH
	       strcpy((char *)cliBufferTX,", " );
	       HAL_UART_Transmit(&huart3,cliBufferTX,strlen((char*)cliBufferTX),200);

	       sprintf(data, "%.1f", PA1_Vlotage*140);
	       HAL_UART_Transmit(&huart3, data, strlen((char*)data),1000); // transmit LM
	       strcpy((char *)cliBufferTX,", " );
	       HAL_UART_Transmit(&huart3,cliBufferTX,strlen((char*)cliBufferTX),200);

	      sprintf(data, "%.1f", TEMP);
	      HAL_UART_Transmit(&huart3, data, strlen((char*)data),1000); //transmit temp
	      strcpy((char *)cliBufferTX,", " );
	      HAL_UART_Transmit(&huart3,cliBufferTX,strlen((char*)cliBufferTX),200);

              sprintf(data, "%.1f", target_RH);
              HAL_UART_Transmit(&huart3, data, strlen((char*)data),1000);//transmit target RH
              strcpy((char *)cliBufferTX,", " );
	      HAL_UART_Transmit(&huart3,cliBufferTX,strlen((char*)cliBufferTX),200);


             sprintf(data, "%.1f",target_TEMP );
	     HAL_UART_Transmit(&huart3, data, strlen((char*)data),1000);//transmit target temp
	     strcpy((char *)cliBufferTX,", " );
	     HAL_UART_Transmit(&huart3,cliBufferTX,strlen((char*)cliBufferTX),200);

             strcpy((char *)cliBufferTX,"\r\n " );
             HAL_UART_Transmit(&huart3,cliBufferTX,strlen((char *)cliBufferTX),200);


	  }//reading section close

            // receive data from raspiberry PI
	      HAL_UART_Receive_IT(&huart3,cliBufferRX,2);
	  
		//PWM led running logic
		  PA0_Vlotage = adc_buf[0]*(3.3/4096);
		  PA1_Vlotage = adc_buf[1]*(3.3/4096);
		 led_current_reading_1 = PA1_Vlotage +  led_current_reading_1;
		 counter_led_reading_1++;
		 if(counter_led_reading_1 == 20)
		 {
			 led_current_reading_1 = led_current_reading_1/20;
			 PA1 = led_current_reading_1;
			 led_current_reading_1 = 0;
			 counter_led_reading_1 = 0;
		 }
		 if(ilu_mode!=1)
		 {
			 ilu_mode = 0;
		 }
		 if(ilu_mode == 0)
		 {
			 led_current_reading = PA0_Vlotage +  led_current_reading;
			 counter_led_reading++;
			 if (counter_led_reading == 20)
			 {

				 led_current_reading=led_current_reading/20;
				 __HAL_TIM_SET_COMPARE(&htim2,TIM_CHANNEL_3,led_current_reading*62000);
				 led_previous_reading = led_current_reading;
				 counter_led_reading=0;
				 led_current_reading=0;
				// HAL_Delay(200);
			 }
		 }
		 if(ilu_mode == 1 && led_mode_lock == 0)
		 {

			 	char* buffer[2];
			 	 int i=0;
			 	 int temp=1;
			 	 int ilu_mode_gear;
			 	 lcd_clear();
			 	 lcd_put_cur(0,0);
			 	lcd_send_string("set ilu gear");
			 	lcd_put_cur(1,0);
			 	lcd_send_string("enter value:");
			 	while(key!='*')
			 	{
			 	key=read_keypad();
			 	ilu_mode_gear=0;
			 	if(key!='E')
			 	{
			 	lcd_send_data(key);
			 	set_data[i]=key;
			 	i++;
			 	}
			 	 HAL_Delay(100);

			 	 if(key=='*')
			 	{
			 	int counter=0;
			 	int flag=0;
			 	 while(set_data[flag]!='*')
			 	{
			 	 flag++;
			 	 counter++;
			 	}
			 	for(int j=0;j<=counter-1;j++)
			        {
			 	ilu_mode_gear+=(set_data[counter-1-j]-'0')*temp;
			 	temp=temp*10;
			 	}

			 	lcd_clear();
			 	lcd_put_cur(0,0);
                    }
              }
			 	HAL_Delay(100);
			 	key=' ';
			 
			if (ilu_mode_gear==1)
			{
				 __HAL_TIM_SET_COMPARE(&htim2,TIM_CHANNEL_3,10000);
			}
			else if (ilu_mode_gear==2)
			{
				__HAL_TIM_SET_COMPARE(&htim2,TIM_CHANNEL_3,9600);
			}
			else if (ilu_mode_gear==3)
			{
				__HAL_TIM_SET_COMPARE(&htim2,TIM_CHANNEL_3,7600);
			}
			else if (ilu_mode_gear==4)
			{
				__HAL_TIM_SET_COMPARE(&htim2,TIM_CHANNEL_3,0);
			}
			else
			{ lcd_clear();
			 lcd_put_cur(0,0);
			 lcd_send_string("Wrong input");
			}
			led_mode_lock = 1;
		 }
                 //water pump running code
		 humidity_run();
		

		//PWM HEATER Fan RUNNING
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
		else __HAL_TIM_SET_COMPARE(&htim3,TIM_CHANNEL_4,11); //不工�?????????????????????????????????????????????

		//PWM FAN RUNNING
           // remote control
           if(fan_flag==1)
            {
              __HAL_TIM_SET_COMPARE(&htim3,TIM_CHANNEL_3,0);//pwm 100%

            }
            else{

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
					__HAL_TIM_SET_COMPARE(&htim3,TIM_CHANNEL_3,11);//不工�?????????????????????????????????????????????

				if (TEMP < target_TEMP-1.5) //当温度小于 23.5 ° 风扇 的HYSTERESIS反转
				{
					HYSTERESIS_FAN = 1;
				}
			}
				//Heater Running PB0
					if (TEMP < target_TEMP) //温度小于 25 °C HEATER打开
					{
						if (((HYSTERESIS == 0) && (TEMP < target_TEMP-2)))
						{
							HAL_GPIO_WritePin(GPIOC, GPIO_PIN_5, GPIO_PIN_SET);  // 打开PC5 蓝灯 高于27°关闭 低于23°打开

							HYSTERESIS = 1;
						}

					}
							else if (TEMP > target_TEMP)// 温度大于25 HEATER关闭
							{
								if ((HYSTERESIS == 1) && (TEMP > target_TEMP+2))
								{
									HAL_GPIO_WritePin(GPIOC, GPIO_PIN_5, GPIO_PIN_RESET); //关闭PC5
									HYSTERESIS = 0;//等待温度下降，HEATER关闭
								}
					                          

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

void initialization()
{
	for(int i=0;i<2;i++)
	{
		cliBufferRX[i]=0;

	}
}




// converting the received string to int.
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
	int p_flag;
	int f_flag;

    	p_flag=cliBufferRX[0];
    	pump_flag=p_flag-'0';    //converting the received string to int.

    	f_flag = cliBufferRX[1];
    	fan_flag=f_flag-'0';    // converting the received string to int.


         initialization();

    /*result2 = strtok( NULL, delims );
    set_value=atof(result2);*/
}
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
/* led_current_reading = PA0_Vlotage ;
				 printf("\n led_current_reading is %.4f v\t\r\n",led_current_reading);
				 if ( fabs(led_current_reading-led_previous_reading) > fabs(led_current_reading-0.2) )
				 {
					 led_error_mode = 1;
				 }
			if (led_error_mode == 0)
			{
						if(led_current_reading >1.7)
						{
							__HAL_TIM_SET_COMPARE(&htim2,TIM_CHANNEL_3,9999);
						}
						else if((led_current_reading <1.7) && (led_current_reading>0.8))
						{
							__HAL_TIM_SET_COMPARE(&htim2,TIM_CHANNEL_3,9600);
						}

						else if((led_current_reading <0.8))
						{
							__HAL_TIM_SET_COMPARE(&htim2,TIM_CHANNEL_3,0);
						}
			}
			else if (led_error_mode == 1)
			{
				led_current_reading = max(led_current_reading,led_previous_reading);
				if(led_current_reading >1.7)
										{
											__HAL_TIM_SET_COMPARE(&htim2,TIM_CHANNEL_3,9999);
										}
										else if((led_current_reading <1.7) && (led_current_reading>0.8))
										{
											__HAL_TIM_SET_COMPARE(&htim2,TIM_CHANNEL_3,9600);
										}

										else if((led_current_reading <0.8))
										{
											__HAL_TIM_SET_COMPARE(&htim2,TIM_CHANNEL_3,0);
										}
				led_error_mode = 0;
			}
			*/
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
