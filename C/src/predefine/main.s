	.file	1 "main.c"
	.section .mdebug.abi64
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.rdata
	.align	3
.LC0:
	.ascii	"func: %s, line: %d\012\000"
	.align	3
.LC1:
	.ascii	"date: %s, time: %s\012\000"
	.align	3
.LC2:
	.ascii	"Nov 18 2020\000"
	.align	3
.LC3:
	.ascii	"09:57:14\000"
	.text
	.align	2
	.globl	main
	.set	nomips16
	.ent	main
	.type	main, @function
main:
	.frame	$fp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$fp,16($sp)
	sd	$28,8($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(main)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(main)))
	ld	$2,%got_page(.LC0)($28)
	daddiu	$4,$2,%got_ofst(.LC0)
	ld	$2,%got_page(__func__.1840)($28)
	daddiu	$5,$2,%got_ofst(__func__.1840)
	li	$6,4			# 0x4
	ld	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	ld	$2,%got_page(.LC1)($28)
	daddiu	$4,$2,%got_ofst(.LC1)
	ld	$2,%got_page(.LC2)($28)
	daddiu	$5,$2,%got_ofst(.LC2)
	ld	$2,%got_page(.LC3)($28)
	daddiu	$6,$2,%got_ofst(.LC3)
	ld	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	move	$2,$0
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$28,8($sp)
	daddiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.rdata
	.align	3
	.type	__func__.1840, @object
	.size	__func__.1840, 5
__func__.1840:
	.ascii	"main\000"
	.ident	"GCC: (GNU) 4.8.5 20150623 (Loongson 4.8.5-39)"
