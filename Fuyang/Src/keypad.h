/*
 * keypad.h
 *
 *  Created on: Feb 3, 2021
 *      Author: Yanfu
 */

#ifndef SRC_KEYPAD_H_


#define R1_PORT GPIOA
#define R1_PIN GPIO_PIN_8

#define R2_PORT GPIOB
#define R2_PIN GPIO_PIN_10

#define R3_PORT GPIOB
#define R3_PIN GPIO_PIN_4

#define R4_PORT GPIOB
#define R4_PIN GPIO_PIN_5

#define C1_PORT GPIOB
#define C1_PIN GPIO_PIN_3

#define C2_PORT GPIOA
#define C2_PIN GPIO_PIN_10

#define C3_PORT GPIOA
#define C3_PIN GPIO_PIN_2

#define C4_PORT GPIOA
#define C4_PIN GPIO_PIN_3

uint8_t key;
char NO_KEY;


void key_initial(void);
char read_keypad (void);
#define SRC_KEYPAD_H_



#endif /* SRC_KEYPAD_H_ */
