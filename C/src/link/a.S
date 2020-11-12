
./a.out：     文件格式 elf64-tradlittlemips


Disassembly of section .MIPS.abiflags:

00000001200002a8 <.MIPS.abiflags>:
   1200002a8:	02400000 	0x2400000
   1200002ac:	01000202 	0x1000202
	...
   1200002b8:	00000001 	movf	zero,zero,$fcc0
   1200002bc:	00000000 	nop

Disassembly of section .MIPS.options:

00000001200002c0 <.MIPS.options>:
   1200002c0:	00002801 	movf	a1,zero,$fcc0
   1200002c4:	00000000 	nop
   1200002c8:	b20007f6 	sdl	zero,2038(s0)
	...
   1200002e0:	20019010 	addi	at,zero,-28656
   1200002e4:	00000001 	movf	zero,zero,$fcc0
   1200002e8:	00002801 	movf	a1,zero,$fcc0
	...
   120000308:	20019010 	addi	at,zero,-28656
   12000030c:	00000001 	movf	zero,zero,$fcc0
   120000310:	00002801 	movf	a1,zero,$fcc0
	...
   120000330:	20019010 	addi	at,zero,-28656
   120000334:	00000001 	movf	zero,zero,$fcc0
   120000338:	00002801 	movf	a1,zero,$fcc0
   12000033c:	00000000 	nop
   120000340:	b2000004 	sdl	zero,4(s0)
	...
   120000358:	20019010 	addi	at,zero,-28656
   12000035c:	00000001 	movf	zero,zero,$fcc0
   120000360:	00002801 	movf	a1,zero,$fcc0
   120000364:	00000000 	nop
   120000368:	b201007c 	sdl	at,124(s0)
	...
   120000380:	20019010 	addi	at,zero,-28656
   120000384:	00000001 	movf	zero,zero,$fcc0
   120000388:	00002801 	movf	a1,zero,$fcc0
   12000038c:	00000000 	nop
   120000390:	f200003c 	scd	zero,60(s0)
	...
   1200003a8:	20019010 	addi	at,zero,-28656
   1200003ac:	00000001 	movf	zero,zero,$fcc0
   1200003b0:	00002801 	movf	a1,zero,$fcc0
   1200003b4:	00000000 	nop
   1200003b8:	e0000004 	sc	zero,4(zero)
	...
   1200003d0:	20019010 	addi	at,zero,-28656
   1200003d4:	00000001 	movf	zero,zero,$fcc0
   1200003d8:	00002801 	movf	a1,zero,$fcc0
   1200003dc:	00000000 	nop
   1200003e0:	b23f0070 	sdl	ra,112(s1)
	...
   1200003f8:	20019010 	addi	at,zero,-28656
   1200003fc:	00000001 	movf	zero,zero,$fcc0
   120000400:	00002801 	movf	a1,zero,$fcc0
	...
   120000420:	20019010 	addi	at,zero,-28656
   120000424:	00000001 	movf	zero,zero,$fcc0
   120000428:	00002801 	movf	a1,zero,$fcc0
   12000042c:	00000000 	nop
   120000430:	b0000000 	sdl	zero,0(zero)
	...
   120000448:	20019010 	addi	at,zero,-28656
   12000044c:	00000001 	movf	zero,zero,$fcc0

Disassembly of section .note.gnu.build-id:

0000000120000450 <.note.gnu.build-id>:
   120000450:	00000004 	sllv	zero,zero,zero
   120000454:	00000014 	dsllv	zero,zero,zero
   120000458:	00000003 	sra	zero,zero,0x0
   12000045c:	00554e47 	0x554e47
   120000460:	2fee324e 	sltiu	t2,ra,12878
   120000464:	3134229f 	andi	s4,a5,0x229f
   120000468:	c43254b9 	lwc1	$f18,21689(at)
   12000046c:	7adad07d 	0x7adad07d
   120000470:	8a66bd41 	lwl	a2,-17087(s3)

Disassembly of section .dynamic:

