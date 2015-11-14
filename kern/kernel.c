#include <config.h>
#include <kernel.h>
#include <mmu.h>

int main(void) 
{
	uart_enable();

	uart_spin_puts("\r\nWelcome to kernel!\r\n");
	uart_spin_puts("Enable MMU\r\n");
	uart_spin_puts("Good Luck!\r\n");

	enable_mmu();

	uart_spin_puts("FINISHED!!\r\n");


	return 0;
}