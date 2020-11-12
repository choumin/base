#include <stdbool.h>
#include <stdio.h>

bool foo(void) {
	//return false; 
	return true;
}
int main(void) {
	bool b = foo();
	if (b) {
		printf("true\n");
	} else {
		printf("false\n");
	}

	return 0;
}