0000000120000478 <_DYNAMIC>:
   120000478:	00000001 	movf	zero,zero,$fcc0
   12000047c:	00000000 	nop
   120000480:	0000009c 	0x9c
   120000484:	00000000 	nop
   120000488:	0000000c 	syscall
   12000048c:	00000000 	nop
   120000490:	20000970 	addi	zero,zero,2416
   120000494:	00000001 	movf	zero,zero,$fcc0
   120000498:	0000000d 	break
   12000049c:	00000000 	nop
   1200004a0:	20000d30 	addi	zero,zero,3376
   1200004a4:	00000001 	movf	zero,zero,$fcc0
   1200004a8:	00000019 	multu	zero,zero
   1200004ac:	00000000 	nop
   1200004b0:	20010fe8 	addi	at,zero,4072
   1200004b4:	00000001 	movf	zero,zero,$fcc0
   1200004b8:	0000001b 	divu	zero,zero,zero
   1200004bc:	00000000 	nop
   1200004c0:	00000008 	jr	zero
   1200004c4:	00000000 	nop
   1200004c8:	0000001a 	div	zero,zero,zero
   1200004cc:	00000000 	nop
   1200004d0:	20010ff0 	addi	at,zero,4080
   1200004d4:	00000001 	movf	zero,zero,$fcc0
   1200004d8:	0000001c 	dmult	zero,zero
   1200004dc:	00000000 	nop
   1200004e0:	00000008 	jr	zero
   1200004e4:	00000000 	nop
   1200004e8:	00000004 	sllv	zero,zero,zero
   1200004ec:	00000000 	nop
   1200004f0:	20000678 	addi	zero,zero,1656
   1200004f4:	00000001 	movf	zero,zero,$fcc0
   1200004f8:	00000005 	lsa	zero,zero,zero,0x1
   1200004fc:	00000000 	nop
   120000500:	20000850 	addi	zero,zero,2128
   120000504:	00000001 	movf	zero,zero,$fcc0
   120000508:	00000006 	srlv	zero,zero,zero
   12000050c:	00000000 	nop
   120000510:	200006d0 	addi	zero,zero,1744
   120000514:	00000001 	movf	zero,zero,$fcc0
   120000518:	0000000a 	movz	zero,zero,zero
   12000051c:	00000000 	nop
   120000520:	000000da 	0xda
   120000524:	00000000 	nop
   120000528:	0000000b 	movn	zero,zero,zero
   12000052c:	00000000 	nop
   120000530:	00000018 	mult	zero,zero
   120000534:	00000000 	nop
   120000538:	70000016 	udi6	zero,zero,zero,0x0
   12000053c:	00000000 	nop
   120000540:	20011010 	addi	at,zero,4112
   120000544:	00000001 	movf	zero,zero,$fcc0
   120000548:	70000035 	0x70000035
   12000054c:	00000000 	nop
   120000550:	00010ac8 	0x10ac8
   120000554:	00000000 	nop
   120000558:	00000015 	dlsa	zero,zero,zero,0x1
	...
   120000568:	00000003 	sra	zero,zero,0x0
   12000056c:	00000000 	nop
   120000570:	20011020 	addi	at,zero,4128
   120000574:	00000001 	movf	zero,zero,$fcc0
   120000578:	70000001 	maddu	zero,zero
   12000057c:	00000000 	nop
   120000580:	00000001 	movf	zero,zero,$fcc0
   120000584:	00000000 	nop
   120000588:	70000005 	msubu	zero,zero
   12000058c:	00000000 	nop
   120000590:	00000002 	srl	zero,zero,0x0
   120000594:	00000000 	nop
   120000598:	70000006 	0x70000006
   12000059c:	00000000 	nop
   1200005a0:	20000000 	addi	zero,zero,0
   1200005a4:	00000001 	movf	zero,zero,$fcc0
   1200005a8:	7000000a 	0x7000000a
   1200005ac:	00000000 	nop
   1200005b0:	0000000f 	sync
   1200005b4:	00000000 	nop
   1200005b8:	70000011 	udi1	zero,zero,zero,0x0
   1200005bc:	00000000 	nop
   1200005c0:	00000010 	mfhi	zero
   1200005c4:	00000000 	nop
   1200005c8:	70000012 	udi2	zero,zero,zero,0x0
   1200005cc:	00000000 	nop
   1200005d0:	0000001e 	ddiv	zero,zero,zero
   1200005d4:	00000000 	nop
   1200005d8:	70000013 	udi3	zero,zero,zero,0x0
   1200005dc:	00000000 	nop
   1200005e0:	00000009 	jalr	zero,zero
   1200005e4:	00000000 	nop
   1200005e8:	6ffffffe 	ldr	ra,-2(ra)
   1200005ec:	00000000 	nop
   1200005f0:	20000950 	addi	zero,zero,2384
   1200005f4:	00000001 	movf	zero,zero,$fcc0
   1200005f8:	6fffffff 	ldr	ra,-1(ra)
   1200005fc:	00000000 	nop
   120000600:	00000001 	movf	zero,zero,$fcc0
   120000604:	00000000 	nop
   120000608:	6ffffff0 	ldr	ra,-16(ra)
   12000060c:	00000000 	nop
   120000610:	2000092a 	addi	zero,zero,2346
   120000614:	00000001 	movf	zero,zero,$fcc0
	...

Disassembly of section .hash:

0000000120000678 <.hash>:
   120000678:	00000003 	sra	zero,zero,0x0
   12000067c:	00000010 	mfhi	zero
   120000680:	00000008 	jr	zero
   120000684:	00000009 	jalr	zero,zero
   120000688:	00000004 	sllv	zero,zero,zero
	...
   120000698:	0000000e 	0xe
   12000069c:	00000003 	sra	zero,zero,0x0
   1200006a0:	0000000b 	movn	zero,zero,zero
   1200006a4:	0000000c 	syscall
   1200006a8:	00000005 	lsa	zero,zero,zero,0x1
   1200006ac:	0000000a 	movz	zero,zero,zero
   1200006b0:	00000007 	srav	zero,zero,zero
   1200006b4:	00000006 	srlv	zero,zero,zero
   1200006b8:	0000000d 	break
   1200006bc:	00000001 	movf	zero,zero,$fcc0
   1200006c0:	0000000f 	sync
   1200006c4:	00000000 	nop
   1200006c8:	00000002 	srl	zero,zero,0x0

Disassembly of section .dynsym:

