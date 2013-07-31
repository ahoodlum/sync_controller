#ifndef __SYSTEM_CONFIG_H_
#define __SYSTEM_CONFIG_H_


#define FPGA_DEVICE_FAMILY    "MachXO2"
#define PLATFORM_NAME         "sync_controller"
#define USE_PLL               (0)
#define CPU_FREQUENCY         (66500000)


/* FOUND 1 CPU UNIT(S) */

/*
 * CPU Instance LM8 component configuration
 */
#define CPU_NAME "LM8"

/*
 * LED component configuration
 */
#define LED_NAME  "LED"
#define LED_BASE_ADDRESS  (0x80000000)
#define LED_SIZE  (16)
#define LED_CHARIO_IN        (0)
#define LED_CHARIO_OUT       (0)
#define LED_WB_DAT_WIDTH  (8)
#define LED_WB_ADR_WIDTH  (4)
#define LED_ADDRESS_LOCK  (0)
#define LED_DISABLE  (0)
#define LED_OUTPUT_PORTS_ONLY  (1)
#define LED_INPUT_PORTS_ONLY  (0)
#define LED_TRISTATE_PORTS  (0)
#define LED_BOTH_INPUT_AND_OUTPUT  (0)
#define LED_DATA_WIDTH  (4)
#define LED_INPUT_WIDTH  (1)
#define LED_OUTPUT_WIDTH  (1)
#define LED_IRQ_MODE  (0)
#define LED_LEVEL  (0)
#define LED_EDGE  (0)
#define LED_EITHER_EDGE_IRQ  (0)
#define LED_POSE_EDGE_IRQ  (0)
#define LED_NEGE_EDGE_IRQ  (0)

/*
 * uart component configuration
 */
#define UART_NAME  "uart"
#define UART_BASE_ADDRESS  (0x80000010)
#define UART_SIZE  (16)
#define UART_IRQ (0)
#define UART_CHARIO_IN        (1)
#define UART_CHARIO_OUT       (1)
#define UART_CHARIO_TYPE      "RS-232"
#define UART_ADDRESS_LOCK  (0)
#define UART_DISABLE  (0)
#define UART_MODEM  (0)
#define UART_WB_DAT_WIDTH  (8)
#define UART_WB_ADR_WIDTH  (4)
#define UART_BAUD_RATE  (115200)
#define UART_IB_SIZE  (4)
#define UART_OB_SIZE  (4)
#define UART_BLOCK_WRITE  (1)
#define UART_BLOCK_READ  (1)
#define UART_STDOUT_SIM  (0)
#define UART_STDOUT_SIMFAST  (0)
#define UART_RXRDY_ENABLE  (0)
#define UART_TXRDY_ENABLE  (0)
#define UART_INTERRUPT_DRIVEN  (1)
#define UART_LCR_DATA_BITS  (8)
#define UART_LCR_STOP_BITS  (1)
#define UART_LCR_PARITY_ENABLE  (0)
#define UART_LCR_PARITY_ODD  (0)
#define UART_LCR_PARITY_STICK  (0)
#define UART_LCR_SET_BREAK  (0)
#define UART_FIFO  (0)

/*
 * slave_passthru component configuration
 */
#define SLAVE_PASSTHRU_NAME  "slave_passthru"
#define SLAVE_PASSTHRU_BASE_ADDRESS  (0x80000020)
#define SLAVE_PASSTHRU_SIZE  (16)
#define SLAVE_PASSTHRU_IRQ (1)
#define SLAVE_PASSTHRU_CHARIO_IN        (0)
#define SLAVE_PASSTHRU_CHARIO_OUT       (0)
#define SLAVE_PASSTHRU_ADDRESS_LOCK  (0)
#define SLAVE_PASSTHRU_DISABLE  (0)
#define SLAVE_PASSTHRU_WB_DAT_WIDTH  (8)
#define SLAVE_PASSTHRU_WB_SEL_WIDTH  (4)
#define SLAVE_PASSTHRU_WB_ADR_WIDTH  (32)


#endif /* __SYSTEM_CONFIG_H_ */
