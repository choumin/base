#include <stdio.h>
#include <sys/auxv.h>

int main(void) {
	void *entry = (void *)getauxval(AT_ENTRY);
	printf("the entry of the process is: 0x%0lx\n", entry);

	long clock = getauxval(AT_CLKTCK);
	printf("the clktck is: %ld\n", clock);

	void *base_addr = (void *)getauxval(AT_BASE);
	printf("the base address is: 0x%0lx\n", base_addr);

	long data_cache_block_size = getauxval(AT_DCACHEBSIZE);
	printf("the data cache block size is: %d\n", data_cache_block_size);

	char *pathname = (char *)getauxval(AT_EXECFN);
	printf("the path of the process running is: %s\n", pathname);

	long pagesize = (long)getauxval(AT_PAGESZ);
	printf("the page size of the process is: %d\n", pagesize);

	void *vdso_entry = (void *)getauxval(AT_SYSINFO);
	printf("the vdso entry is: 0x%0lx\n", vdso_entry);

	void *vdso_ehdr = (void *)getauxval(AT_SYSINFO_EHDR);
	printf("the vdso ehdr is: 0x%0lx\n", vdso_ehdr);

	return 0;	
}
