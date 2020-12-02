//memcpy.S
 
#include <sys/asm.h>
 
#include <sys/regdef.h>
 
.section .text
 
LEAF(my_memcpy)
 
.set push
 
.set mips64
 
dadd v0,zero,a0
 
daddiu t1,zero,0
 
loop:
 
beq t1,a2,exit   
 
nop
 
lb t2,0(a1)
 
sb t2,0(a0)
 
daddiu t1,t1,1
 
daddiu a0,a0,1
 
daddiu a1,a1,1
 
j loop
 
nop
 
exit:
 
jr ra
 
nop
 
.set pop
 
END(my_memcpy)
