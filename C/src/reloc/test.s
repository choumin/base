# 1 "test.S"
# 1 "/home/zhoumin/github/choumin/base/C/src/reloc//"
# 1 "<built-in>"
# 1 "<命令行>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<命令行>" 2
# 1 "test.S"
# 1 "/usr/include/sys/asm.h" 1 3 4
# 23 "/usr/include/sys/asm.h" 3 4
# 1 "/usr/include/sgidefs.h" 1 3 4
# 24 "/usr/include/sys/asm.h" 2 3 4
# 2 "test.S" 2
# 1 "/usr/include/sys/regdef.h" 1 3 4
# 3 "test.S" 2

.globl __export_parasite_head_start; .align 2; .type __export_parasite_head_start,@function; .ent __export_parasite_head_start,0; __export_parasite_head_start: .frame $29,0,$31
 .set noreorder
 lw $4, __value
 jr $31

__value:
 .long 0x0930

.end __export_parasite_head_start; .size __export_parasite_head_start,.-__export_parasite_head_start
