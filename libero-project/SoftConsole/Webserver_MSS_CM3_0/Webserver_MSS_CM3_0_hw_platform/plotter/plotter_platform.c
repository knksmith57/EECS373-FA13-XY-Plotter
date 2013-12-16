
#include "plotter_platform.h"

/* Plotter Memory Mapped IO
 * ========================================================================= */
volatile int16_t *numStepsX 					= (int16_t *)(0x40050200U);
volatile uint32_t *periodX 						= (uint32_t *)(PLOTTER_BASE_ADDR + 4);
volatile int16_t *numStepsY 					= (int16_t *)(PLOTTER_BASE_ADDR + 8);
volatile uint32_t *periodY 						= (uint32_t *)(PLOTTER_BASE_ADDR + 12);
volatile uint16_t *GO 							= (uint16_t *)(PLOTTER_BASE_ADDR + 16);
volatile uint16_t *globalPositionX 				= (uint16_t *)(PLOTTER_BASE_ADDR + 20);
volatile uint16_t *globalPositionY 				= (uint16_t *)(PLOTTER_BASE_ADDR + 24);
volatile uint16_t *finishedGlobalPositionX 		= (uint16_t *)(PLOTTER_BASE_ADDR + 28);
volatile uint16_t *finishedGlobalPositionY 		= (uint16_t *)(PLOTTER_BASE_ADDR + 32);
volatile uint32_t *penWrite 					= (uint32_t *)(PLOTTER_BASE_ADDR + 36);
volatile uint16_t *maximumX						= (uint16_t *)(PLOTTER_BASE_ADDR + 40);
volatile uint16_t *maximumY						= (uint16_t *)(PLOTTER_BASE_ADDR + 44);
volatile uint16_t *fabIntStatus					= (uint16_t *)(PLOTTER_BASE_ADDR + 48);


void PLOTTER_printCoord(pcoord_t *coord) {
	if(coord->type == 	PLOTTER_MOVE) {
		*penWrite = PEN_UP;
	}
	else if(coord->type == 	PLOTTER_LINE) {
		*penWrite = PEN_DOWN;
	}
	else {
		return;
	}

	delay(20);

	printf("type: %1u\t%d,%d\r\n", coord->type, coord->x, coord->y);

	int16_t distX = coord->x - *finishedGlobalPositionX,
			distY = coord->y - *finishedGlobalPositionY;

	*numStepsX	= distX;
	*numStepsY 	= distY;

	if(distX < 0) distX *= -1;
	if(distY < 0) distY *= -1;

	// hack
	if(distX == 0 && distY == 0) {
		*numStepsX = 1;
		*numStepsY = 1;
	}

	if(distX != 0 && distY >= distX) {
		// Y is the base rate
		*periodY = PLOTTER_DEFAULT_SPEED;
		*periodX = (uint32_t)(((float) distY / distX) * PLOTTER_DEFAULT_SPEED);
	}
	else if(distX == 0 && distY >= distX) {
		*periodX = 0;
		*periodY = PLOTTER_DEFAULT_SPEED;
	}
	else if(distY != 0 && distX >= distY) {
		// X is the base rate
		*periodX = PLOTTER_DEFAULT_SPEED;
		*periodY = (uint32_t)(((float) distX / distY) * PLOTTER_DEFAULT_SPEED);
	}
	else {
		*periodX = PLOTTER_DEFAULT_SPEED;
		*periodY = 0;
	}

	*GO = 1;
}


#ifdef ACTEL_STDIO_THRU_UART

UART_instance_t g_lcd_uart;
int g_lcd_uart_init_done = 0;
/*
void _to_lcd_uart(char *ptr, int len ) {
	if( !g_lcd_uart_init_done ) {
		UART_init(&g_lcd_uart, LCD_UART_ADDR, BAUD_VALUE_9600, (DATA_8_BITS | NO_PARITY));
		g_lcd_uart_init_done = 1;
	}

	// default commands to clear the screen + print text at the origin (ie: starting at the top left corner)
    unsigned char cmds[6] = {254, 1, 254, 128, 254, 1};

    // temporary buffers to write text
    char * tmp;
    tmp = (char*) malloc (len + 7);
    memcpy(tmp, cmds, 6);
    memcpy(tmp + 6, ptr, len);
    tmp[len + 6] = '\0';

    UART_polled_tx_string(&g_lcd_uart, (uint8_t *)tmp);

    free(tmp);
}
*/

#endif	/* ACTEL_STDIO_THRU_UART */
