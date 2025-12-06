# 1 "src/adc.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/adc.c"






# 1 "src/adc.h" 1
# 10 "src/adc.h"
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
# 11 "src/adc.h" 2



# 13 "src/adc.h"
void adc_init();


void adc_enable();


void adc_disable();


uint16_t adc_getValue();
# 8 "src/adc.c" 2
# 1 "src/util.h" 1
# 9 "src/adc.c" 2
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
# 10 "src/adc.c" 2








# 17 "src/adc.c"
void adc_init()
{



    
# 22 "src/adc.c" 3
   (*(volatile uint8_t *)(0x7C)) 
# 22 "src/adc.c"
         = (1 << 
# 22 "src/adc.c" 3
                 6
# 22 "src/adc.c"
                      ) | (1 << 
# 22 "src/adc.c" 3
                                2
# 22 "src/adc.c"
                                    ) | (1 << 
# 22 "src/adc.c" 3
                                              1
# 22 "src/adc.c"
                                                  ) | (1 << 
# 22 "src/adc.c" 3
                                                            0
# 22 "src/adc.c"
                                                                );





    
# 28 "src/adc.c" 3
   (*(volatile uint8_t *)(0x7A)) 
# 28 "src/adc.c"
          = (1 << 
# 28 "src/adc.c" 3
                  7
# 28 "src/adc.c"
                      ) | (1 << 
# 28 "src/adc.c" 3
                                5
# 28 "src/adc.c"
                                     ) | (1 << 
# 28 "src/adc.c" 3
                                               2
# 28 "src/adc.c"
                                                    ) | (1 << 
# 28 "src/adc.c" 3
                                                              1
# 28 "src/adc.c"
                                                                   ) | (1 << 
# 28 "src/adc.c" 3
                                                                             0
# 28 "src/adc.c"
                                                                                  );




    
# 33 "src/adc.c" 3
   (*(volatile uint8_t *)(0x7B)) 
# 33 "src/adc.c"
          &= ~((1 << 
# 33 "src/adc.c" 3
                     2
# 33 "src/adc.c"
                          ) | (1 << 
# 33 "src/adc.c" 3
                                    1
# 33 "src/adc.c"
                                         ) | (1 << 
# 33 "src/adc.c" 3
                                                   0
# 33 "src/adc.c"
                                                        ));



    
# 37 "src/adc.c" 3
   (*(volatile uint8_t *)(0x7A)) 
# 37 "src/adc.c"
          |= (1 << 
# 37 "src/adc.c" 3
                   6
# 37 "src/adc.c"
                       );
}





uint16_t adc_getValue()
{


    return 
# 48 "src/adc.c" 3
          (*(volatile uint16_t *)(0x78))
# 48 "src/adc.c"
             ;
}
