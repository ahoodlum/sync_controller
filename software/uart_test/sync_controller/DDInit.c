#include "DDStructs.h"

void LatticeDDInit(void)
{

    /* initialize LED instance of gpio */
    MicoGPIOInit(&gpio_LED);
    
    /* initialize uart instance of uart_core */
    MicoUartInit(&uart_core_uart);
    
    /* initialize slave_passthru instance of slave_passthru */
    MicoPassthruInit(&slave_passthru_slave_passthru);
    
    /* invoke application's main routine*/
    main();
}

