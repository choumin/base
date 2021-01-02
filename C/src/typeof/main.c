#include <stdio.h>

void test(void) {
	int a = 0;
	typeof(a) b = 5;
	printf("b: %d\n", b);

}

int main(int argc, char **args) {
	int n = 5;
	if (argc > 1) {
		n = atoi(args[1]);
	}

	double A[n][n];
	typeof(A) B;
	printf("sizeof B[%d][%d]: %d\n", n, n, sizeof(B));
	//test();
	
	return 0;
}

