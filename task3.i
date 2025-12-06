# 1 "src/task3.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/task3.c"






# 1 "src/tasks.h" 1
# 10 "src/tasks.h"
# 1 "src/util.h" 1
# 11 "src/tasks.h" 2
# 1 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/io.h" 1 3
# 99 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/io.h" 3
# 1 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/sfr_defs.h" 1 3
# 126 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/avr/sfr_defs.h" 3
# 1 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/inttypes.h" 1 3
# 37 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/inttypes.h" 3
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
# 38 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/inttypes.h" 2 3
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
# 12 "src/tasks.h" 2
# 1 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/lib/gcc/avr/7.3.0/include/stdbool.h" 1 3 4
# 13 "src/tasks.h" 2
# 1 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/util/delay.h" 1 3
# 45 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/util/delay.h" 3
# 1 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/util/delay_basic.h" 1 3
# 40 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/util/delay_basic.h" 3
static __inline__ void _delay_loop_1(uint8_t __count) __attribute__((__always_inline__));
static __inline__ void _delay_loop_2(uint16_t __count) __attribute__((__always_inline__));
# 80 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/util/delay_basic.h" 3
void
_delay_loop_1(uint8_t __count)
{
 __asm__ volatile (
  "1: dec %0" "\n\t"
  "brne 1b"
  : "=r" (__count)
  : "0" (__count)
 );
}
# 102 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/util/delay_basic.h" 3
void
_delay_loop_2(uint16_t __count)
{
 __asm__ volatile (
  "1: sbiw %0,1" "\n\t"
  "brne 1b"
  : "=w" (__count)
  : "0" (__count)
 );
}
# 46 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/util/delay.h" 2 3
# 1 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/math.h" 1 3
# 127 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/math.h" 3
extern double cos(double __x) __attribute__((__const__));





extern double sin(double __x) __attribute__((__const__));





extern double tan(double __x) __attribute__((__const__));






extern double fabs(double __x) __attribute__((__const__));






extern double fmod(double __x, double __y) __attribute__((__const__));
# 168 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/math.h" 3
extern double modf(double __x, double *__iptr);


extern float modff (float __x, float *__iptr);




extern double sqrt(double __x) __attribute__((__const__));


extern float sqrtf (float) __attribute__((__const__));




extern double cbrt(double __x) __attribute__((__const__));
# 195 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/math.h" 3
extern double hypot (double __x, double __y) __attribute__((__const__));







extern double square(double __x) __attribute__((__const__));






extern double floor(double __x) __attribute__((__const__));






extern double ceil(double __x) __attribute__((__const__));
# 235 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/math.h" 3
extern double frexp(double __x, int *__pexp);







extern double ldexp(double __x, int __exp) __attribute__((__const__));





extern double exp(double __x) __attribute__((__const__));





extern double cosh(double __x) __attribute__((__const__));





extern double sinh(double __x) __attribute__((__const__));





extern double tanh(double __x) __attribute__((__const__));







extern double acos(double __x) __attribute__((__const__));







extern double asin(double __x) __attribute__((__const__));






extern double atan(double __x) __attribute__((__const__));
# 299 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/math.h" 3
extern double atan2(double __y, double __x) __attribute__((__const__));





extern double log(double __x) __attribute__((__const__));





extern double log10(double __x) __attribute__((__const__));





extern double pow(double __x, double __y) __attribute__((__const__));






extern int isnan(double __x) __attribute__((__const__));
# 334 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/math.h" 3
extern int isinf(double __x) __attribute__((__const__));






__attribute__((__const__)) static inline int isfinite (double __x)
{
    unsigned char __exp;
    __asm__ (
 "mov	%0, %C1		\n\t"
 "lsl	%0		\n\t"
 "mov	%0, %D1		\n\t"
 "rol	%0		"
 : "=r" (__exp)
 : "r" (__x) );
    return __exp != 0xff;
}






__attribute__((__const__)) static inline double copysign (double __x, double __y)
{
    __asm__ (
 "bst	%D2, 7	\n\t"
 "bld	%D0, 7	"
 : "=r" (__x)
 : "0" (__x), "r" (__y) );
    return __x;
}
# 377 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/math.h" 3
extern int signbit (double __x) __attribute__((__const__));






extern double fdim (double __x, double __y) __attribute__((__const__));
# 393 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/math.h" 3
extern double fma (double __x, double __y, double __z) __attribute__((__const__));







extern double fmax (double __x, double __y) __attribute__((__const__));







