
./main：     文件格式 elf64-tradlittlemips


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
   120000390:	f2000014 	scd	zero,20(s0)
	...
   1200003a8:	20019010 	addi	at,zero,-28656
   1200003ac:	00000001 	movf	zero,zero,$fcc0
   1200003b0:	00002801 	movf	a1,zero,$fcc0
   1200003b4:	00000000 	nop
   1200003b8:	b23f0070 	sdl	ra,112(s1)
	...
   1200003d0:	20019010 	addi	at,zero,-28656
   1200003d4:	00000001 	movf	zero,zero,$fcc0
   1200003d8:	00002801 	movf	a1,zero,$fcc0
	...
   1200003f8:	20019010 	addi	at,zero,-28656
   1200003fc:	00000001 	movf	zero,zero,$fcc0
   120000400:	00002801 	movf	a1,zero,$fcc0
   120000404:	00000000 	nop
   120000408:	b0000000 	sdl	zero,0(zero)
	...
   120000420:	20019010 	addi	at,zero,-28656
   120000424:	00000001 	movf	zero,zero,$fcc0

Disassembly of section .note.gnu.build-id:

0000000120000428 <.note.gnu.build-id>:
   120000428:	00000004 	sllv	zero,zero,zero
   12000042c:	00000014 	dsllv	zero,zero,zero
   120000430:	00000003 	sra	zero,zero,0x0
   120000434:	00554e47 	0x554e47
   120000438:	35a97e51 	ori	a5,t1,0x7e51
   12000043c:	f06c0208 	scd	t0,520(v1)
   120000440:	20ca4cf1 	addi	a6,a2,19697
   120000444:	057e30a1 	0x57e30a1
   120000448:	bfc5fb39 	cache	0x5,-1223(s8)

Disassembly of section .dynamic:

