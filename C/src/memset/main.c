#include <stdio.h>
#include <string.h>
#include <sys/time.h>

#define NR_LOOP		100000
#define MAX_SIZE	100000

int a(void) {
	int array[MAX_SIZE] = {[0 ... MAX_SIZE - 1] = 0};

	return array[MAX_SIZE / 2];
}

int b(void) {
	int array[MAX_SIZE];
	
	memset(array, 0, sizeof(array));
	
	return array[MAX_SIZE / 2];
}

static double getFloatTime()
{
        struct timeval t;

        gettimeofday(&t, 0);
        return (double) t.tv_sec + (double) t.tv_usec / 1000000.0;
}

void test(char *prefix, int (*func)(void)) {
	int i = 0;
	int ret = 0;
	double start, end;
	
	start = getFloatTime();
	for (i = 0; i < NR_LOOP; ++i) {
		func();
	}
	ret = func();
	end = getFloatTime();

	printf("%s, time cost: %.4f, last result: %lld\n", prefix, end - start, ret);
}

int main(int argc, char **args) {
	if (argc < 2) {
		printf("Usage: %s order-flag\n", args[0]);
		return -1;
	}
	if (strcmp("1", args[1]) == 0) {
		test("array init", a);
		test("memset init", b);
	} else {
		test("memset init", b);
		test("array init", a);
	}

	return 0;
}
