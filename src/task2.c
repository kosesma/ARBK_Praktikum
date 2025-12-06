/*
 * task2.c
 *
 * LED bar animation: Run a light from left to right and vice versa with increasing speed
 *
 * Created: 18.07.2024 15:53:14
 * Author : Fachbereich 5 - FH Aachen
 */
#include "tasks.h"
#include "ledBar.h"
#include "button.h"

//! Forward declarations
void task2_init();
void task2_barAnimation();

/*!
 * Main task that starts and ends a game
 */
void task2()
{
	// Init ports
	task2_init();
	
	while (1) { task2_barAnimation(); }
}

/*!
 * Initializes PORTs
 */
void task2_init()
{
	ledBar_init(); //Leds ausgang
	button_init(); //button eingang
}

/*!
 * Animation of the LED bar
 */
void task2_barAnimation()
{
	
	// 1. Start: Butona basılmasını ve bırakılmasını bekle. 
	// timeout_ms = 0: Sonsuza kadar bekle
	ledBar_set(0x0000); // Alle LED s aus vor dem Start
	
	// warte bis button gedrückt 
	button_waitForPressRelease(0); 

	// Lauflicht start:
	
	uint16_t ledBar = 0x0001; 
	
	// Richtung links
	direction_t direction = DIR_LEFT; 
	
	
	//delay Anfangswert in tasks.h 
	float delay_ms = DELAY_INITIAL_MS; //
	
	while (1)
	{
		// LEDs schreiben
		ledBar_set(ledBar);
		
		// 3. Gecikme Uygulama: delay_ms kadar _delay_ms(1) çağır.
		// _delay_ms sadece sabit parametre aldığı için döngü kullanılır.
		for (uint16_t i = 0; i < (uint16_t)delay_ms; i++)
		{
			_delay_ms(1);
		}

		// 7. Durdurma Koşulu: Eğer gecikme süresi < 2 ms ise, tüm LED'leri yak ve fonksiyondan çık.
		if (delay_ms < 2.0f) 
		{
			ledBar_set(0x03FF); // Tüm 10 LED'i yak (0b1111111111)
			
			//return; 
		}
		
		
		// LLED ganz rechts
		const uint16_t LED_D0 = 0x0001; 
		// LED ganz links
		const uint16_t LED_D9 = 0x0200; 

		// richtungwechsel zu links
		if ((ledBar == LED_D0) && (direction == DIR_RIGHT))
		{
			direction = DIR_LEFT; // Yönü sola çevir
			delay_ms *= DELAY_DECREMENT_FACTOR; // Hızlanma
		}
		// richtungswechsel zu rechts
		else if ((ledBar == LED_D9) && (direction == DIR_LEFT))
		{
			direction = DIR_RIGHT; // Yönü sağa çevir
			delay_ms *= DELAY_DECREMENT_FACTOR; // Hızlanma
		}
		
		// SHIFT
		if (direction == DIR_LEFT)
		{
			ledBar <<= 1; // linksshift
		}
		else // direction == DIR_RIGHT
		{
			ledBar >>= 1; // rechtsshift
		}
	}
}