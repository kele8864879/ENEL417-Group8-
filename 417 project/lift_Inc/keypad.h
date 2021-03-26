/*
 * keypad.h
 *
 *  Created on: Feb 3, 2021
 *      Author: Yanfu
 */

#ifndef SRC_KEYPAD_H_


#define R1_PORT GPIOC
#define R1_PIN GPIO_PIN_9

#define R2_PORT GPIOC
#define R2_PIN GPIO_PIN_8

#define R3_PORT GPIOC
#define R3_PIN GPIO_PIN_7

#define R4_PORT GPIOC
#define R4_PIN GPIO_PIN_6

#define C1_PORT GPIOC
#define C1_PIN GPIO_PIN_1

#define C2_PORT GPIOC
#define C2_PIN GPIO_PIN_4

#define C3_PORT GPIOC
#define C3_PIN GPIO_PIN_3

#define C4_PORT GPIOC
#define C4_PIN GPIO_PIN_2

uint8_t key;
char NO_KEY;


void key_initial(void);
char read_keypad (void);
#define SRC_KEYPAD_H_



#endif /* SRC_KEYPAD_H_ */
