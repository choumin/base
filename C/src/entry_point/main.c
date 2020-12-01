#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define EFI_STATUS	int
#define EFIAPI		
#define IN	
#define UINTN	uint32_t
#define VOID	void

typedef
EFI_STATUS
(EFIAPI *EFI_KERNEL_ENTRY_POINT)(
  IN UINTN  Argc,
  IN VOID   *Argv,
  IN VOID   *Bpi
  );  

int foo(uint32_t argc, void *argv, void *bpi) {
	printf("func: %s, line: %d\n", __func__, __LINE__);
}

int main(void) {
	uint32_t argc = 2;
	void *a1 = NULL, *a2 = NULL;
	((EFI_KERNEL_ENTRY_POINT)foo)(argc, a1, a2);

	return 0;
}

