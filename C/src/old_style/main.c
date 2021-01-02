#include <stdio.h>

void test(void) {

}

double add();

double add(a, b)
double a;
double b;
{
	return a + b;
}

int main(void) {
	//test();
	double a = 1;
	double b = 2;
	printf("%lf\n", add(a, b));
	
	return 0;
}

