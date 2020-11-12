
main.o：     文件格式 elf64-tradlittlemips


Disassembly of section .text:

0000000000000000 <main>:
   0:	67bdffd0 	daddiu	sp,sp,-48
   4:	ffbf0028 	sd	ra,40(sp)
   8:	ffbe0020 	sd	s8,32(sp)
   c:	ffbc0018 	sd	gp,24(sp)
  10:	03a0f025 	move	s8,sp
  14:	3c1c0000 	lui	gp,0x0
  18:	0399e02d 	daddu	gp,gp,t9
  1c:	679c0000 	daddiu	gp,gp,0
  20:	df820000 	ld	v0,0(gp)
  24:	64440000 	daddiu	a0,v0,0
  28:	df820000 	ld	v0,0(gp)
  2c:	0040c825 	move	t9,v0
  30:	0320f809 	jalr	t9
  34:	00000000 	nop
  38:	df820000 	ld	v0,0(gp)
  3c:	0040c825 	move	t9,v0
  40:	0320f809 	jalr	t9
  44:	00000000 	nop
  48:	afc20000 	sw	v0,0(s8)
  4c:	8fc20000 	lw	v0,0(s8)
  50:	df830000 	ld	v1,0(gp)
  54:	64640000 	daddiu	a0,v1,0
  58:	00402825 	move	a1,v0
  5c:	df820000 	ld	v0,0(gp)
  60:	0040c825 	move	t9,v0
  64:	0320f809 	jalr	t9
  68:	00000000 	nop
  6c:	00001025 	move	v0,zero
  70:	03c0e825 	move	sp,s8
  74:	dfbf0028 	ld	ra,40(sp)
  78:	dfbe0020 	ld	s8,32(sp)
  7c:	dfbc0018 	ld	gp,24(sp)
  80:	67bd0030 	daddiu	sp,sp,48
  84:	03e00008 	jr	ra
  88:	00000000 	nop
  8c:	00000000 	nop

Disassembly of section .MIPS.options:

0000000000000000 <.MIPS.options>:
   0:	00002801 	movf	a1,zero,$fcc0
   4:	00000000 	nop
   8:	f200003c 	scd	zero,60(s0)
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
   4:	d0000000 	lld	zero,0(zero)
   8:	fffffff8 	sd	ra,-8(ra)
	...
  14:	00000030 	tge	zero,zero
  18:	0000001e 	ddiv	zero,zero,zero
  1c:	0000001f 	ddivu	zero,zero,zero

Disassembly of section .rodata:

0000000000000000 <.rodata>:
   0:	6c6c6568 	ldr	t0,25960(v1)
   4:	6f77206f 	ldr	s7,8303(k1)
   8:	00646c72 	tlt	v1,a0,0x1b1
   c:	00000000 	nop
  10:	000a6425 	0xa6425
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	43434700 	c0	0x1434700
   4:	4728203a 	bz.h	$w8,80f0 <main+0x80f0>
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
   4:	756e6700 	jalx	5b99c00 <main+0x5b99c00>
   8:	00070100 	sll	zero,a3,0x4
   c:	01040000 	0x1040000
