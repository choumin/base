# 1 "c.S"
# 1 "/home/zhoumin/github/choumin/base/C/src/reloc//"
# 1 "<built-in>"
# 1 "<命令行>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<命令行>" 2
# 1 "c.S"


# 1 "/usr/include/sys/asm.h" 1 3 4
# 23 "/usr/include/sys/asm.h" 3 4
# 1 "/usr/include/sgidefs.h" 1 3 4
# 24 "/usr/include/sys/asm.h" 2 3 4
# 4 "c.S" 2

# 1 "/usr/include/sys/regdef.h" 1 3 4
# 6 "c.S" 2

.section .text

.globl my_memcpy; .align 2; .type my_memcpy,@function; .ent my_memcpy,0; my_memcpy: .frame $29,0,$31

.set push

.set mips64

dadd $2,$0,$4

daddiu $13,$0,0

loop:

beq $13,$6,exit

nop

lb $14,0($5)

sb $14,0($4)

daddiu $13,$13,1

daddiu $4,$4,1

daddiu $5,$5,1

j loop

nop

exit:

jr $31

nop

.set pop

.end my_memcpy; .size my_memcpy,.-my_memcpy