0000000120000450 <_DYNAMIC>:
   120000450:	00000001 	movf	zero,zero,$fcc0
   120000454:	00000000 	nop
   120000458:	00000092 	0x92
   12000045c:	00000000 	nop
   120000460:	0000000c 	syscall
   120000464:	00000000 	nop
   120000468:	20000900 	addi	zero,zero,2304
   12000046c:	00000001 	movf	zero,zero,$fcc0
   120000470:	0000000d 	break
   120000474:	00000000 	nop
   120000478:	20000c10 	addi	zero,zero,3088
   12000047c:	00000001 	movf	zero,zero,$fcc0
   120000480:	00000019 	multu	zero,zero
   120000484:	00000000 	nop
   120000488:	20010fe8 	addi	at,zero,4072
   12000048c:	00000001 	movf	zero,zero,$fcc0
   120000490:	0000001b 	divu	zero,zero,zero
   120000494:	00000000 	nop
   120000498:	00000008 	jr	zero
   12000049c:	00000000 	nop
   1200004a0:	0000001a 	div	zero,zero,zero
   1200004a4:	00000000 	nop
   1200004a8:	20010ff0 	addi	at,zero,4080
   1200004ac:	00000001 	movf	zero,zero,$fcc0
   1200004b0:	0000001c 	dmult	zero,zero
   1200004b4:	00000000 	nop
   1200004b8:	00000008 	jr	zero
   1200004bc:	00000000 	nop
   1200004c0:	00000004 	sllv	zero,zero,zero
   1200004c4:	00000000 	nop
   1200004c8:	20000650 	addi	zero,zero,1616
   1200004cc:	00000001 	movf	zero,zero,$fcc0
   1200004d0:	00000005 	lsa	zero,zero,zero,0x1
   1200004d4:	00000000 	nop
   1200004d8:	200007f0 	addi	zero,zero,2032
   1200004dc:	00000001 	movf	zero,zero,$fcc0
   1200004e0:	00000006 	srlv	zero,zero,zero
   1200004e4:	00000000 	nop
   1200004e8:	200006a0 	addi	zero,zero,1696
   1200004ec:	00000001 	movf	zero,zero,$fcc0
   1200004f0:	0000000a 	movz	zero,zero,zero
   1200004f4:	00000000 	nop
   1200004f8:	000000d0 	0xd0
   1200004fc:	00000000 	nop
   120000500:	0000000b 	movn	zero,zero,zero
   120000504:	00000000 	nop
   120000508:	00000018 	mult	zero,zero
   12000050c:	00000000 	nop
   120000510:	70000016 	udi6	zero,zero,zero,0x0
   120000514:	00000000 	nop
   120000518:	20011010 	addi	at,zero,4112
   12000051c:	00000001 	movf	zero,zero,$fcc0
   120000520:	70000035 	0x70000035
   120000524:	00000000 	nop
   120000528:	00010af0 	tge	zero,at,0x2b
   12000052c:	00000000 	nop
   120000530:	00000015 	dlsa	zero,zero,zero,0x1
	...
   120000540:	00000003 	sra	zero,zero,0x0
   120000544:	00000000 	nop
   120000548:	20011020 	addi	at,zero,4128
   12000054c:	00000001 	movf	zero,zero,$fcc0
   120000550:	70000001 	maddu	zero,zero
   120000554:	00000000 	nop
   120000558:	00000001 	movf	zero,zero,$fcc0
   12000055c:	00000000 	nop
   120000560:	70000005 	msubu	zero,zero
   120000564:	00000000 	nop
   120000568:	00000002 	srl	zero,zero,0x0
   12000056c:	00000000 	nop
   120000570:	70000006 	0x70000006
   120000574:	00000000 	nop
   120000578:	20000000 	addi	zero,zero,0
   12000057c:	00000001 	movf	zero,zero,$fcc0
   120000580:	7000000a 	0x7000000a
   120000584:	00000000 	nop
   120000588:	0000000e 	0xe
   12000058c:	00000000 	nop
   120000590:	70000011 	udi1	zero,zero,zero,0x0
   120000594:	00000000 	nop
   120000598:	0000000e 	0xe
   12000059c:	00000000 	nop
   1200005a0:	70000012 	udi2	zero,zero,zero,0x0
   1200005a4:	00000000 	nop
   1200005a8:	0000001e 	ddiv	zero,zero,zero
   1200005ac:	00000000 	nop
   1200005b0:	70000013 	udi3	zero,zero,zero,0x0
   1200005b4:	00000000 	nop
   1200005b8:	00000008 	jr	zero
   1200005bc:	00000000 	nop
   1200005c0:	6ffffffe 	ldr	ra,-2(ra)
   1200005c4:	00000000 	nop
   1200005c8:	200008e0 	addi	zero,zero,2272
   1200005cc:	00000001 	movf	zero,zero,$fcc0
   1200005d0:	6fffffff 	ldr	ra,-1(ra)
   1200005d4:	00000000 	nop
   1200005d8:	00000001 	movf	zero,zero,$fcc0
   1200005dc:	00000000 	nop
   1200005e0:	6ffffff0 	ldr	ra,-16(ra)
   1200005e4:	00000000 	nop
   1200005e8:	200008c0 	addi	zero,zero,2240
   1200005ec:	00000001 	movf	zero,zero,$fcc0
	...

Disassembly of section .hash:

0000000120000650 <.hash>:
   120000650:	00000003 	sra	zero,zero,0x0
   120000654:	0000000e 	0xe
   120000658:	00000007 	srav	zero,zero,zero
   12000065c:	00000008 	jr	zero
   120000660:	00000004 	sllv	zero,zero,zero
	...
   120000674:	00000003 	sra	zero,zero,0x0
   120000678:	0000000a 	movz	zero,zero,zero
   12000067c:	00000005 	lsa	zero,zero,zero,0x1
   120000680:	00000009 	jalr	zero,zero
   120000684:	00000006 	srlv	zero,zero,zero
   120000688:	0000000b 	movn	zero,zero,zero
   12000068c:	0000000d 	break
   120000690:	0000000c 	syscall
   120000694:	00000001 	movf	zero,zero,$fcc0
   120000698:	00000002 	srl	zero,zero,0x0

Disassembly of section .dynsym:

