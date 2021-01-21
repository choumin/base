
./main：     文件格式 elf64-tradlittlemips


Disassembly of section .init:

0000000120000900 <_init>:
   120000900:	67bdfff0 	daddiu	sp,sp,-16
   120000904:	ffbc0000 	sd	gp,0(sp)
   120000908:	3c1c0002 	lui	gp,0x2
   12000090c:	0399e02d 	daddu	gp,gp,t9
   120000910:	ffbf0008 	sd	ra,8(sp)
   120000914:	679c8710 	daddiu	gp,gp,-30960
   120000918:	df8280a0 	ld	v0,-32608(gp)
   12000091c:	10400004 	beqz	v0,120000930 <_init+0x30>
   120000920:	00000000 	nop
   120000924:	df9980a0 	ld	t9,-32608(gp)
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
   120000984:	df998098 	ld	t9,-32616(gp)
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
   120000a24:	dcd98088 	ld	t9,-32632(a2)
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
   120000ab8:	df998090 	ld	t9,-32624(gp)
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

0000000120000af0 <test>:
   120000af0:	67bdfff0 	daddiu	sp,sp,-16
   120000af4:	ffbe0008 	sd	s8,8(sp)
   120000af8:	03a0f025 	move	s8,sp
   120000afc:	03c0e825 	move	sp,s8
   120000b00:	dfbe0008 	ld	s8,8(sp)
   120000b04:	67bd0010 	daddiu	sp,sp,16
   120000b08:	03e00008 	jr	ra
   120000b0c:	00000000 	nop

0000000120000b10 <main>:
   120000b10:	67bdffe0 	daddiu	sp,sp,-32
   120000b14:	ffbf0018 	sd	ra,24(sp)
   120000b18:	ffbe0010 	sd	s8,16(sp)
   120000b1c:	ffbc0008 	sd	gp,8(sp)
   120000b20:	03a0f025 	move	s8,sp
   120000b24:	3c1c0002 	lui	gp,0x2
   120000b28:	0399e02d 	daddu	gp,gp,t9
   120000b2c:	679c8500 	daddiu	gp,gp,-31488
   120000b30:	df828050 	ld	v0,-32688(gp)
   120000b34:	0040c825 	move	t9,v0
   120000b38:	0411ffed 	bal	120000af0 <test>
   120000b3c:	00000000 	nop
   120000b40:	00001025 	move	v0,zero
   120000b44:	03c0e825 	move	sp,s8
   120000b48:	dfbf0018 	ld	ra,24(sp)
   120000b4c:	dfbe0010 	ld	s8,16(sp)
   120000b50:	dfbc0008 	ld	gp,8(sp)
   120000b54:	67bd0020 	daddiu	sp,sp,32
   120000b58:	03e00008 	jr	ra
   120000b5c:	00000000 	nop

0000000120000b60 <__libc_csu_init>:
   120000b60:	ffa0ffc0 	sd	zero,-64(sp)
   120000b64:	67bdffc0 	daddiu	sp,sp,-64
   120000b68:	ffbc0030 	sd	gp,48(sp)
   120000b6c:	3c1c0002 	lui	gp,0x2
   120000b70:	0399e02d 	daddu	gp,gp,t9
   120000b74:	679c84b0 	daddiu	gp,gp,-31568
   120000b78:	ffb20010 	sd	s2,16(sp)
   120000b7c:	ffb10008 	sd	s1,8(sp)
   120000b80:	df928058 	ld	s2,-32680(gp)
   120000b84:	df918060 	ld	s1,-32672(gp)
   120000b88:	df998068 	ld	t9,-32664(gp)
   120000b8c:	0251902f 	dsubu	s2,s2,s1
   120000b90:	ffb50028 	sd	s5,40(sp)
   120000b94:	ffb40020 	sd	s4,32(sp)
   120000b98:	ffb30018 	sd	s3,24(sp)
   120000b9c:	ffbf0038 	sd	ra,56(sp)
   120000ba0:	ffb00000 	sd	s0,0(sp)
   120000ba4:	001290fb 	dsra	s2,s2,0x3
   120000ba8:	00809825 	move	s3,a0
   120000bac:	00a0a025 	move	s4,a1
   120000bb0:	0411ff53 	bal	120000900 <_init>
   120000bb4:	00c0a825 	move	s5,a2
   120000bb8:	12400009 	beqz	s2,120000be0 <__libc_csu_init+0x80>
   120000bbc:	00008025 	move	s0,zero
   120000bc0:	de390000 	ld	t9,0(s1)
   120000bc4:	02602025 	move	a0,s3
   120000bc8:	02802825 	move	a1,s4
   120000bcc:	02a03025 	move	a2,s5
   120000bd0:	0320f809 	jalr	t9
   120000bd4:	66100001 	daddiu	s0,s0,1
   120000bd8:	1612fff9 	bne	s0,s2,120000bc0 <__libc_csu_init+0x60>
   120000bdc:	66310008 	daddiu	s1,s1,8
   120000be0:	dfbf0038 	ld	ra,56(sp)
   120000be4:	dfbc0030 	ld	gp,48(sp)
   120000be8:	dfb50028 	ld	s5,40(sp)
   120000bec:	dfb40020 	ld	s4,32(sp)
   120000bf0:	dfb30018 	ld	s3,24(sp)
   120000bf4:	dfb20010 	ld	s2,16(sp)
   120000bf8:	dfb10008 	ld	s1,8(sp)
   120000bfc:	dfb00000 	ld	s0,0(sp)
   120000c00:	03e00008 	jr	ra
   120000c04:	67bd0040 	daddiu	sp,sp,64

0000000120000c08 <__libc_csu_fini>:
   120000c08:	03e00008 	jr	ra
   120000c0c:	00000000 	nop

Disassembly of section .MIPS.stubs:

0000000120000c10 <_MIPS_STUBS_>:
   120000c10:	df998010 	ld	t9,-32752(gp)
   120000c14:	03e07825 	move	t3,ra
   120000c18:	0320f809 	jalr	t9
   120000c1c:	6418000b 	daddiu	t8,zero,11
	...

Disassembly of section .fini:

0000000120000c30 <_fini>:
   120000c30:	67bdfff0 	daddiu	sp,sp,-16
   120000c34:	ffbc0000 	sd	gp,0(sp)
   120000c38:	3c1c0002 	lui	gp,0x2
   120000c3c:	0399e02d 	daddu	gp,gp,t9
   120000c40:	ffbf0008 	sd	ra,8(sp)
   120000c44:	679c83e0 	daddiu	gp,gp,-31776
   120000c48:	dfbf0008 	ld	ra,8(sp)
   120000c4c:	dfbc0000 	ld	gp,0(sp)
   120000c50:	03e00008 	jr	ra
   120000c54:	67bd0010 	daddiu	sp,sp,16
