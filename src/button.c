/*
 * button.c
 *
 * Created: 14.08.2024 16:31:59
 * Author : Fachbereich 5 - FH Aachen
 */ 
#include "button.h"
#include "util.h"
#include <avr/io.h>
#include <util/delay.h>

/*!
 * Initialized button pin
 */
void button_init()
{

// pin c5 als eingang setzen 
 DDRC &= ~(1 << 5); // 0b11011111
 

 //pull up wiederstand aktivieren
 PORTC |= (1 << 5); 
 
 //mehrfaches Ein und Ausschalten beim Drücken verhindern
 _delay_ms(5); 

}

/*!
 * Waits for the button to be pressed for max. timeout_ms milliseconds.
 * After that, it waits until the button is released again
 */

 //wartet darauf, dass der Knopf SW1 gedrückt und wieder losgelassen wird
bool button_waitForPressRelease(uint16_t timeout_ms)
{
    // Fall 1: timeout_ms == 0 warte für immer
    if (timeout_ms == 0)
    {
        while (1)
        {
            if (!gbi(PINC, PINC5))  //ist knopf gedrückt?
            {
                // warte, bis losgelassen 
                while (!gbi(PINC, PINC5));
                return true; // Knopf wurde gedrückt & losgelassen
            }
        }
    }

   // Fall 2: timeout_ms > 0 warte solange wie timeout_ms 
    while (timeout_ms-- > 0)
    {
        if (!gbi(PINC, PINC5)) // Knopf gedrückt?
        {
            while (!gbi(PINC, PINC5)); // warte bis Los gelassen
            return true; // erfolgreich
        }
        _delay_ms(1); // 1 ms warten
    }
    
    // button nicht gedrückt
    return false;
    
}