00000001200006a0 <.dynsym>:
	...
   1200006b8:	00000011 	mthi	zero
   1200006bc:	000b0012 	0xb0012
   1200006c0:	20000bd8 	addi	zero,zero,3032
   1200006c4:	00000001 	movf	zero,zero,$fcc0
   1200006c8:	00000008 	jr	zero
   1200006cc:	00000000 	nop
   1200006d0:	0000009c 	0x9c
   1200006d4:	fff10013 	sd	s1,19(ra)
   1200006d8:	00000001 	movf	zero,zero,$fcc0
	...
   1200006e8:	000000b7 	0xb7
   1200006ec:	000e0011 	0xe0011
   1200006f0:	20000c38 	addi	zero,zero,3128
   1200006f4:	00000001 	movf	zero,zero,$fcc0
   1200006f8:	00000004 	sllv	zero,zero,zero
   1200006fc:	00000000 	nop
   120000700:	000000ad 	0xad
   120000704:	00170011 	0x170011
   120000708:	20011010 	addi	at,zero,4112
   12000070c:	00000001 	movf	zero,zero,$fcc0
	...
   120000718:	00000001 	movf	zero,zero,$fcc0
   12000071c:	000b0012 	0xb0012
   120000720:	20000b30 	addi	zero,zero,2864
   120000724:	00000001 	movf	zero,zero,$fcc0
   120000728:	000000a8 	0xa8
   12000072c:	00000000 	nop
   120000730:	0000002e 	dneg	zero,zero
   120000734:	000b0012 	0xb0012
   120000738:	20000af0 	addi	zero,zero,2800
   12000073c:	00000001 	movf	zero,zero,$fcc0
   120000740:	0000003c 	dsll32	zero,zero,0x0
   120000744:	00000000 	nop
   120000748:	0000000b 	movn	zero,zero,zero
   12000074c:	000a0012 	0xa0012
   120000750:	20000900 	addi	zero,zero,2304
   120000754:	00000001 	movf	zero,zero,$fcc0
	...
   120000760:	0000005e 	0x5e
   120000764:	00000020 	add	zero,zero,zero
	...
   120000778:	00000078 	dsll	zero,zero,0x1
   12000077c:	00000020 	add	zero,zero,zero
	...
   120000790:	00000021 	move	zero,zero
   120000794:	00000012 	mflo	zero
   120000798:	20000bf0 	addi	zero,zero,3056
   12000079c:	00000001 	movf	zero,zero,$fcc0
	...
   1200007a8:	00000033 	tltu	zero,zero
   1200007ac:	00000022 	neg	zero,zero
	...
   1200007c0:	0000008c 	syscall	0x2
   1200007c4:	00000012 	mflo	zero
   1200007c8:	20000be0 	addi	zero,zero,3040
   1200007cc:	00000001 	movf	zero,zero,$fcc0
	...
   1200007d8:	00000042 	srl	zero,zero,0x1
   1200007dc:	00000020 	add	zero,zero,zero
	...

Disassembly of section .dynstr:

00000001200007f0 <.dynstr>:
   1200007f0:	6c5f5f00 	ldr	ra,24320(v0)
   1200007f4:	5f636269 	0x5f636269
   1200007f8:	5f757363 	0x5f757363
   1200007fc:	74696e69 	jalx	121a5b9a4 <_gp+0x1a42994>
   120000800:	6c5f5f00 	ldr	ra,24320(v0)
   120000804:	5f636269 	0x5f636269
   120000808:	5f757363 	0x5f757363
   12000080c:	696e6966 	ldl	t2,26982(a7)
   120000810:	6c5f5f00 	ldr	ra,24320(v0)
   120000814:	5f636269 	0x5f636269
   120000818:	72617473 	0x72617473
   12000081c:	616d5f74 	daddi	t1,a7,24436
   120000820:	5f006e69 	bgtzl	t8,12001c1c8 <_gp+0x31b8>
   120000824:	6f6d675f 	ldr	t1,26463(k1)
   120000828:	74735f6e 	jalx	121cd7db8 <_gp+0x1cbeda8>
   12000082c:	5f747261 	0x5f747261
   120000830:	495f005f 	0x495f005f
   120000834:	645f4d54 	daddiu	ra,v0,19796
   120000838:	67657265 	daddiu	a1,k1,29285
   12000083c:	65747369 	daddiu	s4,a7,29545
   120000840:	434d5472 	c0	0x14d5472
   120000844:	656e6f6c 	daddiu	t2,a7,28524
   120000848:	6c626154 	ldr	v0,24916(v1)
   12000084c:	495f0065 	0x495f0065
   120000850:	725f4d54 	udi4	s2,ra,a5,0x15
   120000854:	73696765 	0x73696765
   120000858:	54726574 	bnel	v1,s2,120019e2c <_gp+0xe1c>
   12000085c:	6f6c434d 	ldr	t0,17229(k1)
   120000860:	6154656e 	daddi	s4,a6,25966
   120000864:	00656c62 	0x656c62
   120000868:	5f764a5f 	0x5f764a5f
   12000086c:	69676552 	ldl	a3,25938(a7)
   120000870:	72657473 	0x72657473
   120000874:	73616c43 	0x73616c43
   120000878:	00736573 	tltu	v1,s3,0x195
   12000087c:	65656c73 	daddiu	a1,a7,27763
   120000880:	696c0070 	ldl	t0,112(a7)
   120000884:	732e6362 	0x732e6362
   120000888:	00362e6f 	0x362e6f
   12000088c:	4e59445f 	c3	0x59445f
   120000890:	43494d41 	c0	0x1494d41
   120000894:	4e494c5f 	c3	0x494c5f
   120000898:	474e494b 	bz.w	$w14,120012dc8 <_end+0x1ce8>
   12000089c:	525f5f00 	beql	s2,ra,1200184a0 <_end+0x73c0>
   1200008a0:	4d5f444c 	0x4d5f444c
   1200008a4:	5f005041 	bgtzl	t8,1200149ac <_end+0x38cc>
   1200008a8:	735f4f49 	0x735f4f49
   1200008ac:	6e696474 	ldr	a5,25716(s3)
   1200008b0:	6573755f 	daddiu	s3,a7,30047
   1200008b4:	4c470064 	0x4c470064
   1200008b8:	5f434249 	0x5f434249
   1200008bc:	00302e32 	tlt	at,s0,0xb8

