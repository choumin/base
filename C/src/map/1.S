
/usr/lib/gcc/mips64el-loongson-linux/4.8.5/../../../../lib64/crt1.o：     文件格式 elf64-tradlittlemips


Disassembly of section .MIPS.abiflags:

0000000000000000 <.MIPS.abiflags>:
   0:	02400000 	0x2400000
   4:	01000202 	0x1000202
	...
  10:	00000001 	movf	zero,zero,$fcc0
  14:	00000000 	nop

Disassembly of section .MIPS.options:

0000000000000018 <.MIPS.options>:
  18:	00002801 	movf	a1,zero,$fcc0
  1c:	00000000 	nop
  20:	b20007f6 	sdl	zero,2038(s0)
	...
  38:	00007fef 	0x7fef
  3c:	00000000 	nop
  40:	00002801 	movf	a1,zero,$fcc0
	...
  60:	00007fef 	0x7fef
  64:	00000000 	nop
  68:	00002801 	movf	a1,zero,$fcc0
	...
  88:	00007fef 	0x7fef
  8c:	00000000 	nop

Disassembly of section .text:

0000000000000000 <__start>:
   0:	03e00025 	move	zero,ra
   4:	04110001 	bal	c <__start+0xc>
   8:	00000000 	nop
   c:	0380c825 	move	t9,gp
  10:	3c1c0000 	lui	gp,0x0
  14:	279c0000 	addiu	gp,gp,0
  18:	039fe02d 	daddu	gp,gp,ra
  1c:	0000f825 	move	ra,zero
  20:	df840000 	ld	a0,0(gp)
  24:	dfa50000 	ld	a1,0(sp)
  28:	67a60008 	daddiu	a2,sp,8
  2c:	2401fff0 	li	at,-16
  30:	03a1e824 	and	sp,sp,at
  34:	df870000 	ld	a3,0(gp)
  38:	df880000 	ld	a4,0(gp)
  3c:	00404825 	move	a5,v0
  40:	03a05025 	move	a6,sp
  44:	df990000 	ld	t9,0(gp)
  48:	0320f809 	jalr	t9
  4c:	00000000 	nop

0000000000000050 <hlt>:
  50:	1000ffff 	b	50 <hlt>
  54:	00000000 	nop
	...

Disassembly of section .rodata.cst4:

0000000000000000 <_IO_stdin_used>:
   0:	00020001 	0x20001

Disassembly of section .note.ABI-tag:

0000000000000000 <.note.ABI-tag>:
   0:	00000004 	sllv	zero,zero,zero
   4:	00000010 	mfhi	zero
   8:	00000001 	movf	zero,zero,$fcc0
   c:	00554e47 	0x554e47
  10:	00000000 	nop
  14:	00000002 	srl	zero,zero,0x0
  18:	00000006 	srlv	zero,zero,zero
  1c:	00000020 	add	zero,zero,zero

Disassembly of section .data:

0000000000000000 <__data_start>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	43434700 	c0	0x1434700
   4:	4728203a 	bz.h	$w8,80f0 <hlt+0x80a0>
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
   4:	756e6700 	jalx	5b99c00 <hlt+0x5b99bb0>
   8:	00070100 	sll	zero,a3,0x4
   c:	01040000 	0x1040000
