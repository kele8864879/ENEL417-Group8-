/*
 * keypad.c
 *
 *  Created on: Feb 3, 2021
 *      Author: Yanfu
 */

#include "main.h"
#include "keypad.h"

char read_keypad (void)
{

	HAL_GPIO_WritePin (C1_PORT, C1_PIN, GPIO_PIN_SET);
	HAL_GPIO_WritePin (C2_PORT, C2_PIN, GPIO_PIN_RESET);
	HAL_GPIO_WritePin (C3_PORT, C3_PIN, GPIO_PIN_RESET);
	HAL_GPIO_WritePin (C4_PORT, C4_PIN, GPIO_PIN_RESET);

    if (HAL_GPIO_ReadPin(R1_PORT, R1_PIN) == 1)
    {
    	while(HAL_GPIO_ReadPin(R1_PORT, R1_PIN) == 1)
    	{

    	}
	    return '1';

	}

    if (HAL_GPIO_ReadPin(R2_PORT, R2_PIN) == 1)
    {
    	while(HAL_GPIO_ReadPin(R2_PORT, R2_PIN) == 1)
    	{

    	}
	    return '4';

	}

    if (HAL_GPIO_ReadPin(R3_PORT, R3_PIN) == 1)
    {
    	while(HAL_GPIO_ReadPin(R3_PORT, R3_PIN) == 1)
    	{

    	}
	    return '7';

	}

    if (HAL_GPIO_ReadPin(R4_PORT, R4_PIN) == 1)
        {
    	   while(HAL_GPIO_ReadPin(R4_PORT, R4_PIN) == 1)
    	   {

    	   }
    	   return '*';

    	}

	HAL_GPIO_WritePin (C1_PORT, C1_PIN, GPIO_PIN_RESET);
	HAL_GPIO_WritePin (C2_PORT, C2_PIN, GPIO_PIN_SET);
	HAL_GPIO_WritePin (C3_PORT, C3_PIN, GPIO_PIN_RESET);
	HAL_GPIO_WritePin (C4_PORT, C4_PIN, GPIO_PIN_RESET);

	if (HAL_GPIO_ReadPin(R1_PORT, R1_PIN) == 1)
	{
		   while(HAL_GPIO_ReadPin(R1_PORT, R1_PIN) == 1)
		   {

		   }
	       return '2';
	}
    if (HAL_GPIO_ReadPin(R2_PORT, R2_PIN) == 1)
    {
    	   while(HAL_GPIO_ReadPin(R2_PORT, R2_PIN) == 1)
    	   {

    	   }

	       return '5';

	}

    if (HAL_GPIO_ReadPin(R3_PORT, R3_PIN) == 1)
    {
    	while(HAL_GPIO_ReadPin(R3_PORT, R3_PIN) == 1)
    	{

    	}
	      return '8';

	}

    if (HAL_GPIO_ReadPin(R4_PORT, R4_PIN) == 1)
    {
    	while(HAL_GPIO_ReadPin(R4_PORT, R4_PIN) == 1)
    	{

    	}

        return '0';

    }


	HAL_GPIO_WritePin (C1_PORT, C1_PIN, GPIO_PIN_RESET);
	HAL_GPIO_WritePin (C2_PORT, C2_PIN, GPIO_PIN_RESET);
	HAL_GPIO_WritePin (C3_PORT, C3_PIN, GPIO_PIN_SET);
	HAL_GPIO_WritePin (C4_PORT, C4_PIN, GPIO_PIN_RESET);

	if (HAL_GPIO_ReadPin(R1_PORT, R1_PIN) == 1)
	{
    	   while(HAL_GPIO_ReadPin(R1_PORT, R1_PIN) == 1)
    	   {

    	   }
	       return '3';
	}
    if (HAL_GPIO_ReadPin(R2_PORT, R2_PIN) == 1)
    {
    	   while(HAL_GPIO_ReadPin(R2_PORT, R2_PIN) == 1)
    	   {

    	   }
	       return '6';

	}

    if (HAL_GPIO_ReadPin(R3_PORT, R3_PIN) == 1)
    {
    	  while(HAL_GPIO_ReadPin(R3_PORT, R3_PIN) == 1)
    	 {

    	 }
	      return '9';

	}

    if (HAL_GPIO_ReadPin(R4_PORT, R4_PIN) == 1)
    {
    	while(HAL_GPIO_ReadPin(R4_PORT, R4_PIN) == 1)
    	{

    	}
        return '#';

    }


	HAL_GPIO_WritePin (C1_PORT, C1_PIN, GPIO_PIN_RESET);
	HAL_GPIO_WritePin (C2_PORT, C2_PIN, GPIO_PIN_RESET);
	HAL_GPIO_WritePin (C3_PORT, C3_PIN, GPIO_PIN_RESET);
	HAL_GPIO_WritePin (C4_PORT, C4_PIN, GPIO_PIN_SET);

	if (HAL_GPIO_ReadPin(R1_PORT, R1_PIN) == 1)
	{
    	   while(HAL_GPIO_ReadPin(R1_PORT, R1_PIN) == 1)
    	   {

    	   }
	       return 'A';
	}
    if (HAL_GPIO_ReadPin(R2_PORT, R2_PIN) == 1)
    {
    	   while(HAL_GPIO_ReadPin(R2_PORT, R2_PIN) == 1)
    	   {

    	   }
	       return 'B';

	}

    if (HAL_GPIO_ReadPin(R3_PORT, R3_PIN) == 1)
    {
    	while(HAL_GPIO_ReadPin(R3_PORT, R3_PIN) == 1)
    	{

    	}
	      return 'C';

	}

    if (HAL_GPIO_ReadPin(R4_PORT, R4_PIN) == 1)
    {
    	while(HAL_GPIO_ReadPin(R4_PORT, R4_PIN) == 1)
    	{

    	}
        return  'D';

    }

    return NO_KEY='E';
}
