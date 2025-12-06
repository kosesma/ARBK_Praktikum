/*
 * ledBar.c
 *
 * Created: 14.08.2024 16:26:52
 * Author : Fachbereich 5 - FH Aachen
 */ 
#include "ledBar.h"
#include <avr/io.h>

/*!
 * Initialized PORTs connected to the LED bar
 */
void ledBar_init()
{
	//portd komplett ausgang
	DDRD = 0xFF; 

	//portb nur die ersten 2 bits ausgang
	DDRB |= (1 << 0) | (1 << 1);
}

/*!
 * Writes the LED bar to the PORTs
 */
void ledBar_set(uint16_t leds)
{
	
	// (leds & 0xFF) maskesiyle sadece bu 8 biti alıyoruz
	PORTD = (uint8_t)(leds & 0xFF);

	
	uint8_t new_pb_bits = (uint8_t)((leds >> 8) & 0x03); 
	
	PORTB &= ~0x03;
	
	
	PORTB |= new_pb_bits;
}

/*!
 * Takes a number from 0 to 10 and returns a bar with the given number of ones
 */
uint16_t bar(uint8_t n) { return ((int16_t)0x8000 >> (15 - n)) ^ 0xFFFF; }

/*!
 * Writes a value in percent as bar-graph
 */
void ledBar_setProgress(uint8_t percent)
{
	// Round 0 - 100 to 0 - 10 and get a bar graph 
	ledBar_set(bar((percent + 5) / 10));
}