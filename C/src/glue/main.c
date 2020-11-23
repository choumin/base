#include <stdio.h>

#define xglue(x, y) x ## y
#define glue(x, y) xglue(x, y)

#define SZ	32
#include "ops.h"
#undef SZ

#define SZ	64
#include "ops.h"
#undef SZ

int main(void) {
	load_elf64();
	load_elf32();

	return 0;
} 
