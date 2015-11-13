#include <config.h>
#include <kernel.h>
#include <mmu.h>

#define PRELOAD_VECTOR_BASE	0x1ff00000



int main(void) 
{
	void (*uart_spin_puts)(const char *) = (void *)(0x1ff0000C);
	uart_spin_puts("\r\nWelcome to kernel!\r\n");
	uart_spin_puts("\r\nEnable MMU");

	enable_mmu();

	uart_spin_puts = (void *)(KERN_BASE + 0x1ff0000C);
	uart_spin_puts("\r\nMMU enabled\r\n");

	return 0;
}