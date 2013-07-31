`define LATTICE_FAMILY "MachXO2"
`define LATTICE_FAMILY_MachXO2
`define LATTICE_DEVICE "LCMXO2-7000HE"
`ifndef SYSTEM_CONF
`define SYSTEM_CONF
`timescale 1ns / 100 ps
`define I_WB_DAT_WIDTH 8
`define D_WB_DAT_WIDTH 8
`define CFG_REGISTER_COUNT 16
`define LM8CFG_REGISTER_32
`define CFG_CALL_STACK 16
`define LM8CFG_CALL_STACK_16
`define LM8CFG_PROM_SIZE 2048
`define LM8CFG_PROM_INIT_FILE "C:/Users/AndrewPC1/Documents/GitHub/sync_controller/software/uart_test/prom_init.mem"
`define LM8CFG_PROM_INIT_FILE_FORMAT "hex"
`define SP_ADDRESS_LOCK
`define SP_PORT_TYPE "Memory"
`define LM8SP_PORT_ENABLE
`define LM8CFG_SP_INIT_FILE "C:/Users/AndrewPC1/Documents/GitHub/sync_controller/software/uart_test/scratchpad_init.mem"
`define LM8CFG_SP_INIT_FILE_FORMAT "hex"
`define CFG_EXT_SIZE 16
`define LM8CFG_EXT_SIZE_16
`define CFG_IO_BASE_ADDRESS 32'h80000000
`define LM8LATTICE_FAMILY "MachXO2"
`define LEDGPIO_WB_DAT_WIDTH 8
`define LEDGPIO_WB_ADR_WIDTH 4
`define LEDOUTPUT_PORTS_ONLY
`define LEDDATA_WIDTH 32'h4
`define uartUART_WB_DAT_WIDTH 8
`define uartUART_WB_ADR_WIDTH 4
`define uartCLK_IN_MHZ 0
`define uartBAUD_RATE 115200
`define IB_SIZE 32'h4
`define OB_SIZE 32'h4
`define BLOCK_WRITE
`define BLOCK_READ
`define INTERRUPT_DRIVEN
`define CharIODevice
`define uartLCR_DATA_BITS 8
`define uartLCR_STOP_BITS 1
`define slave_passthruS_WB_DAT_WIDTH 8
`define S_WB_SEL_WIDTH 4
`define slave_passthruS_WB_ADR_WIDTH 32
`endif // SYSTEM_CONF