00000001200006d0 <.dynsym>:
	...
   1200006e8:	00000011 	mthi	zero
   1200006ec:	000b0012 	0xb0012
   1200006f0:	20000ce8 	addi	zero,zero,3304
   1200006f4:	00000001 	movf	zero,zero,$fcc0
   1200006f8:	00000008 	jr	zero
   1200006fc:	00000000 	nop
   120000700:	000000a6 	0xa6
   120000704:	fff10013 	sd	s1,19(ra)
   120000708:	00000001 	movf	zero,zero,$fcc0
	...
   120000718:	000000c1 	0xc1
   12000071c:	000e0011 	0xe0011
   120000720:	20000d60 	addi	zero,zero,3424
   120000724:	00000001 	movf	zero,zero,$fcc0
   120000728:	00000004 	sllv	zero,zero,zero
   12000072c:	00000000 	nop
   120000730:	000000b7 	0xb7
   120000734:	00170011 	0x170011
   120000738:	20011010 	addi	at,zero,4112
   12000073c:	00000001 	movf	zero,zero,$fcc0
	...
   120000748:	00000001 	movf	zero,zero,$fcc0
   12000074c:	000b0012 	0xb0012
   120000750:	20000c40 	addi	zero,zero,3136
   120000754:	00000001 	movf	zero,zero,$fcc0
   120000758:	000000a8 	0xa8
   12000075c:	00000000 	nop
   120000760:	00000091 	0x91
   120000764:	000b0012 	0xb0012
   120000768:	20000bf0 	addi	zero,zero,3056
   12000076c:	00000001 	movf	zero,zero,$fcc0
   120000770:	00000024 	and	zero,zero,zero
   120000774:	00000000 	nop
   120000778:	0000002e 	dneg	zero,zero
   12000077c:	000b0012 	0xb0012
   120000780:	20000b60 	addi	zero,zero,2912
   120000784:	00000001 	movf	zero,zero,$fcc0
   120000788:	0000008c 	syscall	0x2
   12000078c:	00000000 	nop
   120000790:	0000000b 	movn	zero,zero,zero
   120000794:	000a0012 	0xa0012
   120000798:	20000970 	addi	zero,zero,2416
   12000079c:	00000001 	movf	zero,zero,$fcc0
	...
   1200007a8:	0000005e 	0x5e
   1200007ac:	00000020 	add	zero,zero,zero
	...
   1200007c0:	00000078 	dsll	zero,zero,0x1
   1200007c4:	00000020 	add	zero,zero,zero
	...
   1200007d8:	00000021 	move	zero,zero
   1200007dc:	00000012 	mflo	zero
   1200007e0:	20000d10 	addi	zero,zero,3344
   1200007e4:	00000001 	movf	zero,zero,$fcc0
	...
   1200007f0:	00000033 	tltu	zero,zero
   1200007f4:	00000022 	neg	zero,zero
	...
   120000808:	0000008c 	syscall	0x2
   12000080c:	00000012 	mflo	zero
   120000810:	20000d00 	addi	zero,zero,3328
   120000814:	00000001 	movf	zero,zero,$fcc0
	...
   120000820:	00000095 	dlsa	zero,zero,zero,0x3
   120000824:	00000012 	mflo	zero
   120000828:	20000cf0 	addi	zero,zero,3312
   12000082c:	00000001 	movf	zero,zero,$fcc0
	...
   120000838:	00000042 	srl	zero,zero,0x1
   12000083c:	00000020 	add	zero,zero,zero
	...

Disassembly of section .dynstr:

0000000120000850 <.dynstr>:
   120000850:	6c5f5f00 	ldr	ra,24320(v0)
   120000854:	5f636269 	0x5f636269
   120000858:	5f757363 	0x5f757363
   12000085c:	74696e69 	jalx	121a5b9a4 <_gp+0x1a42994>
   120000860:	6c5f5f00 	ldr	ra,24320(v0)
   120000864:	5f636269 	0x5f636269
   120000868:	5f757363 	0x5f757363
   12000086c:	696e6966 	ldl	t2,26982(a7)
   120000870:	6c5f5f00 	ldr	ra,24320(v0)
   120000874:	5f636269 	0x5f636269
   120000878:	72617473 	0x72617473
   12000087c:	616d5f74 	daddi	t1,a7,24436
   120000880:	5f006e69 	bgtzl	t8,12001c228 <_gp+0x3218>
   120000884:	6f6d675f 	ldr	t1,26463(k1)
   120000888:	74735f6e 	jalx	121cd7db8 <_gp+0x1cbeda8>
   12000088c:	5f747261 	0x5f747261
   120000890:	495f005f 	0x495f005f
   120000894:	645f4d54 	daddiu	ra,v0,19796
   120000898:	67657265 	daddiu	a1,k1,29285
   12000089c:	65747369 	daddiu	s4,a7,29545
   1200008a0:	434d5472 	c0	0x14d5472
   1200008a4:	656e6f6c 	daddiu	t2,a7,28524
   1200008a8:	6c626154 	ldr	v0,24916(v1)
   1200008ac:	495f0065 	0x495f0065
   1200008b0:	725f4d54 	udi4	s2,ra,a5,0x15
   1200008b4:	73696765 	0x73696765
   1200008b8:	54726574 	bnel	v1,s2,120019e8c <_gp+0xe7c>
   1200008bc:	6f6c434d 	ldr	t0,17229(k1)
   1200008c0:	6154656e 	daddi	s4,a6,25966
   1200008c4:	00656c62 	0x656c62
   1200008c8:	5f764a5f 	0x5f764a5f
   1200008cc:	69676552 	ldl	a3,25938(a7)
   1200008d0:	72657473 	0x72657473
   1200008d4:	73616c43 	0x73616c43
   1200008d8:	00736573 	tltu	v1,s3,0x195
   1200008dc:	73747570 	0x73747570
   1200008e0:	6f6f6600 	ldr	t3,26112(k1)
   1200008e4:	69727000 	ldl	s2,28672(a7)
   1200008e8:	0066746e 	0x66746e
   1200008ec:	6362696c 	daddi	v0,k1,26988
   1200008f0:	2e6f732e 	sltiu	t3,s3,29486
   1200008f4:	445f0036 	0x445f0036
   1200008f8:	4d414e59 	0x4d414e59
   1200008fc:	4c5f4349 	0x4c5f4349
   120000900:	494b4e49 	0x494b4e49
   120000904:	5f00474e 	bgtzl	t8,120012640 <_end+0x1540>
   120000908:	444c525f 	0x444c525f
   12000090c:	50414d5f 	beql	v0,at,120013e8c <_end+0x2d8c>
   120000910:	4f495f00 	c3	0x1495f00
   120000914:	6474735f 	daddiu	s4,v1,29535
   120000918:	755f6e69 	jalx	1257db9a4 <_gp+0x57c2994>
   12000091c:	00646573 	tltu	v1,a0,0x195
   120000920:	42494c47 	c0	0x494c47
   120000924:	2e325f43 	sltiu	s2,s1,24387
   120000928:	地址 0x0000000120000928 越界。


