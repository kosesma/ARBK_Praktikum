/*
 * adc.c
 *
 * Created: 19.07.2024 14:46:29
 * Author : Fachbereich 5 - FH Aachen
 */ 
#include "adc.h"
#include "util.h"
#include <avr/io.h>

/*!
 * This method initializes the necessary registers for using the ADC module.
 * Reference voltage:    internal (AVCC)
 * Input channel:        PORTA7 (ADC Channel 7)
 * Conversion frequency: 125kHz (Prescaler 128)
 */
void adc_init()
{
    //  ADMUX Ayarları Selection Register
    // REFS0 = 1 -> Reference Selection -> AVCC (5V) 
    // MUX2, MUX1, MUX0 = 1 -> Kanal 7  (Binary 0111 = 7)
    ADMUX = (1 << REFS0) | (1 << MUX2) | (1 << MUX1) | (1 << MUX0);

    // ADCSRA Control and Status Register
    // ADEN  = 1 -> ADC Enable
    // ADATE = 1 -> Auto Trigger Enable - für Free Running
    // ADPS2, ADPS1, ADPS0 = 1 -> Prescaler 128 (16MHz / 128 = 125kHz)
    ADCSRA = (1 << ADEN) | (1 << ADATE) | (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0);

    //  ADCSRB Control and Status Register b
    // ADTS2, ADTS1, ADTS0 = 0 -> Free Running Mode
    // optional
    ADCSRB &= ~((1 << ADTS2) | (1 << ADTS1) | (1 << ADTS0));

    // ADSC = 1 -> Start Conversion
    ADCSRA |= (1 << ADSC);
}

/*!
 * Returns the ADC value of the last conversion
 * \return The converted voltage (0 = 0V, 1023 = AVCC)
 */
uint16_t adc_getValue()
{
    // Free Running modunda ADC sürekli çalışır ve sonucu ADC kaydedicisine yazar.
    // Biz sadece o anki değeri okuyup döndürürüz.
    return ADC;
}