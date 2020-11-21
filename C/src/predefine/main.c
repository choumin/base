#include <stdio.h>

int main(void) {
	printf("func: %s, line: %d\n", __func__, __LINE__);
	printf("date: %s, time: %s\n", __DATE__, __TIME__);

	#ifdef __STD__
	printf("std: %d\n", __STD__);
	#endif

	return 0;
}
