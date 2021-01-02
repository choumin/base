#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

union vdso_data {
	struct {
		int a;
		int b;
		int c;
		pid_t pids[128];
	};
	char pad[1024];
};

union vdso_data _data;
void test(void) {
	union vdso_data *p = &_data;

	int id = 6;
	p->pids[id] = getpid(); 
	printf("%d-th pid is: %d\n", id, p->pids[id]);
}

int main(void) {
	test();
	
	return 0;
}

