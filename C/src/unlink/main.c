#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main(void) {
	int fd;
	char *fname= "a.txt";
	if ((fd = creat(fname, 0600)) == -1) {
		printf("creat file failed!\n");
		exit(1);
	}

	char command[128];
	sprintf(command, "ls -l %s", fname);
	printf("creat %s successfully, ls -l %s:\n", fname, fname);
	system(command);
	
	printf("press any key to delete %s: ", fname);
	getchar();
	
	unlink(fname);
	printf("after delete %s, ls -l %s:\n", fname, fname);
	system(command);

	return 0;
}