Disassembly of section .gnu.version:

00000001200008c0 <.gnu.version>:
   1200008c0:	00010000 	sll	zero,at,0x0
   1200008c4:	00010001 	movt	zero,zero,$fcc0
   1200008c8:	00010001 	movt	zero,zero,$fcc0
   1200008cc:	00010001 	movt	zero,zero,$fcc0
   1200008d0:	00000000 	nop
   1200008d4:	00000002 	srl	zero,zero,0x0
   1200008d8:	00000002 	srl	zero,zero,0x0

Disassembly of section .gnu.version_r:

00000001200008e0 <.gnu.version_r>:
   1200008e0:	00010001 	movt	zero,zero,$fcc0
   1200008e4:	00000092 	0x92
   1200008e8:	00000010 	mfhi	zero
   1200008ec:	00000000 	nop
   1200008f0:	0d696910 	jal	125a5a440 <_gp+0x5a41430>
   1200008f4:	00020000 	sll	zero,v0,0x0
   1200008f8:	000000c6 	0xc6
   1200008fc:	00000000 	nop

Disassembly of section .init:

0000000120000900 <_init>:
   120000900:	67bdfff0 	daddiu	sp,sp,-16
   120000904:	ffbc0000 	sd	gp,0(sp)
   120000908:	3c1c0002 	lui	gp,0x2
   12000090c:	0399e02d 	daddu	gp,gp,t9
   120000910:	ffbf0008 	sd	ra,8(sp)
   120000914:	679c8710 	daddiu	gp,gp,-30960
   120000918:	df828098 	ld	v0,-32616(gp)
   12000091c:	10400004 	beqz	v0,120000930 <_init+0x30>
   120000920:	00000000 	nop
   120000924:	df998098 	ld	t9,-32616(gp)
   120000928:	0320f809 	jalr	t9
   12000092c:	00000000 	nop
   120000930:	dfbf0008 	ld	ra,8(sp)
   120000934:	dfbc0000 	ld	gp,0(sp)
   120000938:	03e00008 	jr	ra
   12000093c:	67bd0010 	daddiu	sp,sp,16

Disassembly of section .text:

0000000120000940 <__start>:
   120000940:	03e00025 	move	zero,ra
   120000944:	04110001 	bal	12000094c <__start+0xc>
   120000948:	00000000 	nop
   12000094c:	0380c825 	move	t9,gp
   120000950:	3c1c0002 	lui	gp,0x2
   120000954:	279c86c4 	addiu	gp,gp,-31036
   120000958:	039fe02d 	daddu	gp,gp,ra
   12000095c:	0000f825 	move	ra,zero
   120000960:	df848020 	ld	a0,-32736(gp)
   120000964:	dfa50000 	ld	a1,0(sp)
   120000968:	67a60008 	daddiu	a2,sp,8
   12000096c:	2401fff0 	li	at,-16
   120000970:	03a1e824 	and	sp,sp,at
   120000974:	df878028 	ld	a3,-32728(gp)
   120000978:	df888030 	ld	a4,-32720(gp)
   12000097c:	00404825 	move	a5,v0
   120000980:	03a05025 	move	a6,sp
   120000984:	df998090 	ld	t9,-32624(gp)
   120000988:	0320f809 	jalr	t9
   12000098c:	00000000 	nop