Disassembly of section .gnu.version:

000000012000092a <.gnu.version>:
   12000092a:	00010000 	sll	zero,at,0x0
   12000092e:	00010001 	movt	zero,zero,$fcc0
   120000932:	00010001 	movt	zero,zero,$fcc0
   120000936:	00010001 	movt	zero,zero,$fcc0
   12000093a:	00000001 	movf	zero,zero,$fcc0
   12000093e:	00020000 	sll	zero,v0,0x0
   120000942:	00020000 	sll	zero,v0,0x0
   120000946:	00000002 	srl	zero,zero,0x0

Disassembly of section .gnu.version_r:

0000000120000950 <.gnu.version_r>:
   120000950:	00010001 	movt	zero,zero,$fcc0
   120000954:	0000009c 	0x9c
   120000958:	00000010 	mfhi	zero
   12000095c:	00000000 	nop
   120000960:	0d696910 	jal	125a5a440 <_gp+0x5a41430>
   120000964:	00020000 	sll	zero,v0,0x0
   120000968:	000000d0 	0xd0
   12000096c:	00000000 	nop

Disassembly of section .init:

0000000120000970 <_init>:
   120000970:	67bdfff0 	daddiu	sp,sp,-16
   120000974:	ffbc0000 	sd	gp,0(sp)
   120000978:	3c1c0002 	lui	gp,0x2
   12000097c:	0399e02d 	daddu	gp,gp,t9
   120000980:	ffbf0008 	sd	ra,8(sp)
   120000984:	679c86a0 	daddiu	gp,gp,-31072
   120000988:	df8280a0 	ld	v0,-32608(gp)
   12000098c:	10400004 	beqz	v0,1200009a0 <_init+0x30>
   120000990:	00000000 	nop
   120000994:	df9980a0 	ld	t9,-32608(gp)
   120000998:	0320f809 	jalr	t9
   12000099c:	00000000 	nop
   1200009a0:	dfbf0008 	ld	ra,8(sp)
   1200009a4:	dfbc0000 	ld	gp,0(sp)
   1200009a8:	03e00008 	jr	ra
   1200009ac:	67bd0010 	daddiu	sp,sp,16

Disassembly of section .text:

00000001200009b0 <__start>:
   1200009b0:	03e00025 	move	zero,ra
   1200009b4:	04110001 	bal	1200009bc <__start+0xc>
   1200009b8:	00000000 	nop
   1200009bc:	0380c825 	move	t9,gp
   1200009c0:	3c1c0002 	lui	gp,0x2
   1200009c4:	279c8654 	addiu	gp,gp,-31148
   1200009c8:	039fe02d 	daddu	gp,gp,ra
   1200009cc:	0000f825 	move	ra,zero
   1200009d0:	df848020 	ld	a0,-32736(gp)
   1200009d4:	dfa50000 	ld	a1,0(sp)
   1200009d8:	67a60008 	daddiu	a2,sp,8
   1200009dc:	2401fff0 	li	at,-16
   1200009e0:	03a1e824 	and	sp,sp,at
   1200009e4:	df878028 	ld	a3,-32728(gp)
   1200009e8:	df888030 	ld	a4,-32720(gp)
   1200009ec:	00404825 	move	a5,v0
   1200009f0:	03a05025 	move	a6,sp
   1200009f4:	df998098 	ld	t9,-32616(gp)
   1200009f8:	0320f809 	jalr	t9
   1200009fc:	00000000 	nop

0000000120000a00 <hlt>:
   120000a00:	1000ffff 	b	120000a00 <hlt>
   120000a04:	00000000 	nop
	...

0000000120000a10 <deregister_tm_clones>:
   120000a10:	3c030002 	lui	v1,0x2
   120000a14:	0079182d 	daddu	v1,v1,t9
   120000a18:	64638600 	daddiu	v1,v1,-31232
   120000a1c:	dc648038 	ld	a0,-32712(v1)
   120000a20:	dc628040 	ld	v0,-32704(v1)
   120000a24:	64841018 	daddiu	a0,a0,4120
   120000a28:	64420007 	daddiu	v0,v0,7
   120000a2c:	0044102f 	dsubu	v0,v0,a0
   120000a30:	2c42000f 	sltiu	v0,v0,15
   120000a34:	10400003 	beqz	v0,120000a44 <deregister_tm_clones+0x34>
   120000a38:	00000000 	nop
   120000a3c:	03e00008 	jr	ra
   120000a40:	00000000 	nop
   120000a44:	dc7980b8 	ld	t9,-32584(v1)
   120000a48:	1320fffc 	beqz	t9,120000a3c <deregister_tm_clones+0x2c>
   120000a4c:	00000000 	nop
   120000a50:	03200008 	jr	t9
   120000a54:	00000000 	nop

