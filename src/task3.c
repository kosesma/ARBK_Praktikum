/*
 * task3.c
 *
 * Created: 19.07.2024 14:09:26
 * Author : Fachbereich 5 - FH Aachen
 */ 
#include "tasks.h"
#include "ledBar.h"
#include "button.h"
#include "sevenSeg.h"
#include <util/delay.h>

//! Game level
uint8_t level; 

//! Forward declarations
void task3_init();
gameover_t task3_game();

// --- Sabitler ---
// D0 (ganz rechts)
const uint16_t LED_D0 = 0x0001;
// D9 (ganz links)
const uint16_t LED_D9 = 0x0200; 
// LED_BAR_INNER makrosu tasks.h'den gelir
const uint16_t LED_BAR_ALL = 0x03FF; // D0'dan D9'a tüm LED'ler (10 bit)

/*!
 * Main task that starts and ends a game
 */
void task3()
{
	// Init ports
	task3_init();
	
	while (1)
	{
		// Play game
		gameover_t result = task3_game();
		
		// Game over animation (tasks.c dosyasından çağrılacak)
		gameOverAnimation(result);
		
		// Show reached level (tasks.c dosyasından çağrılacak)
		showScore(level);
	}
}

/*!
 * Initializes PORTs
 */
void task3_init()
{
	ledBar_init();
	button_init();
	sevenSeg_init();
}

/*!
 * Game logic
 */
gameover_t task3_game()
{
	// Current state of the LED bar
	uint16_t ledBar;
	
	// LED shift direction
	direction_t direction;
	
	// Shift delay of game level 0 in ms
	float delay_ms;
	
	// Reset game level
	level = 0; 
	
    // Anfang- warten 
    ledBar_set(0x0000); // LEDs auus
    button_waitForPressRelease(0);
    
    // Anfangswerte
    ledBar = LED_D0;        // anfang->D0
    direction = DIR_LEFT;   // richtung links
    delay_ms = DELAY_INITIAL_MS; // Anfangsgeschwindigkeit
    sevenSeg_displayDecimal(level); // skor (noch 0)

	while (1)
	{
		// LED an
        ledBar_set(ledBar);
        //warte solange wie delay_ms, kontroliere währendessen ob button gedrückt
        bool pressed = button_waitForPressRelease((uint16_t)delay_ms);
        
        // 

        if (pressed) //taster gedrückt
        {
            

            // Fehler: (Too Early)
            if (ledBar & LED_BAR_INNER) 
            {
                return GAME_OVER_TOO_EARLY;
            }

            // Erfolg:
            
            // richtungswechsel
            if (direction == DIR_LEFT) direction = DIR_RIGHT;
            else direction = DIR_LEFT;
            
            // nöchste level-schneller
            level++; 
            sevenSeg_displayDecimal(level); 
            delay_ms *= DELAY_DECREMENT_FACTOR; 
        }
        else 
        {
            // taster nicht gedrückt time out
            
            
            //wenn bei d9 und nicht gedrückt
            if (direction == DIR_LEFT && ledBar == LED_D9)
            {
                // Sola gidiyor ve En Solda (D9) -> Dışarı taşıyor -> Kayıp
                return GAME_OVER_OUT_OF_BOUNDS;
            }//wenn bei d0 und nicht gedrückt
            else if (direction == DIR_RIGHT && ledBar == LED_D0)
            {
                // Sağa gidiyor ve En Sağda (D0) -> Dışarı taşıyor -> Kayıp
                 return GAME_OVER_OUT_OF_BOUNDS;
            }
            
            
        }

        // unterbrechung bei <2ms
        if (delay_ms < 2.0f) 
        {
            ledBar_set(LED_BAR_ALL); 
            return GAME_OVER_OUT_OF_BOUNDS; 
        }

        // leds shiften (Shift)
        if (direction == DIR_LEFT) ledBar <<= 1; 
        else ledBar >>= 1; 
	}
}