0000000120000990 <hlt>:
   120000990:	1000ffff 	b	120000990 <hlt>
   120000994:	00000000 	nop
	...

00000001200009a0 <deregister_tm_clones>:
   1200009a0:	3c030002 	lui	v1,0x2
   1200009a4:	0079182d 	daddu	v1,v1,t9
   1200009a8:	64638670 	daddiu	v1,v1,-31120
   1200009ac:	dc648038 	ld	a0,-32712(v1)
   1200009b0:	dc628040 	ld	v0,-32704(v1)
   1200009b4:	64841018 	daddiu	a0,a0,4120
   1200009b8:	64420007 	daddiu	v0,v0,7
   1200009bc:	0044102f 	dsubu	v0,v0,a0
   1200009c0:	2c42000f 	sltiu	v0,v0,15
   1200009c4:	10400003 	beqz	v0,1200009d4 <deregister_tm_clones+0x34>
   1200009c8:	00000000 	nop
   1200009cc:	03e00008 	jr	ra
   1200009d0:	00000000 	nop
   1200009d4:	dc7980a8 	ld	t9,-32600(v1)
   1200009d8:	1320fffc 	beqz	t9,1200009cc <deregister_tm_clones+0x2c>
   1200009dc:	00000000 	nop
   1200009e0:	03200008 	jr	t9
   1200009e4:	00000000 	nop

00000001200009e8 <register_tm_clones>:
   1200009e8:	3c060002 	lui	a2,0x2
   1200009ec:	00d9302d 	daddu	a2,a2,t9
   1200009f0:	64c68628 	daddiu	a2,a2,-31192
   1200009f4:	dcc48038 	ld	a0,-32712(a2)
   1200009f8:	dcc28040 	ld	v0,-32704(a2)
   1200009fc:	64841018 	daddiu	a0,a0,4120
   120000a00:	0044102f 	dsubu	v0,v0,a0
   120000a04:	000210fb 	dsra	v0,v0,0x3
   120000a08:	00021ffe 	dsrl32	v1,v0,0x1f
   120000a0c:	0062102d 	daddu	v0,v1,v0
   120000a10:	0002287b 	dsra	a1,v0,0x1
   120000a14:	14a00003 	bnez	a1,120000a24 <register_tm_clones+0x3c>
   120000a18:	00000000 	nop
   120000a1c:	03e00008 	jr	ra
   120000a20:	00000000 	nop
   120000a24:	dcd98080 	ld	t9,-32640(a2)
   120000a28:	1320fffc 	beqz	t9,120000a1c <register_tm_clones+0x34>
   120000a2c:	00000000 	nop
   120000a30:	03200008 	jr	t9
   120000a34:	00000000 	nop

0000000120000a38 <__do_global_dtors_aux>:
   120000a38:	67bdffe0 	daddiu	sp,sp,-32
   120000a3c:	ffbc0010 	sd	gp,16(sp)
   120000a40:	3c1c0002 	lui	gp,0x2
   120000a44:	0399e02d 	daddu	gp,gp,t9
   120000a48:	679c85d8 	daddiu	gp,gp,-31272
   120000a4c:	ffb00008 	sd	s0,8(sp)
   120000a50:	df908038 	ld	s0,-32712(gp)
   120000a54:	ffbf0018 	sd	ra,24(sp)
   120000a58:	920210d0 	lbu	v0,4304(s0)
   120000a5c:	14400007 	bnez	v0,120000a7c <__do_global_dtors_aux+0x44>
   120000a60:	00000000 	nop
   120000a64:	df998048 	ld	t9,-32696(gp)
   120000a68:	673909a0 	daddiu	t9,t9,2464
   120000a6c:	0411ffcc 	bal	1200009a0 <deregister_tm_clones>
   120000a70:	00000000 	nop
   120000a74:	24020001 	li	v0,1
   120000a78:	a20210d0 	sb	v0,4304(s0)
   120000a7c:	dfbf0018 	ld	ra,24(sp)
   120000a80:	dfbc0010 	ld	gp,16(sp)
   120000a84:	dfb00008 	ld	s0,8(sp)
   120000a88:	03e00008 	jr	ra
   120000a8c:	67bd0020 	daddiu	sp,sp,32

