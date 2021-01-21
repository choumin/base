#include <stdio.h>


int a;
#define vvar_vsyscall_gtod_data a

#define VVAR(name) (vvar_ ## name)

#define gtod (&VVAR(vsyscall_gtod_data)) 

#define STR(X)	#X

#define less(a, b)	\
	({				\
		int ret = 0;	\
		if (a < b) {	\
			ret = 1;	\
		}				\
		ret;			\
	})

void test2(void) {
	int a = 5;
	int b = 6;
	if (less(a, b)) {
		printf("a(%d) less then b(%d)\n", a, b);
	} else {
		printf("a(%d) not less then b(%d)\n", a, b);
	}	
}
void test3(void) {
	gtod;	
	printf("%s\n", STR(h));
}
void test4(void) {
# define libc_hidden_def(name) hidden_def (name)
#  define hidden_def(name)              __hidden_ver1(__GI_##name, name, name);
#  define __hidden_ver1(local, internal, name) \
  extern __typeof (name) __EI_##name __asm__(__hidden_asmname (#internal)); \
  extern __typeof (name) __EI_##name \
        __attribute__((alias (__hidden_asmname (#local))))

#  define __hidden_asmname(name) \
  __hidden_asmname1 (__USER_LABEL_PREFIX__, name)
#  define __hidden_asmname1(prefix, name) __hidden_asmname2(prefix, name)
#  define __hidden_asmname2(prefix, name) #prefix name

	libc_hidden_def(getpid);
}
void test5(void) {
#define libc_ifunc_redirected(redirected_name, name, expr) \
	__ifunc (redirected_name, name, expr, void, INIT_ARCH)
#define libc_ifunc_hidden(redirected_name, name, expr)	\
	__ifunc_hidden (redirected_name, name, expr, void, INIT_ARCH)
#define __ifunc_hidden(type_name, name, expr, arg, init) \
	__ifunc (type_name, name, expr, arg, init)
#define __ifunc(type_name, name, expr, arg, init)	\
	extern __typeof (type_name) name __attribute__ \
									((ifunc (#name "_ifunc"))); \
	__ifunc_resolver (type_name, name, expr, arg, init, static)
#define __ifunc_resolver(type_name, name, expr, arg, init, classifier) \
	classifier inhibit_stack_protector	\
	__typeof (type_name) *name##_ifunc (arg) \
	{	\
		init ();	\
		__typeof (type_name) *res = expr; \
		return res;		\
	}
#define inhibit_stack_protector \
	__attribute__ ((__optimize ("-fno-stack-protector")))
	libc_ifunc_hidden(__redirect___gettimeofday, __gettimeofday, vdso_gettimeofday ?: (void *) __gettimeofday_vsyscall)
}

void test(void) {
	test5();
}

int main(void) {
	test();
	
	return 0;
}

