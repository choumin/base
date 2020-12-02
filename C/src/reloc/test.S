#include <sys/asm.h>
#include <sys/regdef.h>

LEAF(__export_parasite_head_start)
	.set noreorder
	lw a0, __value
	jr ra

__value:
	.long 0x0930

END(__export_parasite_head_start)