extern double fmin (double __x, double __y) __attribute__((__const__));






extern double trunc (double __x) __attribute__((__const__));
# 427 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/math.h" 3
extern double round (double __x) __attribute__((__const__));
# 440 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/math.h" 3
extern long lround (double __x) __attribute__((__const__));
# 454 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/math.h" 3
extern long lrint (double __x) __attribute__((__const__));
# 47 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/util/delay.h" 2 3
# 86 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/util/delay.h" 3
static __inline__ void _delay_us(double __us) __attribute__((__always_inline__));
static __inline__ void _delay_ms(double __ms) __attribute__((__always_inline__));
# 165 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/util/delay.h" 3
void
_delay_ms(double __ms)
{
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((
# 174 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/util/delay.h"
          16000000L
# 174 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/util/delay.h" 3
               ) / 1e3) * __ms;
# 184 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 210 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/util/delay.h" 3
}
# 254 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/util/delay.h" 3
void
_delay_us(double __us)
{
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((
# 263 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/util/delay.h"
          16000000L
# 263 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/util/delay.h" 3
               ) / 1e6) * __us;
# 273 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 299 "/Users/esmakos/.platformio/packages/toolchain-atmelavr/avr/include/util/delay.h" 3
}
# 14 "src/tasks.h" 2



# 16 "src/tasks.h"
typedef enum
{
 GAME_OVER_OUT_OF_BOUNDS,
 GAME_OVER_TOO_EARLY
} gameover_t;


typedef enum
{
 DIR_LEFT = 0,
 DIR_RIGHT = 1
} direction_t;
# 39 "src/tasks.h"
void gameOverAnimation(gameover_t type);


void showScore(uint8_t level);


void task2();


void task3();


void task4();
# 8 "src/task3.c" 2
# 1 "src/ledBar.h" 1
# 13 "src/ledBar.h"
void ledBar_init();


void ledBar_set(uint16_t leds);


void ledBar_setProgress(uint8_t percent);
# 9 "src/task3.c" 2
# 1 "src/button.h" 1
# 14 "src/button.h"
void button_init();



# 17 "src/button.h" 3 4
_Bool 
# 17 "src/button.h"
    button_waitForPressRelease(uint16_t timeout_ms);
# 10 "src/task3.c" 2
# 1 "src/sevenSeg.h" 1
# 13 "src/sevenSeg.h"
void sevenSeg_init();


void sevenSeg_displayDecimal(uint8_t value);


void sevenSeg_displayFloat(float value);
# 11 "src/task3.c" 2



uint8_t level;


void task3_init();
gameover_t task3_game();



const uint16_t LED_D0 = 0x0001;

const uint16_t LED_D9 = 0x0200;

const uint16_t LED_BAR_ALL = 0x03FF;




void task3()
{

 task3_init();

 while (1)
 {

  gameover_t result = task3_game();


  gameOverAnimation(result);


  showScore(level);
 }
}




void task3_init()
{
 ledBar_init();
 button_init();
 sevenSeg_init();
}




gameover_t task3_game()
{

 uint16_t ledBar;


 direction_t direction;


 float delay_ms;


 level = 0;


    ledBar_set(0x0000);
    button_waitForPressRelease(0);


    ledBar = LED_D0;
    direction = DIR_LEFT;
    delay_ms = 200;
    sevenSeg_displayDecimal(level);

 while (1)
 {

        ledBar_set(ledBar);

        
# 91 "src/task3.c" 3 4
       _Bool 
# 91 "src/task3.c"
            pressed = button_waitForPressRelease((uint16_t)delay_ms);



        if (pressed)
        {



            if (ledBar & 0b0011111100)
            {
                return GAME_OVER_TOO_EARLY;
            }




            if (direction == DIR_LEFT) direction = DIR_RIGHT;
            else direction = DIR_LEFT;


            level++;
            sevenSeg_displayDecimal(level);
            delay_ms *= 0.9;
        }
        else
        {




            if (direction == DIR_LEFT && ledBar == LED_D9)
            {

                return GAME_OVER_OUT_OF_BOUNDS;
            }
            else if (direction == DIR_RIGHT && ledBar == LED_D0)
            {

                 return GAME_OVER_OUT_OF_BOUNDS;
            }


        }


        if (delay_ms < 2.0f)
        {
            ledBar_set(LED_BAR_ALL);
            return GAME_OVER_OUT_OF_BOUNDS;
        }


        if (direction == DIR_LEFT) ledBar <<= 1;
        else ledBar >>= 1;
 }
}