0000000120000a58 <register_tm_clones>:
   120000a58:	3c060002 	lui	a2,0x2
   120000a5c:	00d9302d 	daddu	a2,a2,t9
   120000a60:	64c685b8 	daddiu	a2,a2,-31304
   120000a64:	dcc48038 	ld	a0,-32712(a2)
   120000a68:	dcc28040 	ld	v0,-32704(a2)
   120000a6c:	64841018 	daddiu	a0,a0,4120
   120000a70:	0044102f 	dsubu	v0,v0,a0
   120000a74:	000210fb 	dsra	v0,v0,0x3
   120000a78:	00021ffe 	dsrl32	v1,v0,0x1f
   120000a7c:	0062102d 	daddu	v0,v1,v0
   120000a80:	0002287b 	dsra	a1,v0,0x1
   120000a84:	14a00003 	bnez	a1,120000a94 <register_tm_clones+0x3c>
   120000a88:	00000000 	nop
   120000a8c:	03e00008 	jr	ra
   120000a90:	00000000 	nop
   120000a94:	dcd98088 	ld	t9,-32632(a2)
   120000a98:	1320fffc 	beqz	t9,120000a8c <register_tm_clones+0x34>
   120000a9c:	00000000 	nop
   120000aa0:	03200008 	jr	t9
   120000aa4:	00000000 	nop

0000000120000aa8 <__do_global_dtors_aux>:
   120000aa8:	67bdffe0 	daddiu	sp,sp,-32
   120000aac:	ffbc0010 	sd	gp,16(sp)
   120000ab0:	3c1c0002 	lui	gp,0x2
   120000ab4:	0399e02d 	daddu	gp,gp,t9
   120000ab8:	679c8568 	daddiu	gp,gp,-31384
   120000abc:	ffb00008 	sd	s0,8(sp)
   120000ac0:	df908038 	ld	s0,-32712(gp)
   120000ac4:	ffbf0018 	sd	ra,24(sp)
   120000ac8:	920210e0 	lbu	v0,4320(s0)
   120000acc:	14400007 	bnez	v0,120000aec <__do_global_dtors_aux+0x44>
   120000ad0:	00000000 	nop
   120000ad4:	df998048 	ld	t9,-32696(gp)
   120000ad8:	67390a10 	daddiu	t9,t9,2576
   120000adc:	0411ffcc 	bal	120000a10 <deregister_tm_clones>
   120000ae0:	00000000 	nop
   120000ae4:	24020001 	li	v0,1
   120000ae8:	a20210e0 	sb	v0,4320(s0)
   120000aec:	dfbf0018 	ld	ra,24(sp)
   120000af0:	dfbc0010 	ld	gp,16(sp)
   120000af4:	dfb00008 	ld	s0,8(sp)
   120000af8:	03e00008 	jr	ra
   120000afc:	67bd0020 	daddiu	sp,sp,32

0000000120000b00 <frame_dummy>:
   120000b00:	67bdfff0 	daddiu	sp,sp,-16
   120000b04:	ffbc0000 	sd	gp,0(sp)
   120000b08:	3c1c0002 	lui	gp,0x2
   120000b0c:	0399e02d 	daddu	gp,gp,t9
   120000b10:	679c8510 	daddiu	gp,gp,-31472
   120000b14:	df848038 	ld	a0,-32712(gp)
   120000b18:	ffbf0008 	sd	ra,8(sp)
   120000b1c:	dc820ff8 	ld	v0,4088(a0)
   120000b20:	10400006 	beqz	v0,120000b3c <frame_dummy+0x3c>
   120000b24:	00000000 	nop
   120000b28:	df998090 	ld	t9,-32624(gp)
   120000b2c:	13200003 	beqz	t9,120000b3c <frame_dummy+0x3c>
   120000b30:	00000000 	nop
   120000b34:	0320f809 	jalr	t9
   120000b38:	64840ff8 	daddiu	a0,a0,4088
   120000b3c:	df998048 	ld	t9,-32696(gp)
   120000b40:	dfbf0008 	ld	ra,8(sp)
   120000b44:	dfbc0000 	ld	gp,0(sp)
   120000b48:	67390a58 	daddiu	t9,t9,2648
   120000b4c:	1000ffc2 	b	120000a58 <register_tm_clones>
   120000b50:	67bd0010 	daddiu	sp,sp,16
	...

