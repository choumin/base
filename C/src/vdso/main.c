#include <stdio.h>
#include <sys/types.h>
#include <sys/syscall.h>
#include <unistd.h>
#include <stdio.h>
#include <sys/time.h>
#include <sys/wait.h>
#include <time.h>

//extern int __vdso_clock_gettime(clock_t clk, struct timespec *tv);
void test(void) {
	struct timespec ts;
	clock_gettime(CLOCK_MONOTONIC, &ts);
	clock_gettime(CLOCK_MONOTONIC, &ts);
	printf("ts.tv_sec: %d, ts.tv_nsec: %d\n", ts.tv_sec, ts.tv_nsec);
}
void test1(void) {
	struct timespec ts;
	//__vdso_clock_gettime(CLOCK_MONOTONIC, &ts);
	printf("ts.tv_sec: %d, ts.tv_nsec: %d\n", ts.tv_sec, ts.tv_nsec);

}
void test2(void) {
	struct timeval tv;
	struct timezone tz;
	register struct timeval *_tv asm("a0") = &tv;
	register struct timezone *_tz asm("a1") = &tz;
	register int ret asm("v0");
	register int error asm("a3");
	asm volatile(
	"       syscall 169\n"
    	: "=r" (ret), "=r" (error)
    	: "r" (_tv), "r" (_tz)
		: "sp", "s0", "s1", "s2", "s3", "s4", "s5",
      	"s6", "s7", "memory");

	printf("ret: %d, error: %d, tv.tv_sec: %d, tv.tv_usec: %d\n", ret, error, tv.tv_sec, tv.tv_usec);

}
int main(void) {
    printf("press any key to exit ...\n");
    //getchar();
	test2();
        
    return 0;                                                                                                                                                                                                                                 
}       

