/*
 * task4.c
 *
 * ADC: Convert a voltage and display it on the seven segment and on the LED bar
 *
 * Created: 19.07.2024 15:03:03
 * Author : Fachbereich 5 - FH Aachen
 */ 
#include "tasks.h"
#include "adc.h"
#include "sevenSeg.h"
#include "ledBar.h"

/*!
 * Display poti value on led-bar and 7-segments
 */
void task4()
{
	ledBar_init();
	adc_init();
	sevenSeg_init();
	
	while (1)
	{
		//  ADC Werte lesen (0 - 1023)
        uint16_t adcVal = adc_getValue();

        //  LED Bar Einstellung
        // LED Bar (0-100) 
        //(ADC * 100) / 1023
        uint8_t percent = (uint8_t)((uint32_t)adcVal * 100 / 1023);
        ledBar_setProgress(percent);

        // 7-Segment (Spannung) update
        // Spannung = (ADC * 5.0V) / 1023
        float voltage = (adcVal * 5.0f) / 1023.0f;
        sevenSeg_displayFloat(voltage);

        // 
        _delay_ms(100);
	}
}