0000000120000b60 <main>:
   120000b60:	67bdffd0 	daddiu	sp,sp,-48
   120000b64:	ffbf0028 	sd	ra,40(sp)
   120000b68:	ffbe0020 	sd	s8,32(sp)
   120000b6c:	ffbc0018 	sd	gp,24(sp)
   120000b70:	03a0f025 	move	s8,sp
   120000b74:	3c1c0002 	lui	gp,0x2
   120000b78:	0399e02d 	daddu	gp,gp,t9
   120000b7c:	679c84b0 	daddiu	gp,gp,-31568
   120000b80:	df828048 	ld	v0,-32696(gp)
   120000b84:	64440d70 	daddiu	a0,v0,3440
   120000b88:	df8280a8 	ld	v0,-32600(gp)
   120000b8c:	0040c825 	move	t9,v0
   120000b90:	0320f809 	jalr	t9
   120000b94:	00000000 	nop
   120000b98:	df828050 	ld	v0,-32688(gp)
   120000b9c:	0040c825 	move	t9,v0
   120000ba0:	04110013 	bal	120000bf0 <foo>
   120000ba4:	00000000 	nop
   120000ba8:	afc20000 	sw	v0,0(s8)
   120000bac:	8fc20000 	lw	v0,0(s8)
   120000bb0:	df838048 	ld	v1,-32696(gp)
   120000bb4:	64640d80 	daddiu	a0,v1,3456
   120000bb8:	00402825 	move	a1,v0
   120000bbc:	df8280b0 	ld	v0,-32592(gp)
   120000bc0:	0040c825 	move	t9,v0
   120000bc4:	0320f809 	jalr	t9
   120000bc8:	00000000 	nop
   120000bcc:	00001025 	move	v0,zero
   120000bd0:	03c0e825 	move	sp,s8
   120000bd4:	dfbf0028 	ld	ra,40(sp)
   120000bd8:	dfbe0020 	ld	s8,32(sp)
   120000bdc:	dfbc0018 	ld	gp,24(sp)
   120000be0:	67bd0030 	daddiu	sp,sp,48
   120000be4:	03e00008 	jr	ra
   120000be8:	00000000 	nop
   120000bec:	00000000 	nop

0000000120000bf0 <foo>:
   120000bf0:	67bdfff0 	daddiu	sp,sp,-16
   120000bf4:	ffbe0008 	sd	s8,8(sp)
   120000bf8:	03a0f025 	move	s8,sp
   120000bfc:	00001025 	move	v0,zero
   120000c00:	03c0e825 	move	sp,s8
   120000c04:	dfbe0008 	ld	s8,8(sp)
   120000c08:	67bd0010 	daddiu	sp,sp,16
   120000c0c:	03e00008 	jr	ra
   120000c10:	00000000 	nop

0000000120000c14 <fun>:
   120000c14:	67bdfff0 	daddiu	sp,sp,-16
   120000c18:	ffbe0008 	sd	s8,8(sp)
   120000c1c:	03a0f025 	move	s8,sp
   120000c20:	00001025 	move	v0,zero
   120000c24:	03c0e825 	move	sp,s8
   120000c28:	dfbe0008 	ld	s8,8(sp)
   120000c2c:	67bd0010 	daddiu	sp,sp,16
   120000c30:	03e00008 	jr	ra
   120000c34:	00000000 	nop
	...

0000000120000c40 <__libc_csu_init>:
   120000c40:	ffa0ffc0 	sd	zero,-64(sp)
   120000c44:	67bdffc0 	daddiu	sp,sp,-64
   120000c48:	ffbc0030 	sd	gp,48(sp)
   120000c4c:	3c1c0002 	lui	gp,0x2
   120000c50:	0399e02d 	daddu	gp,gp,t9
   120000c54:	679c83d0 	daddiu	gp,gp,-31792
   120000c58:	ffb20010 	sd	s2,16(sp)
   120000c5c:	ffb10008 	sd	s1,8(sp)
   120000c60:	df928058 	ld	s2,-32680(gp)
   120000c64:	df918060 	ld	s1,-32672(gp)
   120000c68:	df998068 	ld	t9,-32664(gp)
   120000c6c:	0251902f 	dsubu	s2,s2,s1
   120000c70:	ffb50028 	sd	s5,40(sp)
   120000c74:	ffb40020 	sd	s4,32(sp)
   120000c78:	ffb30018 	sd	s3,24(sp)
   120000c7c:	ffbf0038 	sd	ra,56(sp)
   120000c80:	ffb00000 	sd	s0,0(sp)
   120000c84:	001290fb 	dsra	s2,s2,0x3
   120000c88:	00809825 	move	s3,a0
   120000c8c:	00a0a025 	move	s4,a1
   120000c90:	0411ff37 	bal	120000970 <_init>
   120000c94:	00c0a825 	move	s5,a2
   120000c98:	12400009 	beqz	s2,120000cc0 <__libc_csu_init+0x80>
   120000c9c:	00008025 	move	s0,zero
   120000ca0:	de390000 	ld	t9,0(s1)
   120000ca4:	02602025 	move	a0,s3
   120000ca8:	02802825 	move	a1,s4
   120000cac:	02a03025 	move	a2,s5
   120000cb0:	0320f809 	jalr	t9
   120000cb4:	66100001 	daddiu	s0,s0,1
   120000cb8:	1612fff9 	bne	s0,s2,120000ca0 <__libc_csu_init+0x60>
   120000cbc:	66310008 	daddiu	s1,s1,8
   120000cc0:	dfbf0038 	ld	ra,56(sp)
   120000cc4:	dfbc0030 	ld	gp,48(sp)
   120000cc8:	dfb50028 	ld	s5,40(sp)
   120000ccc:	dfb40020 	ld	s4,32(sp)
   120000cd0:	dfb30018 	ld	s3,24(sp)
   120000cd4:	dfb20010 	ld	s2,16(sp)
   120000cd8:	dfb10008 	ld	s1,8(sp)
   120000cdc:	dfb00000 	ld	s0,0(sp)
   120000ce0:	03e00008 	jr	ra
   120000ce4:	67bd0040 	daddiu	sp,sp,64

