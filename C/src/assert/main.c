#include <stdio.h>
#include <assert.h>
#include <stdbool.h>

#ifdef DEBUG
	#define ASSERT(express)	\
		do {					\
			assert(express); \
		} while (false)		
#else
	#define ASSERT(express)
#endif

int main(void) {
	int a = 1;
	ASSERT(a++);
	printf("a: %d\n", a);

	return 0;
}
