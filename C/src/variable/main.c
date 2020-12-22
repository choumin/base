#include <stdio.h>
#include <stdbool.h>

#define ASSERT(Express)		\
	do {							\
		long long i = 0;			\
		while (i < 10000000) ++i;	\
	} while (false)

int main(void) {
	ASSERT(1);	
	ASSERT(2);	
	ASSERT(3);	

	return 0;
}