0000000120000ce8 <__libc_csu_fini>:
   120000ce8:	03e00008 	jr	ra
   120000cec:	00000000 	nop

Disassembly of section .MIPS.stubs:

0000000120000cf0 <_MIPS_STUBS_>:
   120000cf0:	df998010 	ld	t9,-32752(gp)
   120000cf4:	03e07825 	move	t3,ra
   120000cf8:	0320f809 	jalr	t9
   120000cfc:	6418000e 	daddiu	t8,zero,14
   120000d00:	df998010 	ld	t9,-32752(gp)
   120000d04:	03e07825 	move	t3,ra
   120000d08:	0320f809 	jalr	t9
   120000d0c:	6418000d 	daddiu	t8,zero,13
   120000d10:	df998010 	ld	t9,-32752(gp)
   120000d14:	03e07825 	move	t3,ra
   120000d18:	0320f809 	jalr	t9
   120000d1c:	6418000b 	daddiu	t8,zero,11
	...

Disassembly of section .fini:

0000000120000d30 <_fini>:
   120000d30:	67bdfff0 	daddiu	sp,sp,-16
   120000d34:	ffbc0000 	sd	gp,0(sp)
   120000d38:	3c1c0002 	lui	gp,0x2
   120000d3c:	0399e02d 	daddu	gp,gp,t9
   120000d40:	ffbf0008 	sd	ra,8(sp)
   120000d44:	679c82e0 	daddiu	gp,gp,-32032
   120000d48:	dfbf0008 	ld	ra,8(sp)
   120000d4c:	dfbc0000 	ld	gp,0(sp)
   120000d50:	03e00008 	jr	ra
   120000d54:	67bd0010 	daddiu	sp,sp,16

Disassembly of section .rodata:

0000000120000d60 <_IO_stdin_used>:
   120000d60:	00020001 	0x20001
	...
   120000d70:	6c6c6568 	ldr	t0,25960(v1)
   120000d74:	6f77206f 	ldr	s7,8303(k1)
   120000d78:	00646c72 	tlt	v1,a0,0x1b1
   120000d7c:	00000000 	nop
   120000d80:	000a6425 	0xa6425
	...

Disassembly of section .interp:

0000000120000d90 <.interp>:
   120000d90:	62696c2f 	daddi	a5,s3,27695
   120000d94:	6c2f3436 	ldr	t3,13366(at)
   120000d98:	6f732e64 	ldr	s3,11876(k1)
   120000d9c:	地址 0x0000000120000d9c 越界。


Disassembly of section .eh_frame_hdr:

0000000120000da0 <__GNU_EH_FRAME_HDR>:
   120000da0:	3b031b01 	xori	v1,t8,0x1b01
   120000da4:	0000001c 	dmult	zero,zero
   120000da8:	00000002 	srl	zero,zero,0x0
   120000dac:	fffffea0 	sd	ra,-352(ra)
   120000db0:	00000038 	dsll	zero,zero,0x0
   120000db4:	ffffff48 	sd	ra,-184(ra)
   120000db8:	00000078 	dsll	zero,zero,0x1

Disassembly of section .eh_frame:

0000000120000dc0 <__FRAME_END__-0x78>:
   120000dc0:	00000014 	dsllv	zero,zero,zero
   120000dc4:	00000000 	nop
   120000dc8:	00527a01 	0x527a01
   120000dcc:	011f7c01 	0x11f7c01
   120000dd0:	001d0d0c 	syscall	0x7434
   120000dd4:	00000000 	nop
   120000dd8:	0000003c 	dsll32	zero,zero,0x0
   120000ddc:	0000001c 	dmult	zero,zero
   120000de0:	20000c40 	addi	zero,zero,3136
   120000de4:	00000001 	movf	zero,zero,$fcc0
   120000de8:	000000a8 	0xa8
   120000dec:	00000000 	nop
   120000df0:	400e4800 	mfc0	t2,c0_count
   120000df4:	54049c44 	bnel	zero,a0,11ffe7f08 <_DYNAMIC-0x18570>
   120000df8:	0e910c92 	jal	12a443248 <_gp+0xa42a238>
   120000dfc:	94069564 	lhu	a2,-27292(zero)
   120000e00:	9f0a9308 	lwu	a6,-27896(t8)
   120000e04:	02109002 	0x2109002
   120000e08:	d0000e64 	lld	zero,3684(zero)
   120000e0c:	d4d3d2d1 	ldc1	$f19,-11567(a2)
   120000e10:	00dfdcd5 	0xdfdcd5
   120000e14:	00000000 	nop
   120000e18:	0000001c 	dmult	zero,zero
   120000e1c:	0000005c 	0x5c
   120000e20:	20000ce8 	addi	zero,zero,3304
   120000e24:	00000001 	movf	zero,zero,$fcc0
   120000e28:	00000008 	jr	zero
   120000e2c:	00000000 	nop
	...

0000000120000e38 <__FRAME_END__>:
   120000e38:	00000000 	nop

Disassembly of section .note.ABI-tag:

0000000120000e3c <.note.ABI-tag>:
   120000e3c:	00000004 	sllv	zero,zero,zero
   120000e40:	00000010 	mfhi	zero
   120000e44:	00000001 	movf	zero,zero,$fcc0
   120000e48:	00554e47 	0x554e47
   120000e4c:	00000000 	nop
   120000e50:	00000002 	srl	zero,zero,0x0
   120000e54:	00000006 	srlv	zero,zero,zero
   120000e58:	00000020 	add	zero,zero,zero