0000000120000a90 <frame_dummy>:
   120000a90:	67bdfff0 	daddiu	sp,sp,-16
   120000a94:	ffbc0000 	sd	gp,0(sp)
   120000a98:	3c1c0002 	lui	gp,0x2
   120000a9c:	0399e02d 	daddu	gp,gp,t9
   120000aa0:	679c8580 	daddiu	gp,gp,-31360
   120000aa4:	df848038 	ld	a0,-32712(gp)
   120000aa8:	ffbf0008 	sd	ra,8(sp)
   120000aac:	dc820ff8 	ld	v0,4088(a0)
   120000ab0:	10400006 	beqz	v0,120000acc <frame_dummy+0x3c>
   120000ab4:	00000000 	nop
   120000ab8:	df998088 	ld	t9,-32632(gp)
   120000abc:	13200003 	beqz	t9,120000acc <frame_dummy+0x3c>
   120000ac0:	00000000 	nop
   120000ac4:	0320f809 	jalr	t9
   120000ac8:	64840ff8 	daddiu	a0,a0,4088
   120000acc:	df998048 	ld	t9,-32696(gp)
   120000ad0:	dfbf0008 	ld	ra,8(sp)
   120000ad4:	dfbc0000 	ld	gp,0(sp)
   120000ad8:	673909e8 	daddiu	t9,t9,2536
   120000adc:	1000ffc2 	b	1200009e8 <register_tm_clones>
   120000ae0:	67bd0010 	daddiu	sp,sp,16
	...

0000000120000af0 <main>:
   120000af0:	67bdffe0 	daddiu	sp,sp,-32
   120000af4:	ffbf0018 	sd	ra,24(sp)
   120000af8:	ffbe0010 	sd	s8,16(sp)
   120000afc:	ffbc0008 	sd	gp,8(sp)
   120000b00:	03a0f025 	move	s8,sp
   120000b04:	3c1c0002 	lui	gp,0x2
   120000b08:	0399e02d 	daddu	gp,gp,t9
   120000b0c:	679c8520 	daddiu	gp,gp,-31456
   120000b10:	240403e8 	li	a0,1000
   120000b14:	df8280a0 	ld	v0,-32608(gp)
   120000b18:	0040c825 	move	t9,v0
   120000b1c:	0320f809 	jalr	t9
   120000b20:	00000000 	nop
   120000b24:	1000fffa 	b	120000b10 <main+0x20>
   120000b28:	00000000 	nop
   120000b2c:	00000000 	nop

0000000120000b30 <__libc_csu_init>:
   120000b30:	ffa0ffc0 	sd	zero,-64(sp)
   120000b34:	67bdffc0 	daddiu	sp,sp,-64
   120000b38:	ffbc0030 	sd	gp,48(sp)
   120000b3c:	3c1c0002 	lui	gp,0x2
   120000b40:	0399e02d 	daddu	gp,gp,t9
   120000b44:	679c84e0 	daddiu	gp,gp,-31520
   120000b48:	ffb20010 	sd	s2,16(sp)
   120000b4c:	ffb10008 	sd	s1,8(sp)
   120000b50:	df928050 	ld	s2,-32688(gp)
   120000b54:	df918058 	ld	s1,-32680(gp)
   120000b58:	df998060 	ld	t9,-32672(gp)
   120000b5c:	0251902f 	dsubu	s2,s2,s1
   120000b60:	ffb50028 	sd	s5,40(sp)
   120000b64:	ffb40020 	sd	s4,32(sp)
   120000b68:	ffb30018 	sd	s3,24(sp)
   120000b6c:	ffbf0038 	sd	ra,56(sp)
   120000b70:	ffb00000 	sd	s0,0(sp)
   120000b74:	001290fb 	dsra	s2,s2,0x3
   120000b78:	00809825 	move	s3,a0
   120000b7c:	00a0a025 	move	s4,a1
   120000b80:	0411ff5f 	bal	120000900 <_init>
   120000b84:	00c0a825 	move	s5,a2
   120000b88:	12400009 	beqz	s2,120000bb0 <__libc_csu_init+0x80>
   120000b8c:	00008025 	move	s0,zero
   120000b90:	de390000 	ld	t9,0(s1)
   120000b94:	02602025 	move	a0,s3
   120000b98:	02802825 	move	a1,s4
   120000b9c:	02a03025 	move	a2,s5
   120000ba0:	0320f809 	jalr	t9
   120000ba4:	66100001 	daddiu	s0,s0,1
   120000ba8:	1612fff9 	bne	s0,s2,120000b90 <__libc_csu_init+0x60>
   120000bac:	66310008 	daddiu	s1,s1,8
   120000bb0:	dfbf0038 	ld	ra,56(sp)
   120000bb4:	dfbc0030 	ld	gp,48(sp)
   120000bb8:	dfb50028 	ld	s5,40(sp)
   120000bbc:	dfb40020 	ld	s4,32(sp)
   120000bc0:	dfb30018 	ld	s3,24(sp)
   120000bc4:	dfb20010 	ld	s2,16(sp)
   120000bc8:	dfb10008 	ld	s1,8(sp)
   120000bcc:	dfb00000 	ld	s0,0(sp)
   120000bd0:	03e00008 	jr	ra
   120000bd4:	67bd0040 	daddiu	sp,sp,64

