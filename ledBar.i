# 1 "src/ledBar.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/ledBar.c"






# 1 "src/ledBar.h" 1
# 10 "src/ledBar.h"
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
# 11 "src/ledBar.h" 2



# 13 "src/ledBar.h"
void ledBar_init();


void ledBar_set(uint16_t leds);


void ledBar_setProgress(uint8_t percent);
# 8 "src/ledBar.c" 2
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
# 9 "src/ledBar.c" 2





# 13 "src/ledBar.c"
void ledBar_init()
{

 
# 16 "src/ledBar.c" 3
(*(volatile uint8_t *)((0x0A) + 0x20)) 
# 16 "src/ledBar.c"
     = 0xFF;


 
# 19 "src/ledBar.c" 3
(*(volatile uint8_t *)((0x04) + 0x20)) 
# 19 "src/ledBar.c"
     |= (1 << 0) | (1 << 1);
}




void ledBar_set(uint16_t leds)
{


 
# 29 "src/ledBar.c" 3
(*(volatile uint8_t *)((0x0B) + 0x20)) 
# 29 "src/ledBar.c"
      = (uint8_t)(leds & 0xFF);


 uint8_t new_pb_bits = (uint8_t)((leds >> 8) & 0x03);

 
# 34 "src/ledBar.c" 3
(*(volatile uint8_t *)((0x05) + 0x20)) 
# 34 "src/ledBar.c"
      &= ~0x03;


 
# 37 "src/ledBar.c" 3
(*(volatile uint8_t *)((0x05) + 0x20)) 
# 37 "src/ledBar.c"
      |= new_pb_bits;
}




uint16_t bar(uint8_t n) { return ((int16_t)0x8000 >> (15 - n)) ^ 0xFFFF; }




void ledBar_setProgress(uint8_t percent)
{

 ledBar_set(bar((percent + 5) / 10));
}