Disassembly of section .init_array:

0000000120010fe8 <__frame_dummy_init_array_entry>:
   120010fe8:	20000b00 	addi	zero,zero,2816
   120010fec:	00000001 	movf	zero,zero,$fcc0

Disassembly of section .fini_array:

0000000120010ff0 <__do_global_dtors_aux_fini_array_entry>:
   120010ff0:	20000aa8 	addi	zero,zero,2728
   120010ff4:	00000001 	movf	zero,zero,$fcc0

Disassembly of section .jcr:

0000000120010ff8 <__JCR_END__>:
	...

Disassembly of section .data:

0000000120011000 <__data_start>:
	...

Disassembly of section .rld_map:

0000000120011010 <__RLD_MAP>:
	...

Disassembly of section .got:

0000000120011020 <_GLOBAL_OFFSET_TABLE_>:
	...
   12001102c:	80000000 	lb	zero,0(zero)
   120011030:	20000b60 	addi	zero,zero,2912
   120011034:	00000001 	movf	zero,zero,$fcc0
   120011038:	20000c40 	addi	zero,zero,3136
   12001103c:	00000001 	movf	zero,zero,$fcc0
   120011040:	20000ce8 	addi	zero,zero,3304
   120011044:	00000001 	movf	zero,zero,$fcc0
   120011048:	20010000 	addi	at,zero,0
   12001104c:	00000001 	movf	zero,zero,$fcc0
   120011050:	20011018 	addi	at,zero,4120
   120011054:	00000001 	movf	zero,zero,$fcc0
   120011058:	20000000 	addi	zero,zero,0
   12001105c:	00000001 	movf	zero,zero,$fcc0
   120011060:	20000bf0 	addi	zero,zero,3056
   120011064:	00000001 	movf	zero,zero,$fcc0
   120011068:	20010ff0 	addi	at,zero,4080
   12001106c:	00000001 	movf	zero,zero,$fcc0
   120011070:	20010fe8 	addi	at,zero,4072
   120011074:	00000001 	movf	zero,zero,$fcc0
   120011078:	20000970 	addi	zero,zero,2416
   12001107c:	00000001 	movf	zero,zero,$fcc0
	...
   1200110a8:	20000d10 	addi	zero,zero,3344
   1200110ac:	00000001 	movf	zero,zero,$fcc0
	...
   1200110b8:	20000d00 	addi	zero,zero,3328
   1200110bc:	00000001 	movf	zero,zero,$fcc0
   1200110c0:	20000cf0 	addi	zero,zero,3312
   1200110c4:	00000001 	movf	zero,zero,$fcc0
	...

Disassembly of section .sdata:

00000001200110d0 <__dso_handle>:
	...

Disassembly of section .bss:

00000001200110e0 <completed.5796>:
	...

00000001200110f0 <a>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347 	xori	v1,s2,0x4347
   4:	4e472820 	madd.s	$f0,$f18,$f5,$f7
   8:	34202955 	ori	zero,at,0x2955
   c:	352e382e 	ori	t2,a5,0x382e
  10:	31303220 	andi	s0,a5,0x3220
  14:	32363035 	andi	s6,s1,0x3035
  18:	4c282033 	0x4c282033
  1c:	676e6f6f 	daddiu	t2,k1,28527
  20:	206e6f73 	addi	t2,v1,28531
  24:	2e382e34 	sltiu	t8,s1,11828
  28:	39332d35 	xori	s3,a5,0x2d35
  2c:	地址 0x000000000000002c 越界。


Disassembly of section .pdr:

0000000000000000 <.pdr>:
   0:	20000b60 	addi	zero,zero,2912
   4:	d0000000 	lld	zero,0(zero)
   8:	fffffff8 	sd	ra,-8(ra)
	...
  14:	00000030 	tge	zero,zero
  18:	0000001e 	ddiv	zero,zero,zero
  1c:	0000001f 	ddivu	zero,zero,zero
  20:	20000bf0 	addi	zero,zero,3056
  24:	40000000 	mfc0	zero,c0_index
  28:	fffffff8 	sd	ra,-8(ra)
	...
  34:	00000010 	mfhi	zero
  38:	0000001e 	ddiv	zero,zero,zero
  3c:	0000001f 	ddivu	zero,zero,zero
  40:	20000c14 	addi	zero,zero,3092
  44:	40000000 	mfc0	zero,c0_index
  48:	fffffff8 	sd	ra,-8(ra)
	...
  54:	00000010 	mfhi	zero
  58:	0000001e 	ddiv	zero,zero,zero
  5c:	0000001f 	ddivu	zero,zero,zero
  60:	20000c40 	addi	zero,zero,3136
  64:	903f0000 	lbu	ra,0(at)
  68:	fffffff8 	sd	ra,-8(ra)
	...
  74:	00000040 	ssnop
  78:	0000001d 	dmultu	zero,zero
  7c:	0000001f 	ddivu	zero,zero,zero
  80:	20000ce8 	addi	zero,zero,3304
	...
  98:	0000001d 	dmultu	zero,zero
  9c:	0000001f 	ddivu	zero,zero,zero

Disassembly of section .gnu.attributes:

0000000000000000 <.gnu.attributes>:
   0:	00000f41 	0xf41
   4:	756e6700 	jalx	5b99c00 <_DYNAMIC-0x11a466878>
   8:	00070100 	sll	zero,a3,0x4
   c:	01040000 	0x1040000
