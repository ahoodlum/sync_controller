#include "DDStructs.h"


/* lm8 instance LM8*/
struct st_LatticeMico8Ctx_t lm8_LM8 = {
    "LM8"};


/* gpio instance LED*/
struct st_MicoGPIOCtx_t gpio_LED = {
    "LED",
    0x0000,
    255,
    1,
    0,
    0,
    0,
    4,
    1,
    1,
    0};


/* uart_core instance uart*/
#ifndef __MICO_NO_INTERRUPTS__
#ifdef __MICOUART_INTERRUPT__
  /* array declaration for rxBuffer */
   unsigned char _uart_core_uart_rxBuffer[4];
#endif
#endif
#ifndef __MICO_NO_INTERRUPTS__
#ifdef __MICOUART_INTERRUPT__
  /* array declaration for txBuffer */
   unsigned char _uart_core_uart_txBuffer[4];
#endif
#endif
struct st_MicoUartCtx_t uart_core_uart = {
    "uart",
    0x0010,
#ifndef __MICO_NO_INTERRUPTS__
#ifdef __MICOUART_INTERRUPT__
    0,
#endif
#endif
#ifndef __MICO_NO_INTERRUPTS__
#ifdef __MICOUART_INTERRUPT__
    1,
#endif
#endif
#ifndef __MICO_NO_INTERRUPTS__
#ifdef __MICOUART_INTERRUPT__
    4,
#endif
#endif
#ifndef __MICO_NO_INTERRUPTS__
#ifdef __MICOUART_INTERRUPT__
    4,
#endif
#endif
#ifdef __MICOUART_BLOCKING__
    1,
#endif
#ifdef __MICOUART_BLOCKING__
    1,
#endif
#ifndef __MICO_NO_INTERRUPTS__
#ifdef __MICOUART_INTERRUPT__
    0,
#endif
#endif
#ifndef __MICO_NO_INTERRUPTS__
#ifdef __MICOUART_INTERRUPT__
    _uart_core_uart_rxBuffer,
#endif
#endif
#ifndef __MICO_NO_INTERRUPTS__
#ifdef __MICOUART_INTERRUPT__
    _uart_core_uart_txBuffer,
#endif
#endif
};


/* slave_passthru instance slave_passthru*/
struct st_MicoPassthruCtx_t slave_passthru_slave_passthru = {
    "slave_passthru",
    0x0020,
    1};

