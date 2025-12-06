# 1 "src/sevenSeg.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/sevenSeg.c"






# 1 "src/sevenSeg.h" 1
# 10 "src/sevenSeg.h"
# 1 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/lib/gcc/avr/7.3.0/include/stdint.h" 1 3 4
# 9 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/lib/gcc/avr/7.3.0/include/stdint.h" 3 4
# 1 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/stdint.h" 1 3 4
# 125 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/stdint.h" 3 4

# 125 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/stdint.h" 3 4
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 146 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 163 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 217 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 277 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 10 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/lib/gcc/avr/7.3.0/include/stdint.h" 2 3 4
# 11 "src/sevenSeg.h" 2



# 13 "src/sevenSeg.h"
void sevenSeg_init();


void sevenSeg_displayDecimal(uint8_t value);


void sevenSeg_displayFloat(float value);
# 8 "src/sevenSeg.c" 2
# 1 "src/util.h" 1
# 9 "src/sevenSeg.c" 2
# 1 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/interrupt.h" 1 3
# 38 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/interrupt.h" 3
# 1 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/io.h" 1 3
# 99 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/io.h" 3
# 1 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/sfr_defs.h" 1 3
# 126 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/sfr_defs.h" 3
# 1 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/inttypes.h" 1 3
# 77 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/inttypes.h" 3

# 77 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 127 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/sfr_defs.h" 2 3
# 100 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/io.h" 2 3
# 272 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/io.h" 3
# 1 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/iom328p.h" 1 3
# 273 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/io.h" 2 3
# 703 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/io.h" 3
# 1 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/portpins.h" 1 3
# 704 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/io.h" 2 3

# 1 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/common.h" 1 3
# 706 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/io.h" 2 3

# 1 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/version.h" 1 3
# 708 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/io.h" 2 3






# 1 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/fuse.h" 1 3
# 239 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/fuse.h" 3
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 715 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/io.h" 2 3


# 1 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/lock.h" 1 3
# 718 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/io.h" 2 3
# 39 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/interrupt.h" 2 3
# 10 "src/sevenSeg.c" 2

# 1 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/lib/gcc/avr/7.3.0/include/stdbool.h" 1 3 4
# 12 "src/sevenSeg.c" 2
# 20 "src/sevenSeg.c"

# 20 "src/sevenSeg.c"
const uint8_t sevenSeg_segIdxTable[8] = { 
# 20 "src/sevenSeg.c" 3
                                         5
# 20 "src/sevenSeg.c"
                                               , 
# 20 "src/sevenSeg.c" 3
                                                 0
# 20 "src/sevenSeg.c"
                                                       , 
# 20 "src/sevenSeg.c" 3
                                                         1
# 20 "src/sevenSeg.c"
                                                               , 
# 20 "src/sevenSeg.c" 3
                                                                 2
# 20 "src/sevenSeg.c"
                                                                       , 
# 20 "src/sevenSeg.c" 3
                                                                         3
# 20 "src/sevenSeg.c"
                                                                               , 
# 20 "src/sevenSeg.c" 3
                                                                                 4
# 20 "src/sevenSeg.c"
                                                                                       , 
# 20 "src/sevenSeg.c" 3
                                                                                         2
# 20 "src/sevenSeg.c"
                                                                                               , 
# 20 "src/sevenSeg.c" 3
                                                                                                 3 
# 20 "src/sevenSeg.c"
                                                                                                        };


inline volatile uint8_t sevenSeg_segIDX(uint8_t idx)
{
    return sevenSeg_segIdxTable[idx];
}


inline volatile uint8_t* sevenSeg_segDDR(uint8_t idx)
{
    if (idx > 0 && idx < 6) { return &
# 31 "src/sevenSeg.c" 3
                                     (*(volatile uint8_t *)((0x07) + 0x20))
# 31 "src/sevenSeg.c"
                                         ; }
    else { return &
# 32 "src/sevenSeg.c" 3
                                     (*(volatile uint8_t *)((0x04) + 0x20))
# 32 "src/sevenSeg.c"
                                         ; }
}


inline volatile uint8_t* sevenSeg_segPORT(uint8_t idx)
{
    if (idx > 0 && idx < 6) { return &
# 38 "src/sevenSeg.c" 3
                                     (*(volatile uint8_t *)((0x08) + 0x20))
# 38 "src/sevenSeg.c"
                                          ; }
    else { return &
# 39 "src/sevenSeg.c" 3
                                     (*(volatile uint8_t *)((0x05) + 0x20))
# 39 "src/sevenSeg.c"
                                          ; }
}


uint8_t digits[10] =
{
    0b11000000,
    0b11111001,
    0b10100100,
    0b10110000,
    0b10011001,
    0b10010010,
    0b10000010,
    0b11111000,
    0b10000000,
    0b10010000,
};


volatile uint8_t sevenSegValue;


volatile 
# 61 "src/sevenSeg.c" 3 4
        _Bool 
# 61 "src/sevenSeg.c"
             sevenSegDot;


void sevenSeg_set(uint8_t segment);



