/*
 * sevenSeg.c
 *
 * Created: 19.07.2024 14:44:45
 * Author : Fachbereich 5 - FH Aachen
 */ 
#include "sevenSeg.h"
#include "util.h"
#include <avr/interrupt.h>
#include <avr/io.h>
#include <stdbool.h>

//! Port definitions
//! 7-Segment switch
#define SEVENSEG_DDR_SW     DDRB
#define SEVENSEG_PORT_SW    PORTB
#define SEVENSEG_IDX_SW     PORTB4

//! 7-Segment a, b, c, d, e, f, g, DP
const uint8_t sevenSeg_segIdxTable[8] = { PORTB5, PORTC0, PORTC1, PORTC2, PORTC3, PORTC4, PORTB2, PORTB3 };

//! Returns pin-index for given segment index
inline volatile uint8_t sevenSeg_segIDX(uint8_t idx)
{
    return sevenSeg_segIdxTable[idx];
}

//! Returns DDR-reference for given segment index (welcher port)
inline volatile uint8_t* sevenSeg_segDDR(uint8_t idx)
{
    if (idx > 0 && idx < 6) { return &DDRC; }
    else                    { return &DDRB; }
}

//! Returns PORT-reference for given segment index
inline volatile uint8_t* sevenSeg_segPORT(uint8_t idx)
{
    if (idx > 0 && idx < 6) { return &PORTC; }
    else                    { return &PORTB; }
}

//! Bit masks for 7-seg (laut Common Anode (Active low): 0=an, 1=aus )
uint8_t digits[10] =
{
    0b11000000, // 0 (a,b,c,d,e,f aktif; g, DP inaktif)
    0b11111001, // 1
    0b10100100, // 2
    0b10110000, // 3
    0b10011001, // 4
    0b10010010, // 5
    0b10000010, // 6
    0b11111000, // 7
    0b10000000, // 8
    0b10010000, // 9
};

//! Currently shown value
volatile uint8_t sevenSegValue;

//! Needs the dot of first 7-seg to be switched on?
volatile bool sevenSegDot;

//! Forward declarations
void sevenSeg_set(uint8_t segment);

//! Kesme rutini için bir statik değişken: 
//welcher display ist aktiv (false = einer, true = zehner)
static bool activeDisplay = false; 

/*!
 * Switches between both 7-seg and displays either tens or ones digit
 * on correspondig 7-seg.
 * Switching is done with 16 MHz / prescaler 256 / OVF 256 = ~244 Hz
 */
ISR(TIMER0_OVF_vect)
{
    uint8_t digitMask; 
    uint8_t digitValue; 

    // 1. Önceki göstergeyi kapat (Ghosting önleme)
    if (activeDisplay == false) { sbi(SEVENSEG_PORT_SW, SEVENSEG_IDX_SW); }
    else                        { cbi(SEVENSEG_PORT_SW, SEVENSEG_IDX_SW); }
    
    // Geçiş Yap
    activeDisplay = !activeDisplay; 

    if (activeDisplay == true) // Display 2 (Zehner / SOL Basamak)
    {
        
        digitValue = sevenSegValue / 10;
        digitMask = digits[digitValue];
        
        // --- NOKTA ---
        // Eğer sayı 3.5 ise, biz bunu 35 olarak tutuyoruz.
        // Nokta 3'ün yanında olmalı (Sol ekran).
        if (sevenSegDot)
        {
            // dp (bit 7) soll 0 sein für dot
            digitMask &= ~(1 << 7); 
        }
        
        // Display
        sbi(SEVENSEG_PORT_SW, SEVENSEG_IDX_SW);
    }
    else // Display 1 (Einer)
    {
        // Birler basamağını bul (Örn: 35 -> 5)
        digitValue = sevenSegValue % 10;
        digitMask = digits[digitValue];
        
        // Display
        cbi(SEVENSEG_PORT_SW, SEVENSEG_IDX_SW);
        
      
    }
    
    // Çıkış
    sevenSeg_set(digitMask);
}

/*!
 * Takes a bit-mask with DP, a - f and writes it to the individual hardware pins
 */
void sevenSeg_set(uint8_t segment)
{
    for (uint8_t i = 0; i < 8; i++)
    {
        // ubi: Update Bit 
        // Welcher Port? -> sevenSeg_segPORT(i)
        // Welcher Pin?  -> sevenSeg_segIDX(i)
        // Welcher Wert?   -> gbi(segment, i) (bit 0 pder 1 in maske)
        ubi(*sevenSeg_segPORT(i), sevenSeg_segIDX(i), gbi(segment, i));
    }
}

/*!
 * Initializes 7-segment pins and update timer
 */
void sevenSeg_init()
{
    // Init switch between tens and ones digit //switch pin als output
    sbi(SEVENSEG_DDR_SW, SEVENSEG_IDX_SW);
    
    // Set all 7-Seg pins to output
    for (uint8_t i = 0; i < 8; i++)
    {
        sbi(*sevenSeg_segDDR(i), sevenSeg_segIDX(i));
    }
    
    // Init Timer 0 (Prescaler 256, OVF Interrupt)

    // 1. TCCR0A/TCCR0B: Normal Mode (Waveform Generation Mode=0)
    //wird von 0 bis 256 gezählt
    TCCR0A = 0x00;
    
    // 2. Prescaler 256 (Timer Clock'ı 256'ya böler)
    //verlangsamt den timer
    // CS02=1, CS01=0, CS00=0 -> 0b100 (TCCR0B)
    TCCR0B = (1 << CS02);
    
    // 3. Overflow Interrupts aktifleştir
    // TOIE0=1 (Timer/Counter0 Overflow Interrupt Enable)
    //wenn overflow-> interrupt)
    TIMSK0 = (1 << TOIE0);
    
    //  global interrupts Enable bit
    sei();
}

/*!
 * Displays a decimal on the 7-segments
 */
void sevenSeg_displayDecimal(uint8_t value)
{
    if (value > 99) { value = 99; }
    
    sevenSegValue = value;
    sevenSegDot = false; // Ondalık nokta kapalı
}

/*!
 * Displays a float on the 7-segments 
 */
void sevenSeg_displayFloat(float value)
{
    // Durum 1: Değer >= 10.0 (Örn: 12.0V - gerçi 5V max ama genel mantık)
    // Sadece tam sayı kısmını göster, nokta yok.
    if (value >= 10.0)
    {
        sevenSeg_displayDecimal((uint8_t)value);
        sevenSegDot = false; // Noktayı kapat
    }
    // Durum 2: Değer < 10.0 (Örn: 3.46V)
    // "3.5" şeklinde göstermeliyiz.
    else
    {
        // 1. Adım: Sayıyı 10 ile çarp (3.46 -> 34.6)
        // 2. Adım: Yuvarlama için 0.5 ekle (34.6 + 0.5 = 35.1)
        // 3. Adım: Tam sayıya çevir (35.1 -> 35)
        uint8_t temp = (uint8_t)(value * 10.0 + 0.5);
        
        sevenSegValue = temp;
        sevenSegDot = true; // Noktayı aç (ISR'da sol basamakta yanacak)
    }
}