0000000120000bd8 <__libc_csu_fini>:
   120000bd8:	03e00008 	jr	ra
   120000bdc:	00000000 	nop

Disassembly of section .MIPS.stubs:

0000000120000be0 <_MIPS_STUBS_>:
   120000be0:	df998010 	ld	t9,-32752(gp)
   120000be4:	03e07825 	move	t3,ra
   120000be8:	0320f809 	jalr	t9
   120000bec:	6418000c 	daddiu	t8,zero,12
   120000bf0:	df998010 	ld	t9,-32752(gp)
   120000bf4:	03e07825 	move	t3,ra
   120000bf8:	0320f809 	jalr	t9
   120000bfc:	6418000a 	daddiu	t8,zero,10
	...

Disassembly of section .fini:

0000000120000c10 <_fini>:
   120000c10:	67bdfff0 	daddiu	sp,sp,-16
   120000c14:	ffbc0000 	sd	gp,0(sp)
   120000c18:	3c1c0002 	lui	gp,0x2
   120000c1c:	0399e02d 	daddu	gp,gp,t9
   120000c20:	ffbf0008 	sd	ra,8(sp)
   120000c24:	679c8400 	daddiu	gp,gp,-31744
   120000c28:	dfbf0008 	ld	ra,8(sp)
   120000c2c:	dfbc0000 	ld	gp,0(sp)
   120000c30:	03e00008 	jr	ra
   120000c34:	67bd0010 	daddiu	sp,sp,16

Disassembly of section .rodata:

0000000120000c38 <_IO_stdin_used>:
   120000c38:	00020001 	0x20001

Disassembly of section .interp:

0000000120000c3c <.interp>:
   120000c3c:	62696c2f 	daddi	a5,s3,27695
   120000c40:	6c2f3436 	ldr	t3,13366(at)
   120000c44:	6f732e64 	ldr	s3,11876(k1)
   120000c48:	地址 0x0000000120000c48 越界。


Disassembly of section .eh_frame_hdr:

0000000120000c4c <__GNU_EH_FRAME_HDR>:
   120000c4c:	3b031b01 	xori	v1,t8,0x1b01
   120000c50:	00000018 	mult	zero,zero
   120000c54:	00000002 	srl	zero,zero,0x0
   120000c58:	fffffee4 	sd	ra,-284(ra)
   120000c5c:	00000034 	teq	zero,zero
   120000c60:	ffffff8c 	sd	ra,-116(ra)
   120000c64:	00000074 	teq	zero,zero,0x1

Disassembly of section .eh_frame:

0000000120000c68 <__FRAME_END__-0x78>:
   120000c68:	00000014 	dsllv	zero,zero,zero
   120000c6c:	00000000 	nop
   120000c70:	00527a01 	0x527a01
   120000c74:	011f7c01 	0x11f7c01
   120000c78:	001d0d0c 	syscall	0x7434
   120000c7c:	00000000 	nop
   120000c80:	0000003c 	dsll32	zero,zero,0x0
   120000c84:	0000001c 	dmult	zero,zero
   120000c88:	20000b30 	addi	zero,zero,2864
   120000c8c:	00000001 	movf	zero,zero,$fcc0
   120000c90:	000000a8 	0xa8
   120000c94:	00000000 	nop
   120000c98:	400e4800 	mfc0	t2,c0_count
   120000c9c:	54049c44 	bnel	zero,a0,11ffe7db0 <_DYNAMIC-0x186a0>
   120000ca0:	0e910c92 	jal	12a443248 <_gp+0xa42a238>
   120000ca4:	94069564 	lhu	a2,-27292(zero)
   120000ca8:	9f0a9308 	lwu	a6,-27896(t8)
   120000cac:	02109002 	0x2109002
   120000cb0:	d0000e64 	lld	zero,3684(zero)
   120000cb4:	d4d3d2d1 	ldc1	$f19,-11567(a2)
   120000cb8:	00dfdcd5 	0xdfdcd5
   120000cbc:	00000000 	nop
   120000cc0:	0000001c 	dmult	zero,zero
   120000cc4:	0000005c 	0x5c
   120000cc8:	20000bd8 	addi	zero,zero,3032
   120000ccc:	00000001 	movf	zero,zero,$fcc0
   120000cd0:	00000008 	jr	zero
   120000cd4:	00000000 	nop
	...