static 
# 68 "src/sevenSeg.c" 3 4
      _Bool 
# 68 "src/sevenSeg.c"
           activeDisplay = 
# 68 "src/sevenSeg.c" 3 4
                           0
# 68 "src/sevenSeg.c"
                                ;







# 75 "src/sevenSeg.c" 3
void __vector_16 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_16 (void)

# 76 "src/sevenSeg.c"
{
    uint8_t digitMask;
    uint8_t digitValue;


    if (activeDisplay == 
# 81 "src/sevenSeg.c" 3 4
                        0
# 81 "src/sevenSeg.c"
                             ) { (
# 81 "src/sevenSeg.c" 3
                                 (*(volatile uint8_t *)((0x05) + 0x20)) 
# 81 "src/sevenSeg.c"
                                 |= (1 << (
# 81 "src/sevenSeg.c" 3
                                 4
# 81 "src/sevenSeg.c"
                                 ))); }
    else { (
# 82 "src/sevenSeg.c" 3
                                 (*(volatile uint8_t *)((0x05) + 0x20)) 
# 82 "src/sevenSeg.c"
                                 &= ~(1 << (
# 82 "src/sevenSeg.c" 3
                                 4
# 82 "src/sevenSeg.c"
                                 ))); }


    activeDisplay = !activeDisplay;

    if (activeDisplay == 
# 87 "src/sevenSeg.c" 3 4
                        1
# 87 "src/sevenSeg.c"
                            )
    {

        digitValue = sevenSegValue / 10;
        digitMask = digits[digitValue];




        if (sevenSegDot)
        {

            digitMask &= ~(1 << 7);
        }


        (
# 103 "src/sevenSeg.c" 3
       (*(volatile uint8_t *)((0x05) + 0x20)) 
# 103 "src/sevenSeg.c"
       |= (1 << (
# 103 "src/sevenSeg.c" 3
       4
# 103 "src/sevenSeg.c"
       )));
    }
    else
    {

        digitValue = sevenSegValue % 10;
        digitMask = digits[digitValue];


        (
# 112 "src/sevenSeg.c" 3
       (*(volatile uint8_t *)((0x05) + 0x20)) 
# 112 "src/sevenSeg.c"
       &= ~(1 << (
# 112 "src/sevenSeg.c" 3
       4
# 112 "src/sevenSeg.c"
       )));


    }


    sevenSeg_set(digitMask);
}




void sevenSeg_set(uint8_t segment)
{
    for (uint8_t i = 0; i < 8; i++)
    {




        (((((segment) >> (i)) & 1)) ? (*sevenSeg_segPORT(i) |= (1 << (sevenSeg_segIDX(i)))) : (*sevenSeg_segPORT(i) &= ~(1 << (sevenSeg_segIDX(i)))));
    }
}




void sevenSeg_init()
{

    (
# 142 "src/sevenSeg.c" 3
   (*(volatile uint8_t *)((0x04) + 0x20)) 
# 142 "src/sevenSeg.c"
   |= (1 << (
# 142 "src/sevenSeg.c" 3
   4
# 142 "src/sevenSeg.c"
   )));


    for (uint8_t i = 0; i < 8; i++)
    {
        (*sevenSeg_segDDR(i) |= (1 << (sevenSeg_segIDX(i))));
    }





    
# 154 "src/sevenSeg.c" 3
   (*(volatile uint8_t *)((0x24) + 0x20)) 
# 154 "src/sevenSeg.c"
          = 0x00;




    
# 159 "src/sevenSeg.c" 3
   (*(volatile uint8_t *)((0x25) + 0x20)) 
# 159 "src/sevenSeg.c"
          = (1 << 
# 159 "src/sevenSeg.c" 3
                  2
# 159 "src/sevenSeg.c"
                      );




    
# 164 "src/sevenSeg.c" 3
   (*(volatile uint8_t *)(0x6E)) 
# 164 "src/sevenSeg.c"
          = (1 << 
# 164 "src/sevenSeg.c" 3
                  0
# 164 "src/sevenSeg.c"
                       );


    
# 167 "src/sevenSeg.c" 3
   __asm__ __volatile__ ("sei" ::: "memory")
# 167 "src/sevenSeg.c"
        ;
}




void sevenSeg_displayDecimal(uint8_t value)
{
    if (value > 99) { value = 99; }

    sevenSegValue = value;
    sevenSegDot = 
# 178 "src/sevenSeg.c" 3 4
                 0
# 178 "src/sevenSeg.c"
                      ;
}




void sevenSeg_displayFloat(float value)
{


    if (value >= 10.0)
    {
        sevenSeg_displayDecimal((uint8_t)value);
        sevenSegDot = 
# 191 "src/sevenSeg.c" 3 4
                     0
# 191 "src/sevenSeg.c"
                          ;
    }


    else
    {



        uint8_t temp = (uint8_t)(value * 10.0 + 0.5);

        sevenSegValue = temp;
        sevenSegDot = 
# 203 "src/sevenSeg.c" 3 4
                     1
# 203 "src/sevenSeg.c"
                         ;
    }
}
