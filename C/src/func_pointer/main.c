#include <stdio.h>
#include <stdbool.h>
#include "handler.h"

//extern struct handler handlers[];
extern struct handler *handlers;

void test(void) {
	int type = 1;
	int i = 0;
	char *a = NULL;
	int len = 0;
	void *obj = NULL;
	bool ret = false;
	bool (*func1)(char *, int, void *);

	printf("handlers: %p\n", handlers);
	for (i = 0; handlers[i].type != -1; ++i) {
		if (handlers[i].type == type) {
			printf("found!\n");
			//func1 = handlers[i].func1;
			//printf("func1: %p\n", handlers[i].func1);
			//ret = (*func1)(a, len, obj);
			break;
		}
	}
	printf("ret: %d\n", ret);
}

int main(void) {
	test();
	
	return 0;
}