0000000120000ce0 <__FRAME_END__>:
   120000ce0:	00000000 	nop

Disassembly of section .note.ABI-tag:

0000000120000ce4 <.note.ABI-tag>:
   120000ce4:	00000004 	sllv	zero,zero,zero
   120000ce8:	00000010 	mfhi	zero
   120000cec:	00000001 	movf	zero,zero,$fcc0
   120000cf0:	00554e47 	0x554e47
   120000cf4:	00000000 	nop
   120000cf8:	00000002 	srl	zero,zero,0x0
   120000cfc:	00000006 	srlv	zero,zero,zero
   120000d00:	00000020 	add	zero,zero,zero

Disassembly of section .init_array:

0000000120010fe8 <__frame_dummy_init_array_entry>:
   120010fe8:	20000a90 	addi	zero,zero,2704
   120010fec:	00000001 	movf	zero,zero,$fcc0

Disassembly of section .fini_array:

0000000120010ff0 <__do_global_dtors_aux_fini_array_entry>:
   120010ff0:	20000a38 	addi	zero,zero,2616
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
   120011030:	20000af0 	addi	zero,zero,2800
   120011034:	00000001 	movf	zero,zero,$fcc0
   120011038:	20000b30 	addi	zero,zero,2864
   12001103c:	00000001 	movf	zero,zero,$fcc0
   120011040:	20000bd8 	addi	zero,zero,3032
   120011044:	00000001 	movf	zero,zero,$fcc0
   120011048:	20010000 	addi	at,zero,0
   12001104c:	00000001 	movf	zero,zero,$fcc0
   120011050:	20011018 	addi	at,zero,4120
   120011054:	00000001 	movf	zero,zero,$fcc0
   120011058:	20000000 	addi	zero,zero,0
   12001105c:	00000001 	movf	zero,zero,$fcc0
   120011060:	20010ff0 	addi	at,zero,4080
   120011064:	00000001 	movf	zero,zero,$fcc0
   120011068:	20010fe8 	addi	at,zero,4072
   12001106c:	00000001 	movf	zero,zero,$fcc0
   120011070:	20000900 	addi	zero,zero,2304
   120011074:	00000001 	movf	zero,zero,$fcc0
	...
   1200110a0:	20000bf0 	addi	zero,zero,3056
   1200110a4:	00000001 	movf	zero,zero,$fcc0
	...
   1200110b0:	20000be0 	addi	zero,zero,3040
   1200110b4:	00000001 	movf	zero,zero,$fcc0
	...

Disassembly of section .sdata:

00000001200110c0 <__dso_handle>:
	...

Disassembly of section .bss:

00000001200110d0 <completed.5796>:
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
   0:	20000af0 	addi	zero,zero,2800
   4:	d0000000 	lld	zero,0(zero)
   8:	fffffff8 	sd	ra,-8(ra)
	...
  14:	00000020 	add	zero,zero,zero
  18:	0000001e 	ddiv	zero,zero,zero
  1c:	0000001f 	ddivu	zero,zero,zero
  20:	20000b30 	addi	zero,zero,2864
  24:	903f0000 	lbu	ra,0(at)
  28:	fffffff8 	sd	ra,-8(ra)
	...
  34:	00000040 	ssnop
  38:	0000001d 	dmultu	zero,zero
  3c:	0000001f 	ddivu	zero,zero,zero
  40:	20000bd8 	addi	zero,zero,3032
	...
  58:	0000001d 	dmultu	zero,zero
  5c:	0000001f 	ddivu	zero,zero,zero

Disassembly of section .gnu.attributes:

0000000000000000 <.gnu.attributes>:
   0:	00000f41 	0xf41
   4:	756e6700 	jalx	5b99c00 <_DYNAMIC-0x11a466850>
   8:	00070100 	sll	zero,a3,0x4
   c:	01040000 	0x1040000
