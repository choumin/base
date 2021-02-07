	.file	1 "main.c"
	.section .mdebug.abi64
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.text
	.align	2
	.globl	test
	.set	nomips16
	.ent	test
	.type	test, @function
test:
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$fp,8($sp)
	move	$fp,$sp
	move	$sp,$fp
	ld	$fp,8($sp)
	daddiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	test
	.size	test, .-test
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
	ld	$2,%got_disp(test)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,test
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
	.data
	.align	2
	.type	foo.1840, @object
	.size	foo.1840, 4
foo.1840:
	.word	5
	.ident	"GCC: (GNU) 4.8.5 20150623 (Loongson 4.8.5-39)"
