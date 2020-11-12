
a.o：     文件格式 elf64-tradlittlemips


Disassembly of section .text:

0000000000000000 <foo>:
   0:	67bdfff0 	daddiu	sp,sp,-16
   4:	ffbe0008 	sd	s8,8(sp)
   8:	03a0f025 	move	s8,sp
   c:	00001025 	move	v0,zero
  10:	03c0e825 	move	sp,s8
  14:	dfbe0008 	ld	s8,8(sp)
  18:	67bd0010 	daddiu	sp,sp,16
  1c:	03e00008 	jr	ra
  20:	00000000 	nop

0000000000000024 <fun>:
  24:	67bdfff0 	daddiu	sp,sp,-16
  28:	ffbe0008 	sd	s8,8(sp)
  2c:	03a0f025 	move	s8,sp
  30:	00001025 	move	v0,zero
  34:	03c0e825 	move	sp,s8
  38:	dfbe0008 	ld	s8,8(sp)
  3c:	67bd0010 	daddiu	sp,sp,16
  40:	03e00008 	jr	ra
  44:	00000000 	nop
	...

Disassembly of section .bss:

0000000000000000 <a>:
	...

Disassembly of section .MIPS.options:

0000000000000000 <.MIPS.options>:
   0:	00002801 	movf	a1,zero,$fcc0
   4:	00000000 	nop
   8:	e0000004 	sc	zero,4(zero)
	...

Disassembly of section .MIPS.abiflags:

0000000000000000 <.MIPS.abiflags>:
   0:	02400000 	0x2400000
   4:	01000202 	0x1000202
	...
  10:	00000001 	movf	zero,zero,$fcc0
  14:	00000000 	nop

Disassembly of section .pdr:

0000000000000000 <.pdr>:
   0:	00000000 	nop
   4:	40000000 	mfc0	zero,c0_index
   8:	fffffff8 	sd	ra,-8(ra)
	...
  14:	00000010 	mfhi	zero
  18:	0000001e 	ddiv	zero,zero,zero
  1c:	0000001f 	ddivu	zero,zero,zero
  20:	00000000 	nop
  24:	40000000 	mfc0	zero,c0_index
  28:	fffffff8 	sd	ra,-8(ra)
	...
  34:	00000010 	mfhi	zero
  38:	0000001e 	ddiv	zero,zero,zero
  3c:	0000001f 	ddivu	zero,zero,zero

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	43434700 	c0	0x1434700
   4:	4728203a 	bz.h	$w8,80f0 <fun+0x80cc>
   8:	2029554e 	addi	a5,at,21838
   c:	2e382e34 	sltiu	t8,s1,11828
  10:	30322035 	andi	s2,at,0x2035
  14:	36303531 	ori	s0,s1,0x3531
  18:	28203332 	slti	zero,at,13106
  1c:	6e6f6f4c 	ldr	t3,28492(s3)
  20:	6e6f7367 	ldr	t3,29543(s3)
  24:	382e3420 	xori	t2,at,0x3420
  28:	332d352e 	andi	t1,t9,0x352e
  2c:	地址 0x000000000000002c 越界。


Disassembly of section .gnu.attributes:

0000000000000000 <.gnu.attributes>:
   0:	00000f41 	0xf41
   4:	756e6700 	jalx	5b99c00 <fun+0x5b99bdc>
   8:	00070100 	sll	zero,a3,0x4
   c:	01040000 	0x1040000
