	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	arm_func_start sub_0800023C
sub_0800023C: @ 0x0800023C
	mov r3, lr
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp}
	ldr r0, _080002F0 @ =gUnk_03000208
	ldrh r1, [r0]
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0]
	ldr r4, _080002F4 @ =gUnk_03005958
	ldr r5, _080002F8 @ =gUnk_030059A0
	ldr r6, _080002FC @ =gUnk_0300044C
	ldr r7, _08000300 @ =gUnk_08000218
	ldr r8, _08000304 @ =gUnk_03005968
	ldr sb, _08000308 @ =gUnk_03005AE0
	ldr sl, _0800030C @ =sub_0803E114
_08000274:
	add r4, r4, #8
	cmp r4, r5
	bhs _080002D0
	ldr fp, [r4, #4]
_08000284:
	str fp, [r6]
	cmp r4, fp
	beq _080002C0
	ldrb r1, [fp, #8]
	ldr r1, [r7, r1, lsl #2]
	mov r0, fp
	mov lr, pc
	bx r1
	ldr r0, [r6]
	cmp r0, fp
	bne _080002B8
	mov lr, pc
	bx sb
_080002B8:
	ldr fp, [r0, #4]
	b _08000284
_080002C0:
	cmp r4, r8
	bne _08000274
	sub lr, pc, #0x5c
	bx sl
_080002D0:
	ldr r0, _08000310 @ =sub_080126CC
	mov lr, pc
	bx r0
	ldr r4, _08000314 @ =gUnk_03000208
	mov r5, #0
	strh r5, [r4, #2]
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp}
	bx r3
	.align 2, 0
_080002F0: .4byte gUnk_03000208
_080002F4: .4byte gUnk_03005958
_080002F8: .4byte gUnk_030059A0
_080002FC: .4byte gUnk_0300044C
_08000300: .4byte gUnk_08000218
_08000304: .4byte gUnk_03005968
_08000308: .4byte gUnk_03005AE0
_0800030C: .4byte sub_0803E114
_08000310: .4byte sub_080126CC
_08000314: .4byte gUnk_03000208

	arm_func_start sub_08000318
sub_08000318: @ 0x08000318
	push {r8, sb, sl, fp}
	mov ip, #0x4000000
	ldr fp, _08000354 @ =gUnk_02030790
	add sl, fp, #0x28
	mov sb, #1
	mov r8, #0
	strb r8, [ip, #0x208]
	ldm sl, {r0, r1}
	stm sl!, {r1}
	stm sl!, {r0}
	ldrb r0, [fp, #5]
	strb r8, [fp, #5]
	strb sb, [ip, #0x208]
	pop {r8, sb, sl, fp}
	bx lr
	.align 2, 0
_08000354: .4byte gUnk_02030790

	thumb_func_start sub_08000358
sub_08000358: @ 0x08000358
	push {r4, r5, r6, r7, lr}
	movs r2, #0
	mov ip, r2
	adds r4, r0, #0
	adds r4, #0x30
	adds r5, r1, #0
	adds r5, #0x30
	ldr r6, [r4, #0x18]
	ldr r7, [r5, #0x18]
	ldrh r0, [r4, #0x20]
	ldrh r1, [r5, #0x20]
	ands r0, r1
	lsrs r0, r0, #0xe
	beq _080003DA
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	movs r2, #0
	ldrsb r1, [r6, r2]
	adds r0, r0, r1
	ldrsb r1, [r7, r2]
	subs r0, r0, r1
	ldrb r2, [r6, #6]
	ldrb r3, [r7, #6]
	adds r2, r2, r3
	adds r0, r0, r2
	adds r2, r2, r2
	cmp r2, r0
	blo _080003DA
	ldrh r2, [r4, #6]
	ldrh r3, [r5, #6]
	subs r2, r2, r3
	movs r1, #1
	ldrsb r3, [r6, r1]
	adds r2, r2, r3
	ldrsb r3, [r7, r1]
	subs r2, r2, r3
	ldrb r1, [r6, #6]
	ldrb r3, [r7, #6]
	adds r3, r3, r1
	adds r2, r2, r3
	adds r3, r3, r3
	cmp r3, r2
	blo _080003DA
	movs r2, #5
	movs r3, #5
	ldrb r0, [r4, #0xc]
	lsrs r0, r0, #5
	blo _080003BC
	ldrb r2, [r6, #8]
_080003BC:
	ldrb r0, [r5, #0xc]
	lsrs r0, r0, #5
	blo _080003C4
	ldrb r3, [r7, #8]
_080003C4:
	adds r2, r2, r3
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	ldrsh r0, [r4, r0]
	subs r0, r0, r1
	adds r0, r0, r2
	lsls r2, r2, #1
	cmp r2, r0
	blo _080003DA
	movs r2, #1
	mov ip, r2
_080003DA:
	mov r0, ip
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080003E0
sub_080003E0: @ 0x080003E0
	ldrh r2, [r0, #0x32]
	ldrh r3, [r1, #0x32]
	subs r2, r2, r3
	adds r3, r2, #0
	adds r2, #8
	cmp r2, #0x11
	blo _08000410
	ldrh r2, [r1, #0x36]
	ldrh r1, [r0, #0x36]
	adds r2, #3
	subs r1, r1, r2
	movs r2, #0
	adds r1, #8
	cmp r1, #0x11
	bhs _08000408
	lsls r3, r3, #1
	bhs _08000406
	movs r2, #0x80
	b _08000408
_08000406:
	movs r2, #0x20
_08000408:
	ldr r1, [r0, #0x60]
	orrs r1, r2
	str r1, [r0, #0x60]
	mov pc, lr
_08000410:
	ldrh r2, [r0, #0x36]
	ldrh r3, [r1, #0x36]
	adds r3, #3
	movs r1, #0
	subs r2, r2, r3
	bpl _08000424
	adds r2, #8
	bpl _0800042A
	movs r1, #0x40
	b _0800042A
_08000424:
	subs r2, #8
	bmi _0800042A
	movs r1, #0x10
_0800042A:
	ldr r2, [r0, #0x60]
	orrs r2, r1
	str r2, [r0, #0x60]
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08000434
sub_08000434: @ 0x08000434
	push {lr}
	ldr r0, _08000774 @ =gUnk_03000E40
	ldr r1, _08000778 @ =sub_08000440
	mov lr, r1
	bx r0
	.align 2, 0

	thumb_func_start sub_08000440
sub_08000440: @ 0x08000440
	bl sub_0803A320
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08000448
sub_08000448: @ 0x08000448
	mov r3, lr
	push {r3, r4, r5, r6, r7}
	adds r4, #0x30
	adds r5, #0x30
	ldr r6, [r4, #0x18]
	ldr r7, [r5, #0x18]
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	movs r2, #0
	ldrsb r1, [r6, r2]
	adds r0, r0, r1
	ldrsb r1, [r7, r2]
	subs r0, r0, r1
	adds r1, r0, #0
	ldrb r2, [r6, #6]
	ldrb r3, [r7, #6]
	adds r2, r2, r3
	adds r1, r1, r2
	adds r2, r2, r2
	cmp r2, r1
	blo _0800051E
	ldrh r2, [r4, #6]
	ldrh r3, [r5, #6]
	subs r2, r2, r3
	movs r1, #1
	ldrsb r3, [r6, r1]
	adds r2, r2, r3
	ldrsb r3, [r7, r1]
	subs r2, r2, r3
	ldrb r1, [r6, #7]
	ldrb r3, [r7, #7]
	adds r3, r3, r1
	adds r1, r2, #0
	adds r2, r2, r3
	adds r3, r3, r3
	cmp r3, r2
	blo _0800051E
	push {r0, r1}
	movs r2, #5
	movs r3, #5
	ldrb r0, [r4, #0xc]
	lsrs r0, r0, #5
	blo _080004A2
	ldrb r2, [r6, #8]
_080004A2:
	ldrb r0, [r5, #0xc]
	lsrs r0, r0, #5
	blo _080004AA
	ldrb r3, [r7, #8]
_080004AA:
	adds r2, r2, r3
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	ldrsh r0, [r4, r0]
	subs r0, r0, r1
	adds r0, r0, r2
	lsls r2, r2, #1
	cmp r2, r0
	blo _0800051C
	movs r0, #0x20
	ldrb r2, [r4, #0xc]
	ands r2, r0
	lsrs r2, r2, #3
	ldrb r3, [r5, #0xc]
	ands r3, r0
	lsrs r3, r3, #2
	adds r2, r2, r3
	pop {r0, r1}
	beq sub_080004DA
	ldr r3, _0800077C @ =_08000524
	ldr r2, [r3, r2]
	ldr r3, _08000780 @ =sub_080004DA
	mov lr, r3
	bx r2

	non_word_aligned_thumb_func_start sub_080004DA
sub_080004DA: @ 0x080004DA
	movs r2, #0
	adds r3, r2, #0
	bl sub_08003F54
	adds r6, r0, #0
	ldr r0, _08000784 @ =gUnk_081423A0
	ldrb r1, [r4, #0x10]
	ldrb r2, [r5, #0xf]
	lsls r2, r2, #6
	adds r1, r1, r2
	ldrb r0, [r0, r1]
	lsls r0, r0, #2
	ldr r1, _08000788 @ =gUnk_0813E400
	ldr r7, [r1, r0]
	adds r0, r4, #0
	subs r0, #0x30
	adds r1, r5, #0
	subs r1, #0x30
	adds r2, r6, #0
	ldr r3, _0800078C @ =sub_08000506
	mov lr, r3
	bx r7

	non_word_aligned_thumb_func_start sub_08000506
sub_08000506: @ 0x08000506
	cmp r0, #0
	beq _0800051E
	cmp r0, #2
	beq _08000516
	strb r6, [r5, #0xe]
	movs r0, #0x10
	eors r6, r0
	strb r6, [r4, #0xe]
_08000516:
	movs r0, #1
	pop {r3, r4, r5, r6, r7}
	bx r3
_0800051C:
	pop {r0, r1}
_0800051E:
	movs r0, #0
	pop {r3, r4, r5, r6, r7}
	bx r3
	.align 2, 0
_08000524: .4byte sub_08000534
_08000528: .4byte sub_08000538
_0800052C: .4byte sub_08000554
_08000530: .4byte sub_08000570

	thumb_func_start sub_08000534
sub_08000534: @ 0x08000534
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08000538
sub_08000538: @ 0x08000538
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	movs r2, #0
	subs r0, r0, r1
	ldrsb r1, [r7, r2]
	subs r0, r0, r1
	ldrh r1, [r4, #6]
	ldrh r2, [r5, #6]
	subs r1, r1, r2
	movs r3, #1
	ldrsb r2, [r7, r3]
	subs r1, r1, r2
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08000554
sub_08000554: @ 0x08000554
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	movs r2, #0
	ldrsb r1, [r6, r2]
	adds r0, r0, r1
	ldrh r1, [r4, #6]
	ldrh r2, [r5, #6]
	subs r1, r1, r2
	movs r3, #1
	ldrsb r2, [r6, r3]
	adds r1, r1, r2
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08000570
sub_08000570: @ 0x08000570
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	ldrh r1, [r4, #6]
	ldrh r2, [r5, #6]
	subs r1, r1, r2
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08000580
sub_08000580: @ 0x08000580
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
	ldr r6, _08000790 @ =gUnk_03006A58
	ldr r1, [r6]
	cmp r1, #0
	beq _0800059E
	ldrh r2, [r1, #0x3a]
	cmp r2, #0
	bne _0800059E
	bl sub_08000358
	cmp r0, #0
	beq _0800059E
	adds r5, #1
_0800059E:
	adds r6, #0x90
	ldr r1, [r6]
	cmp r1, #0
	beq _080005B8
	ldrh r2, [r1, #0x3a]
	cmp r2, #0
	bne _080005B8
	adds r0, r4, #0
	bl sub_08000358
	cmp r0, #0
	beq _080005B8
	adds r5, #2
_080005B8:
	adds r6, #0x90
	ldr r1, [r6]
	cmp r1, #0
	beq _080005D2
	ldrh r2, [r1, #0x3a]
	cmp r2, #0
	bne _080005D2
	adds r0, r4, #0
	bl sub_08000358
	cmp r0, #0
	beq _080005D2
	adds r5, #4
_080005D2:
	adds r6, #0x90
	ldr r1, [r6]
	cmp r1, #0
	beq _080005EC
	ldrh r2, [r1, #0x3a]
	cmp r2, #0
	bne _080005EC
	adds r0, r4, #0
	bl sub_08000358
	cmp r0, #0
	beq _080005EC
	adds r5, #8
_080005EC:
	adds r0, r5, #0
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080005F0
sub_080005F0: @ 0x080005F0
	ldr r1, _08000794 @ =gUnk_03005060
	ldr r2, _08000798 @ =gUnk_03005960
_080005F4:
	ldr r3, [r1, #8]
	cmp r3, #0
	beq _08000602
	adds r1, #0x90
	cmp r1, r2
	blo _080005F4
	mov pc, lr
_08000602:
	ldr r2, _0800079C @ =gUnk_02016D50
	ldr r2, [r2]
	ldr r3, [r2]
	str r3, [r1]
	str r2, [r1, #4]
	str r1, [r2]
	str r1, [r3, #4]
	str r0, [r1, #8]
	movs r1, #0x5e
	ldrb r2, [r0, r1]
	movs r3, #0x10
	orrs r2, r3
	strb r2, [r0, r1]
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08000620
sub_08000620: @ 0x08000620
	ldr r1, _080007A0 @ =gUnk_03005060
	ldr r2, _080007A4 @ =gUnk_03005960
_08000624:
	ldr r3, [r1, #8]
	cmp r3, r0
	beq _08000632
_0800062A:
	adds r1, #0x90
	cmp r1, r2
	blo _08000624
	mov pc, lr
_08000632:
	movs r3, #0x5e
	ldrb r3, [r0, r3]
	lsrs r3, r3, #5
	blo _0800062A
	push {r4}
	movs r2, #0
	str r2, [r1, #8]
	strb r2, [r1, #0xc]
	ldrb r4, [r1, #0xd]
	strb r2, [r1, #0xd]
	ldr r2, [r1]
	ldr r3, [r1, #4]
	str r3, [r2, #4]
	str r2, [r3]
	cmp r4, #1
	bne _0800065C
	ldrb r1, [r2, #0xd]
	cmp r1, #1
	beq _0800065C
	ldr r1, _080007A8 @ =gUnk_02016D50
	str r3, [r1]
_0800065C:
	movs r1, #0x5e
	ldrb r2, [r0, r1]
	movs r3, #0xef
	ands r2, r3
	strb r2, [r0, r1]
	pop {r4}
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_0800066C
sub_0800066C: @ 0x0800066C
	push {r4, r5, r6, r7, lr}
	ldr r1, [r0, #0x48]
	ldr r2, _080007AC @ =gUnk_03006A44
	movs r6, #1
	movs r7, #0x50
	bl sub_080006BC
	adds r2, #0x90
	movs r6, #2
	bl sub_080006BC
	adds r2, #0x90
	movs r6, #4
	bl sub_080006BC
	adds r2, #0x90
	movs r6, #8
	bl sub_080006BC
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08000694
sub_08000694: @ 0x08000694
	push {r4, r5, r6, r7, lr}
	ldr r1, [r0, #0x48]
	ldr r2, _080007B0 @ =gUnk_03006A44
	movs r6, #1
	movs r7, #0x50
	bl sub_080006CC
	adds r2, #0x90
	movs r6, #2
	bl sub_080006CC
	adds r2, #0x90
	movs r6, #4
	bl sub_080006CC
	adds r2, #0x90
	movs r6, #8
	bl sub_080006CC
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080006BC
sub_080006BC: @ 0x080006BC
	ldr r3, [r2, #0x14]
	cmp r3, #0
	beq _0800073C
	ldrh r4, [r2, #0x22]
	lsrs r4, r4, #8
	bhs _080006D2
	b _0800073C
	.align 2, 0

	thumb_func_start sub_080006CC
sub_080006CC: @ 0x080006CC
	ldr r3, [r2, #0x14]
	cmp r3, #0
	beq _0800073C
_080006D2:
	ldrh r4, [r2, #0x22]
	ldr r5, _080007B4 @ =0x00001051
	ands r4, r5
	bne _0800073C
	ldrb r4, [r3, #0x14]
	cmp r4, #3
	beq _0800073C
	ldrh r4, [r0, #0x32]
	ldrh r5, [r3, #0x32]
	subs r5, r5, r4
	ldrb r4, [r1, #6]
	adds r5, r5, r4
	lsls r4, r4, #1
	cmp r5, r4
	bhs _0800073C
	ldrh r4, [r0, #0x36]
	ldrh r5, [r3, #0x36]
	adds r5, #3
	subs r5, r5, r4
	ldrb r4, [r1, #7]
	adds r5, r5, r4
	lsls r4, r4, #1
	cmp r5, r4
	bhs _0800073C
	movs r4, #0x3a
	ldrsh r5, [r3, r4]
	adds r5, #5
	bmi _0800073C
	ldrh r4, [r0, r7]
	ldrh r5, [r3, r7]
	ands r4, r5
	lsrs r4, r4, #0xe
	beq _0800073C
	ldrb r4, [r2]
	cmp r4, #0
	bne _0800073C
	movs r4, #1
	strb r4, [r2]
	ldr r4, [r0, #0x60]
	orrs r4, r6
	str r4, [r0, #0x60]
	ldrh r4, [r0, r7]
	lsrs r4, r4, #0xe
	lsls r4, r4, #0xe
	lsls r5, r5, #0x12
	lsrs r5, r5, #0x12
	orrs r4, r5
	strh r4, [r3, r7]
	push {r0, r1, r2, lr}
	adds r0, r3, #0
	bl sub_08008DD8
	pop {r0, r1, r2, pc}
_0800073C:
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08000740
sub_08000740: @ 0x08000740
	ldr r1, _080007B8 @ =gUnk_03005060
	ldr r2, _080007BC @ =gUnk_03005960
_08000744:
	ldr r3, [r1, #8]
	cmp r3, #0
	beq _08000752
	adds r1, #0x90
	cmp r1, r2
	blo _08000744
	mov pc, lr
_08000752:
	ldr r2, _080007C0 @ =gUnk_02016D50
	ldr r3, [r2]
	str r1, [r2]
	ldr r2, [r3]
	str r2, [r1]
	str r3, [r1, #4]
	str r1, [r3]
	str r1, [r2, #4]
	movs r2, #1
	strb r2, [r1, #0xd]
	str r0, [r1, #8]
	movs r1, #0x5e
	ldrb r2, [r0, r1]
	movs r3, #0x10
	orrs r2, r3
	strb r2, [r0, r1]
	mov pc, lr
	.align 2, 0
_08000774: .4byte gUnk_03000E40
_08000778: .4byte sub_08000440
_0800077C: .4byte _08000524
_08000780: .4byte sub_080004DA
_08000784: .4byte gUnk_081423A0
_08000788: .4byte gUnk_0813E400
_0800078C: .4byte sub_08000506
_08000790: .4byte gUnk_03006A58
_08000794: .4byte gUnk_03005060
_08000798: .4byte gUnk_03005960
_0800079C: .4byte gUnk_02016D50
_080007A0: .4byte gUnk_03005060
_080007A4: .4byte gUnk_03005960
_080007A8: .4byte gUnk_02016D50
_080007AC: .4byte gUnk_03006A44
_080007B0: .4byte gUnk_03006A44
_080007B4: .4byte 0x00001051
_080007B8: .4byte gUnk_03005060
_080007BC: .4byte gUnk_03005960
_080007C0: .4byte gUnk_02016D50

	arm_func_start sub_080007C4
sub_080007C4: @ 0x080007C4
	mov r3, lr
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp}
	ldr r8, _080008A0 @ =gUnk_02016D50
	ldr r8, [r8]
	mov sb, r8
_080007D8:
	stmdb sp!, {sb}
	ldrb sl, [r8, #0xc]
	cmp sl, #0
	beq _08000888
	ldr r4, [r8, #8]
	ldrb fp, [r4, #0x3c]
	lsrs r0, fp, #7
	beq _08000888
	add sb, r8, #0x10
_080007FC:
	ldr r5, [sb]
	ldrb r0, [r5, #0x3c]
	cmp r0, #0x80
	blo _0800087C
	orr r0, r0, fp
	lsrs r0, r0, #7
	bhs _08000848
	ldrb r0, [r5, #0x43]
	cmp r0, #0
	beq _08000830
	ldrb r0, [r4, #8]
	cmp r0, #1
	beq _0800087C
_08000830:
	ldrb r0, [r4, #0x3d]
	cmp r0, #0
	bne _0800087C
	ldrb r0, [r5, #0x3d]
	cmp r0, #0
	bne _0800087C
_08000848:
	ldr r0, _080008A4 @ =sub_08000448
	mov lr, pc
	bx r0
	cmp r0, #0
	beq _0800087C
	ldrb r0, [r4, #0x40]
	orr r0, r0, #0x80
	strb r0, [r5, #0x41]
	str r4, [r5, #0x4c]
	ldrb r0, [r5, #0x40]
	orr r0, r0, #0x80
	strb r0, [r4, #0x41]
	str r5, [r4, #0x4c]
_0800087C:
	add sb, sb, #4
	subs sl, sl, #1
	bne _080007FC
_08000888:
	ldm sp!, {sb}
	ldr r8, [r8, #4]
	cmp r8, sb
	bne _080007D8
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp}
	bx r3
	.align 2, 0
_080008A0: .4byte gUnk_02016D50
_080008A4: .4byte sub_08000448

	arm_func_start sub_080008A8
sub_080008A8: @ 0x080008A8
	mov r2, #0
	ldrb r1, [r0, #0x3c]
	cmp r1, #0x80
	blo _08000980
	push {r4, r5, r6, r7, r8, sb, sl}
	mov sb, r2
	ldr sl, _08000994 @ =gUnk_08137B10
	ldrh r4, [r0, #0x5c]
	ldr r1, _08000998 @ =gUnk_02016D50
	ldr r1, [r1]
	mov r2, r1
	ldrh r5, [r0, #0x32]
	add r5, r5, #0x38
	ldrh r6, [r0, #0x36]
	add r6, r6, #0x38
	ldrh r7, [r0, #0x50]
_080008E8:
	ldr r3, [r1, #8]
	cmp r3, #0
	beq _0800096C
	ldrb r8, [r3, #0x3c]
	cmp r8, #0x80
	blo _0800096C
	and r8, r8, #0xf
	ldr r8, [sl, r8, lsl #2]
	ands r8, r8, r4
	beq _0800096C
	ldrh r8, [r3, #0x32]
	sub r8, r5, r8
	cmp r8, #0x71
	bhs _0800096C
	ldrh r8, [r3, #0x36]
	sub r8, r6, r8
	cmp r8, #0x71
	bhs _0800096C
	ldrh r8, [r3, #0x50]
	and r8, r7, r8
	lsrs r8, r8, #0xe
	beq _0800096C
	cmp r3, r0
	beq _0800096C
	add sb, sb, #1
	ldrb r8, [r1, #0xc]
	cmp r8, #0x20
	bhs _0800096C
	add ip, r8, #1
	strb ip, [r1, #0xc]
	lsl r8, r8, #2
	add r8, r8, #0x10
	str r0, [r1, r8]
_0800096C:
	ldr r1, [r1, #4]
	cmp r1, r2
	bne _080008E8
	mov r2, sb
	pop {r4, r5, r6, r7, r8, sb, sl}
_08000980:
	ldrb r3, [r0, #8]
	cmp r3, #3
	bne _08000990
	strb r2, [r0, #0x6b]
_08000990:
	bx lr
	.align 2, 0
_08000994: .4byte gUnk_08137B10
_08000998: .4byte gUnk_02016D50

	thumb_func_start sub_0800099C
sub_0800099C: @ 0x0800099C
	ldr r2, _08000AC0 @ =gUnk_03000F40
	ldr r0, [r2]
	lsls r1, r0, #1
	adds r0, r0, r1
	movs r3, #0xd
	rors r0, r3
	str r0, [r2]
	mov pc, lr

	thumb_func_start sub_080009AC
sub_080009AC: @ 0x080009AC
	push {r4, r5}
	movs r3, #0
	movs r5, #1
	lsrs r2, r1, #0x10
	beq _080009C4
	ldr r4, _08000AC4 @ =0xFFFFFFFF
_080009B8:
	adds r4, r4, r5
	lsls r1, r5
	blo _080009B8
	adds r1, r1, r5
	rors r1, r5
	b _080009D0
_080009C4:
	movs r4, #0x20
	adds r2, r1, #0
_080009C8:
	subs r4, r4, r5
	lsrs r2, r5
	bne _080009C8
	lsls r1, r4
_080009D0:
	lsls r5, r4
	adds r2, r0, #0
_080009D4:
	subs r0, r0, r1
	blo _080009DC
	adds r3, r3, r5
	adds r2, r0, #0
_080009DC:
	adds r0, r2, #0
	lsrs r1, r1, #1
	lsrs r5, r5, #1
	bne _080009D4
	adds r0, r3, #0
	pop {r4, r5}
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_080009EC
sub_080009EC: @ 0x080009EC
	movs r3, #1
	b _080009F6

	thumb_func_start sub_080009F0
sub_080009F0: @ 0x080009F0
	movs r3, #2
	b _080009F6

	thumb_func_start sub_080009F4
sub_080009F4: @ 0x080009F4
	movs r3, #0
_080009F6:
	push {r4, r5}
	ldr r5, _08000AC8 @ =gUnk_030066B0
	ldr r4, _08000ACC @ =gUnk_03000204
	ldrb r4, [r4]
	orrs r4, r4
	beq _08000A04
	ldr r5, _08000AD0 @ =gUnk_03006730
_08000A04:
	ldr r4, _08000AD4 @ =gUnk_03000E34
	ldr r4, [r4]
	adds r4, #0xb
	cmp r4, r5
	bhs _08000A3C
	ldr r4, _08000AD8 @ =gUnk_03000E34
	ldr r4, [r4]
	strb r3, [r4]
	adds r4, #1
	movs r3, #4
_08000A18:
	strb r1, [r4]
	adds r4, #1
	lsrs r1, r1, #8
	subs r3, #1
	bne _08000A18
	movs r3, #4
_08000A24:
	strb r0, [r4]
	adds r4, #1
	lsrs r0, r0, #8
	subs r3, #1
	bne _08000A24
	strb r2, [r4]
	adds r4, #1
	lsrs r2, r2, #8
	strb r2, [r4]
	adds r4, #1
	ldr r3, _08000ADC @ =gUnk_03000E34
	str r4, [r3]
_08000A3C:
	pop {r4, r5}
	mov pc, lr

	thumb_func_start sub_08000A40
sub_08000A40: @ 0x08000A40
	lsrs r1, r0, #1
	ldr r2, _08000AE0 @ =0x55555555
	ands r0, r2
	ands r1, r2
	adds r0, r0, r1
	lsrs r1, r0, #2
	ldr r2, _08000AE4 @ =0x33333333
	ands r0, r2
	ands r1, r2
	adds r0, r0, r1
	lsrs r1, r0, #4
	ldr r2, _08000AE8 @ =0x0F0F0F0F
	ands r0, r2
	ands r1, r2
	adds r0, r0, r1
	lsrs r1, r0, #8
	ldr r2, _08000AEC @ =0x00FF00FF
	ands r0, r2
	ands r1, r2
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	mov pc, lr

	thumb_func_start sub_08000A70
sub_08000A70: @ 0x08000A70
	movs r2, #0xff
	mvns r0, r0
	beq _08000AA6
	movs r2, #0
	ldr r1, _08000AF0 @ =0x0000FFFF
	tst r0, r1
	bne _08000A82
	movs r2, #0x10
	lsrs r0, r0, #0x10
_08000A82:
	movs r1, #0xff
	tst r0, r1
	bne _08000A8C
	adds r2, #8
	lsrs r0, r0, #8
_08000A8C:
	movs r1, #0xf
	tst r0, r1
	bne _08000A96
	adds r2, #4
	lsrs r0, r0, #4
_08000A96:
	movs r1, #3
	tst r0, r1
	bne _08000AA0
	adds r2, #2
	lsrs r0, r0, #2
_08000AA0:
	lsrs r0, r0, #1
	bhs _08000AA6
	adds r2, #1
_08000AA6:
	adds r0, r2, #0
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08000AAC
sub_08000AAC: @ 0x08000AAC
	lsrs r2, r1, #5
	lsls r2, r2, #2
	ldr r0, [r0, r2]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	lsrs r0, r1
	movs r1, #1
	ands r0, r1
	mov pc, lr
	.align 2, 0
_08000AC0: .4byte gUnk_03000F40
_08000AC4: .4byte 0xFFFFFFFF
_08000AC8: .4byte gUnk_030066B0
_08000ACC: .4byte gUnk_03000204
_08000AD0: .4byte gUnk_03006730
_08000AD4: .4byte gUnk_03000E34
_08000AD8: .4byte gUnk_03000E34
_08000ADC: .4byte gUnk_03000E34
_08000AE0: .4byte 0x55555555
_08000AE4: .4byte 0x33333333
_08000AE8: .4byte 0x0F0F0F0F
_08000AEC: .4byte 0x00FF00FF
_08000AF0: .4byte 0x0000FFFF
_08000AF4:
	.byte 0x10, 0x20, 0x20, 0x40
_08000AF8:
	.byte 0x08, 0x08, 0x10, 0x20
_08000AFC:
	.byte 0x02, 0x00, 0xF8, 0xFF
	.byte 0xFC, 0xFF, 0x00, 0x10, 0x0E, 0x23, 0x00, 0x00, 0xFC, 0xFF, 0x00, 0x00, 0x0E, 0x23, 0x00, 0x00
_08000B10:
	.byte 0x02, 0x00, 0xF8, 0xFF, 0xFC, 0xFF, 0x00, 0x10, 0x0F, 0x23, 0x00, 0x00, 0xFC, 0xFF, 0x00, 0x00
	.byte 0x0F, 0x23, 0x00, 0x00
_08000B24:
	.byte 0x02, 0x00, 0xF8, 0xFF, 0xFC, 0xFF, 0x00, 0x10, 0x10, 0x23, 0x00, 0x00
	.byte 0xFC, 0xFF, 0x00, 0x00, 0x10, 0x23, 0x00, 0x00
_08000B38:
	.byte 0x02, 0x00, 0xF8, 0xFF, 0xFC, 0xFF, 0x00, 0x00
	.byte 0x10, 0x23, 0x00, 0x00, 0xFC, 0xFF, 0x00, 0x10, 0x10, 0x23, 0x00, 0x00
_08000B4C:
	.byte 0x00, 0x00, 0x00, 0x00
_08000B50:
	.byte 0x02, 0x00, 0xF8, 0xFF, 0xFE, 0xFF, 0x00, 0x00, 0x0B, 0x13, 0x00, 0x00, 0xFE, 0xFF, 0x00, 0x10
	.byte 0x0B, 0x13, 0x00, 0x00
_08000B64:
	.byte 0x02, 0x00, 0xF8, 0xFF, 0xFE, 0xFF, 0x00, 0x00, 0x0C, 0x13, 0x00, 0x00
	.byte 0xFE, 0xFF, 0x00, 0x10, 0x0C, 0x13, 0x00, 0x00
_08000B78:
	.byte 0x02, 0x00, 0xF8, 0xFF, 0xFE, 0xFF, 0x00, 0x00
	.byte 0x0D, 0x13, 0x00, 0x00, 0xFE, 0xFF, 0x00, 0x10, 0x0D, 0x13, 0x00, 0x00
_08000B8C:
	.4byte _08000AFC
	.4byte _08000B10
	.4byte _08000B24
	.4byte _08000B38
_08000B9C:
	.4byte _08000B4C
	.4byte _08000B50
	.4byte _08000B64
	.4byte _08000B78

	thumb_func_start sub_08000BAC
sub_08000BAC: @ 0x08000BAC
	push {lr}
	push {r4, r5, r6, r7}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	mov r4, ip
	push {r4}
	ldr r0, _08000F6C @ =gUnk_03000204
	ldrb r0, [r0]
	ldr r1, _08000F70 @ =gUnk_03000954
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	eors r0, r0
	ldr r1, _08000F74 @ =gUnk_03000C10
	bl sub_08000C10
	ldr r1, _08000F78 @ =gUnk_03000210
	bl sub_08000C10
	ldr r1, _08000F7C @ =gUnk_03005C00
	bl sub_08000C10
	ldr r1, _08000F80 @ =gUnk_03000960
	bl sub_08000C10
	ldr r1, _08000F84 @ =gUnk_03005E04
	ldr r1, [r1]
	adds r2, r0, #0
	lsls r2, r2, #3
	adds r1, r1, r2
	ldr r3, _08000F88 @ =0x00000200
_08000BF0:
	cmp r0, #0x78
	bhs _08000BFC
	strh r3, [r1]
	adds r1, #8
	adds r0, #1
	b _08000BF0
_08000BFC:
	pop {r4}
	mov ip, r4
	pop {r4, r5, r6, r7}
	mov r8, r4
	mov sb, r5
	mov sl, r6
	mov fp, r7
	pop {r4, r5, r6, r7}
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08000C10
sub_08000C10: @ 0x08000C10
	push {lr}
	ldrb r2, [r1]
	orrs r2, r2
	beq _08000CFA
	push {r0, r1}
	adds r1, #4
	subs r2, #1
	lsls r2, r2, #2
	adds r2, r2, r1
	subs r3, r2, r1
	lsrs r3, r3, #2
	mov fp, r1
	orrs r3, r3
	beq _08000C82
_08000C2C:
	mov sl, r3
	lsls r3, r3, #2
	eors r6, r6
_08000C32:
	cmp r6, sl
	bhs _08000C7C
	subs r1, r2, r3
	lsls r0, r6, #2
	subs r1, r1, r0
_08000C3C:
	cmp r1, fp
	blo _08000C78
	ldr r4, [r1]
	ldr r5, [r4, #0x34]
	movs r0, #0x5e
	ldrb r0, [r4, r0]
	lsls r0, r0, #0x1e
	orrs r5, r0
	mov r8, r5
	adds r7, r1, r3
_08000C50:
	cmp r2, r7
	blo _08000C70
	ldr r5, [r7]
	ldr r0, [r5, #0x34]
	adds r5, #0x5e
	ldrb r5, [r5]
	lsls r5, r5, #0x1e
	orrs r5, r0
	cmp r8, r5
	bhs _08000C70
	ldr r5, [r7]
	subs r7, r7, r3
	str r5, [r7]
	lsls r0, r3, #1
	adds r7, r7, r0
	b _08000C50
_08000C70:
	subs r7, r7, r3
	str r4, [r7]
	subs r1, r1, r3
	b _08000C3C
_08000C78:
	adds r6, #1
	b _08000C32
_08000C7C:
	mov r3, sl
	lsrs r3, r3, #1
	bne _08000C2C
_08000C82:
	pop {r0, r1}
	eors r3, r3
	ldrb r2, [r1]
	strb r3, [r1]
	adds r1, #4
_08000C8C:
	cmp r2, r3
	beq _08000CFA
	push {r1, r2, r3}
	ldr r1, [r1]
	movs r2, #0x2e
	ldrb r2, [r1, r2]
	orrs r2, r2
	beq _08000CEE
	ldr r3, [r1, #0x38]
	orrs r3, r3
	bne _08000CE4
	push {r0}
	adds r0, r1, #0
	eors r1, r1
	bl sub_08009444
	adds r2, r1, #0
	adds r1, r0, #0
	pop {r0}
	cmp r2, #0x22
	beq _08000CCA
	cmp r2, #0x12
	bne _08000CE4
	ldr r2, _08000F8C @ =gUnk_03000E20
	ldrb r2, [r2]
	movs r3, #0x18
	ands r2, r3
	lsrs r2, r2, #1
	ldr r3, _08000F90 @ =_08000B9C
	ldr r2, [r3, r2]
	b _08000CDA
_08000CCA:
	ldrh r2, [r1, #0x32]
	ldrh r3, [r1, #0x36]
	eors r2, r3
	movs r3, #3
	ands r2, r3
	lsls r2, r2, #2
	ldr r3, _08000F94 @ =_08000B8C
	ldr r2, [r3, r2]
_08000CDA:
	bl sub_08000EFC
	bl sub_08000CFC
	b _08000CF2
_08000CE4:
	bl sub_08000CFC
	bl sub_08000E6C
	b _08000CF2
_08000CEE:
	bl sub_08000CFC
_08000CF2:
	pop {r1, r2, r3}
	adds r1, #4
	adds r3, #1
	b _08000C8C
_08000CFA:
	pop {pc}

	thumb_func_start sub_08000CFC
sub_08000CFC: @ 0x08000CFC
	adds r1, #0x1b
	ldrb r2, [r1]
	lsls r2, r2, #2
	ldr r6, _08000F98 @ =gUnk_0862F52C
	adds r2, r2, r6
	ldr r2, [r2]
	adds r2, r2, r6
	ldrb r5, [r1, #6]
	lsls r5, r5, #2
	adds r2, r2, r5
	ldr r2, [r2]
	adds r2, r2, r6
	ldrb r3, [r2]
	adds r4, r0, r3
	subs r4, #1
	cmp r4, #0x78
	blo _08000D20
	mov pc, lr
_08000D20:
	adds r2, #1
	adds r1, #1
	ldr r4, [r1]
	lsrs r4, r4, #4
	ldr r7, _08000F9C @ =0x0000F000
	ands r4, r7
	ldrh r7, [r1, #2]
	lsrs r7, r7, #4
	ldr r5, _08000FA0 @ =0x00000C00
	ands r7, r5
	orrs r4, r7
	ldrb r7, [r1]
	lsrs r7, r7, #6
	lsls r7, r7, #8
	orrs r4, r7
	mov r8, r4
	eors r5, r5
	eors r6, r6
	ldr r7, [r1]
	lsrs r7, r7, #2
	bhs _08000D50
	ldr r6, _08000FA4 @ =gUnk_03000470
	ldrh r5, [r6]
	ldrh r6, [r6, #2]
_08000D50:
	movs r4, #3
	ands r7, r4
	movs r4, #0x13
	ldrb r4, [r1, r4]
	eors r7, r4
	mov sb, r7
	movs r4, #4
	rors r7, r4
	ldr r4, [r1]
	orrs r7, r4
	ldr r4, _08000FA8 @ =0x3E003F00
	ands r7, r4
	mov fp, r7
	ldrh r7, [r1, #0x16]
	subs r5, r7, r5
	ldrh r7, [r1, #0x1a]
	subs r6, r7, r6
	ldrh r7, [r1, #0x1e]
	adds r6, r6, r7
	ldr r7, _08000FAC @ =gUnk_03005E04
	ldr r7, [r7]
	adds r4, r0, #0
	lsls r4, r4, #3
	adds r7, r7, r4
	adds r0, r0, r3
	push {r0, r1}
	adds r0, r7, #0
	ldrb r4, [r1, #4]
	mov ip, r4
	mov sl, r5
_08000D8C:
	push {r3, r6}
	mov r7, sb
	movs r3, #0
	ldrsb r5, [r2, r3]
	lsrs r7, r7, #1
	blo _08000D9A
	rsbs r5, r5, #0
_08000D9A:
	add r5, sl
	movs r3, #1
	ldrsb r4, [r2, r3]
	lsrs r7, r7, #1
	blo _08000DA8
	subs r6, r6, r4
	b _08000DAA
_08000DA8:
	adds r6, r6, r4
_08000DAA:
	mov r7, fp
	ldrb r1, [r2, #2]
	movs r3, #0xc0
	ands r1, r3
	lsls r3, r1, #8
	orrs r7, r3
	ldrb r4, [r2, #2]
	lsrs r4, r4, #4
	lsls r4, r4, #0x1e
	orrs r7, r4
	lsrs r4, r4, #0x1e
	orrs r1, r1
	beq _08000DDC
	lsrs r1, r1, #8
	bhs _08000DD2
	ldr r3, _08000FB0 @ =_08000AF4
	ldrb r1, [r3, r4]
	ldr r3, _08000FB4 @ =_08000AF8
	ldrb r3, [r3, r4]
	b _08000DF0
_08000DD2:
	ldr r3, _08000FB8 @ =_08000AF8
	ldrb r1, [r3, r4]
	ldr r3, _08000FBC @ =_08000AF4
	ldrb r3, [r3, r4]
	b _08000DF0
_08000DDC:
	movs r3, #2
	tst r4, r3
	beq _08000DEA
	adds r4, #1
	cmp r4, #3
	beq _08000DEA
	movs r4, #7
_08000DEA:
	adds r4, #1
	lsls r1, r4, #3
	lsls r3, r4, #3
_08000DF0:
	mov r4, sb
	lsrs r4, r4, #1
	blo _08000DF8
	subs r5, r5, r1
_08000DF8:
	lsrs r4, r4, #1
	blo _08000DFE
	subs r6, r6, r3
_08000DFE:
	ldr r4, _08000F88 @ =0x00000200
	tst r7, r4
	beq _08000E0C
	lsrs r1, r1, #1
	lsrs r3, r3, #1
	subs r5, r5, r1
	subs r6, r6, r3
_08000E0C:
	ldr r4, _08000FC0 @ =0x000001FF
	ands r5, r4
	lsrs r4, r4, #1
	ldr r3, _08000FC4 @ =0x00008000
	tst r6, r3
	beq _08000E22
	ands r6, r4
	movs r4, #0xa0
	cmp r6, r4
	bhs _08000E24
	b _08000E5E
_08000E22:
	ands r6, r4
_08000E24:
	orrs r7, r6
	lsls r5, r5, #0x10
	orrs r7, r5
	ldrb r5, [r2, #2]
	movs r6, #0xc
	ands r5, r6
	lsrs r6, r6, #1
	rors r5, r6
	eors r7, r5
	str r7, [r0]
	ldrb r7, [r2, #2]
	movs r6, #3
	ands r7, r6
	lsls r7, r7, #8
	add r7, r8
	ldrb r6, [r2, #3]
	add r6, ip
	adds r7, r7, r6
	ldrb r6, [r2, #4]
	lsls r6, r6, #0x19
	blo _08000E5A
	lsrs r6, r6, #0xd
	ldr r3, _08000F9C @ =0x0000F000
	ands r6, r3
	ldr r3, _08000FC8 @ =0x00000FFF
	ands r7, r3
	orrs r7, r6
_08000E5A:
	strh r7, [r0, #4]
	adds r0, #8
_08000E5E:
	pop {r3, r6}
	adds r2, #5
	subs r3, #1
	bne _08000D8C
	pop {r0, r1}
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08000E6C
sub_08000E6C: @ 0x08000E6C
	movs r2, #0x42
	ldrsb r2, [r1, r2]
	movs r3, #8
	tst r2, r3
	bne _08000E7E
	ldr r3, _08000FCC @ =gUnk_03000948
	ldrb r3, [r3]
	lsrs r3, r3, #1
	bhs _08000EF8
_08000E7E:
	movs r3, #4
	ands r2, r3
	bne _08000E8A
	ldrb r2, [r1, #0x1e]
	orrs r2, r2
	beq _08000EF8
_08000E8A:
	cmp r0, #0x78
	bhs _08000EF8
	mov r4, r8
	mov r5, sl
	movs r2, #0x12
	ldrsb r2, [r1, r2]
	push {r2}
	ldr r2, _08000FA0 @ =0x00000C00
	ands r4, r2
	ldrb r2, [r1]
	movs r3, #0x30
	ands r2, r3
	cmp r2, #0x10
	beq _08000EC6
	cmp r2, #0x20
	beq _08000EB6
	cmp r2, #0x30
	beq _08000EBE
	ldr r7, _08000FD0 @ =0x00004000
	ldr r3, _08000FD4 @ =0x00001301
	subs r5, #8
	b _08000ECC
_08000EB6:
	ldr r7, _08000FD8 @ =0x40004000
	ldr r3, _08000FDC @ =0x00001303
	subs r5, #0x10
	b _08000ECC
_08000EBE:
	ldr r7, _08000FD8 @ =0x40004000
	ldr r3, _08000FE0 @ =0x00001307
	subs r5, #0x10
	b _08000ECC
_08000EC6:
	eors r7, r7
	ldr r3, _08000FE4 @ =0x00001300
	subs r5, #4
_08000ECC:
	add r7, fp
	orrs r3, r4
	pop {r2}
	adds r6, r6, r2
	ldrb r2, [r1, #0x1e]
	subs r6, r6, r2
	ldr r2, _08000FC0 @ =0x000001FF
	ands r5, r2
	lsrs r2, r2, #1
	subs r6, #3
	ands r6, r2
	orrs r7, r6
	lsls r5, r5, #0x10
	orrs r7, r5
	ldr r4, _08000FE8 @ =gUnk_03005E04
	ldr r4, [r4]
	adds r2, r0, #0
	lsls r2, r2, #3
	adds r4, r4, r2
	str r7, [r4]
	strh r3, [r4, #4]
	adds r0, #1
_08000EF8:
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08000EFC
sub_08000EFC: @ 0x08000EFC
	push {r1}
	ldr r6, _08000FEC @ =gUnk_03000470
	ldrh r7, [r6]
	ldrh r5, [r1, #0x32]
	subs r5, r5, r7
	ldrh r7, [r6, #2]
	ldrh r6, [r1, #0x36]
	subs r6, r6, r7
	movs r3, #0x2e
	ldrsb r3, [r1, r3]
	adds r6, r6, r3
	ldrh r7, [r1, #0x1e]
	lsrs r7, r7, #4
	ldr r3, _08000FA0 @ =0x00000C00
	ands r7, r3
	ldrh r3, [r2]
	adds r2, #2
_08000F1E:
	subs r3, #1
	bmi _08000F66
	cmp r0, #0x78
	bhs _08000F66
	push {r3, r5, r6}
	eors r4, r4
	ldrsh r3, [r2, r4]
	adds r5, r5, r3
	ldr r3, _08000FC0 @ =0x000001FF
	ands r5, r3
	adds r4, #2
	ldrsh r3, [r2, r4]
	adds r6, r6, r3
	movs r3, #0xff
	ands r6, r3
	adds r2, r2, r4
	adds r2, #2
	ldr r4, _08000FF0 @ =gUnk_03005E04
	ldr r4, [r4]
	adds r3, r0, #0
	lsls r3, r3, #3
	adds r4, r4, r3
	ldrh r3, [r2]
	orrs r5, r3
	adds r2, #2
	ldrh r3, [r2]
	adds r2, #2
	orrs r3, r7
	strh r6, [r4]
	adds r4, #2
	strh r5, [r4]
	adds r4, #2
	strh r3, [r4]
	adds r0, #1
	pop {r3, r5, r6}
	b _08000F1E
_08000F66:
	pop {r1}
	mov pc, lr
	.align 2, 0
_08000F6C: .4byte gUnk_03000204
_08000F70: .4byte gUnk_03000954
_08000F74: .4byte gUnk_03000C10
_08000F78: .4byte gUnk_03000210
_08000F7C: .4byte gUnk_03005C00
_08000F80: .4byte gUnk_03000960
_08000F84: .4byte gUnk_03005E04
_08000F88: .4byte 0x00000200
_08000F8C: .4byte gUnk_03000E20
_08000F90: .4byte _08000B9C
_08000F94: .4byte _08000B8C
_08000F98: .4byte gUnk_0862F52C
_08000F9C: .4byte 0x0000F000
_08000FA0: .4byte 0x00000C00
_08000FA4: .4byte gUnk_03000470
_08000FA8: .4byte 0x3E003F00
_08000FAC: .4byte gUnk_03005E04
_08000FB0: .4byte _08000AF4
_08000FB4: .4byte _08000AF8
_08000FB8: .4byte _08000AF8
_08000FBC: .4byte _08000AF4
_08000FC0: .4byte 0x000001FF
_08000FC4: .4byte 0x00008000
_08000FC8: .4byte 0x00000FFF
_08000FCC: .4byte gUnk_03000948
_08000FD0: .4byte 0x00004000
_08000FD4: .4byte 0x00001301
_08000FD8: .4byte 0x40004000
_08000FDC: .4byte 0x00001303
_08000FE0: .4byte 0x00001307
_08000FE4: .4byte 0x00001300
_08000FE8: .4byte gUnk_03005E04
_08000FEC: .4byte gUnk_03000470
_08000FF0: .4byte gUnk_03005E04
_08000FF4: .4byte gUnk_03006A30
_08000FF8: .4byte gUnk_03006AC0
_08000FFC: .4byte gUnk_03006B50
_08001000: .4byte gUnk_03006BE0
_08001004:
	.byte 0x0E, 0x00, 0x00, 0xE0, 0xE0, 0x00, 0x00, 0x0E
_0800100C:
	.byte 0x40, 0x10, 0x80, 0x20
_08001010:
	.byte 0x42, 0x00, 0x04, 0x00, 0x03, 0x00, 0x08, 0x00, 0x02, 0x00, 0x0C, 0x00, 0x47, 0x00, 0x10, 0x00
	.byte 0x48, 0x00, 0x14, 0x00, 0x01, 0x00, 0x18, 0x00, 0x46, 0x00, 0xB0, 0x00, 0x04, 0x00, 0x1C, 0x00
	.byte 0x52, 0x00, 0x20, 0x00, 0x53, 0x00, 0x24, 0x00, 0x54, 0x00, 0x28, 0x00, 0x55, 0x00, 0x2C, 0x00
	.byte 0x50, 0x00, 0x34, 0x00, 0x4E, 0x00, 0x38, 0x00, 0x4A, 0x00, 0x3C, 0x00, 0x4C, 0x00, 0x40, 0x00
	.byte 0x4F, 0x00, 0x34, 0x00, 0x4D, 0x00, 0x38, 0x00, 0x49, 0x00, 0x3C, 0x00, 0x4B, 0x00, 0x40, 0x00
	.byte 0x19, 0x00, 0x44, 0x00, 0x1A, 0x00, 0x48, 0x00, 0x17, 0x00, 0x4C, 0x00, 0x18, 0x00, 0x50, 0x00
	.byte 0x1D, 0x00, 0x54, 0x00, 0x1E, 0x00, 0x58, 0x00, 0x1B, 0x00, 0x5C, 0x00, 0x1C, 0x00, 0x60, 0x00
	.byte 0x06, 0x00, 0x64, 0x00, 0x05, 0x00, 0x68, 0x00, 0x21, 0x00, 0x6C, 0x00, 0x12, 0x00, 0x70, 0x00
	.byte 0x13, 0x00, 0x74, 0x00, 0x3D, 0x00, 0x78, 0x00, 0x07, 0x00, 0x7C, 0x00, 0x0A, 0x00, 0x80, 0x00
	.byte 0x08, 0x00, 0x84, 0x00, 0x09, 0x00, 0x88, 0x00, 0x0B, 0x00, 0x8C, 0x00, 0x24, 0x00, 0x90, 0x00
	.byte 0x20, 0x00, 0x94, 0x00, 0x16, 0x00, 0xA0, 0x00, 0x1F, 0x00, 0x98, 0x00, 0x14, 0x00, 0xA4, 0x00
	.byte 0x15, 0x00, 0xA4, 0x00, 0x58, 0x00, 0x18, 0x00, 0x59, 0x00, 0x18, 0x00, 0x56, 0x00, 0x18, 0x00
	.byte 0x5A, 0x00, 0x18, 0x00, 0x25, 0x00, 0xA8, 0x00, 0x2C, 0x00, 0xAC, 0x00, 0x2E, 0x00, 0x18, 0x00
	.byte 0x2F, 0x00, 0x18, 0x00, 0x30, 0x00, 0x18, 0x00, 0x31, 0x00, 0x18, 0x00, 0x32, 0x00, 0x18, 0x00
	.byte 0x33, 0x00, 0x18, 0x00, 0x35, 0x00, 0x18, 0x00, 0x36, 0x00, 0x18, 0x00, 0x37, 0x00, 0x18, 0x00
	.byte 0x38, 0x00, 0x18, 0x00, 0x34, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00
_0800110C: .4byte sub_0800247C
_08001110: .4byte sub_08002620
_08001114: .4byte sub_080026BC
_08001118: .4byte sub_08002738
_0800111C: .4byte sub_08002768
_08001120: .4byte sub_08002770
_08001124: .4byte sub_08002458
_08001128: .4byte sub_08002668
_0800112C: .4byte sub_080027BC
_08001130: .4byte sub_080027CC
_08001134: .4byte sub_080027E0
_08001138: .4byte sub_080027EC
_0800113C: .4byte sub_08002618
_08001140: .4byte sub_08002838
_08001144: .4byte sub_0800284C
_08001148: .4byte sub_08002860
_0800114C: .4byte sub_08002878
_08001150: .4byte sub_080028D0
_08001154: .4byte sub_080028DC
_08001158: .4byte sub_080028E8
_0800115C: .4byte sub_080028F4
_08001160: .4byte sub_08002948
_08001164: .4byte sub_08002954
_08001168: .4byte sub_08002960
_0800116C: .4byte sub_0800296C
_08001170: .4byte sub_08002978
_08001174: .4byte sub_08002B0C
_08001178: .4byte sub_0800298C
_0800117C: .4byte sub_08002990
_08001180: .4byte sub_08002530
_08001184: .4byte sub_08002470
_08001188: .4byte sub_08002A74
_0800118C: .4byte sub_08002A80
_08001190: .4byte sub_08002A8C
_08001194: .4byte sub_08002A98
_08001198: .4byte sub_08002A5C
_0800119C: .4byte sub_080026EC
_080011A0: .4byte sub_08002A08
_080011A4: .4byte sub_08002900
_080011A8: .4byte sub_08002618
_080011AC: .4byte sub_08002A24
_080011B0: .4byte sub_080024AC
_080011B4: .4byte sub_08002AF8
_080011B8: .4byte sub_0800244C
_080011BC: .4byte sub_08002458
_080011C0:
	.byte 0xFF, 0x08, 0x18, 0xFF, 0x00, 0x04, 0x1C, 0xFF, 0x10, 0x0C, 0x14, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
_080011D0:
	.byte 0x00, 0xF8, 0x08, 0x00, 0x00, 0x08, 0xF8, 0x00
_080011D8:
	.4byte _080011E8
	.4byte _080011FC
	.4byte _08001210
	.4byte _08001224
_080011E8:
	.byte 0x58, 0x00, 0x01, 0x00, 0x4C, 0x00, 0x01, 0x00
	.byte 0x64, 0x00, 0x08, 0x00, 0x66, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00
_080011FC:
	.byte 0x59, 0x00, 0x03, 0x00
	.byte 0x4E, 0x00, 0x03, 0x00, 0x66, 0x00, 0x02, 0x00, 0x67, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00
_08001210:
	.byte 0x56, 0x00, 0x05, 0x00
	.byte 0x4A, 0x00, 0x05, 0x00, 0x65, 0x00, 0x06, 0x00, 0x67, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00
_08001224:
	.byte 0x5A, 0x00, 0x07, 0x00, 0x50, 0x00, 0x07, 0x00, 0x64, 0x00, 0x08, 0x00
	.byte 0x65, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00

	thumb_func_start sub_08001238
sub_08001238: @ 0x08001238
	push {r0, lr}
	bl sub_0800D1C0
	pop {r0, pc}

	thumb_func_start sub_08001240
sub_08001240: @ 0x08001240
	push {lr}
	bl sub_08001528
	adds r0, r3, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0800124C
sub_0800124C: @ 0x0800124C
	push {lr}
	mov r3, sl
	push {r3, r4, r5}
	bl sub_080013D0
	pop {r3, r4, r5}
	mov sl, r3
	pop {pc}

	thumb_func_start sub_0800125C
sub_0800125C: @ 0x0800125C
	push {lr}
	ldrb r3, [r1, #0xa]
	movs r4, #0x10
	orrs r3, r4
	strb r3, [r1, #0xa]
	pop {pc}

	thumb_func_start sub_08001268
sub_08001268: @ 0x08001268
	push {lr}
	bl sub_080012D8
	adds r0, r3, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08001274
sub_08001274: @ 0x08001274
	ldrb r2, [r0, #0x15]
	adds r2, #1
	strb r2, [r0, #0x15]
	mov pc, lr

	thumb_func_start sub_0800127C
sub_0800127C: @ 0x0800127C
	push {lr}
	bl sub_08001D5C
	pop {r3}
	mov lr, r3
	ldrb r2, [r1, #0xc]
	orrs r2, r2
	bne sub_08001290
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08001290
sub_08001290: @ 0x08001290
	eors r3, r3
	strb r3, [r1, #0xc]
	strb r2, [r0, #0x14]
	strb r3, [r0, #0x15]
	strb r3, [r0, #0x16]
	bl sub_080045FC
	pop {pc}

	thumb_func_start sub_080012A0
sub_080012A0: @ 0x080012A0
	adds r1, r0, #0
	movs r0, r0

	thumb_func_start sub_080012A4
sub_080012A4: @ 0x080012A4
	ldrb r2, [r1, #5]
	eors r2, r2
	strb r2, [r1, #5]
	strb r2, [r1, #1]
	ldr r3, [r1, #0x28]
	str r2, [r3, #0x6c]
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_080012B4
sub_080012B4: @ 0x080012B4
	movs r2, #1
	strb r2, [r0, #0x14]
	eors r2, r2
	strb r2, [r0, #0x15]
	strb r2, [r0, #0x16]
	mov pc, lr

	thumb_func_start sub_080012C0
sub_080012C0: @ 0x080012C0
	movs r2, #0x13
	strb r2, [r0, #0x14]
	eors r2, r2
	strb r2, [r0, #0x15]
	strb r2, [r0, #0x16]
	mov pc, lr

	thumb_func_start sub_080012CC
sub_080012CC: @ 0x080012CC
	push {lr}
	bl sub_080012D8
	adds r0, r3, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080012D8
sub_080012D8: @ 0x080012D8
	push {lr}
	b _080012DC
_080012DC:
	ldrh r3, [r1]
	orrs r3, r3
	beq _080012F0
	adds r1, #2
	ldrh r2, [r1]
	adds r1, #2
	cmp r0, r3
	bne _080012DC
	adds r3, r2, #0
	movs r2, #1
_080012F0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080012F4
sub_080012F4: @ 0x080012F4
	push {r4, lr}
	bl sub_080012FC
	pop {r4, pc}

	thumb_func_start sub_080012FC
sub_080012FC: @ 0x080012FC
	push {lr}
	bl sub_080012B4
	ldrb r1, [r0, #0x1c]
	movs r2, #0xfc
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0, #0x1c]
	bl sub_08001D5C
	ldr r2, _080016F8 @ =0x0000FEFE
	ldrh r3, [r1, #0x36]
	ands r3, r2
	strh r3, [r1, #0x36]
	eors r2, r2
	movs r3, #0x26
	strb r2, [r1, r3]
	bl sub_080020C8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08001328
sub_08001328: @ 0x08001328
	push {lr}
	bl sub_08001D5C
	movs r2, #0x42
	ldrsb r2, [r0, r2]
	orrs r2, r2
	beq _080013CC
	ldrb r3, [r1, #7]
	lsrs r3, r3, #8
	bhs _080013C6
	movs r3, #0x26
	ldrb r3, [r1, r3]
	orrs r3, r3
	beq _0800134C
	movs r4, #0xf
	ands r3, r4
	subs r3, #1
	bne _080013C6
_0800134C:
	ldrb r3, [r0, #0x14]
	cmp r3, #3
	beq _080013C6
	ldr r4, _080016FC @ =0xFFFFFFFF
	lsls r2, r2, #1
	bhs _0800137E
	movs r4, #1
	cmp r3, #0xb
	beq _080013C6
	ldrb r2, [r1, #0x1e]
	orrs r2, r2
	bne _080013C6
	ldrb r2, [r1, #5]
	orrs r2, r2
	beq _0800136E
	cmp r2, #4
	blo _080013C6
_0800136E:
	ldrb r2, [r1, #0xf]
	movs r3, #0x40
	tst r2, r3
	bne _080013C6
	movs r2, #2
	ldrsb r2, [r1, r2]
	orrs r2, r2
	bne _080013C6
_0800137E:
	movs r2, #0x42
	ldrb r3, [r0, r2]
	subs r3, r3, r4
	strb r3, [r0, r2]
	beq _080013C6
	ldrb r2, [r1, #7]
	movs r3, #0xdf
	ands r2, r3
	strb r2, [r1, #7]
	movs r3, #0x3d
	ldrsb r3, [r0, r3]
	orrs r3, r3
	beq _080013B6
	bmi _080013B6
	movs r3, #0x26
	ldrb r3, [r1, r3]
	orrs r3, r3
	bne _080013B6
	ldrb r3, [r0, #0x14]
	cmp r3, #9
	beq _080013B6
	ldrb r3, [r1, #2]
	orrs r3, r3
	bne _080013B6
	bl sub_080076C4
	movs r2, #0x14
	strh r2, [r1, #8]
_080013B6:
	push {r0}
	movs r1, #0x3e
	ldrb r2, [r0, r1]
	ldr r1, _08001700 @ =0x00000280
	bl sub_08003010
	pop {r0}
	b _080013CC
_080013C6:
	movs r1, #0x42
	eors r2, r2
	strb r2, [r0, r1]
_080013CC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080013D0
sub_080013D0: @ 0x080013D0
	push {lr}
	eors r2, r2
	adds r5, r2, #0
	push {r1}
	mov sl, r1
	bl sub_0800777C
	pop {r1}
	bne _080013F8
	movs r4, #0x2a
	ldrb r4, [r0, r4]
	lsrs r4, r4, #1
	ldr r2, _08001704 @ =_0800100C
	ldrb r3, [r2, r4]
	ldr r2, _08001708 @ =gUnk_03000510
	ldrb r2, [r2]
	ands r3, r2
	beq _080013F8
	adds r4, #1
	adds r5, r4, #0
_080013F8:
	adds r3, r5, #0
	pop {pc}

	thumb_func_start sub_080013FC
sub_080013FC: @ 0x080013FC
	mov r3, lr
	push {r3, r4, r5, r6, r7}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	ldrb r2, [r0, #0x1c]
	movs r3, #0xfb
	ands r2, r3
	strb r2, [r0, #0x1c]
	movs r3, #0x2a
	ldrb r3, [r0, r3]
	cmp r3, #5
	blo _08001420
	movs r3, #4
	orrs r2, r3
	strb r2, [r0, #0x1c]
_08001420:
	bl sub_08001D5C
	movs r2, #0xff
	movs r3, #0x35
	strb r2, [r1, r3]
	bl sub_08001468
	movs r3, #0x2a
	ldrb r2, [r0, r3]
	lsrs r2, r2, #1
	ldrb r3, [r1, #8]
	movs r4, #0xa4
	cmp r3, r4
	bhs _0800143E
	adds r3, r3, r2
_0800143E:
	adds r2, r3, #0
	ldrb r4, [r1, #9]
	ldrb r3, [r0, #0x1b]
	cmp r4, r3
	bne _08001450
	movs r3, #0x23
	ldrb r3, [r0, r3]
	cmp r2, r3
	beq _0800145A
_08001450:
	adds r1, r2, #0
	strb r4, [r0, #0x1b]
	adds r2, r4, #0
	bl sub_08003840
_0800145A:
	pop {r4, r5, r6, r7}
	mov r8, r4
	mov sb, r5
	mov sl, r6
	mov fp, r7
	pop {r3, r4, r5, r6, r7}
	mov pc, r3

	thumb_func_start sub_08001468
sub_08001468: @ 0x08001468
	push {lr}
	push {r4}
	ldr r2, _0800170C @ =_080071A8
	ldrb r3, [r0, #0xa]
	lsls r3, r3, #2
	ldr r2, [r2, r3]
	eors r3, r3
	mov r8, r3
	movs r3, #4
_0800147A:
	ldrb r4, [r2, #0xf]
	cmp r8, r4
	bhs _08001486
	mov r8, r4
	ldrh r4, [r2, #0x10]
	mov sb, r4
_08001486:
	adds r2, #0x1c
	subs r3, #1
	bne _0800147A
	pop {r4}
	movs r3, #0xe
	adds r3, r3, r1
	ldrb r3, [r3]
	cmp r3, r8
	bhs _080014A2
	mov r3, sb
	strh r3, [r1, #8]
	lsrs r3, r3, #8
	strb r3, [r0, #0x1b]
	pop {pc}
_080014A2:
	movs r3, #0x26
	ldrb r3, [r1, r3]
	orrs r3, r3
	beq _080014B4
	lsrs r3, r3, #8
	blo _080014C0
	ldr r2, _08001710 @ =0x000001AC
	strh r2, [r1, #8]
	b _080014C0
_080014B4:
	movs r2, #4
	ldrh r3, [r1, #8]
	cmp r2, r3
	bne _080014C0
	bl sub_080014C4
_080014C0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080014C4
sub_080014C4: @ 0x080014C4
	push {lr}
	push {r4}
	ldrb r2, [r1, #8]
	ldrb r3, [r1, #0xb]
	orrs r3, r3
	bne _0800150A
	movs r4, #6
	ldrsb r3, [r1, r4]
	lsls r3, r3, #1
	bhs _0800150A
	orrs r3, r3
	bne _080014FC
	lsrs r3, r3, #1
	orrs r3, r3
	beq _080014E8
	subs r3, #1
	strb r3, [r1, #6]
	b _080014F4
_080014E8:
	push {r2}
	bl sub_080013D0
	pop {r2}
	orrs r3, r3
	beq _08001508
_080014F4:
	ldrb r3, [r0, #0x18]
	adds r3, #1
	cmp r3, #4
	blo _08001508
_080014FC:
	movs r2, #0x2a
	ldrb r2, [r0, r2]
	movs r4, #0x35
	strb r2, [r1, r4]
	ldr r2, _08001714 @ =0x00000230
	b _0800150A
_08001508:
	strb r3, [r0, #0x18]
_0800150A:
	strh r2, [r1, #8]
	pop {r4}
	pop {pc}

	thumb_func_start sub_08001510
sub_08001510: @ 0x08001510
	push {lr}
	bl sub_08001D5C
	eors r2, r2
	strb r2, [r1, #0x10]
	bl sub_08001528
	strb r3, [r1, #0x12]
	ldr r4, _08001718 @ =_0800110C
	adds r4, r4, r3
	ldr r4, [r4]
	bx r4

	thumb_func_start sub_08001528
sub_08001528: @ 0x08001528
	push {lr}
	push {r0}
	push {r1}
	movs r1, #0
	movs r2, #3
	ldrh r3, [r0, #0x32]
	adds r1, r1, r3
	ldrh r3, [r0, #0x36]
	adds r2, r2, r3
	ldr r3, _0800171C @ =0x000003F0
	ands r1, r3
	ands r2, r3
	lsrs r1, r1, #4
	lsls r2, r2, #2
	adds r2, r2, r1
	lsls r2, r2, #1
	push {r2}
	movs r1, #0
	movs r2, #3
	bl sub_080093F8
	ldr r3, _08001720 @ =0x00004000
	tst r1, r3
	bne _0800155A
	adds r3, r1, #0
_0800155A:
	pop {r2}
	pop {r1}
	movs r4, #0x22
	ldrh r4, [r1, r4]
	push {r4}
	cmp r2, r4
	bne _0800156E
	ldrh r4, [r1, #0x24]
	cmp r3, r4
	beq _08001578
_0800156E:
	movs r4, #0x22
	strh r2, [r1, r4]
	strh r3, [r1, #0x24]
	eors r4, r4
	strb r4, [r1, #0x11]
_08001578:
	ldrb r4, [r1, #0x11]
	adds r4, #1
	strb r4, [r1, #0x11]
	ldrb r4, [r1, #0x12]
	strb r4, [r1, #0x13]
	push {r1}
	movs r1, #0
	movs r2, #3
	bl sub_08009444
	adds r0, r1, #0
	ldr r1, _08001720 @ =0x00004000
	tst r0, r1
	beq _08001598
	movs r3, #0x30
	b _0800159E
_08001598:
	ldr r1, _08001724 @ =_08001010
	bl sub_080012D8
_0800159E:
	pop {r1}
	pop {r2}
	pop {r0}
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080015A8
sub_080015A8: @ 0x080015A8
	push {lr}
	ldr r1, _08001728 @ =gUnk_03000510
	ldrb r1, [r1]
	lsrs r1, r1, #4
	ldr r2, _0800172C @ =_080011C0
	ldrb r3, [r1, r2]
	bl sub_08001D5C
	strb r3, [r1, #0xd]
	pop {pc}

	thumb_func_start sub_080015BC
sub_080015BC: @ 0x080015BC
	push {lr}
	ldrb r2, [r1, #0x1e]
	orrs r2, r2
	bne _080015F2
	movs r2, #0x26
	ldrb r2, [r1, r2]
	orrs r2, r2
	bne _08001650
	ldrh r2, [r1, #0x36]
	ldr r3, _08001730 @ =0x00000400
	tst r2, r3
	bne _080015F2
	movs r3, #4
	tst r2, r3
	bne _08001650
	ldrb r2, [r1, #0x1b]
	movs r3, #0x40
	tst r2, r3
	bne _08001650
	ldrb r2, [r1, #0xd]
	movs r3, #0x80
	tst r2, r3
	bne _08001650
	movs r3, #0x2b
	ldrb r3, [r0, r3]
	cmp r2, r3
	bne _08001650
_080015F2:
	push {r1}
	bl sub_08007780
	pop {r1}
	bne _08001650
	movs r3, #0x2a
	ldrb r3, [r0, r3]
	lsrs r3, r3, #1
	lsls r3, r3, #1
	push {r1}
	push {r3}
	ldr r2, _08001734 @ =_080011D0
	ldrsb r1, [r2, r3]
	adds r3, #1
	ldrsb r2, [r2, r3]
	bl sub_08009444
	adds r2, r1, #0
	pop {r3}
	lsls r3, r3, #1
	ldr r1, _08001738 @ =_080011D8
	ldr r1, [r1, r3]
	push {r0}
	adds r0, r2, #0
	bl sub_080012D8
	pop {r0}
	pop {r1}
	beq _08001654
	movs r2, #0x80
	strb r2, [r1, #6]
	ldrb r2, [r1, #0x1e]
	orrs r2, r2
	bne _08001640
	ldrb r2, [r0, #0x18]
	adds r2, #1
	strb r2, [r0, #0x18]
	cmp r2, #4
	blo _08001654
_08001640:
	subs r3, #1
	movs r2, #0x2a
	strb r3, [r0, r2]
	pop {r2}
	movs r2, #0x81
	strb r2, [r1, #2]
	movs r2, #4
	b sub_08001290
_08001650:
	eors r2, r2
	strb r2, [r0, #0x18]
_08001654:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08001658
sub_08001658: @ 0x08001658
	ldr r2, [r0, #0x38]
	orrs r2, r2
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08001660
sub_08001660: @ 0x08001660
	ldrh r2, [r1, #0x36]
	ldr r3, _0800173C @ =0x00000200
	orrs r2, r3
	strh r2, [r1, #0x36]
	bl sub_080012A4
	eors r2, r2
	movs r3, #0x42
	strb r2, [r0, r3]
	ldrb r2, [r0, #0x14]
	cmp r2, #3
	bne _0800167A
	pop {pc}
_0800167A:
	ldrb r2, [r1, #0x11]
	cmp r2, #0xb
	blo _08001684
	bl sub_0800125C
_08001684:
	adds r4, r0, #0
	movs r3, #3
	ands r2, r3
	beq _08001692
	subs r2, #1
	beq _080016A6
	pop {pc}
_08001692:
	adds r4, #0x36
	ldrh r2, [r4]
	adds r2, #3
	ldr r3, _08001740 @ =0x0000FFF0
	ands r3, r2
	adds r3, #8
	ldrh r2, [r4]
	subs r3, r3, r2
	blo _080016C0
	b _080016B6
_080016A6:
	adds r4, #0x32
	ldrh r2, [r4]
	ldr r3, _08001740 @ =0x0000FFF0
	ands r3, r2
	adds r3, #8
	ldrh r2, [r4]
	subs r3, r3, r2
	blo _080016C0
_080016B6:
	subs r4, #2
	ldr r2, [r4]
	ldr r3, _08001744 @ =0x00012800
	adds r2, r2, r3
	b _080016C8
_080016C0:
	subs r4, #2
	ldr r2, [r4]
	ldr r3, _08001744 @ =0x00012800
	subs r2, r2, r3
_080016C8:
	str r2, [r4]
	ldrh r2, [r0, #0x32]
	movs r3, #0xf
	ands r2, r3
	subs r2, #7
	cmp r2, #3
	bhs _080016F6
	ldrh r2, [r0, #0x36]
	movs r3, #0xf
	ands r2, r3
	subs r2, #7
	cmp r2, #3
	bhs _080016F6
	ldrh r2, [r1, #0x36]
	movs r3, #0x80
	ands r2, r3
	bne _080016EE
	bl sub_080076C4
_080016EE:
	movs r2, #3
	pop {r3}
	ldr r3, _08001748 @ =sub_08001290
	bx r3
_080016F6:
	pop {pc}
	.align 2, 0
_080016F8: .4byte 0x0000FEFE
_080016FC: .4byte 0xFFFFFFFF
_08001700: .4byte 0x00000280
_08001704: .4byte _0800100C
_08001708: .4byte gUnk_03000510
_0800170C: .4byte _080071A8
_08001710: .4byte 0x000001AC
_08001714: .4byte 0x00000230
_08001718: .4byte _0800110C
_0800171C: .4byte 0x000003F0
_08001720: .4byte 0x00004000
_08001724: .4byte _08001010
_08001728: .4byte gUnk_03000510
_0800172C: .4byte _080011C0
_08001730: .4byte 0x00000400
_08001734: .4byte _080011D0
_08001738: .4byte _080011D8
_0800173C: .4byte 0x00000200
_08001740: .4byte 0x0000FFF0
_08001744: .4byte 0x00012800
_08001748: .4byte sub_08001290
_0800174C:
	.byte 0x00, 0xF0, 0x10, 0x00
	.byte 0x00, 0x10, 0xF0, 0x00
_08001754:
	.byte 0x00, 0xF8, 0x08, 0x00, 0x00, 0x08, 0xF8, 0x00
_0800175C:
	.byte 0x4A, 0x00, 0x01, 0x00
	.byte 0x4C, 0x00, 0x03, 0x00, 0x50, 0x00, 0x02, 0x00, 0x4E, 0x00, 0x04, 0x00, 0x49, 0x00, 0x01, 0x00
	.byte 0x4B, 0x00, 0x03, 0x00, 0x4F, 0x00, 0x02, 0x00, 0x4D, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00
_08001780:
	.byte 0x80, 0xEC, 0x10, 0x73, 0xCE, 0x08, 0x37, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x0F, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x33, 0x33, 0xCC, 0xCC
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00
_080017B0:
	.byte 0xC8, 0xFE, 0x31, 0xF7, 0xEF, 0x8C, 0x7F, 0x13, 0x99, 0x99, 0x0F, 0xF0, 0x00, 0x00, 0x0F, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x33, 0x33, 0xCC, 0xCC
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00

	thumb_func_start sub_080017E0
sub_080017E0: @ 0x080017E0
	push {lr}
	bl sub_08001B68
	beq _080017F8
	b _080017F4
	.align 2, 0

	thumb_func_start sub_080017EC
sub_080017EC: @ 0x080017EC
	push {lr}
	bl sub_08001B70
	beq _080017F8
_080017F4:
	movs r0, #1
	b _080017FA
_080017F8:
	eors r0, r0
_080017FA:
	pop {pc}

	thumb_func_start sub_080017FC
sub_080017FC: @ 0x080017FC
	push {r4, r5, r6, r7, lr}
	ldrb r1, [r0, #0xb]
	lsrs r1, r1, #8
	bhs _08001808
	bl sub_080019FC
_08001808:
	ldrh r1, [r0, #0xc]
	movs r2, #0x2b
	adds r2, r2, r0
	ldrb r2, [r2]
	bl sub_08003010
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08001818
sub_08001818: @ 0x08001818
	push {lr}
	bl sub_08001D5C
	ldrb r2, [r1, #0x1e]
	movs r3, #0x40
	tst r2, r3
	beq _080017FA
	movs r3, #0x20
	tst r2, r3
	beq _0800183A
	movs r3, #0x2a
	ldrb r3, [r0, r3]
	lsrs r3, r3, #1
	lsls r3, r3, #3
	strb r3, [r1, #0xd]
	movs r2, #0x2b
	strb r3, [r0, r2]
_0800183A:
	ldrb r2, [r1, #0x1e]
	movs r3, #0x80
	tst r2, r3
	beq _080018AA
	ldr r1, [r0, #0x64]
	push {r1}
	bl sub_08007880
	pop {r1}
	bne _08001860
	eors r2, r2
	strb r2, [r1, #0x1e]
	bl sub_08001D5C
	ldrb r2, [r1, #0x1e]
	movs r3, #0x7f
	ands r2, r3
	strb r2, [r1, #0x1e]
	b _080018AA
_08001860:
	movs r2, #0x2a
	ldrb r2, [r0, r2]
	movs r3, #0x32
	lsrs r2, r2, #2
	bhs _0800186C
	movs r3, #0x36
_0800186C:
	ldr r2, [r0, #0x64]
	ldr r2, [r2, #0x28]
	ldrh r1, [r0, r3]
	ldrh r3, [r2, r3]
	subs r1, r1, r3
	bpl _0800187A
	rsbs r1, r1, #0
_0800187A:
	movs r3, #0x10
	subs r3, r3, r1
	bmi _08001920
	lsls r3, r3, #8
	str r3, [r2, #0xc]
	movs r3, #0x2b
	ldrb r1, [r0, r3]
	strb r1, [r2, r3]
	push {r0, r2}
	adds r0, r2, #0
	bl sub_080017FC
	pop {r0, r2}
	movs r3, #0x2b
	ldrb r3, [r2, r3]
	lsls r3, r3, #1
	ldr r1, _08001C8C @ =_08002DBC
	ldrh r3, [r3, r1]
	ldrh r2, [r2, #0x2c]
	ands r2, r3
	beq _08001920
	eors r2, r2
	str r2, [r0, #0xc]
	b _08001920
_080018AA:
	bl sub_08001D5C
	ldrb r2, [r1, #0xf]
	movs r3, #0x80
	tst r2, r3
	bne _08001920
	push {r1}
	adds r1, r0, #0
	bl sub_08007860
	pop {r2}
	beq _08001920
	push {r0, r2}
	adds r0, r1, #0
	bl sub_080076C4
	pop {r0, r2}
	str r2, [r1, #0x60]
	movs r3, #0x2a
	ldrb r2, [r0, r3]
	strb r2, [r1, r3]
	ldrb r2, [r1, #0xa]
	bl sub_08001D60
	movs r3, #0x60
	strb r3, [r1, #0x1e]
	str r1, [r0, #0x64]
	push {r0, r1}
	bl sub_080123E8
	adds r2, r0, #0
	pop {r0, r1}
	beq _08001914
	push {r0, r1, r2}
	movs r0, #2
	adds r1, r2, #0
	bl sub_08012728
	pop {r0, r1, r2}
	movs r3, #8
	strb r3, [r2, #9]
	movs r3, #8
	strb r3, [r2, #8]
	movs r3, #0x80
	strb r3, [r2, #0x19]
	ldr r3, [r1, #0x28]
	str r3, [r2, #0x54]
	ldrb r3, [r3, #0xa]
	strb r3, [r2, #0xa]
	eors r3, r3
	strb r3, [r2, #0xb]
	strb r3, [r2, #0x14]
	strb r3, [r2, #0x15]
_08001914:
	bl sub_08001D5C
	ldrb r2, [r1, #0x1e]
	movs r3, #0x80
	orrs r2, r3
	strb r2, [r1, #0x1e]
_08001920:
	bl sub_08001D5C
	ldrb r2, [r1, #0x1e]
	lsrs r2, r2, #8
	blo _08001946
	ldr r2, [r0, #0x64]
	ldrb r2, [r2, #0x1e]
	movs r3, #0x20
	tst r2, r3
	bne _0800193C
	ldrb r3, [r1, #0x1e]
	movs r4, #0x7f
	ands r3, r4
	strb r3, [r1, #0x1e]
_0800193C:
	movs r3, #0x10
	tst r2, r3
	beq _08001946
	ldr r3, _08001C90 @ =0x00000100
	str r3, [r0, #0xc]
_08001946:
	ldrb r2, [r1, #0x1e]
	movs r3, #0x10
	tst r2, r3
	bne _080019E2
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	movs r2, #0x2a
	ldrb r2, [r0, r2]
	lsrs r2, r2, #1
	lsls r2, r2, #1
	ldr r3, _08001C94 @ =_08001754
	ldrsb r1, [r3, r2]
	adds r2, #1
	ldrsb r2, [r3, r2]
	bl sub_08009444
	push {r0}
	adds r0, r1, #0
	ldr r1, _08001C98 @ =_0800175C
	bl sub_080012D8
	pop {r0}
	bl sub_08001D5C
	ldrb r2, [r1, #0x1e]
	orrs r3, r3
	beq _080019A2
	movs r2, #0x2a
	ldrb r2, [r0, r2]
	lsrs r2, r2, #1
	subs r3, #1
	cmp r2, r3
	bne _080019A2
	ldrb r2, [r1, #0x1e]
	movs r3, #0x10
	orrs r2, r3
	strb r2, [r1, #0x1e]
	movs r2, #1
	ldrh r3, [r1, #0x36]
	orrs r2, r3
	strh r2, [r1, #0x36]
	pop {r2}
	movs r2, #7
	ldr r3, _08001C9C @ =sub_08001290
	bx r3
_080019A2:
	movs r3, #0xef
	ands r2, r3
	ldrb r2, [r1, #0x1e]
	movs r3, #0x20
	tst r2, r3
	beq _080019E2
	ldrb r3, [r1, #0xd]
	lsls r3, r3, #1
	ldr r2, _08001CA0 @ =_08002DBC
	ldrh r3, [r3, r2]
	ldrh r2, [r0, #0x2c]
	ands r2, r3
	cmp r2, r3
	bne _080019D2
	movs r2, #6
	strb r2, [r0, #0x14]
	eors r2, r2
	strb r2, [r0, #0x15]
	movs r3, #0x38
	strb r2, [r1, r3]
	strb r2, [r1, #0x1e]
	movs r3, #0xff
	strb r3, [r1, #0xd]
	pop {pc}
_080019D2:
	eors r2, r2
	str r2, [r0, #0xc]
	ldr r2, [r0, #0x60]
	ldrb r2, [r2, #0x1e]
	orrs r2, r2
	bne _080019E2
	strb r2, [r1, #0x1e]
	b _080019E2
_080019E2:
	pop {pc}

	thumb_func_start sub_080019E4
sub_080019E4: @ 0x080019E4
	push {lr}
	movs r2, #0x2a
	ldrb r2, [r0, r2]
	lsrs r2, r2, #1
	lsls r2, r2, #1
	ldr r3, _08001CA4 @ =_0800174C
	ldrsb r1, [r3, r2]
	adds r2, #1
	ldrsb r2, [r3, r2]
	bl sub_08009484
	pop {pc}

	thumb_func_start sub_080019FC
sub_080019FC: @ 0x080019FC
	push {lr}
	bl sub_08001D5C
	ldrh r2, [r1, #0x36]
	movs r3, #0x80
	ldr r1, _08001CA8 @ =_08001780
	ands r2, r3
	beq _08001A0E
	ldr r1, _08001CAC @ =_080017B0
_08001A0E:
	mov fp, r1
	eors r7, r7
	mov r8, r0
	movs r2, #0x32
	ldrh r3, [r0, r2]
	movs r2, #0x36
	ldrh r4, [r0, r2]
	movs r2, #0x48
	ldr r5, [r0, r2]
	ldr r1, _08001CB0 @ =gUnk_03000468
	ldrh r1, [r1]
	subs r3, r3, r1
	ldr r1, _08001CB4 @ =gUnk_0300046A
	ldrh r1, [r1]
	subs r4, r4, r1
	eors r2, r2
	ldrsb r0, [r5, r2]
	adds r0, r0, r3
	movs r2, #1
	ldrsb r1, [r5, r2]
	adds r1, r1, r4
	push {r0, r1}
	ldrb r2, [r5, #2]
	adds r0, r0, r2
	ldrb r4, [r5, #3]
	movs r6, #2
	mov sl, r1
_08001A44:
	lsls r7, r7, #1
	lsls r7, r7, #1
	adds r1, r1, r4
	bl sub_08001AA8
	orrs r7, r2
	lsls r7, r7, #1
	mov r1, sl
	subs r1, r1, r4
	bl sub_08001AA8
	orrs r7, r2
	lsls r7, r7, #1
	subs r6, #1
	beq _08001A6C
	mov r1, sl
	ldrb r3, [r5, #2]
	subs r0, r0, r3
	subs r0, r0, r3
	b _08001A44
_08001A6C:
	pop {r0, r1}
	ldrb r2, [r5, #5]
	adds r1, r1, r2
	ldrb r4, [r5, #4]
	movs r6, #2
	mov sb, r0
_08001A78:
	lsls r7, r7, #1
	lsls r7, r7, #1
	adds r0, r0, r4
	bl sub_08001AA8
	orrs r7, r2
	lsls r7, r7, #1
	mov r0, sb
	subs r0, r0, r4
	bl sub_08001AA8
	orrs r7, r2
	lsls r7, r7, #1
	subs r6, #1
	beq _08001AA0
	mov r0, sb
	ldrb r3, [r5, #5]
	subs r1, r1, r3
	subs r1, r1, r3
	b _08001A78
_08001AA0:
	mov r0, r8
	movs r2, #0x2c
	strh r7, [r0, r2]
	pop {pc}

	thumb_func_start sub_08001AA8
sub_08001AA8: @ 0x08001AA8
	push {lr}
	push {r0, r1}
	ldr r2, _08001CB8 @ =0x000003F0
	ands r0, r2
	ands r1, r2
	lsrs r0, r0, #4
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r2, r8
	movs r3, #0x50
	ldrh r3, [r2, r3]
	lsrs r3, r3, #0xe
	lsls r3, r3, #2
	ldr r1, _08001CBC @ =_080092A0
	ldr r1, [r1, r3]
	ldrb r2, [r0, r1]
	push {r0, r1, r2}
	mov r0, r8
	bl sub_08001D5C
	movs r2, #0x26
	ldrb r2, [r1, r2]
	orrs r2, r2
	pop {r0, r1, r2}
	pop {r0, r1}
	beq _08001AE4
	cmp r2, #0x10
	bhs _08001AFC
_08001AE0:
	movs r2, #0xf
	b _08001AEC
_08001AE4:
	cmp r2, #0x24
	beq _08001AE0
	cmp r2, #0x10
	bhs _08001AFC
_08001AEC:
	movs r3, #8
	tst r1, r3
	bne _08001AF4
	lsrs r2, r2, #2
_08001AF4:
	tst r0, r3
	bne _08001B38
	lsrs r2, r2, #1
	b _08001B38
_08001AFC:
	cmp r2, #0xff
	beq _08001B38
	push {r4}
	subs r2, #0x10
	lsls r2, r2, #1
	mov r3, fp
	ldrh r2, [r2, r3]
	movs r4, #0xf
	ands r4, r0
	cmp r4, #4
	blo _08001B20
	lsrs r2, r2, #1
	cmp r4, #8
	blo _08001B20
	lsrs r2, r2, #1
	cmp r4, #0xc
	blo _08001B20
	lsrs r2, r2, #1
_08001B20:
	movs r4, #0xf
	ands r4, r1
	cmp r4, #4
	blo _08001B36
	lsrs r2, r2, #4
	cmp r4, #8
	blo _08001B36
	lsrs r2, r2, #4
	cmp r4, #0xc
	blo _08001B36
	lsrs r2, r2, #4
_08001B36:
	pop {r4}
_08001B38:
	movs r3, #1
	ands r2, r3
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08001B40
sub_08001B40: @ 0x08001B40
	push {r4}
	movs r2, #0x2a
	ldrb r4, [r0, r2]
	lsrs r4, r4, #1
	lsls r4, r4, #1
	ldr r3, _08001CC0 @ =_0800174C
	ldrsb r2, [r3, r4]
	adds r4, #1
	ldrsb r3, [r3, r4]
	pop {r4}

	thumb_func_start sub_08001B54
sub_08001B54: @ 0x08001B54
	push {r4}
	movs r4, #0x32
	ldrh r4, [r0, r4]
	adds r2, r2, r4
	movs r4, #0x36
	ldrh r4, [r0, r4]
	adds r3, r3, r4
	pop {r4}
	b sub_08001B70
	.align 2, 0

	thumb_func_start sub_08001B68
sub_08001B68: @ 0x08001B68
	movs r2, #0x32
	ldrh r2, [r0, r2]
	movs r3, #0x36
	ldrh r3, [r0, r3]

	thumb_func_start sub_08001B70
sub_08001B70:
	push {r0, r4, r5, r6, r7, lr}
	movs r4, #0x50
	ldrh r4, [r0, r4]
	push {r4}
	push {r2, r3}
	push {r0, r1}
	adds r0, r2, #0
	adds r1, r3, #0
	adds r2, r4, #0
	bl sub_08009310
	ldr r1, _08001CC4 @ =_08002B50
	bl sub_080012D8
	pop {r0, r1}
	beq _08001C84
	ldr r2, _08001CC8 @ =_08002CC4
	lsls r3, r3, #3
	adds r2, r2, r3
	ldrh r3, [r2]
	movs r4, #1
	lsls r4, r1
	tst r3, r4
	beq _08001C84
	ldrb r5, [r2, #2]
	ldrb r6, [r2, #3]
	ldrb r7, [r2, #5]
	movs r4, #0x80
	tst r5, r4
	bne _08001C26
	cmp r1, #6
	beq _08001C26
	push {r0, r2, r5, r6}
	bl sub_080123E8
	orrs r0, r0
	beq _08001C24
	adds r1, r0, #0
	movs r0, #5
	push {r1}
	bl sub_08012728
	pop {r1}
	pop {r0, r2, r5, r6}
	pop {r3, r4}
	push {r3, r4}
	push {r0, r2, r5, r6}
	movs r2, #6
	strb r2, [r1, #8]
	strb r5, [r1, #9]
	strb r6, [r1, #0xa]
	cmp r5, #0xf
	bne _08001BE8
	ldrb r2, [r0, #8]
	cmp r2, #3
	beq _08001BE8
	cmp r2, #6
	beq _08001BE8
	movs r2, #0x80
	strb r2, [r1, #0xb]
_08001BE8:
	orrs r5, r5
	beq _08001BFE
	lsrs r3, r3, #4
	lsls r3, r3, #4
	adds r3, #8
	strh r3, [r1, #0x32]
	lsrs r4, r4, #4
	lsls r4, r4, #4
	adds r4, #8
	strh r4, [r1, #0x36]
	b _08001C10
_08001BFE:
	movs r3, #0x32
	ldrh r4, [r0, r3]
	strh r4, [r1, r3]
	movs r3, #0x36
	ldrh r4, [r0, r3]
	strh r4, [r1, r3]
	movs r3, #0x3a
	ldrh r4, [r0, r3]
	strh r4, [r1, r3]
_08001C10:
	movs r3, #0x54
	str r0, [r1, r3]
	movs r3, #0x50
	ldrh r2, [r0, r3]
	strh r2, [r1, r3]
	adds r0, r1, #0
	bl sub_08008DD8
	pop {r0, r2, r5, r6}
	b _08001C26
_08001C24:
	pop {r0, r2, r5, r6}
_08001C26:
	adds r4, r2, #0
	pop {r2, r3}
	ldr r1, _08001CCC @ =gUnk_03000450
	ldrh r0, [r1, #0x18]
	subs r2, r2, r0
	lsrs r2, r2, #4
	ldrh r0, [r1, #0x1a]
	subs r3, r3, r0
	lsrs r3, r3, #4
	lsls r3, r3, #6
	adds r2, r2, r3
	ldrh r0, [r4, #6]
	pop {r4}
	ldr r3, _08001CD0 @ =0x00004000
	tst r0, r3
	bne _08001C52
	adds r1, r2, #0
	adds r2, r4, #0
	push {r7}
	bl sub_08014658
	b _08001C7A
_08001C52:
	ldr r3, _08001CD4 @ =0x0000FFFF
	cmp r0, r3
	beq _08001C70
	push {r7}
	push {r2, r5, r6}
	push {r0, r2}
	adds r0, r4, #0
	bl sub_08015DC0
	adds r1, r0, #4
	pop {r0, r2}
	lsls r2, r2, #1
	strh r0, [r1, r2]
	pop {r2, r5, r6}
	b _08001C7A
_08001C70:
	adds r0, r2, #0
	adds r1, r4, #0
	push {r7}
	bl sub_0801478C
_08001C7A:
	adds r1, r5, #0
	adds r2, r6, #0
	pop {r3}
	movs r7, #1
	pop {r0, r4, r5, r6, r7, pc}
_08001C84:
	eors r2, r2
	pop {r2, r3}
	pop {r4}
	pop {r0, r4, r5, r6, r7, pc}
	.align 2, 0
_08001C8C: .4byte _08002DBC
_08001C90: .4byte 0x00000100
_08001C94: .4byte _08001754
_08001C98: .4byte _0800175C
_08001C9C: .4byte sub_08001290
_08001CA0: .4byte _08002DBC
_08001CA4: .4byte _0800174C
_08001CA8: .4byte _08001780
_08001CAC: .4byte _080017B0
_08001CB0: .4byte gUnk_03000468
_08001CB4: .4byte gUnk_0300046A
_08001CB8: .4byte 0x000003F0
_08001CBC: .4byte _080092A0
_08001CC0: .4byte _0800174C
_08001CC4: .4byte _08002B50
_08001CC8: .4byte _08002CC4
_08001CCC: .4byte gUnk_03000450
_08001CD0: .4byte 0x00004000
_08001CD4: .4byte 0x0000FFFF
_08001CD8:
	.byte 0x00, 0x10, 0x10, 0x00, 0x00, 0x10, 0x10, 0x00
_08001CE0:
	.byte 0x00, 0xFD, 0x03, 0xFD, 0x03, 0x00, 0x03, 0x03, 0x00, 0x03, 0xFD, 0x03, 0xFD, 0x00, 0xFD, 0xFD
_08001CF0:
	.byte 0x00, 0xFA, 0x06, 0xFA, 0x06, 0x00, 0x06, 0x06, 0x00, 0x06, 0xFA, 0x06, 0xFA, 0x00, 0xFA, 0xFA

	thumb_func_start sub_08001D00
sub_08001D00: @ 0x08001D00
	push {lr}
	bl sub_08001D5C
	ldrb r3, [r1, #0xd]
	movs r2, #0x80
	tst r2, r3
	beq _08001D16
	movs r2, #0x2a
	ldrb r3, [r0, r2]
	lsrs r3, r3, #1
	lsls r3, r3, #3
_08001D16:
	movs r2, #0x2b
	strb r3, [r0, r2]
	pop {pc}

	thumb_func_start sub_08001D1C
sub_08001D1C: @ 0x08001D1C
	push {r1, lr}
	bl sub_08002350
	bne _08001D58
	cmp r3, #0x90
	beq _08001D58
	ldrb r2, [r1, #2]
	movs r3, #0xc0
	tst r2, r3
	bne _08001D56
	movs r2, #0x50
	ldrh r2, [r0, r2]
	lsrs r2, r2, #0x10
	blo _08001D56
	push {r0}
	ldrb r1, [r0, #0xa]
	movs r0, #0x4e
	eors r2, r2
	bl sub_0804C8A8
	adds r2, r0, #0
	pop {r0}
	orrs r2, r2
	beq _08001D58
	ldrh r3, [r0, #0x32]
	strh r3, [r2, #0x32]
	ldrh r3, [r0, #0x36]
	adds r3, #3
	strh r3, [r2, #0x36]
_08001D56:
	eors r2, r2
_08001D58:
	pop {r1, pc}
	.align 2, 0

	thumb_func_start sub_08001D5C
sub_08001D5C: @ 0x08001D5C
	ldrb r2, [r0, #0xa]
	movs r0, r0

	thumb_func_start sub_08001D60
sub_08001D60: @ 0x08001D60
	ldr r1, _08002148 @ =_08000FF4
	lsls r2, r2, #2
	ldr r1, [r1, r2]
	mov pc, lr

	thumb_func_start sub_08001D68
sub_08001D68: @ 0x08001D68
	push {lr}
	bl sub_08001D5C
	ldr r3, _0800214C @ =0x0000023C
	ldrb r2, [r1, #5]
	orrs r2, r2
	bne _08001DCA
	movs r3, #0x6c
	ldrb r2, [r1, #0x1b]
	movs r4, #0x48
	tst r2, r4
	bne _08001DEE
	orrs r2, r2
	beq _08001D9A
	push {r1, r3}
	bl sub_080013D0
	pop {r1, r3}
	beq _08001DCA
	ldrb r2, [r1, #0x1b]
	movs r4, #0xf7
	ands r2, r4
	strb r2, [r1, #0x1b]
	movs r3, #0x70
	bne _08001DCA
_08001D9A:
	ldr r3, _08002150 @ =0x00000258
	ldrb r2, [r1, #0xf]
	movs r4, #1
	tst r2, r4
	bne _08001DCA
	ldr r3, _08002154 @ =0x0000019C
	ldrb r2, [r1, #0x1e]
	orrs r2, r2
	bne _08001DCA
	movs r3, #0x60
	ldrb r2, [r1, #3]
	orrs r2, r2
	bne _08001DCA
	movs r3, #0x21
	ldrb r2, [r1, r3]
	ldr r3, _08002158 @ =0x00000188
	orrs r2, r2
	bne _08001DCA
	movs r3, #0x26
	ldrb r2, [r1, r3]
	ldr r3, _0800215C @ =0x00000194
	orrs r2, r2
	bne _08001DCA
	movs r3, #4
_08001DCA:
	strh r3, [r1, #8]
	ldrb r2, [r1, #0xf]
	movs r4, #1
	tst r2, r4
	bne _08001DEE
	ldrb r2, [r1, #3]
	orrs r2, r2
	bne _08001DEE
	movs r4, #0xff
	ands r3, r4
	ldrb r2, [r1]
	cmp r2, r3
	bne _08001DEE
	pop {r1}
	mov lr, r1
	ldrb r1, [r0, #0x1b]
	ldr r3, _08002160 @ =sub_080037EC
	bx r3
_08001DEE:
	strb r3, [r1]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08001DF4
sub_08001DF4: @ 0x08001DF4
	push {lr}
	push {r1}
	ldr r2, _08002164 @ =gUnk_03000BD0
	ldrh r2, [r2]
	ldr r3, _08002168 @ =0x00000101
	tst r2, r3
	beq _08001E7C
	movs r2, #0x27
	ldrb r2, [r1, r2]
	orrs r2, r2
	bne _08001E7C
	movs r2, #0x26
	ldrb r2, [r1, r2]
	orrs r2, r2
	bne _08001E7C
	movs r2, #0x36
	ldrh r2, [r1, r2]
	orrs r2, r2
	bne _08001E7C
	ldrb r2, [r1, #0x12]
	cmp r2, #4
	beq _08001E7C
	ldrb r2, [r1, #5]
	cmp r2, #3
	beq _08001E7C
	orrs r2, r2
	beq _08001E3A
	ldr r2, [r0, #0x6c]
	ldr r2, [r2, #0x58]
	ldrb r3, [r2, #8]
	cmp r3, #6
	bne _08001E7C
	ldrb r3, [r2, #9]
	cmp r3, #0x38
	bne _08001E7C
_08001E3A:
	ldr r4, _0800216C @ =gUnk_03000840
_08001E3C:
	ldr r1, [r4]
	orrs r1, r1
	beq _08001E7C
	movs r7, #0x50
	ldrh r5, [r0, r7]
	ldrh r6, [r1, r7]
	ands r5, r6
	ldr r6, _08002170 @ =0x0000C000
	ands r5, r6
	beq _08001E74
	push {r2, r3, r4}
	ldr r3, [r0, #0x48]
	ldr r4, [r1, #0x48]
	ldrb r2, [r3, #6]
	ldrb r3, [r4, #6]
	adds r2, r2, r3
	ldr r3, [r0, #0x48]
	ldrb r3, [r3, #7]
	ldrb r4, [r4, #7]
	adds r3, r3, r4
	bl sub_08003634
	pop {r2, r3, r4}
	beq _08001E74
	movs r5, #0x47
	ldrb r5, [r1, r5]
	orrs r5, r5
	beq _08001E82
_08001E74:
	adds r4, #4
	ldr r1, _08002174 @ =gUnk_03000940
	cmp r4, r1
	blo _08001E3C
_08001E7C:
	movs r2, #1
	pop {r1}
	pop {pc}
_08001E82:
	ldrb r3, [r0, #0xa]
	adds r3, #1
	movs r2, #0x47
	strb r3, [r1, r2]
	movs r2, #0x3d
	ldrb r3, [r0, r2]
	movs r2, #0xfc
	orrs r3, r3
	beq _08001EA4
	cmp r3, #0x80
	bhs _08001EA0
	movs r2, #4
	cmp r3, r2
	bhs _08001EA8
	b _08001EA4
_08001EA0:
	cmp r3, r2
	blo _08001EA8
_08001EA4:
	movs r3, #0x3d
	strb r2, [r1, r3]
_08001EA8:
	pop {r1}
	movs r2, #0x80
	strb r2, [r1, #6]
	movs r3, #0x27
	strb r2, [r1, r3]
	ldrb r2, [r1, #0xb]
	movs r3, #0x80
	orrs r2, r3
	strb r2, [r1, #0xb]
	eors r2, r2
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08001EC0
sub_08001EC0: @ 0x08001EC0
	push {lr}
	ldr r2, _08002178 @ =gUnk_03006C80
	movs r3, #0x45
	ldrb r2, [r0, r3]
	orrs r2, r2
	bne _08001F34
	movs r3, #0x42
	strb r2, [r0, r3]
	bl sub_08001D5C
	movs r3, #7
	ldrb r2, [r1, r3]
	orrs r2, r2
	bne _08001F34
	movs r3, #0x26
	ldrb r2, [r1, r3]
	orrs r2, r2
	beq _08001EEE
	eors r2, r2
	strb r2, [r1, r3]
	bl sub_08002200
	b _08001F28
_08001EEE:
	ldr r2, [r0, #0x38]
	orrs r2, r2
	bne _08001F0E
	ldrb r2, [r1, #0x14]
	orrs r2, r2
	bne _08001F28
	ldrh r2, [r1, #0x36]
	ldr r3, _0800217C @ =0x00001000
	ands r2, r3
	bne _08001F28
	bl sub_08002334
	beq _08001F28
	bl sub_0800125C
	pop {pc}
_08001F0E:
	bl sub_08001D5C
	ldrb r2, [r1, #2]
	movs r3, #0xc0
	tst r2, r3
	bne _08001F34
	movs r2, #0x41
	strb r2, [r1, #2]
	movs r2, #0xff
	movs r3, #0x2b
	strb r2, [r0, r3]
	strb r2, [r1, #0xd]
	pop {pc}
_08001F28:
	movs r3, #0x3c
	ldrb r2, [r0, r3]
	movs r1, #0x7f
	ands r2, r1
	strb r2, [r0, r3]
	eors r2, r2
_08001F34:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08001F38
sub_08001F38: @ 0x08001F38
	push {lr}
	bl sub_08001D5C
	ldrb r2, [r1, #0xd]
	cmp r2, #0xff
	beq _08001F5E
	lsls r2, r2, #4
	ldr r3, _08002180 @ =gUnk_0813E4CC
	ldrsh r4, [r3, r2]
	adds r3, #0x80
	ldrsh r5, [r3, r2]
	rsbs r5, r5, #0
	movs r2, #0x8c
	strh r4, [r1, r2]
	movs r2, #0x8e
	strh r5, [r1, r2]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08001F5C
sub_08001F5C: @ 0x08001F5C
	push {lr}
_08001F5E:
	bl sub_08001D5C
	eors r3, r3
	movs r2, #0x8c
	strh r3, [r1, r2]
	movs r2, #0x8e
	strh r3, [r1, r2]
_08001F6C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08001F70
sub_08001F70: @ 0x08001F70
	push {lr}
	bl sub_08001D5C
	ldrb r2, [r1, #7]
	orrs r2, r2
	bne _08001F6C
	ldrb r2, [r1, #0xd]
	b _08001F86

	thumb_func_start sub_08001F80
sub_08001F80: @ 0x08001F80
	push {lr}
	bl sub_08001D5C
_08001F86:
	movs r3, #0x2b
	strb r2, [r0, r3]
	movs r3, #0x80
	tst r2, r3
	bne _08001FF8
	ldrb r3, [r1, #5]
	cmp r3, #2
	beq _08001F5E
	cmp r3, #1
	beq _08001F5E
	ldr r4, _08002184 @ =_08001CF0
	ldrb r3, [r1, #2]
	adds r1, r2, #0
	orrs r3, r3
	beq _08001FC2
	push {r2}
	movs r3, #0x2a
	ldrb r1, [r0, r3]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	lsrs r2, r2, #2
	subs r2, r2, r1
	pop {r1}
	adds r2, #2
	movs r4, #7
	ands r2, r4
	ldr r4, _08002188 @ =_08001CE0
	cmp r2, #4
	beq _08001FC2
	bhs _08001FE0
_08001FC2:
	adds r3, r1, #0
	lsrs r3, r3, #2
	lsls r3, r3, #1
	adds r4, r4, r3
	movs r3, #0
	ldrsb r2, [r4, r3]
	adds r3, #1
	ldrsb r3, [r4, r3]
	bl sub_08002060
	b _08001FF8
_08001FD8:
	.byte 0x00, 0x08, 0xF8, 0x00, 0x00, 0xF8, 0x08, 0x00
_08001FE0:
	movs r3, #0x2a
	ldrb r3, [r0, r3]
	lsrs r3, r3, #1
	lsls r3, r3, #1
	ldr r4, _0800218C @ =_08001FD8
	adds r4, r4, r3
	movs r3, #0
	ldrsb r2, [r4, r3]
	adds r3, #1
	ldrsb r3, [r4, r3]
	bl sub_08002060
_08001FF8:
	bl sub_08001D5C
	movs r4, #0x8c
	movs r2, #8
	ldrsh r3, [r1, r4]
	orrs r3, r3
	beq _08002016
	bpl _0800200C
	movs r2, #0x18
	rsbs r3, r3, #0
_0800200C:
	push {r0, r1}
	adds r1, r3, #0
	bl sub_08003010
	pop {r0, r1}
_08002016:
	movs r4, #0x8e
	movs r2, #0x10
	ldrsh r3, [r1, r4]
	orrs r3, r3
	beq _08002030
	bpl _08002026
	movs r2, #0
	rsbs r3, r3, #0
_08002026:
	push {r0, r1}
	adds r1, r3, #0
	bl sub_08003010
	pop {r0, r1}
_08002030:
	ldrb r2, [r1, #2]
	orrs r2, r2
	bne _08002042
	movs r2, #0x8c
	bl sub_08002044
	movs r2, #0x8e
	bl sub_08002044
_08002042:
	pop {pc}

	thumb_func_start sub_08002044
sub_08002044: @ 0x08002044
	ldrsh r3, [r1, r2]
	movs r4, #3
	orrs r3, r3
	bmi _08002058
	subs r3, r3, r4
	bpl _08002054
	beq _08002054
_08002052:
	eors r3, r3
_08002054:
	strh r3, [r1, r2]
	mov pc, lr
_08002058:
	adds r3, r3, r4
	bmi _08002054
	beq _08002054
	b _08002052

	thumb_func_start sub_08002060
sub_08002060: @ 0x08002060
	push {lr}
	push {r2, r3}
	bl sub_08001D5C
	pop {r2, r3}
	movs r4, #0x8c
	ldrsh r5, [r1, r4]
	adds r5, r5, r2
	bl sub_08002088
	movs r4, #0x8e
	ldrsh r5, [r1, r4]
	adds r5, r5, r3
	bl sub_08002088
	pop {pc}

	thumb_func_start sub_08002080
sub_08002080: @ 0x08002080
	eors r3, r3
	strh r3, [r1]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08002088
sub_08002088: @ 0x08002088
	orrs r5, r5
	bmi _08002094
	ldr r6, _08002190 @ =0x00000180
	cmp r5, r6
	blo _0800209C
	b _0800209A
_08002094:
	ldr r6, _08002194 @ =0xFFFFFE80
	cmp r5, r6
	bhs _0800209C
_0800209A:
	adds r5, r6, #0
_0800209C:
	strh r5, [r1, r4]
	mov pc, lr

	thumb_func_start sub_080020A0
sub_080020A0: @ 0x080020A0
	push {r4, r5, lr}
	bl sub_08001D5C
	ldrb r2, [r1, #0x12]
	cmp r2, #4
	beq _080020C6
	ldrb r2, [r1, #0xd]
	cmp r2, #0xff
	beq _080020C6
	lsls r2, r2, #4
	ldr r3, _08002198 @ =gUnk_0813E4CC
	ldrsh r4, [r3, r2]
	adds r3, #0x80
	ldrsh r5, [r3, r2]
	rsbs r5, r5, #0
	movs r2, #0x8c
	strh r4, [r1, r2]
	movs r2, #0x8e
	strh r5, [r1, r2]
_080020C6:
	pop {r4, r5, pc}

	thumb_func_start sub_080020C8
sub_080020C8: @ 0x080020C8
	push {lr}
	bl sub_08001D5C
	ldr r3, _0800219C @ =0x0000024C
	ldrb r2, [r1, #5]
	orrs r2, r2
	bne _0800211C
	movs r3, #0x68
	ldrb r2, [r1, #0x1b]
	movs r4, #0x48
	tst r2, r4
	bne _08002142
	orrs r2, r2
	bne _0800211C
	ldr r3, _080021A0 @ =0x0000027C
	ldrb r2, [r1, #0xf]
	movs r4, #1
	tst r2, r4
	bne _0800211C
	ldr r3, _08002154 @ =0x0000019C
	ldrb r2, [r1, #0x1e]
	orrs r2, r2
	bne _0800211C
	movs r3, #0x64
	ldrb r2, [r1, #3]
	orrs r2, r2
	bne _0800211C
	movs r3, #0x21
	ldrb r2, [r1, r3]
	ldr r3, _080021A4 @ =0x00000184
	orrs r2, r2
	bne _0800211C
	movs r3, #0x26
	ldrb r2, [r1, r3]
	ldr r3, _080021A8 @ =0x00000190
	orrs r2, r2
	bne _0800211C
	movs r3, #0xff
	ldrb r2, [r1, #4]
	orrs r2, r2
	bne _08002142
	movs r3, #0
_0800211C:
	strh r3, [r1, #8]
	ldrb r2, [r1, #0xf]
	movs r4, #1
	tst r2, r4
	bne _08002142
	ldrb r2, [r1, #5]
	orrs r2, r2
	bne _08002142
	movs r4, #0xff
	ands r3, r4
	ldrb r2, [r1]
	cmp r2, r3
	bne _08002142
	push {r1}
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	pop {r1}
	ldrb r3, [r1]
_08002142:
	strb r3, [r1]
	pop {pc}
	.align 2, 0
_08002148: .4byte _08000FF4
_0800214C: .4byte 0x0000023C
_08002150: .4byte 0x00000258
_08002154: .4byte 0x0000019C
_08002158: .4byte 0x00000188
_0800215C: .4byte 0x00000194
_08002160: .4byte sub_080037EC
_08002164: .4byte gUnk_03000BD0
_08002168: .4byte 0x00000101
_0800216C: .4byte gUnk_03000840
_08002170: .4byte 0x0000C000
_08002174: .4byte gUnk_03000940
_08002178: .4byte gUnk_03006C80
_0800217C: .4byte 0x00001000
_08002180: .4byte gUnk_0813E4CC
_08002184: .4byte _08001CF0
_08002188: .4byte _08001CE0
_0800218C: .4byte _08001FD8
_08002190: .4byte 0x00000180
_08002194: .4byte 0xFFFFFE80
_08002198: .4byte gUnk_0813E4CC
_0800219C: .4byte 0x0000024C
_080021A0: .4byte 0x0000027C
_080021A4: .4byte 0x00000184
_080021A8: .4byte 0x00000190
_080021AC:
	.byte 0x13, 0x12, 0x12, 0x10
	.byte 0x10, 0x11, 0x11, 0x13
_080021B4:
	.byte 0x44, 0x00, 0x01, 0x00, 0x48, 0x00, 0x01, 0x00, 0x4C, 0x00, 0x01, 0x00
	.byte 0x50, 0x00, 0x01, 0x00, 0x54, 0x00, 0x01, 0x00, 0x58, 0x00, 0x01, 0x00, 0x5C, 0x00, 0x01, 0x00
	.byte 0x60, 0x00, 0x01, 0x00, 0x74, 0x00, 0x01, 0x00, 0x94, 0x00, 0x01, 0x00, 0xA0, 0x00, 0x01, 0x00
	.byte 0x98, 0x00, 0x01, 0x00, 0xA4, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00

	thumb_func_start sub_080021EC
sub_080021EC: @ 0x080021EC
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x58]
	bl sub_0800238C
	ldr r2, [r0, #0x34]
	adds r2, #0xa
	str r2, [r0, #0x34]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08002200
sub_08002200: @ 0x08002200
	push {lr}
	bl sub_08001D5C
	adds r1, #0x40
	ldr r2, [r1]
	movs r4, #0x10
_0800220C:
	push {r1, r2}
	ldr r1, _080023F4 @ =0x7FFFFFFF
	cmp r1, r2
	beq _08002232
	adds r1, r2, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r3, r2, #0
	lsrs r3, r3, #0x10
	bl sub_080094B0
	cmp r1, #0xf
	bne _0800223E
	pop {r1, r2}
	subs r4, #1
	beq _08002232
	adds r1, #4
	ldr r2, [r1]
	b _0800220C
_08002232:
	push {r0}
	bl sub_0803F638
	pop {r0}
	pop {r1, r2}
	b _0800227C
_0800223E:
	pop {r1, r2}
	adds r1, r2, #0
	lsrs r1, r1, #0x10
	movs r4, #0x50
	ldrh r3, [r0, r4]
	lsls r3, r3, #0x12
	lsrs r3, r3, #0x12
	orrs r1, r3
	strh r1, [r0, r4]
	movs r3, #0x3f
	ands r3, r2
	lsls r3, r3, #4
	adds r3, #8
	strh r3, [r0, #0x32]
	ldr r3, _080023F8 @ =0x00000FC0
	ands r3, r2
	lsrs r3, r3, #2
	adds r3, #6
	strh r3, [r0, #0x36]
	ldrh r2, [r0, #0x32]
	ldr r3, _080023FC @ =gUnk_03000468
	ldrh r3, [r3]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	str r2, [r0, #0x30]
	ldrh r2, [r0, #0x36]
	ldr r3, _08002400 @ =gUnk_0300046A
	ldrh r3, [r3]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	str r2, [r0, #0x34]
_0800227C:
	movs r2, #0x3c
	ldrb r3, [r0, r2]
	movs r1, #0x80
	orrs r3, r1
	strb r3, [r0, r2]
	eors r2, r2
	str r2, [r0, #0x10]
	str r2, [r0, #0x38]
	bl sub_08008DD8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08002294
sub_08002294: @ 0x08002294
	push {r4, lr}
	bl sub_08001D5C
	movs r3, #0x34
	ldrb r2, [r1, r3]
	lsrs r2, r2, #1
	blo _080022A8
	ldr r3, [r0, #0xc]
	lsrs r3, r3, #1
	str r3, [r0, #0xc]
_080022A8:
	lsrs r2, r2, #1
	blo _080022B2
	ldr r3, [r0, #0xc]
	lsls r3, r3, #1
	str r3, [r0, #0xc]
_080022B2:
	movs r3, #0x2b
	ldrb r3, [r0, r3]
	movs r2, #4
	tst r3, r2
	bne _080022F4
	movs r2, #8
	tst r3, r2
	ldr r4, [r0, #0x48]
	bne _080022DC
	ldrb r1, [r4, #4]
	ldrb r2, [r4, #5]
	orrs r3, r3
	bne _080022CE
	rsbs r2, r2, #0
_080022CE:
	bl sub_08002300
	beq _080022F4
	rsbs r1, r1, #0
	bl sub_08002300
	b _080022F4
_080022DC:
	ldrb r1, [r4, #2]
	ldrb r2, [r4, #3]
	movs r4, #0x10
	tst r3, r4
	beq _080022E8
	rsbs r1, r1, #0
_080022E8:
	bl sub_08002300
	beq _080022F4
	rsbs r2, r2, #0
	bl sub_08002300
_080022F4:
	push {r0}
	bl sub_080017FC
	pop {r0}
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08002300
sub_08002300: @ 0x08002300
	push {r1, r2, r3, lr}
	push {r3}
	bl sub_08009484
	pop {r3}
	ldr r4, _08002404 @ =_080021AC
	lsrs r3, r3, #2
	adds r4, r4, r3
	movs r3, #4
	ldrb r2, [r4]
	cmp r1, r2
	beq _08002322
	rsbs r3, r3, #0
	ldrb r2, [r4, #1]
	cmp r1, r2
	beq _08002322
	pop {r1, r2, r3, pc}
_08002322:
	movs r1, #0x2b
	ldrb r2, [r0, r1]
	adds r2, r2, r3
	movs r3, #0x1f
	ands r2, r3
	strb r2, [r0, r1]
	eors r1, r1
	pop {r1, r2, r3, pc}
	.align 2, 0

	thumb_func_start sub_08002334
sub_08002334: @ 0x08002334
	push {r0, r1, lr}
	bl sub_08002350
	bne _0800234A
	adds r0, r3, #0
	ldr r1, _08002408 @ =_080021B4
	bl sub_080012D8
	bne _0800234A
	eors r2, r2
	pop {r0, r1, pc}
_0800234A:
	movs r2, #1
	pop {r0, r1, pc}
	.align 2, 0

	thumb_func_start sub_08002350
sub_08002350: @ 0x08002350
	push {lr}
	push {r0, r1}
	movs r1, #0
	movs r2, #3
	bl sub_08009444
	adds r0, r1, #0
	ldr r1, _0800240C @ =0x00004000
	tst r0, r1
	bne _08002384
	ldr r1, _08002410 @ =_08001010
	bl sub_080012D8
	cmp r3, #4
	bne _08002384
	pop {r0, r1}
	push {r0, r1}
	ldrh r2, [r1, #0x24]
	ldr r1, _08002414 @ =0x00000176
	subs r2, r2, r1
	ldrb r1, [r0, #0xa]
	cmp r2, r1
	beq _08002384
	movs r2, #1
	pop {r0, r1}
	pop {pc}
_08002384:
	eors r2, r2
	pop {r0, r1}
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0800238C
sub_0800238C: @ 0x0800238C
	push {r4}
	ldr r2, [r1, #0x30]
	str r2, [r0, #0x30]
	ldr r2, [r1, #0x34]
	str r2, [r0, #0x34]
	ldr r2, [r1, #0x38]
	str r2, [r0, #0x38]
	movs r3, #0x50
	ldrh r2, [r1, r3]
	strh r2, [r0, r3]
	ldr r2, [r1, #0x1c]
	ldr r3, _08002418 @ =0xC000C000
	ands r2, r3
	ldr r4, [r0, #0x1c]
	ldr r3, _0800241C @ =0x3FFF3FFF
	ands r4, r3
	orrs r4, r2
	str r4, [r0, #0x1c]
	movs r4, #0x5e
	ldrb r2, [r1, r4]
	movs r3, #3
	ands r2, r3
	ldrb r3, [r0, r4]
	lsrs r3, r3, #2
	lsls r3, r3, #2
	orrs r2, r3
	strb r2, [r0, r4]
	pop {r4}
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_080023C8
sub_080023C8: @ 0x080023C8
	push {lr}
	ldrb r2, [r0, #0x14]
	cmp r2, #1
	bne _080023F2
	bl sub_08001D5C
	ldr r2, _08002420 @ =0x000001A0
	strh r2, [r1, #0x38]
	movs r2, #0x3c
	movs r3, #0x3a
	strb r2, [r1, r3]
	movs r2, #0xe
	movs r3, #0xc
	strb r2, [r1, r3]
	ldr r0, [r1, #0x28]
	movs r2, #0x5c
	movs r3, #0x3d
	strb r2, [r0, r3]
	movs r2, #0x99
	bl sub_080031B8
_080023F2:
	pop {pc}
	.align 2, 0
_080023F4: .4byte 0x7FFFFFFF
_080023F8: .4byte 0x00000FC0
_080023FC: .4byte gUnk_03000468
_08002400: .4byte gUnk_0300046A
_08002404: .4byte _080021AC
_08002408: .4byte _080021B4
_0800240C: .4byte 0x00004000
_08002410: .4byte _08001010
_08002414: .4byte 0x00000176
_08002418: .4byte 0xC000C000
_0800241C: .4byte 0x3FFF3FFF
_08002420: .4byte 0x000001A0

	thumb_func_start sub_08002424
sub_08002424: @ 0x08002424
	ldrb r3, [r1, #0xf]
	movs r4, #0x80
	tst r3, r4
	beq _0800244A
	movs r2, #0x41
	ldrsb r3, [r0, r2]
	lsls r3, r3, #1
	blo _08002440
	cmp r3, #0x28
	beq _0800244A
	cmp r3, #0x2a
	beq _0800244A
	cmp r3, #0x46
	beq _0800244A
_08002440:
	eors r3, r3
	str r3, [r0, #0xc]
	movs r3, #0xff
	strb r3, [r1, #0x12]
	pop {pc}
_0800244A:
	mov pc, lr

	thumb_func_start sub_0800244C
sub_0800244C: @ 0x0800244C
	eors r2, r2
	movs r3, #0x3d
	strb r2, [r1, r3]
	bl sub_080012A4
	pop {pc}

	thumb_func_start sub_08002458
sub_08002458: @ 0x08002458
	movs r3, #0x26
	ldrb r2, [r1, r3]
	orrs r2, r2
	beq _0800246C
	eors r2, r2
	strb r2, [r1, r3]
	movs r3, #0x3c
	ldrb r2, [r0, r3]
	movs r4, #0x80
	strb r2, [r0, r3]
_0800246C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08002470
sub_08002470: @ 0x08002470
	movs r2, #2
	rsbs r2, r2, #0
_08002474:
	movs r3, #0x3f
	strb r2, [r1, r3]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0800247C
sub_0800247C: @ 0x0800247C
	push {r1}
	movs r4, #0xf
	ldrh r5, [r1, #0x22]
	lsrs r5, r5, #1
	adds r2, r5, #0
	movs r5, #0x50
	ldrh r5, [r0, r5]
	lsrs r5, r5, #0xe
	lsls r5, r5, #0x1e
	orrs r2, r5
	adds r5, r2, #0
	adds r1, #0x40
_08002494:
	ldr r3, [r1]
	cmp r3, r5
	beq _080024A4
	str r2, [r1]
	adds r2, r3, #0
	adds r1, #4
	subs r4, #1
	bne _08002494
_080024A4:
	str r2, [r1]
	pop {r1}
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080024AC
sub_080024AC: @ 0x080024AC
	movs r3, #0x26
	ldrb r2, [r1, r3]
	lsrs r2, r2, #8
	blo sub_08002530
	push {r0, r1}
	push {r0}
	movs r5, #0x50
	ldrh r5, [r0, r5]
	ldrh r1, [r0, #0x36]
	adds r1, #3
	strh r1, [r0, #0x36]
	bl sub_0803CD8C
	adds r1, r0, #0
	movs r0, #0x80
	adds r2, r5, #0
	bl sub_08008F78
	bl sub_080123E8
	adds r1, r0, #0
	orrs r1, r1
	pop {r0}
	beq sub_08002530
	push {r0}
	ldrh r2, [r0, #0x36]
	subs r2, #3
	strh r2, [r0, #0x36]
	movs r0, #5
	push {r1}
	bl sub_08012728
	pop {r1}
	pop {r0}
	movs r2, #6
	strb r2, [r1, #8]
	eors r2, r2
	strb r2, [r1, #9]
	movs r2, #1
	strb r2, [r1, #0xa]
	movs r2, #2
	strb r2, [r1, #0xb]
	str r0, [r1, #0x58]
	movs r3, #0x32
	ldrh r2, [r0, r3]
	strh r2, [r1, r3]
	movs r3, #0x36
	ldrh r2, [r0, r3]
	strh r2, [r1, r3]
	movs r3, #0x3a
	ldrh r2, [r0, r3]
	strh r2, [r1, r3]
	movs r3, #0x50
	ldrh r2, [r0, r3]
	strh r2, [r1, r3]
	push {r0, r1}
	adds r2, r1, #0
	adds r1, r0, #0
	adds r0, r2, #0
	bl sub_0804C448
	pop {r0, r1}
	adds r0, r1, #0
	bl sub_08008DD8
	pop {r0, r1}

	thumb_func_start sub_08002530
sub_08002530: @ 0x08002530
	bl sub_080025F4
	movs r3, #0x26
	ldrb r2, [r1, r3]
	orrs r2, r2
	bne _08002578
	movs r2, #8
	strb r2, [r1, r3]
	eors r2, r2
	str r2, [r0, #0xc]
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0xf
	movs r1, #0xb
	eors r2, r2
	bl sub_0804C8A8
	adds r2, r0, #0
	adds r0, r4, #0
	orrs r2, r2
	beq _080025DC
	ldrh r3, [r0, #0x32]
	strh r3, [r2, #0x32]
	ldrh r3, [r0, #0x36]
	strh r3, [r2, #0x36]
	movs r2, #0xab
	bl sub_080031AC
	adds r1, r5, #0
	bl sub_080076C4
	eors r2, r2
	movs r3, #0x89
	strb r2, [r1, r3]
	movs r3, #0x26
	ldrb r2, [r1, r3]
_08002578:
	movs r5, #0x80
	tst r2, r5
	beq _08002596
	movs r7, #0x3c
	ldrb r6, [r0, r7]
	movs r4, #0x80
	ands r6, r4
	movs r4, #0xa
	orrs r6, r4
	strb r6, [r0, r7]
	push {r1, r2, r3}
	movs r1, #0
	bl sub_08002E50
	pop {r1, r2, r3}
_08002596:
	movs r7, #0x3c
	ldrh r6, [r0, r7]
	orrs r6, r5
	strh r6, [r0, r7]
	movs r4, #0xf
	ands r4, r2
	subs r4, #1
	beq _080025DC
	subs r2, #1
	strb r2, [r1, r3]
	bics r6, r5
	strh r6, [r0, r7]
	movs r0, r0

	thumb_func_start sub_080025B0
sub_080025B0: @ 0x080025B0
	ldrh r3, [r0, #0x32]
	movs r4, #1
	movs r2, #0xf
	ands r2, r3
	cmp r2, #8
	beq _080025C4
	blo _080025C0
	rsbs r4, r4, #0
_080025C0:
	adds r3, r3, r4
	strh r3, [r0, #0x32]
_080025C4:
	ldrh r3, [r0, #0x36]
	adds r3, #3
	movs r4, #1
	movs r2, #0xf
	ands r2, r3
	cmp r2, #8
	beq _080025DC
	blo _080025D6
	rsbs r4, r4, #0
_080025D6:
	adds r3, r3, r4
	subs r3, #3
	strh r3, [r0, #0x36]
_080025DC:
	ldrh r2, [r1, #0x36]
	ldr r3, _080029CC @ =0x0000F3FB
	ands r2, r3
	strh r2, [r1, #0x36]
	movs r3, #0x72
	ldrh r2, [r0, r3]
	cmp r2, #0xf
	bhs _080025F0
	movs r2, #0xf
	strh r2, [r0, r3]
_080025F0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080025F4
sub_080025F4: @ 0x080025F4
	ldrb r2, [r1, #2]
	orrs r2, r2
	bne sub_08002618
	ldr r2, [r0, #0x10]
	orrs r2, r2
	bne sub_08002618
	ldr r2, [r0, #0x38]
	orrs r2, r2
	bne sub_08002618
	ldrb r2, [r0, #0x14]
	cmp r2, #2
	beq sub_08002618
	ldrb r4, [r1, #0xf]
	movs r3, #0xc0
	ands r4, r3
	bne sub_08002618
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08002618
sub_08002618: @ 0x08002618
	eors r2, r2
	strb r2, [r1, #0x12]
	strb r2, [r1, #0x11]
	pop {pc}

	thumb_func_start sub_08002620
sub_08002620: @ 0x08002620
	ldrb r3, [r1, #0x13]
	ldrb r4, [r1, #0x12]
	cmp r3, r4
	bne _08002632
	ldrh r3, [r1, #0x22]
	cmp r2, r3
	beq _08002632
	movs r3, #0xe
	strb r3, [r1, #0x11]
_08002632:
	bl sub_08002424
	bl sub_080025F4
	ldr r2, _080029D0 @ =0x00000133
	str r2, [r0, #0xc]
	ldrb r2, [r0, #0x14]
	cmp r2, #9
	beq _0800264C
	cmp r2, #0xb
	beq _0800264C
	cmp r2, #1
	bne sub_08002618
_0800264C:
	ldrb r2, [r1, #0x14]
	orrs r2, r2
	bne sub_08002618
	ldrh r2, [r1, #0x24]
	ldr r3, _080029D4 @ =0x00000176
	subs r2, r2, r3
	ldrb r3, [r0, #0xa]
	cmp r2, r3
	beq sub_08002618
	movs r0, r0
	eors r2, r2
	strb r2, [r1, #0x1e]
	ldr r2, _080029D8 @ =sub_08001660
	bx r2

	thumb_func_start sub_08002668
sub_08002668: @ 0x08002668
	bl sub_080025F4
	ldrh r2, [r1, #0x36]
	movs r3, #0x80
	tst r2, r3
	bne _080026BA
	ldrb r2, [r1, #0x11]
	cmp r2, #0x1a
	blo _080026BA
	push {r0, r1}
	movs r2, #0x50
	ldrh r2, [r0, r2]
	ldr r0, _080029DC @ =0x00000158
	ldrh r1, [r1, #0x22]
	lsrs r1, r1, #1
	bl sub_08014658
	movs r0, #0xf
	eors r1, r1
	movs r2, #0x40
	bl sub_0804C8A8
	orrs r0, r0
	beq _080026B8
	adds r2, r0, #0
	pop {r0, r1}
	ldrh r3, [r1, #0x22]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x16
	adds r3, #8
	strh r3, [r2, #0x32]
	ldrh r3, [r1, #0x22]
	lsrs r3, r3, #7
	lsls r3, r3, #4
	adds r3, #8
	strh r3, [r2, #0x36]
	movs r2, #0x2c
	bl sub_080031AC
	pop {pc}
_080026B8:
	pop {r0, r1}
_080026BA:
	pop {pc}

	thumb_func_start sub_080026BC
sub_080026BC: @ 0x080026BC
	ldrh r2, [r1, #0x36]
	movs r3, #0x40
	ands r2, r3
	beq _080026C6
	pop {pc}
_080026C6:
	push {r1}
	movs r1, #0x50
	ldrh r2, [r0, r1]
	ldr r3, _080029E0 @ =0x00003FFF
	ands r2, r3
	ldr r3, _080029E4 @ =0x00008000
	orrs r2, r3
	strh r2, [r0, r1]
	movs r2, #0x40
	strb r2, [r0, #0x1f]
	ldrb r2, [r0, #0x1d]
	movs r3, #0x3f
	ands r2, r3
	movs r3, #0x40
	orrs r2, r3
	strb r2, [r0, #0x1d]
	pop {r1}
	b sub_0800247C
	.align 2, 0

	thumb_func_start sub_080026EC
sub_080026EC: @ 0x080026EC
	bl sub_08002424
	bl sub_080025F4
	movs r2, #0x50
	ldrh r2, [r0, r2]
	lsrs r2, r2, #0x10
	blo sub_08002738
	ldrh r2, [r0, #0x36]
	adds r2, #0xa
	strh r2, [r0, #0x36]
	ldrh r2, [r1, #0x36]
	movs r3, #0x80
	tst r2, r3
	bne _08002710
	ldrh r2, [r0, #0x3a]
	subs r2, #0xa
	strh r2, [r0, #0x3a]
_08002710:
	push {r1}
	movs r1, #0x50
	ldrh r2, [r0, r1]
	ldr r3, _080029E0 @ =0x00003FFF
	ands r2, r3
	ldr r3, _080029E8 @ =0x00004000
	orrs r2, r3
	strh r2, [r0, r1]
	movs r2, #0x80
	strb r2, [r0, #0x1f]
	ldrb r2, [r0, #0x1d]
	movs r3, #0x3f
	ands r2, r3
	movs r3, #0x80
	orrs r2, r3
	strb r2, [r0, #0x1d]
	pop {r1}
	pop {pc}

	thumb_func_start sub_08002734
sub_08002734: @ 0x08002734
	push {lr}
	movs r0, r0

	thumb_func_start sub_08002738
sub_08002738: @ 0x08002738
	ldrh r2, [r1, #0x36]
	movs r3, #0x40
	ands r2, r3
	beq _08002742
	pop {pc}
_08002742:
	push {r1}
	movs r1, #0x50
	ldrh r2, [r0, r1]
	ldr r3, _080029E0 @ =0x00003FFF
	ands r2, r3
	ldr r3, _080029E8 @ =0x00004000
	orrs r2, r3
	strh r2, [r0, r1]
	movs r2, #0x80
	strb r2, [r0, #0x1f]
	ldrb r2, [r0, #0x1d]
	movs r3, #0x3f
	ands r2, r3
	movs r3, #0x80
	orrs r2, r3
	strb r2, [r0, #0x1d]
	pop {r1}
	b sub_0800247C
	.align 2, 0

	thumb_func_start sub_08002768
sub_08002768: @ 0x08002768
	movs r2, #8
	movs r3, #0x18
	b _08002774
	.align 2, 0

	thumb_func_start sub_08002770
sub_08002770: @ 0x08002770
	movs r2, #0
	movs r3, #0x10
_08002774:
	eors r4, r4
	movs r5, #0x3d
	strb r4, [r1, r5]
	ldrb r4, [r1, #0x1e]
	orrs r4, r4
	beq _0800278A
	movs r4, #0x2a
	ldrb r4, [r0, r4]
	lsrs r4, r4, #1
	lsls r4, r4, #3
	b _0800278C
_0800278A:
	ldrb r4, [r1, #0xd]
_0800278C:
	cmp r4, r2
	beq _0800279E
	cmp r4, r3
	beq _0800279E
	movs r2, #0x34
	ldrb r4, [r1, r2]
	movs r3, #1
	orrs r4, r3
	strb r4, [r1, r2]
_0800279E:
	movs r4, #0x50
	ldrh r2, [r0, r4]
	ldr r3, _080029EC @ =0x0000C000
	orrs r2, r3
	strh r2, [r0, r4]
	movs r2, #0x40
	strb r2, [r0, #0x1f]
	ldrb r2, [r0, #0x1d]
	movs r3, #0x3f
	ands r2, r3
	movs r3, #0x40
	orrs r2, r3
	strb r2, [r0, #0x1d]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080027BC
sub_080027BC: @ 0x080027BC
	ldrh r2, [r0, #0x36]
	adds r2, #3
	movs r3, #0xf
	ands r2, r3
	cmp r2, #0xd
	bhs _08002820
	b _080027D8
	.align 2, 0

	thumb_func_start sub_080027CC
sub_080027CC: @ 0x080027CC
	ldrh r2, [r0, #0x36]
	adds r2, #3
	movs r3, #0xf
	ands r2, r3
	cmp r2, #5
	blo _08002820
_080027D8:
	ldr r2, _080029F0 @ =0x00006600
	strh r2, [r0, #0x2c]
	b _080027FA
_080027DE:
	pop {pc}

	thumb_func_start sub_080027E0
sub_080027E0: @ 0x080027E0
	ldrh r2, [r0, #0x32]
	movs r3, #0xf
	ands r2, r3
	cmp r2, #0xc
	bhs _08002820
	b _080027F6

	thumb_func_start sub_080027EC
sub_080027EC: @ 0x080027EC
	ldrh r2, [r0, #0x32]
	movs r3, #0xf
	ands r2, r3
	cmp r2, #5
	blo _08002820
_080027F6:
	movs r2, #0x66
	strh r2, [r0, #0x2c]
_080027FA:
	movs r2, #0x80
	strb r2, [r0, #0xb]
	ldrh r2, [r1, #0x36]
	movs r3, #0x40
	orrs r2, r3
	strh r2, [r1, #0x36]
	ldrb r2, [r0, #0x1c]
	movs r3, #0xfe
	ands r2, r3
	strb r2, [r0, #0x1c]
	movs r3, #0x3c
	ldrb r2, [r0, r3]
	lsls r2, r2, #0x1d
	lsrs r2, r2, #0x1d
	strb r2, [r0, r3]
	eors r2, r2
	movs r3, #0x42
	strb r2, [r0, r3]
	pop {pc}
_08002820:
	eors r2, r2
	strb r2, [r0, #0xb]
	ldrb r2, [r0, #0x1c]
	movs r3, #1
	orrs r2, r3
	strb r2, [r0, #0x1c]
	ldrh r2, [r1, #0x36]
	ldr r3, _080029F4 @ =0x0000FFBF
	ands r2, r3
	strh r2, [r1, #0x36]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08002838
sub_08002838: @ 0x08002838
	ldrb r2, [r1, #0x1e]
	orrs r2, r2
	bne _080028AA
	push {r0, r1}
	movs r2, #0x18
	ldrh r3, [r0, #0x32]
	lsrs r3, r3, #4
	bhs _0800288E
	movs r1, #0xf0
	b _080028A4

	thumb_func_start sub_0800284C
sub_0800284C: @ 0x0800284C
	ldrb r2, [r1, #0x1e]
	orrs r2, r2
	bne _080028AA
	push {r0, r1}
	movs r2, #8
	ldrh r3, [r0, #0x32]
	lsrs r3, r3, #4
	blo _0800288E
	movs r1, #0xf0
	b _080028A4

	thumb_func_start sub_08002860
sub_08002860: @ 0x08002860
	ldrb r2, [r1, #0x1e]
	orrs r2, r2
	bne _080028AA
	push {r0, r1}
	movs r2, #0x10
	ldrh r3, [r0, #0x36]
	adds r3, #3
	lsrs r3, r3, #4
	blo _0800288E
	movs r1, #0xf0
	b _080028A4
	.align 2, 0

	thumb_func_start sub_08002878
sub_08002878: @ 0x08002878
	ldrb r2, [r1, #0x1e]
	orrs r2, r2
	bne _080028AA
	push {r0, r1}
	movs r2, #0
	ldrh r3, [r0, #0x36]
	adds r3, #3
	lsrs r3, r3, #4
	bhs _0800288E
	movs r1, #0xf0
	b _080028A4
_0800288E:
	movs r3, #0x2b
	strb r2, [r0, r3]
	movs r3, #0xd
	adds r1, #0x38
	strb r3, [r1]
	strb r3, [r1, #1]
	pop {r0, r1}
	pop {r2}
	movs r2, #0xb
	ldr r3, _080029F8 @ =sub_08001290
	bx r3
_080028A4:
	bl sub_08003010
	pop {r0, r1}
_080028AA:
	pop {pc}

	thumb_func_start sub_080028AC
sub_080028AC: @ 0x080028AC
	push {lr}
	bl sub_08003010
	pop {r2}
	pop {r0, r1}
	mov pc, r2
_080028B8:
	movs r3, #0x26
	ldrb r3, [r1, r3]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x19
	subs r3, #1
	bne _080028CC
	push {r0, r1}
	movs r1, #0x80
	bl sub_080028AC
_080028CC:
	b sub_08002530
	.align 2, 0

	thumb_func_start sub_080028D0
sub_080028D0: @ 0x080028D0
	bl sub_08002424
	bl sub_080025F4
_080028D8:
	movs r2, #8
	b _080028B8

	thumb_func_start sub_080028DC
sub_080028DC: @ 0x080028DC
	bl sub_08002424
	bl sub_080025F4
_080028E4:
	movs r2, #0x18
	b _080028B8

	thumb_func_start sub_080028E8
sub_080028E8: @ 0x080028E8
	bl sub_08002424
	bl sub_080025F4
_080028F0:
	movs r2, #0
	b _080028B8

	thumb_func_start sub_080028F4
sub_080028F4: @ 0x080028F4
	bl sub_08002424
	bl sub_080025F4
_080028FC:
	movs r2, #0x10
	b _080028B8

	thumb_func_start sub_08002900
sub_08002900: @ 0x08002900
	bl sub_08002424
	bl sub_080025F4
_08002908:
	push {r1}
	movs r1, #0x50
	ldrh r2, [r0, r1]
	ldr r3, _080029E0 @ =0x00003FFF
	ands r2, r3
	ldr r3, _080029E8 @ =0x00004000
	orrs r2, r3
	strh r2, [r0, r1]
	movs r2, #0x80
	strb r2, [r0, #0x1f]
	ldrb r2, [r0, #0x1d]
	movs r3, #0x3f
	ands r2, r3
	movs r3, #0x80
	orrs r2, r3
	strb r2, [r0, #0x1d]
	pop {r1}
	movs r2, #0x10
	b _08002930
	.align 2, 0
_08002930:
	movs r3, #0x26
	ldrb r3, [r1, r3]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x19
	subs r3, #1
	bne _08002944
	push {r0, r1}
	ldr r1, _080029FC @ =0x00000180
	bl sub_080028AC
_08002944:
	b sub_08002530
	.align 2, 0

	thumb_func_start sub_08002948
sub_08002948: @ 0x08002948
	bl sub_08002424
	bl sub_080025F4
_08002950:
	movs r2, #8
	b _08002930

	thumb_func_start sub_08002954
sub_08002954: @ 0x08002954
	bl sub_08002424
	bl sub_080025F4
_0800295C:
	movs r2, #0x18
	b _08002930

	thumb_func_start sub_08002960
sub_08002960: @ 0x08002960
	bl sub_08002424
	bl sub_080025F4
_08002968:
	movs r2, #0
	b _08002930

	thumb_func_start sub_0800296C
sub_0800296C: @ 0x0800296C
	bl sub_08002424
	bl sub_080025F4
_08002974:
	movs r2, #0x10
	b _08002930

	thumb_func_start sub_08002978
sub_08002978: @ 0x08002978
	ldr r2, _08002A00 @ =gUnk_03000E20
	ldrb r2, [r2]
	movs r3, #7
	ands r2, r3
	bne _0800298A
	push {r0, r1}
	bl sub_08059818
	pop {r0, r1}
_0800298A:
	pop {pc}

	thumb_func_start sub_0800298C
sub_0800298C: @ 0x0800298C
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08002990
sub_08002990: @ 0x08002990
	ldr r2, _08002A04 @ =gUnk_03000BD0
	ldrb r2, [r2]
	movs r3, #0xf0
	ands r2, r3
	bne _080029A6
	ldrb r2, [r1, #0xd]
	lsrs r2, r2, #8
	bhs _080029B0
	ldrb r2, [r1, #0x11]
	subs r2, #1
	bne _080029B0
_080029A6:
	push {r1}
	movs r2, #0x67
	bl sub_080031AC
	pop {r1}
_080029B0:
	movs r3, #0x26
	ldrb r2, [r1, r3]
	orrs r2, r2
	beq _080029C2
	movs r4, #0x3c
	ldrb r2, [r0, r4]
	movs r5, #0x80
	orrs r2, r5
	strb r2, [r0, r4]
_080029C2:
	movs r2, #0
	strb r2, [r1, r3]
	movs r2, #2
	b _08002474
	.align 2, 0
_080029CC: .4byte 0x0000F3FB
_080029D0: .4byte 0x00000133
_080029D4: .4byte 0x00000176
_080029D8: .4byte sub_08001660
_080029DC: .4byte 0x00000158
_080029E0: .4byte 0x00003FFF
_080029E4: .4byte 0x00008000
_080029E8: .4byte 0x00004000
_080029EC: .4byte 0x0000C000
_080029F0: .4byte 0x00006600
_080029F4: .4byte 0x0000FFBF
_080029F8: .4byte sub_08001290
_080029FC: .4byte 0x00000180
_08002A00: .4byte gUnk_03000E20
_08002A04: .4byte gUnk_03000BD0

	thumb_func_start sub_08002A08
sub_08002A08: @ 0x08002A08
	bl sub_08002424
	bl sub_080025F4
_08002A10:
	ldrb r2, [r1, #0xf]
	movs r3, #0xc0
	ands r2, r3
	bne _08002A22
	ldrb r2, [r1, #0x14]
	orrs r2, r2
	bne _08002A22
	movs r2, #0x11
	strb r2, [r1, #0xc]
_08002A22:
	pop {pc}

	thumb_func_start sub_08002A24
sub_08002A24: @ 0x08002A24
	bl sub_08002424
	bl sub_080025F4
_08002A2C:
	ldrb r2, [r1, #0xf]
	movs r3, #0xc0
	ands r2, r3
	bne _08002A5A
	ldrb r2, [r1, #0x14]
	orrs r2, r2
	bne _08002A5A
	movs r2, #0x12
	strb r2, [r1, #0xc]
	push {r0, r1}
	movs r0, #0xf
	movs r1, #0xb
	eors r2, r2
	bl sub_0804C8A8
	adds r2, r0, #0
	pop {r0, r1}
	orrs r2, r2
	beq _08002A5A
	ldrh r3, [r0, #0x32]
	strh r3, [r2, #0x32]
	ldrh r3, [r0, #0x36]
	strh r3, [r2, #0x36]
_08002A5A:
	pop {pc}

	thumb_func_start sub_08002A5C
sub_08002A5C: @ 0x08002A5C
	bl sub_080025F4
_08002A60:
	push {r0, r1}
	bl sub_0800099C
	adds r2, r0, #0
	pop {r0, r1}
	movs r3, #3
	ands r2, r3
	lsls r2, r2, #3
	movs r3, #4
	b _08002AA0

	thumb_func_start sub_08002A74
sub_08002A74: @ 0x08002A74
	bl sub_080025F4
_08002A78:
	movs r2, #0
	eors r3, r3
	b _08002AA0
	.align 2, 0

	thumb_func_start sub_08002A80
sub_08002A80: @ 0x08002A80
	bl sub_080025F4
_08002A84:
	movs r2, #8
	eors r3, r3
	b _08002AA0
	.align 2, 0

	thumb_func_start sub_08002A8C
sub_08002A8C: @ 0x08002A8C
	bl sub_080025F4
_08002A90:
	movs r2, #0x10
	eors r3, r3
	b _08002AA0
	.align 2, 0

	thumb_func_start sub_08002A98
sub_08002A98: @ 0x08002A98
	bl sub_080025F4
_08002A9C:
	movs r2, #0x18
	eors r3, r3
_08002AA0:
	movs r4, #0x2b
	strb r2, [r0, r4]
	lsrs r2, r2, #2
	movs r4, #0x2a
	strb r2, [r0, r4]
	lsrs r2, r2, #1
	push {r0, r1}
	movs r0, #0x45
	adds r1, r2, #0
	adds r1, r1, r3
	eors r2, r2
	bl sub_0804C8A8
	orrs r0, r0
	beq _08002AF6
	adds r2, r0, #0
	pop {r0, r1}
	ldrh r3, [r0, #0x36]
	adds r3, #3
	strh r3, [r0, #0x36]
	push {r2}
	bl sub_080037CC
	pop {r2}
	ldrh r3, [r0, #0x32]
	strh r3, [r2, #0x32]
	ldrh r3, [r0, #0x36]
	strh r3, [r2, #0x36]
	movs r4, #0x50
	ldrh r3, [r0, r4]
	strh r3, [r2, r4]
	movs r2, #0xf
	strb r2, [r1, #0xc]
	movs r2, #0x37
	movs r3, #0x38
	strb r2, [r1, r3]
	eors r2, r2
	movs r3, #0x39
	strb r2, [r1, r3]
	ldr r2, _08002B48 @ =0x00034000
	str r2, [r0, #0x10]
	movs r2, #0x10
	strh r2, [r1, #8]
_08002AF6:
	pop {pc}

	thumb_func_start sub_08002AF8
sub_08002AF8: @ 0x08002AF8
	bl sub_080025F4
_08002AFC:
	push {r1}
	movs r1, #0xb
	eors r2, r2
	movs r3, #3
	bl sub_08001B54
	pop {r1}
	movs r0, r0

	thumb_func_start sub_08002B0C
sub_08002B0C: @ 0x08002B0C
	bl sub_080025F4
_08002B10:
	movs r2, #0x3d
	ldrsb r3, [r0, r2]
	orrs r3, r3
	beq _08002B1A
	bpl _08002B44
_08002B1A:
	push {r0, r1}
	ldr r1, _08002B4C @ =0xFFFFFFFE
	bl sub_0802C3F0
	movs r0, #0xc3
	bl sub_08003DFC
	pop {r0, r1}
	movs r3, #0x14
	movs r4, #4
	movs r2, #0x3d
	strb r3, [r0, r2]
	movs r2, #0x42
	strb r4, [r0, r2]
	movs r2, #0x2a
	ldrb r3, [r0, r2]
	lsls r3, r3, #2
	movs r2, #0x10
	eors r3, r2
	movs r2, #0x3e
	strb r3, [r0, r2]
_08002B44:
	pop {pc}
	.align 2, 0
_08002B48: .4byte 0x00034000
_08002B4C: .4byte 0xFFFFFFFE
_08002B50:
	.byte 0xD5, 0x00, 0x00, 0x00, 0xD6, 0x00, 0x01, 0x00, 0xDB, 0x00, 0x00, 0x00, 0xDC, 0x00, 0x01, 0x00
	.byte 0x0D, 0x01, 0x08, 0x00, 0xDA, 0x00, 0x02, 0x00, 0xD9, 0x00, 0x03, 0x00, 0xD7, 0x00, 0x04, 0x00
	.byte 0xD8, 0x00, 0x05, 0x00, 0xDD, 0x00, 0x06, 0x00, 0xDE, 0x00, 0x07, 0x00, 0xE4, 0x00, 0x06, 0x00
	.byte 0xE5, 0x00, 0x07, 0x00, 0xDF, 0x00, 0x15, 0x00, 0xE0, 0x00, 0x16, 0x00, 0xE1, 0x00, 0x17, 0x00
	.byte 0xE2, 0x00, 0x18, 0x00, 0x21, 0x00, 0x09, 0x00, 0x22, 0x00, 0x0A, 0x00, 0x23, 0x00, 0x0B, 0x00
	.byte 0x25, 0x00, 0x0D, 0x00, 0x26, 0x00, 0x0E, 0x00, 0x27, 0x00, 0x0F, 0x00, 0x02, 0x40, 0x0C, 0x00
	.byte 0x38, 0x01, 0x10, 0x00, 0x39, 0x01, 0x11, 0x00, 0xBA, 0x00, 0x12, 0x00, 0xB1, 0x00, 0x12, 0x00
	.byte 0xB2, 0x00, 0x12, 0x00, 0xB3, 0x00, 0x12, 0x00, 0xB4, 0x00, 0x12, 0x00, 0xB5, 0x00, 0x12, 0x00
	.byte 0xB6, 0x00, 0x12, 0x00, 0xB7, 0x00, 0x12, 0x00, 0xB8, 0x00, 0x12, 0x00, 0xB9, 0x00, 0x12, 0x00
	.byte 0xC8, 0x00, 0x13, 0x00, 0xBF, 0x00, 0x13, 0x00, 0xC0, 0x00, 0x13, 0x00, 0xC1, 0x00, 0x13, 0x00
	.byte 0xC2, 0x00, 0x13, 0x00, 0xC3, 0x00, 0x13, 0x00, 0xC4, 0x00, 0x13, 0x00, 0xC5, 0x00, 0x13, 0x00
	.byte 0xC6, 0x00, 0x13, 0x00, 0xC7, 0x00, 0x13, 0x00, 0xBB, 0x00, 0x14, 0x00, 0xBC, 0x00, 0x14, 0x00
	.byte 0xA0, 0x00, 0x19, 0x00, 0x91, 0x00, 0x19, 0x00, 0x92, 0x00, 0x19, 0x00, 0x93, 0x00, 0x19, 0x00
	.byte 0x94, 0x00, 0x19, 0x00, 0x95, 0x00, 0x19, 0x00, 0x96, 0x00, 0x19, 0x00, 0x97, 0x00, 0x19, 0x00
	.byte 0x98, 0x00, 0x19, 0x00, 0x99, 0x00, 0x19, 0x00, 0x9A, 0x00, 0x19, 0x00, 0x9B, 0x00, 0x19, 0x00
	.byte 0x9C, 0x00, 0x19, 0x00, 0x9D, 0x00, 0x19, 0x00, 0x9E, 0x00, 0x19, 0x00, 0x9F, 0x00, 0x19, 0x00
	.byte 0xB0, 0x00, 0x1A, 0x00, 0xA1, 0x00, 0x1A, 0x00, 0xA2, 0x00, 0x1A, 0x00, 0xA3, 0x00, 0x1A, 0x00
	.byte 0xA4, 0x00, 0x1A, 0x00, 0xA5, 0x00, 0x1A, 0x00, 0xA6, 0x00, 0x1A, 0x00, 0xA7, 0x00, 0x1A, 0x00
	.byte 0xA8, 0x00, 0x1A, 0x00, 0xA9, 0x00, 0x1A, 0x00, 0xAA, 0x00, 0x1A, 0x00, 0xAB, 0x00, 0x1A, 0x00
	.byte 0xAC, 0x00, 0x1A, 0x00, 0xAD, 0x00, 0x1A, 0x00, 0xAE, 0x00, 0x1A, 0x00, 0xAF, 0x00, 0x1A, 0x00
	.byte 0x13, 0x40, 0x1B, 0x00, 0x14, 0x40, 0x1B, 0x00, 0x15, 0x40, 0x1B, 0x00, 0xE6, 0x00, 0x1C, 0x00
	.byte 0xE7, 0x00, 0x1D, 0x00, 0xE8, 0x00, 0x1C, 0x00, 0xE9, 0x00, 0x1D, 0x00, 0x5A, 0x17, 0x1C, 0x00
	.byte 0x88, 0x18, 0x1D, 0x00, 0x5B, 0x17, 0x1C, 0x00, 0x0C, 0x00, 0x1E, 0x00, 0x21, 0x05, 0x1E, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
_08002CC4:
	.byte 0xDF, 0x92, 0x0F, 0x03, 0x00, 0x00, 0x2E, 0x00, 0xDF, 0x92, 0x0F, 0x03
	.byte 0x00, 0x00, 0x57, 0x00, 0xDF, 0x92, 0x0F, 0x03, 0x00, 0x00, 0x4A, 0x01, 0xDF, 0x92, 0x0F, 0x03
	.byte 0x00, 0x00, 0x48, 0x01, 0xDF, 0x92, 0x0F, 0x03, 0x00, 0x00, 0x58, 0x01, 0xDF, 0x92, 0x0F, 0x03
	.byte 0x00, 0x00, 0x58, 0x01, 0xC0, 0x82, 0x0F, 0x04, 0x00, 0x01, 0x2F, 0x00, 0xC0, 0x82, 0x0F, 0x04
	.byte 0x00, 0x01, 0x58, 0x00, 0x20, 0x80, 0x2A, 0x01, 0x00, 0x00, 0x0E, 0x01, 0xA7, 0x81, 0x00, 0x01
	.byte 0x00, 0x00, 0x4F, 0x00, 0xA7, 0x81, 0x00, 0x02, 0x00, 0x00, 0x4F, 0x00, 0xA7, 0x81, 0x00, 0x03
	.byte 0x00, 0x00, 0x4F, 0x00, 0xA0, 0x83, 0xFF, 0x00, 0x00, 0x00, 0x07, 0x40, 0xA7, 0x81, 0x00, 0x01
	.byte 0x00, 0x00, 0x78, 0x00, 0xA7, 0x01, 0x00, 0x02, 0x00, 0x00, 0x78, 0x00, 0xA7, 0x81, 0x00, 0x03
	.byte 0x00, 0x00, 0x78, 0x00, 0x08, 0x80, 0x0F, 0x0F, 0x00, 0x00, 0x2F, 0x00, 0x08, 0x80, 0x0F, 0x0F
	.byte 0x00, 0x00, 0x58, 0x00, 0x9F, 0x82, 0x0F, 0x13, 0x00, 0x00, 0x30, 0x00, 0x9F, 0x82, 0x0F, 0x13
	.byte 0x00, 0x00, 0x59, 0x00, 0x9F, 0x82, 0x0F, 0x13, 0x00, 0x00, 0x58, 0x01, 0xC0, 0x82, 0x0F, 0x04
	.byte 0x00, 0x01, 0x58, 0x01, 0xC0, 0x82, 0x0F, 0x04, 0x00, 0x01, 0x58, 0x01, 0xC0, 0x82, 0x0F, 0x04
	.byte 0x00, 0x01, 0x48, 0x01, 0xC0, 0x82, 0x0F, 0x04, 0x00, 0x01, 0x4A, 0x01, 0x0B, 0x80, 0x0F, 0x17
	.byte 0x00, 0x00, 0x30, 0x00, 0x0B, 0x80, 0x0F, 0x17, 0x00, 0x00, 0x59, 0x00, 0x00, 0x84, 0xFF, 0x00
	.byte 0x00, 0x00, 0x18, 0x40, 0x0B, 0x88, 0x0F, 0x16, 0x00, 0x00, 0x2F, 0x00, 0x0B, 0x88, 0x0F, 0x16
	.byte 0x00, 0x00, 0x58, 0x00, 0x00, 0x80, 0xFF, 0x00, 0x00, 0x00, 0x5A, 0x01
_08002DBC:
	.byte 0x06, 0x00, 0x06, 0x60
	.byte 0x06, 0x60, 0x06, 0x60, 0x06, 0x60, 0x06, 0x60, 0x06, 0x60, 0x06, 0x60, 0x00, 0x60, 0x60, 0x60
	.byte 0x60, 0x60, 0x60, 0x60, 0x60, 0x60, 0x60, 0x60, 0x60, 0x60, 0x60, 0x60, 0x60, 0x00, 0x60, 0x06
	.byte 0x60, 0x06, 0x60, 0x06, 0x60, 0x06, 0x60, 0x06, 0x60, 0x06, 0x60, 0x06, 0x00, 0x06, 0x06, 0x06
	.byte 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06
_08002DFC:
	.4byte _08002E0C
	.4byte _08002E0E
	.4byte _08002E10
	.4byte _08002E13
_08002E0C:
	.byte 0xFF, 0x01
_08002E0E:
	.byte 0x80, 0x80
_08002E10:
	.byte 0x56, 0x55, 0x55
_08002E13:
	.byte 0x40, 0x40, 0x40, 0x40, 0x00

	thumb_func_start sub_08002E18
sub_08002E18: @ 0x08002E18
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r3, [r1, #5]
	lsrs r3, r3, #7
	bne _08002E38
	ldrb r3, [r1, #6]
	cmp r3, #0
	bne _08002E3C
	ldrb r3, [r1, #9]
	cmp r3, #0
	beq _08002E40
	ldrb r3, [r1, #7]
	cmp r3, #0
	bne _08002E4C
_08002E34:
	movs r0, #0
	mov pc, lr
_08002E38:
	movs r0, #1
	mov pc, lr
_08002E3C:
	movs r0, #2
	mov pc, lr
_08002E40:
	ldrb r2, [r0, #0x14]
	ldrb r3, [r0, #0x15]
	orrs r2, r3
	beq _08002E34
	movs r0, #3
	mov pc, lr
_08002E4C:
	movs r0, #4
	mov pc, lr

	thumb_func_start sub_08002E50
sub_08002E50: @ 0x08002E50
	push {r4}
	movs r2, #0x5e
	ldrb r4, [r0, r2]
	movs r3, #0xfc
	ands r4, r3
	orrs r4, r1
	strb r4, [r0, r2]
	pop {r4}
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08002E64
sub_08002E64: @ 0x08002E64
	push {r4, r5, r6, r7, lr}
	bl sub_08002EE8
	bl sub_0800303C
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08002E70
sub_08002E70: @ 0x08002E70
	push {r4, r5, r6, r7, lr}
	push {r1, r2}
	adds r6, r2, #0
	bl sub_08002EE4
	pop {r1, r2}
	adds r0, #0x2c
	ldrh r3, [r0]
	b _08003050
	.align 2, 0

	thumb_func_start sub_08002E84
sub_08002E84: @ 0x08002E84
	push {r4, r5, r6, r7, lr}
	adds r0, #0x2c
	b _08003050
	.align 2, 0

	thumb_func_start sub_08002E8C
sub_08002E8C: @ 0x08002E8C
	movs r3, #0x42
	ldrb r2, [r0, r3]
	cmp r2, #0
	beq _08002EB0
	push {r4, r5, r6, r7, lr}
	ldr r4, _080031C4 @ =_08002EB4
	lsrs r5, r2, #7
	ldrsb r4, [r4, r5]
	subs r2, r2, r4
	strb r2, [r0, r3]
	push {r1}
	bl sub_08003D08
	pop {r2}
	ldr r1, _080031C8 @ =0x00000280
	adds r0, #0x2c
	ldrh r3, [r0]
	b _08003050
_08002EB0:
	mov pc, lr
	.align 2, 0
_08002EB4:
	.byte 0x01, 0xFF, 0x00, 0x00

	thumb_func_start sub_08002EB8
sub_08002EB8: @ 0x08002EB8
	push {r4, r5, r6, r7, lr}
	adds r2, r1, #0
	ldr r1, _080031C8 @ =0x00000280
	movs r3, #0x42
	adds r3, r3, r0
	ldrb r4, [r3]
	orrs r4, r4
	beq _08002EE2
	ldr r5, _080031CC @ =_08002EB4
	lsrs r6, r4, #7
	ldrsb r5, [r5, r6]
	subs r4, r4, r5
	strb r4, [r3]
	push {r1, r2}
	adds r6, r2, #0
	bl sub_08002EE4
	pop {r1, r2}
	adds r0, #0x2c
	ldrh r3, [r0]
	b _08003050
_08002EE2:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08002EE4
sub_08002EE4: @ 0x08002EE4
	push {lr}
	b _08002EF4

	thumb_func_start sub_08002EE8
sub_08002EE8: @ 0x08002EE8
	push {lr}
	movs r2, #0x2b
	ldrb r6, [r0, r2]
	movs r3, #0x80
	tst r6, r3
	bne _08002FC0
_08002EF4:
	mov r2, sl
	push {r2}
	eors r7, r7
	mov sl, r0
	movs r2, #0x32
	ldrh r3, [r0, r2]
	movs r2, #0x36
	ldrh r4, [r0, r2]
	movs r2, #0x48
	ldr r5, [r0, r2]
	ldr r1, _080031D0 @ =gUnk_03000468
	ldrh r1, [r1]
	subs r3, r3, r1
	ldr r1, _080031D4 @ =gUnk_0300046A
	ldrh r1, [r1]
	subs r4, r4, r1
	eors r2, r2
	ldrsb r0, [r5, r2]
	adds r0, r0, r3
	movs r2, #1
	ldrsb r1, [r5, r2]
	adds r1, r1, r4
	push {r0, r1}
	movs r4, #0xf
	tst r4, r6
	beq _08002F5C
	ldrb r2, [r5, #2]
	movs r4, #0x10
	tst r6, r4
	beq _08002F32
	rsbs r2, r2, #0
_08002F32:
	adds r0, r0, r2
	bl sub_08002FC4
	orrs r7, r2
	lsls r7, r7, #1
	ldrb r4, [r5, #3]
	adds r1, r1, r4
	bl sub_08002FC4
	orrs r7, r2
	lsls r7, r7, #1
	lsls r4, r4, #1
	subs r1, r1, r4
	bl sub_08002FC4
	orrs r7, r2
	lsls r7, r7, #1
	movs r4, #0x10
	tst r4, r6
	bne _08002F5C
	lsls r7, r7, #4
_08002F5C:
	pop {r0, r1}
	adds r3, r6, #0
	movs r4, #0xf
	ands r3, r4
	movs r4, #8
	cmp r4, r3
	beq _08002FB4
	ldrb r2, [r5, #5]
	movs r4, #0x10
	ands r4, r6
	lsrs r4, r4, #1
	eors r4, r6
	movs r3, #8
	tst r4, r3
	bne _08002F7E
	rsbs r2, r2, #0
	lsls r7, r7, #4
_08002F7E:
	lsls r7, r7, #1
	adds r1, r1, r2
	bl sub_08002FC4
	orrs r7, r2
	lsls r7, r7, #1
	ldrb r4, [r5, #4]
	adds r0, r0, r4
	bl sub_08002FC4
	orrs r7, r2
	lsls r7, r7, #1
	lsls r4, r4, #1
	subs r0, r0, r4
	bl sub_08002FC4
	orrs r7, r2
	lsls r7, r7, #1
	movs r4, #0x10
	ands r4, r6
	lsrs r4, r4, #1
	eors r4, r6
	movs r3, #8
	tst r4, r3
	beq _08002FB6
	lsls r7, r7, #4
	b _08002FB6
_08002FB4:
	lsls r7, r7, #8
_08002FB6:
	mov r0, sl
	movs r2, #0x2c
	strh r7, [r0, r2]
	pop {r2}
	mov sl, r2
_08002FC0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08002FC4
sub_08002FC4: @ 0x08002FC4
	push {lr}
	push {r0, r1}
	ldr r2, _080031D8 @ =0x000003F0
	ands r0, r2
	ands r1, r2
	lsrs r0, r0, #4
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r2, sl
	movs r3, #0x50
	ldrh r3, [r2, r3]
	lsrs r3, r3, #0xe
	lsls r3, r3, #2
	ldr r1, _080031DC @ =_080092A0
	ldr r1, [r1, r3]
	ldrb r2, [r0, r1]
	cmp r2, #0x10
	pop {r0, r1}
	bhs _08002FFA
	movs r3, #8
	tst r1, r3
	bne _08002FF2
	lsrs r2, r2, #2
_08002FF2:
	tst r0, r3
	bne _08003008
	lsrs r2, r2, #1
	b _08003008
_08002FFA:
	cmp r2, #0xff
	beq _08003008
	movs r3, #0xff
	cmp r2, #0x20
	blo _08003006
	eors r3, r3
_08003006:
	adds r2, r3, #0
_08003008:
	movs r3, #1
	ands r2, r3
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08003010
sub_08003010: @ 0x08003010
	push {r4, r5, r6, r7, lr}
	movs r3, #0x80
	tst r2, r3
	bne _080030B0
	adds r0, #0x2c
	ldrh r3, [r0]
	movs r4, #7
	tst r2, r4
	bne _08003038
	push {r0, r1, r2, r3}
	adds r0, r2, #0
	adds r1, r3, #0
	bl sub_080030B4
	adds r4, r0, #0
	pop {r0, r1, r2, r3}
	cmp r2, r4
	beq _08003038
	adds r2, r4, #0
	ldr r1, _080031E0 @ =0x00000100
_08003038:
	b _08003050
	.align 2, 0

	thumb_func_start sub_0800303C
sub_0800303C: @ 0x0800303C
	push {r4, r5, r6, r7, lr}
	eors r6, r6
	ldr r1, [r0, #0xc]
	adds r0, #0x2b
	ldrb r2, [r0]
	movs r3, #0x80
	tst r2, r3
	bne _080030B0
	adds r0, #1
	ldrh r3, [r0]
_08003050:
	ldr r4, _080031E4 @ =_08002DBC
	lsls r2, r2, #1
	adds r4, r4, r2
	ldrh r4, [r4]
	lsls r2, r2, #3
	ands r3, r4
	ldr r4, _080031E8 @ =0x0000EE00
	tst r3, r4
	bne _08003086
	push {r0, r1, r2, r3}
	ldr r4, _080031EC @ =gUnk_0813E4CC
	adds r4, r4, r2
	ldrh r0, [r4]
	orrs r0, r0
	beq _0800307C
	adds r6, #1
	bl sub_0803D310
	ldr r1, _080031E0 @ =0x00000100
	bl sub_0803D350
	lsls r0, r0, #8
_0800307C:
	adds r4, r0, #0
	pop {r0, r1, r2, r3}
	ldr r5, [r0, #4]
	adds r5, r5, r4
	str r5, [r0, #4]
_08003086:
	movs r4, #0xee
	tst r3, r4
	bne _080030B0
	push {r0, r1, r2, r3}
	ldr r4, _080031F0 @ =gUnk_0813E54C
	adds r4, r4, r2
	ldrh r0, [r4]
	orrs r0, r0
	beq _080030A6
	adds r6, #2
	bl sub_0803D310
	ldr r1, _080031E0 @ =0x00000100
	bl sub_0803D350
	lsls r0, r0, #8
_080030A6:
	adds r4, r0, #0
	pop {r0, r1, r2, r3}
	ldr r5, [r0, #8]
	subs r5, r5, r4
	str r5, [r0, #8]
_080030B0:
	adds r1, r6, #0
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080030B4
sub_080030B4: @ 0x080030B4
	adds r2, r0, #0
	lsrs r2, r2, #3
	orrs r2, r2
	beq _080030F8
	subs r2, #1
	beq _080030DE
	subs r2, #1
	beq _08003112
	ldr r3, _080031F4 @ =0x00000E00
	ands r3, r1
	bne _080030CC
	mov pc, lr
_080030CC:
	movs r2, #0
	ldr r3, _080031F8 @ =0x0000020E
	tst r3, r1
	beq _0800312C
	movs r2, #0x10
	ldr r3, _080031FC @ =0x000004E0
	tst r3, r1
	beq _0800312C
	mov pc, lr
_080030DE:
	ldr r3, _08003200 @ =0x0000E000
	ands r3, r1
	bne _080030E6
	mov pc, lr
_080030E6:
	movs r2, #0
	ldr r3, _08003204 @ =0x0000200E
	tst r3, r1
	beq _0800312C
	movs r2, #0x10
	ldr r3, _08003208 @ =0x000040E0
	tst r3, r1
	beq _0800312C
	mov pc, lr
_080030F8:
	movs r3, #0xe
	ands r3, r1
	bne _08003100
	mov pc, lr
_08003100:
	movs r2, #8
	ldr r3, _0800320C @ =0x0000E004
	tst r3, r1
	beq _0800312C
	movs r2, #0x18
	ldr r3, _08003210 @ =0x00000E02
	tst r3, r1
	beq _0800312C
	mov pc, lr
_08003112:
	movs r3, #0xe0
	ands r3, r1
	bne _0800311A
	mov pc, lr
_0800311A:
	movs r2, #8
	ldr r3, _08003214 @ =0x0000E040
	tst r3, r1
	beq _0800312C
	movs r2, #0x18
	ldr r3, _08003218 @ =0x00000E20
	tst r3, r1
	beq _0800312C
	mov pc, lr
_0800312C:
	adds r0, r2, #0
	mov pc, lr

	thumb_func_start sub_08003130
sub_08003130: @ 0x08003130
	push {r4}
	movs r1, #0x3d
	ldrsb r2, [r0, r1]
	orrs r2, r2
	beq _0800315E
	bmi _0800315C
	subs r2, #1
	beq _0800315E
	ldr r3, _0800321C @ =gUnk_03000E20
	ldrb r3, [r3]
	movs r4, #4
	tst r3, r4
	bne _0800315E
	strb r2, [r0, r1]
	ldrb r1, [r0, #0x1e]
	movs r2, #0xf0
	ands r1, r2
	movs r2, #0xf
	orrs r1, r2
	strb r1, [r0, #0x1e]
	pop {r4}
	mov pc, lr
_0800315C:
	adds r2, #1
_0800315E:
	strb r2, [r0, r1]
	ldrb r1, [r0, #0x1e]
	movs r2, #0xf0
	ands r1, r2
	lsrs r2, r1, #4
	orrs r1, r2
	strb r1, [r0, #0x1e]
	pop {r4}
	mov pc, lr

	thumb_func_start sub_08003170
sub_08003170: @ 0x08003170
	ldr r1, _08003220 @ =gUnk_03006C80
	ldrb r1, [r1]
	subs r1, #1
	beq _08003180
	lsls r1, r1, #2
	ldr r2, _08003224 @ =_08002DFC
	ldr r0, [r2, r1]
	b sub_08003184
_08003180:
	eors r0, r0
	mov pc, lr

	thumb_func_start sub_08003184
sub_08003184:
	push {r4, lr}
	push {r0}
	bl sub_0800099C
	adds r1, r0, #0
	pop {r0}
	movs r2, #0xff
	ands r1, r2
	eors r3, r3
	ldrb r2, [r0]
_08003198:
	cmp r1, r2
	blo _080031A6
	adds r0, #1
	ldrb r4, [r0]
	adds r2, r2, r4
	adds r3, #1
	b _08003198
_080031A6:
	adds r0, r3, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080031AC
sub_080031AC: @ 0x080031AC
	push {r0, lr}
	adds r0, r2, #0
	bl sub_08003DFC
	pop {r0, pc}
	.align 2, 0

	thumb_func_start sub_080031B8
sub_080031B8: @ 0x080031B8
	push {r0, lr}
	adds r1, r2, #0
	bl sub_08003E10
	pop {r0, pc}
	.align 2, 0
_080031C4: .4byte _08002EB4
_080031C8: .4byte 0x00000280
_080031CC: .4byte _08002EB4
_080031D0: .4byte gUnk_03000468
_080031D4: .4byte gUnk_0300046A
_080031D8: .4byte 0x000003F0
_080031DC: .4byte _080092A0
_080031E0: .4byte 0x00000100
_080031E4: .4byte _08002DBC
_080031E8: .4byte 0x0000EE00
_080031EC: .4byte gUnk_0813E4CC
_080031F0: .4byte gUnk_0813E54C
_080031F4: .4byte 0x00000E00
_080031F8: .4byte 0x0000020E
_080031FC: .4byte 0x000004E0
_08003200: .4byte 0x0000E000
_08003204: .4byte 0x0000200E
_08003208: .4byte 0x000040E0
_0800320C: .4byte 0x0000E004
_08003210: .4byte 0x00000E02
_08003214: .4byte 0x0000E040
_08003218: .4byte 0x00000E20
_0800321C: .4byte gUnk_03000E20
_08003220: .4byte gUnk_03006C80
_08003224: .4byte _08002DFC
_08003228: .4byte _08006EA8
_0800322C: .4byte _08006EA8
_08003230: .4byte _08006EA8
_08003234: .4byte 0x0813EE04
_08003238: .4byte 0x0813EF3C
_0800323C: .4byte 0x08139268
_08003240: .4byte 0x0813933C
_08003244: .4byte _0800A5C0
_08003248: .4byte 0x081394EC
_0800324C: .4byte 0x08429968
_08003250: .4byte 0x0813FD60
_08003254: .4byte 0x08428980
_08003258: .4byte 0x0813FE84
_0800325C: .4byte 0x0813FE84
_08003260: .4byte 0x0813FE84
_08003264: .4byte 0x0813FC3C
_08003268: .4byte _080034E8
_0800326C: .4byte _0800AE40
_08003270: .4byte 0x08428A4C
_08003274: .4byte _0800AE40
_08003278: .4byte _080034E8
_0800327C: .4byte 0x08428B74
_08003280: .4byte 0x0813958C
_08003284: .4byte 0x0813966C
_08003288: .4byte 0x0813CD24
_0800328C: .4byte 0x0813CDB0
_08003290: .4byte 0x0813CE20
_08003294: .4byte 0x0813CE7C
_08003298: .4byte 0x0814095C
_0800329C: .4byte 0x0813CEE0
_080032A0: .4byte _0800AE40
_080032A4: .4byte _0800AE40
_080032A8: .4byte _0800AE40
_080032AC: .4byte _0800AE40
_080032B0: .4byte 0x081409B8
_080032B4: .4byte 0x0813C35C
_080032B8: .4byte 0x00000000
_080032BC: .4byte _0800A5C0
_080032C0: .4byte _0800A5C0
_080032C4: .4byte _0800AE40
_080032C8: .4byte _0800A5C0
_080032CC: .4byte _0800A5C0
_080032D0: .4byte _0800AE40
_080032D4: .4byte 0x08139738
_080032D8: .4byte 0x0813984C
_080032DC: .4byte 0x081398E8
_080032E0: .4byte 0x0813D0A0
_080032E4: .4byte 0x08139918
_080032E8: .4byte 0x0813C38C
_080032EC: .4byte 0x08139A78
_080032F0: .4byte 0x08140C68
_080032F4: .4byte 0x08139CF8
_080032F8: .4byte 0x0813F6A8
_080032FC: .4byte 0x0813FCA8
_08003300: .4byte 0x08139E38
_08003304: .4byte 0x0813D4B8
_08003308: .4byte 0x081391BC
_0800330C: .4byte 0x0813C450
_08003310: .4byte 0x08140CFC
_08003314: .4byte 0x08139ED8
_08003318: .4byte 0x0813A05C
_0800331C: .4byte 0x0813D594
_08003320: .4byte 0x0813D594
_08003324: .4byte 0x0813D594
_08003328: .4byte 0x08141228
_0800332C: .4byte 0x0813D5C0
_08003330: .4byte 0x0813D65C
_08003334: .4byte 0x0813D66C
_08003338: .4byte 0x0813D670
_0800333C: .4byte 0x08140E0C
_08003340: .4byte 0x0813A164
_08003344: .4byte 0x0813A2A4
_08003348: .4byte 0x0813A3E4
_0800334C: .4byte 0x0813C538
_08003350: .4byte 0x0813C558
_08003354: .4byte 0x0813C578
_08003358: .4byte 0x0813CCCC
_0800335C: .4byte _0800AE40
_08003360: .4byte 0x08137F6C
_08003364: .4byte 0x08137F6C
_08003368: .4byte 0x0813A6F4
_0800336C: .4byte 0x0813A858
_08003370: .4byte 0x0813A8CC
_08003374: .4byte _0800AE40
_08003378: .4byte _0800AE40
_0800337C: .4byte 0x0813AA34
_08003380: .4byte 0x00000000
_08003384: .4byte _0800AE40
_08003388: .4byte 0x08140EEC
_0800338C: .4byte 0x08140F08
_08003390: .4byte 0x08140FEC
_08003394: .4byte 0x0814106C
_08003398: .4byte _0800AE40
_0800339C: .4byte 0x0813ABE0
_080033A0: .4byte 0x0813C654
_080033A4: .4byte 0x08141090
_080033A8: .4byte 0x00000000
_080033AC: .4byte 0x0813AD58
_080033B0: .4byte 0x00000000
_080033B4: .4byte 0x081412C8
_080033B8: .4byte 0x0813AE3C
_080033BC: .4byte 0x0813AE9C
_080033C0: .4byte 0x08141364
_080033C4: .4byte 0x084293A0
_080033C8: .4byte 0x00000000
_080033CC: .4byte 0x08140E80
_080033D0: .4byte 0x08141378
_080033D4: .4byte 0x08140B98
_080033D8: .4byte 0x0813A5A8
_080033DC: .4byte 0x0813C6D8
_080033E0: .4byte 0x0813AFAC
_080033E4: .4byte 0x081414E0
_080033E8: .4byte _0800AE40
_080033EC: .4byte _0800AE40
_080033F0: .4byte 0x081417FC
_080033F4: .4byte 0x08140D84
_080033F8: .4byte 0x0813B0CC
_080033FC: .4byte 0x0814180C
_08003400: .4byte 0x08141944
_08003404: .4byte 0x0813B1B0
_08003408: .4byte 0x0813B21C
_0800340C: .4byte 0x0813B3FC
_08003410: .4byte 0x0813B594
_08003414: .4byte _0800AE40
_08003418: .4byte 0x0813D8E0
_0800341C: .4byte 0x08140CA0
_08003420: .4byte 0x0813B644
_08003424: .4byte 0x08141C98
_08003428: .4byte 0x08141DD8
_0800342C: .4byte 0x0813BC08
_08003430: .4byte 0x0813B78C
_08003434: .4byte 0x0813DAB4
_08003438: .4byte 0x0813DAB8
_0800343C: .4byte 0x0813DABC
_08003440: .4byte 0x0813DAC0
_08003444: .4byte 0x0813DAC4
_08003448: .4byte 0x0813DAC8
_0800344C: .4byte 0x0813DACC
_08003450: .4byte 0x0813DAD0
_08003454: .4byte 0x0813DAD4
_08003458: .4byte 0x0813DAD8
_0800345C: .4byte 0x0813DB00
_08003460: .4byte 0x08140B24
_08003464: .4byte 0x0813DC54
_08003468: .4byte 0x0813DC7C
_0800346C: .4byte 0x0813CCD0
_08003470: .4byte 0x08140B88
_08003474: .4byte 0x08428AE0
_08003478: .4byte 0x0813B91C
_0800347C: .4byte 0x08142300
_08003480: .4byte 0x08142308
_08003484: .4byte 0x0813F740
_08003488: .4byte 0x0813F798
_0800348C: .4byte 0x0813C038
_08003490: .4byte 0x0813DDE0
_08003494: .4byte 0x0813DDE0
_08003498: .4byte 0x00000000
_0800349C: .4byte 0x00000000
_080034A0: .4byte _0800AE40
_080034A4: .4byte 0x0813FCA8
_080034A8: .4byte 0x0813D408
_080034AC: .4byte _0800AE40
_080034B0: .4byte 0x00000000
_080034B4: .4byte 0x0813F918
_080034B8: .4byte 0x0813F520
_080034BC: .4byte 0x0813F3E4
_080034C0: .4byte 0x0813DE08
_080034C4: .4byte 0x0813F988
_080034C8: .4byte 0x0813DF78
_080034CC: .4byte 0x0813DEC8
_080034D0: .4byte 0x00000000
_080034D4: .4byte 0x0813DFA8
_080034D8: .4byte 0x0813F5F8
_080034DC: .4byte 0x0813DE08
_080034E0: .4byte _0800AE40
_080034E4: .4byte _0800AE40
_080034E8:
	.byte 0x60, 0x49, 0x00, 0x00, 0x80, 0xD7, 0x01, 0x00
	.byte 0xE0, 0x06, 0x03, 0x00, 0x20, 0x4B, 0x04, 0x00
_080034F8: .4byte 0x08427C38
_080034FC: .4byte 0x08428030
_08003500: .4byte 0x084282F4
_08003504: .4byte 0x08141094
_08003508: .4byte gUnk_03000C10
_0800350C: .4byte gUnk_03000210
_08003510: .4byte gUnk_03005C00
_08003514: .4byte gUnk_03000960
_08003518:
	.byte 0x00, 0x00, 0x00, 0x00, 0xFF, 0x01, 0x01, 0x01
	.byte 0x01, 0x01, 0x01, 0x01, 0xFF, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0xFF, 0x03, 0x03, 0x03
	.byte 0x03, 0x03, 0x03, 0x03, 0xFF, 0x00, 0x00, 0x00

	.global gUnk_08003538
gUnk_08003538:
	.byte 0xC8, 0xFE, 0x31, 0xF7, 0xEF, 0x8C, 0x7F, 0x13
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0xFF, 0xFF, 0x33, 0x33, 0xCC, 0xCC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF

	.global gUnk_08003566
gUnk_08003566:
	.byte 0xC8, 0xFE, 0x31, 0xF7, 0xEF, 0x8C, 0x7F, 0x13, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0xFF, 0x33, 0x33, 0xCC, 0xCC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0xFF, 0xFF

	thumb_func_start sub_08003594
sub_08003594: @ 0x08003594
	adds r0, #0x10
	ldr r2, [r0, #0x28]
	ldr r3, [r0]
	subs r2, r2, r3
	str r2, [r0, #0x28]
	lsls r2, r2, #1
	blo _080035AA
	subs r3, r3, r1
	str r3, [r0]
	ldr r0, [r0, #0x28]
	mov pc, lr
_080035AA:
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #0x28]
	adds r0, r1, #0
	mov pc, lr

	thumb_func_start sub_080035B4
sub_080035B4: @ 0x080035B4
	push {lr}
	bl sub_080035C4
	beq _080035C0
	bl sub_08003646
_080035C0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080035C4
sub_080035C4: @ 0x080035C4
	push {r4, r5, r6, r7, lr}
	ldr r4, [r1, #0x48]
	ldrb r5, [r4, #6]
	ldrb r6, [r4, #7]
	adds r2, r2, r5
	adds r3, r3, r6
	ldrh r5, [r1, #0x32]
	movs r7, #0
	ldrsb r7, [r4, r7]
	ldrb r6, [r1, #0x1c]
	lsrs r6, r6, #3
	blo _080035DE
	rsbs r7, r7, #0
_080035DE:
	adds r5, r5, r7
	ldrh r6, [r1, #0x36]
	movs r7, #1
	ldrsb r7, [r4, r7]
	adds r6, r6, r7
	push {r5, r6}
	movs r4, #0x50
	ldrh r7, [r0, r4]
	ldrh r4, [r1, r4]
	ands r7, r4
	ldr r4, _080039DC @ =0x0000C000
	tst r7, r4
	beq _0800361C
	orrs r2, r2
	beq _08003608
	ldrh r4, [r0, #0x32]
	subs r4, r4, r5
	adds r4, r4, r2
	lsls r2, r2, #1
	cmp r2, r4
	blo _0800361C
_08003608:
	orrs r3, r3
	beq _08003618
	ldrh r4, [r0, #0x36]
	subs r4, r4, r6
	adds r4, r4, r3
	lsls r3, r3, #1
	cmp r3, r4
	blo _0800361C
_08003618:
	movs r5, #1
	b _0800361E
_0800361C:
	eors r5, r5
_0800361E:
	pop {r2, r3}
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08003624
sub_08003624: @ 0x08003624
	push {lr}
	bl sub_08003634
	beq _08003630
	movs r0, #1
	pop {pc}
_08003630:
	movs r0, #0
	pop {pc}

	thumb_func_start sub_08003634
sub_08003634: @ 0x08003634
	push {lr}
	push {r2, r3}
	bl sub_08003920
	beq _08003642
	bl sub_08003660
_08003642:
	pop {r2, r3}
	pop {pc}

	non_word_aligned_thumb_func_start sub_08003646
sub_08003646: @ 0x08003646
	movs r0, r0
	push {lr}
	push {r0, r1}
	ldrh r1, [r0, #0x36]
	ldrh r0, [r0, #0x32]
	bl sub_08003F54
	adds r1, r0, #0
	bl sub_080039D4
	adds r2, r1, #0
	pop {r0, r1}
	b _08003674

	thumb_func_start sub_08003660
sub_08003660: @ 0x08003660
	push {lr}
	push {r0, r1}
	bl sub_08003F4C
	adds r1, r0, #0
	bl sub_080039D4
	adds r2, r1, #0
	pop {r0, r1}
	movs r0, r0
_08003674:
	movs r3, #0x2a
	ldrb r3, [r0, r3]
	lsrs r3, r3, #1
	cmp r3, r2
	beq _08003682
	eors r3, r3
	b _08003684
_08003682:
	adds r3, #1
_08003684:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08003688
sub_08003688: @ 0x08003688
	push {r5, lr}
	ldr r1, _080039E0 @ =gUnk_0201EF20
	ldrb r5, [r1]
	movs r2, #0
	strb r2, [r1]
	ldrb r1, [r0, #0x1c]
	movs r2, #3
	tst r1, r2
	beq _080036F6
	ldr r1, _080039E4 @ =gUnk_03000948
	ldrb r2, [r1, #5]
	orrs r2, r2
	bne _080036C6
	ldrb r2, [r1, #4]
	orrs r2, r2
	beq _080036BE
	ldrb r1, [r0, #0x1f]
	lsrs r1, r1, #1
	bhs _080036BE
	ldrb r1, [r0, #8]
	cmp r1, #1
	bne _080036F6
	ldr r1, _080039E8 @ =gUnk_03000414
	ldrb r2, [r1]
	ldrb r1, [r0, #0xa]
	cmp r1, r2
	bne _080036F6
_080036BE:
	bl sub_08003704
	cmp r1, #0
	beq _080036F6
_080036C6:
	ldrb r1, [r0, #0x1d]
	lsrs r1, r1, #4
	movs r2, #0xc
	ands r1, r2
	ldr r2, _080039EC @ =_08003508
	ldr r1, [r2, r1]
	ldrb r2, [r1]
	cmp r2, #0x80
	bhs _080036E0
	adds r2, #1
	strb r2, [r1]
	lsls r2, r2, #2
	str r0, [r1, r2]
_080036E0:
	cmp r5, #0
	beq _080036F6
	push {r0, r4}
	ldr r4, _080039F0 @ =gUnk_0201EDD0
_080036E8:
	ldrh r1, [r4]
	bl sub_0800D1C0
	adds r4, #2
	subs r5, #1
	bne _080036E8
	pop {r0, r4}
_080036F6:
	pop {r5, pc}

	thumb_func_start sub_080036F8
sub_080036F8: @ 0x080036F8
	push {lr}
	bl sub_08003714
	adds r0, r1, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08003704
sub_08003704: @ 0x08003704
	movs r2, #0x21
	ldrb r1, [r0, r2]
	cmp r1, #0xff
	beq _08003742
	ldr r1, [r0, #0x1c]
	lsrs r1, r1, #2
	bhs _0800373E
	movs r0, r0

	thumb_func_start sub_08003714
sub_08003714: @ 0x08003714
	ldrh r2, [r0, #0x32]
	ldr r1, _080039F4 @ =gUnk_03000462
	ldrh r3, [r1, #0xe]
	subs r2, r2, r3
	adds r2, #0x40
	ldr r3, _080039F8 @ =0x00000171
	cmp r2, r3
	bhs _08003742
	ldrh r2, [r0, #0x36]
	ldrh r3, [r1, #0x10]
	subs r2, r2, r3
	adds r2, #0x40
	ldr r3, _080039FC @ =0x00000121
	cmp r2, r3
	bhs _08003742
	movs r3, #0x3a
	ldrsh r3, [r0, r3]
	adds r2, r2, r3
	ldr r3, _080039FC @ =0x00000121
	cmp r2, r3
	bhs _08003742
_0800373E:
	movs r1, #1
	mov pc, lr
_08003742:
	movs r1, #0
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08003748
sub_08003748: @ 0x08003748
	push {lr}
	bl sub_0800375C
	adds r0, r2, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08003754
sub_08003754: @ 0x08003754
	push {r4, lr}
	ldrh r2, [r0, #0x32]
	ldrh r3, [r0, #0x36]
	b _08003760

	thumb_func_start sub_0800375C
sub_0800375C: @ 0x0800375C
	push {r4, lr}
	movs r0, r0
_08003760:
	push {r2, r3}
	ldr r4, _08003A00 @ =0x000003F0
	ands r2, r4
	ands r3, r4
	lsrs r2, r2, #4
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0x50
	ldrh r3, [r0, r3]
	lsrs r3, r3, #0xe
	lsls r3, r3, #2
	ldr r4, _08003A04 @ =_080092A0
	ldr r3, [r4, r3]
	ldrb r4, [r3, r2]
	pop {r2, r3}
	cmp r4, #0x10
	bhs _08003790
	lsrs r3, r3, #4
	bhs _08003788
	lsrs r4, r4, #2
_08003788:
	lsrs r2, r2, #4
	bhs _080037C6
	lsrs r4, r4, #1
	b _080037C6
_08003790:
	cmp r4, #0xff
	beq _080037C6
	subs r4, #0x10
	lsls r4, r4, #1
	ldrh r4, [r1, r4]
	movs r1, #0xf
	ands r1, r2
	cmp r1, #4
	blo _080037B0
	lsrs r4, r4, #1
	cmp r1, #8
	blo _080037B0
	lsrs r4, r4, #1
	cmp r1, #0xc
	blo _080037B0
	lsrs r4, r4, #1
_080037B0:
	movs r1, #0xf
	ands r1, r3
	cmp r1, #4
	blo _080037C6
	lsrs r4, r4, #4
	cmp r1, #8
	blo _080037C6
	lsrs r4, r4, #4
	cmp r1, #0xc
	blo _080037C6
	lsrs r4, r4, #4
_080037C6:
	movs r2, #1
	ands r2, r4
	pop {r4, pc}

	thumb_func_start sub_080037CC
sub_080037CC: @ 0x080037CC
	push {r4}
	ldrh r2, [r0, #0x32]
	ldr r3, _08003A08 @ =0xFFFFFFF0
	movs r4, #8
	ands r2, r3
	orrs r2, r4
	strh r2, [r0, #0x32]
	ldrh r2, [r0, #0x36]
	ldr r3, _08003A08 @ =0xFFFFFFF0
	movs r4, #8
	ands r2, r3
	orrs r2, r4
	strh r2, [r0, #0x36]
	pop {r4}
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_080037EC
sub_080037EC: @ 0x080037EC
	push {lr}
	push {r1}
	bl sub_08003828
	movs r2, #0x21
	ldrb r3, [r0, r2]
	movs r2, #0x22
	ldrb r1, [r0, r2]
	cmp r1, r3
	pop {r1}
	beq _08003826
	cmp r3, #0xff
	beq _08003826
	strb r3, [r0, r2]
	lsls r1, r1, #2
	ldr r3, _08003A0C @ =_080034E8
	ldr r3, [r1, r3]
	ldr r2, _08003A10 @ =_080034F8
	ldr r2, [r1, r2]
	adds r1, r3, #0
	movs r3, #0x21
	ldrb r3, [r0, r3]
	lsls r3, r3, #2
	adds r2, r2, r3
	ldrh r3, [r2]
	orrs r3, r3
	beq _08003826
	bl sub_080038B8
_08003826:
	pop {pc}

	thumb_func_start sub_08003828
sub_08003828: @ 0x08003828
	movs r1, #0x28
	ldrb r2, [r0, r1]
	subs r2, #1
	strb r2, [r0, r1]
	beq _08003884
	mov pc, lr

	thumb_func_start sub_08003834
sub_08003834: @ 0x08003834
	movs r1, #0x28
	ldrb r2, [r0, r1]
	subs r2, #4
	strb r2, [r0, r1]
	blo _08003884
	mov pc, lr

	thumb_func_start sub_08003840
sub_08003840: @ 0x08003840
	push {lr}
	push {r2}
	bl sub_08003870
	pop {r2}
	movs r1, #0x21
	ldrb r1, [r0, r1]
	cmp r1, #0xff
	beq _0800386E
	lsls r2, r2, #2
	ldr r1, _08003A14 @ =_080034E8
	ldr r1, [r1, r2]
	ldr r3, _08003A18 @ =_080034F8
	ldr r2, [r3, r2]
	movs r3, #0x21
	ldrb r3, [r0, r3]
	lsls r3, r3, #2
	adds r2, r2, r3
	ldrh r3, [r2]
	orrs r3, r3
	beq _0800386E
	bl sub_080038B8
_0800386E:
	pop {pc}

	thumb_func_start sub_08003870
sub_08003870: @ 0x08003870
	movs r2, #0x23
	strb r1, [r0, r2]
	ldr r2, _08003A1C @ =_08003228
	ldrb r3, [r0, #0x1b]
	lsls r3, r3, #2
	ldr r2, [r2, r3]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	str r1, [r0, #0x24]
	movs r0, r0
_08003884:
	movs r2, #0x21
	ldrb r1, [r0, r2]
	movs r3, #0x22
	strb r1, [r0, r3]
	ldr r1, [r0, #0x24]
	ldrb r3, [r1]
	strb r3, [r0, r2]
	ldrb r3, [r1, #1]
	movs r2, #0x28
	strb r3, [r0, r2]
	ldrb r3, [r1, #2]
	movs r2, #0x2f
	strb r3, [r0, r2]
	ldrb r3, [r1, #3]
	movs r2, #0x29
	strb r3, [r0, r2]
	adds r1, #4
	movs r2, #0x80
	tst r2, r3
	beq _080038B2
	eors r2, r2
	ldrsh r3, [r1, r2]
	subs r1, r1, r3
_080038B2:
	str r1, [r0, #0x24]
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_080038B8
sub_080038B8: @ 0x080038B8
	push {lr}
	push {r0, r4}
	ldrb r3, [r0, #0x1c]
	movs r4, #0xc0
	ands r3, r4
	lsls r3, r3, #2
	movs r4, #0x20
	ldrb r0, [r0, r4]
	adds r0, r0, r3
	lsls r0, r0, #5
	ldr r3, _08003A20 @ =0x06010000
	adds r0, r0, r3
	ldr r3, _08003A24 @ =gUnk_0844DD74
	adds r1, r1, r3
	movs r3, #2
	ldrh r3, [r2, r3]
	lsls r3, r3, #5
	adds r1, r1, r3
	ldrh r2, [r2]
	lsls r2, r2, #5
	bl sub_080009F4
	pop {r0, r4}
	pop {pc}

	thumb_func_start sub_080038E8
sub_080038E8: @ 0x080038E8
	adds r0, #0x2b
	ldrb r2, [r0]
	ldr r3, _08003A28 @ =0x0000EE00
	tst r1, r3
	beq _080038F8
	movs r3, #0x20
	subs r3, r3, r2
	adds r2, r3, #0
_080038F8:
	movs r3, #0xee
	tst r1, r3
	beq _08003904
	movs r3, #0x10
	subs r3, r3, r2
	adds r2, r3, #0
_08003904:
	movs r3, #0x1f
	ands r2, r3
	strb r2, [r0]
	mov pc, lr

	thumb_func_start sub_0800390C
sub_0800390C: @ 0x0800390C
	push {lr}
	bl sub_08003920
	beq _08003918
	movs r0, #1
	b _0800391A
_08003918:
	eors r0, r0
_0800391A:
	pop {pc}

	thumb_func_start sub_0800391C
sub_0800391C: @ 0x0800391C
	push {r5, r6}
	b _08003930

	thumb_func_start sub_08003920
sub_08003920: @ 0x08003920
	push {r5, r6}
	movs r6, #0x50
	ldrh r5, [r0, r6]
	ldrh r6, [r1, r6]
	ands r5, r6
	ldr r6, _080039DC @ =0x0000C000
	tst r5, r6
	beq _08003958
_08003930:
	orrs r2, r2
	beq _08003942
	ldrh r5, [r0, #0x32]
	ldrh r6, [r1, #0x32]
	subs r5, r5, r6
	adds r5, r5, r2
	lsls r2, r2, #1
	cmp r2, r5
	blo _08003958
_08003942:
	orrs r3, r3
	beq _08003954
	ldrh r5, [r0, #0x36]
	ldrh r6, [r1, #0x36]
	subs r5, r5, r6
	adds r5, r5, r3
	lsls r3, r3, #1
	cmp r3, r5
	blo _08003958
_08003954:
	movs r5, #1
	b _0800395A
_08003958:
	eors r5, r5
_0800395A:
	pop {r5, r6}
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08003960
sub_08003960: @ 0x08003960
	movs r3, #0x2a
	ldrb r1, [r0, r3]

	thumb_func_start sub_08003964
sub_08003964: @ 0x08003964
	push {r4}
	ldrh r2, [r0, #0x32]
	ldr r4, _08003A2C @ =gUnk_03000468
	ldrh r3, [r4]
	subs r2, r2, r3
	ldrh r3, [r0, #0x36]
	ldrh r4, [r4, #2]
	subs r3, r3, r4
	ldr r4, _08003A00 @ =0x000003F0
	ands r2, r4
	ands r3, r4
	lsrs r2, r2, #3
	lsls r3, r3, #3
	adds r2, r2, r3
	pop {r4}
	movs r0, r0

	thumb_func_start sub_08003984
sub_08003984: @ 0x08003984
	push {r4}
	adds r4, r1, #0
	movs r3, #3
	tst r4, r3
	beq _08003998
	movs r3, #2
	lsrs r4, r4, #3
	blo _08003996
	rsbs r3, r3, #0
_08003996:
	adds r2, r2, r3
_08003998:
	adds r4, r1, #0
	movs r3, #3
	ands r4, r3
	cmp r4, #2
	beq _080039AE
	movs r3, #0x80
	adds r1, #1
	lsrs r1, r1, #3
	bhs _080039AC
	rsbs r3, r3, #0
_080039AC:
	adds r2, r2, r3
_080039AE:
	ldr r3, _08003A30 @ =0x00001FFF
	ands r2, r3
	movs r4, #0x50
	ldrh r4, [r0, r4]
	lsrs r4, r4, #0xe
	lsls r4, r4, #3
	ldr r3, _08003A34 @ =_08009280
	adds r3, r3, r4
	ldr r4, [r3]
	ldrh r1, [r4, r2]
	ldr r4, _08003A38 @ =0x00004000
	tst r1, r4
	bne _080039D0
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x10
	ldr r4, [r3, #4]
	ldrh r1, [r4, r1]
_080039D0:
	pop {r4}
	mov pc, lr

	thumb_func_start sub_080039D4
sub_080039D4: @ 0x080039D4
	ldr r2, _08003A3C @ =_08003518
	ldrb r1, [r1, r2]
	mov pc, lr
	.align 2, 0
_080039DC: .4byte 0x0000C000
_080039E0: .4byte gUnk_0201EF20
_080039E4: .4byte gUnk_03000948
_080039E8: .4byte gUnk_03000414
_080039EC: .4byte _08003508
_080039F0: .4byte gUnk_0201EDD0
_080039F4: .4byte gUnk_03000462
_080039F8: .4byte 0x00000171
_080039FC: .4byte 0x00000121
_08003A00: .4byte 0x000003F0
_08003A04: .4byte _080092A0
_08003A08: .4byte 0xFFFFFFF0
_08003A0C: .4byte _080034E8
_08003A10: .4byte _080034F8
_08003A14: .4byte _080034E8
_08003A18: .4byte _080034F8
_08003A1C: .4byte _08003228
_08003A20: .4byte 0x06010000
_08003A24: .4byte gUnk_0844DD74
_08003A28: .4byte 0x0000EE00
_08003A2C: .4byte gUnk_03000468
_08003A30: .4byte 0x00001FFF
_08003A34: .4byte _08009280
_08003A38: .4byte 0x00004000
_08003A3C: .4byte _08003518

	thumb_func_start sub_08003A40
sub_08003A40: @ 0x08003A40
	movs r1, #0xb
	b _08003A4A

	thumb_func_start sub_08003A44
sub_08003A44: @ 0x08003A44
	movs r1, #0xc
	b _08003A4A

	thumb_func_start sub_08003A48
sub_08003A48: @ 0x08003A48
	movs r1, #0
_08003A4A:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xf
	movs r2, #0
	bl sub_0804C8A8
	cmp r0, #0
	beq _08003A9A
	movs r1, #0x48
	ldr r1, [r4, r1]
	ldrh r3, [r4, #0x32]
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r3, r3, r2
	strh r3, [r0, #0x32]
	ldrh r3, [r4, #0x36]
	movs r2, #1
	ldrsb r2, [r1, r2]
	adds r3, r3, r2
	strh r3, [r0, #0x36]
	ldrh r3, [r4, #0x3a]
	strh r3, [r0, #0x3a]
	ldrb r3, [r4, #8]
	cmp r3, #3
	bne _08003A9A
	movs r1, #1
	strb r1, [r0, #0xb]
	ldr r3, [r4, #0x60]
	cmp r3, #0
	beq _08003A9A
	movs r1, #0
	str r1, [r4, #0x60]
	str r3, [r0, #0x58]
	movs r2, #0x68
	ldrb r3, [r4, r2]
	cmp r3, #0
	beq _08003A9A
	strb r1, [r4, r2]
	movs r2, #0x60
	strb r3, [r0, r2]
_08003A9A:
	adds r0, r4, #0
	bl sub_08012540
	pop {r4, pc}
	.align 2, 0
_08003AA4:
	.byte 0x03, 0x00, 0x00, 0x80, 0x48, 0x00, 0x00, 0xC0, 0x47, 0x00, 0x00, 0xC0
_08003AB0:
	.byte 0x00, 0x00, 0x00, 0x40, 0x42, 0x00, 0x01, 0x00, 0x20, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00

	thumb_func_start sub_08003AC0
sub_08003AC0: @ 0x08003AC0
	push {r4, r5, r6, lr}
	ldrb r1, [r0, #0x14]
	cmp r1, #0
	beq _08003B50
	movs r1, #0x48
	ldr r1, [r0, r1]
	movs r2, #1
	ldrsb r2, [r1, r2]
	movs r3, #0
	ldrsb r1, [r1, r3]
	bl sub_080093F8
	lsrs r2, r1, #0xe
	bne _08003B2A
	lsls r1, r1, #1
	ldr r2, _08003E80 @ =gUnk_0814791C
	ldrh r1, [r2, r1]
	cmp r1, #0
	beq _08003B50
	ldr r4, _08003E84 @ =_08003AA4 - 4
	movs r6, #0x50
	ldrh r5, [r0, r6]
	lsls r5, r5, #0x12
_08003AEE:
	adds r4, #4
	ldrh r3, [r4]
	cmp r3, #0
	beq _08003B08
	cmp r1, r3
	bne _08003AEE
	lsrs r3, r5, #0x12
	ldrh r4, [r4, #2]
	orrs r3, r4
	strh r3, [r0, r6]
	movs r4, #0x40
	movs r5, #0x40
	b _08003B18
_08003B08:
	cmp r1, #2
	bne _08003B2A
	lsrs r3, r5, #0x12
	ldrh r4, [r4, #2]
	orrs r3, r4
	strh r3, [r0, r6]
	movs r4, #0x80
	movs r5, #0x80
_08003B18:
	movs r3, #0x3f
	ldrb r2, [r0, #0x1d]
	ands r2, r3
	orrs r2, r4
	strb r2, [r0, #0x1d]
	ldrb r2, [r0, #0x1f]
	ands r2, r3
	orrs r2, r5
	strb r2, [r0, #0x1f]
_08003B2A:
	movs r3, #0x3a
	ldrh r2, [r0, r3]
	cmp r2, #0
	bne _08003B50
	adds r2, r1, #0
	subs r2, #0x13
	cmp r2, #0xd
	blo _08003B4C
	ldr r2, _08003E88 @ =_08003AB0
_08003B3C:
	adds r2, #4
	ldrh r3, [r2]
	cmp r3, #0
	beq _08003B50
	cmp r1, r3
	bne _08003B3C
	ldrh r0, [r2, #2]
	pop {r4, r5, r6, pc}
_08003B4C:
	movs r0, #2
	pop {r4, r5, r6, pc}
_08003B50:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_08003B54: .4byte gUnk_03006A58
_08003B58: .4byte gUnk_03006AE8
_08003B5C: .4byte gUnk_03006B78
_08003B60: .4byte gUnk_03006C08

	thumb_func_start sub_08003B64
sub_08003B64: @ 0x08003B64
	push {r0, lr}
	bl sub_08003AC0
	cmp r0, #0
	beq _08003B82
	subs r0, #1
	lsls r0, r0, #2
	ldr r1, _08003E8C @ =_08003B88
	ldr r1, [r1, r0]
	ldr r2, _08003E90 @ =_08003B7E
	mov lr, r2
	pop {r0}
	bx r1
_08003B7E:
	movs r0, #1
	pop {pc}
_08003B82:
	movs r0, #0
	pop {r1, pc}
	.align 2, 0
_08003B88: .4byte sub_08003A48
_08003B8C: .4byte sub_08003A40
_08003B90: .4byte sub_08003A44

	thumb_func_start sub_08003B94
sub_08003B94: @ 0x08003B94
	ldr r1, _08003E94 @ =gUnk_03000F44
	ldr r2, [r1]
	movs r3, #0x20
_08003B9A:
	lsls r2, r2, #1
	blo _08003BA4
	subs r3, #1
	bne _08003B9A
	mov pc, lr
_08003BA4:
	subs r3, #1
	ldrb r2, [r0, #0x1d]
	movs r1, #1
	orrs r2, r1
	strb r2, [r0, #0x1d]
	ldrb r2, [r0, #0x1f]
	movs r1, #0xc1
	ands r2, r1
	lsls r1, r3, #1
	orrs r2, r1
	strb r2, [r0, #0x1f]
	ldr r2, _08003E98 @ =gUnk_08137B10
	lsls r3, r3, #2
	ldr r2, [r2, r3]
	ldr r1, _08003E9C @ =gUnk_03000F44
	ldr r3, [r1]
	orrs r3, r2
	str r3, [r1]
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08003BCC
sub_08003BCC: @ 0x08003BCC
	ldrb r1, [r0, #0x1d]
	lsrs r2, r1, #1
	blo _08003BF4
	movs r2, #0xfc
	ands r1, r2
	strb r1, [r0, #0x1d]
	ldrb r1, [r0, #0x1f]
	movs r2, #0xc1
	ands r2, r1
	strb r2, [r0, #0x1f]
	movs r2, #0x3e
	ands r1, r2
	lsls r1, r1, #1
	ldr r2, _08003EA0 @ =gUnk_08137B10
	ldr r1, [r2, r1]
	mvns r1, r1
	ldr r2, _08003EA4 @ =gUnk_03000F44
	ldr r3, [r2]
	ands r3, r1
	str r3, [r2]
_08003BF4:
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08003BF8
sub_08003BF8: @ 0x08003BF8
	ldr r1, _08003EA8 @ =gUnk_03000E20
	ldrh r1, [r1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1c
	ldr r2, _08003EAC @ =_08003B54
	ldr r1, [r2, r1]
	ldr r1, [r1]
	cmp r1, #0
	bne _08003C5C
	movs r0, #0
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08003C10
sub_08003C10: @ 0x08003C10
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	ldr r4, _08003EB0 @ =_08003B54
	ldr r1, [r4]
	ldr r1, [r1]
	bl _08003C5C
	orrs r5, r0
	ldr r1, [r4, #4]
	ldr r1, [r1]
	cmp r1, #0
	beq _08003C58
	adds r0, r6, #0
	bl _08003C5C
	lsls r0, r0, #1
	orrs r5, r0
	ldr r1, [r4, #8]
	ldr r1, [r1]
	cmp r1, #0
	beq _08003C58
	adds r0, r6, #0
	bl _08003C5C
	lsls r0, r0, #2
	orrs r5, r0
	ldr r1, [r4, #0xc]
	ldr r1, [r1]
	cmp r1, #0
	beq _08003C58
	adds r0, r6, #0
	bl _08003C5C
	lsls r0, r0, #3
	orrs r5, r0
_08003C58:
	adds r0, r5, #0
	pop {r4, r5, r6, pc}
_08003C5C:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, r1, #0
	bl sub_08003FB0
	beq _08003C82
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08003C84
	beq _08003C82
	ldrb r0, [r5, #0x14]
	cmp r0, #2
	bne _08003C7E
	movs r0, #3
	strb r0, [r5, #0x15]
_08003C7E:
	movs r0, #1
	pop {r4, r5, pc}
_08003C82:
	pop {r4, r5, pc}

	thumb_func_start sub_08003C84
sub_08003C84: @ 0x08003C84
	push {r4, r5, r6, r7, lr}
	ldr r2, [r0, #0x48]
	ldr r3, [r1, #0x48]
	ldrh r4, [r1, #0x32]
	movs r6, #0
	ldrsb r5, [r3, r6]
	adds r4, r4, r5
	ldrh r5, [r0, #0x32]
	subs r4, r4, r5
	ldrsb r5, [r2, r6]
	subs r4, r4, r5
	adds r5, r4, #0
	ldrb r6, [r2, #6]
	ldrb r7, [r3, #6]
	adds r7, r7, r6
	adds r4, r4, r7
	lsls r6, r7, #1
	cmp r6, r4
	blo _08003D02
	movs r6, #8
	orrs r5, r5
	bpl _08003CB4
	movs r6, #0x18
	rsbs r5, r5, #0
_08003CB4:
	subs r7, r7, r5
	mov ip, r6
	ldrh r4, [r1, #0x36]
	movs r6, #1
	ldrsb r5, [r3, r6]
	adds r4, r4, r5
	ldrh r5, [r0, #0x36]
	subs r4, r4, r5
	ldrsb r5, [r2, r6]
	subs r4, r4, r5
	adds r5, r4, #0
	ldrb r6, [r2, #7]
	ldrb r2, [r3, #7]
	adds r6, r6, r2
	adds r4, r4, r6
	lsls r2, r6, #1
	cmp r2, r4
	blo _08003D02
	movs r2, #0x10
	orrs r5, r5
	bpl _08003CE2
	movs r2, #0
	rsbs r5, r5, #0
_08003CE2:
	subs r6, r6, r5
	cmp r6, r7
	blo _08003CEC
	adds r6, r7, #0
	mov r2, ip
_08003CEC:
	cmp r6, #0
	beq _08003D02
	cmp r6, #5
	blo _08003CF6
	movs r6, #4
_08003CF6:
	adds r0, r1, #0
	lsls r1, r6, #8
	bl sub_08002E70
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_08003D02:
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08003D08
sub_08003D08: @ 0x08003D08
	push {lr}
	adds r6, r1, #0
	movs r3, #0x80
	tst r6, r3
	bne _08003DCE
	movs r7, #0
	mov ip, r0
	ldrh r3, [r0, #0x32]
	ldrh r4, [r0, #0x36]
	movs r2, #0x48
	ldr r5, [r0, r2]
	ldr r1, _08003EB4 @ =gUnk_03000468
	ldrh r2, [r1]
	subs r3, r3, r2
	ldrh r2, [r1, #2]
	subs r4, r4, r2
	movs r2, #0
	ldrsb r0, [r5, r2]
	adds r0, r0, r3
	movs r2, #1
	ldrsb r1, [r5, r2]
	adds r1, r1, r4
	push {r0, r1}
	movs r4, #0xf
	tst r4, r6
	beq _08003D72
	ldrb r2, [r5, #2]
	movs r4, #0x10
	tst r6, r4
	beq _08003D46
	rsbs r2, r2, #0
_08003D46:
	adds r0, r0, r2
	bl sub_08003DD0
	orrs r7, r2
	lsls r7, r7, #1
	ldrb r4, [r5, #3]
	adds r1, r1, r4
	bl sub_08003DD0
	orrs r7, r2
	lsls r7, r7, #1
	ldrb r4, [r5, #3]
	lsls r4, r4, #1
	subs r1, r1, r4
	bl sub_08003DD0
	orrs r7, r2
	lsls r7, r7, #1
	movs r4, #0x10
	tst r4, r6
	bne _08003D72
	lsls r7, r7, #4
_08003D72:
	pop {r0, r1}
	adds r3, r6, #0
	movs r4, #0xf
	ands r3, r4
	cmp r3, #8
	beq _08003DC8
	ldrb r2, [r5, #5]
	movs r4, #0x10
	ands r4, r6
	lsrs r4, r4, #1
	eors r4, r6
	movs r3, #8
	tst r4, r3
	bne _08003D92
	rsbs r2, r2, #0
	lsls r7, r7, #4
_08003D92:
	adds r1, r1, r2
	bl sub_08003DD0
	orrs r7, r2
	lsls r7, r7, #1
	ldrb r4, [r5, #4]
	adds r0, r0, r4
	bl sub_08003DD0
	orrs r7, r2
	lsls r7, r7, #1
	ldrb r4, [r5, #4]
	lsls r4, r4, #1
	subs r0, r0, r4
	bl sub_08003DD0
	orrs r7, r2
	lsls r7, r7, #1
	movs r4, #0x10
	ands r4, r6
	lsrs r4, r4, #1
	eors r4, r6
	movs r3, #8
	tst r4, r3
	beq _08003DCA
	lsls r7, r7, #4
	b _08003DCA
_08003DC8:
	lsls r7, r7, #8
_08003DCA:
	mov r0, ip
	strh r7, [r0, #0x2c]
_08003DCE:
	pop {pc}

	thumb_func_start sub_08003DD0
sub_08003DD0: @ 0x08003DD0
	movs r4, #0x3f
	lsrs r2, r0, #4
	ands r2, r4
	lsrs r3, r1, #4
	ands r4, r3
	lsls r4, r4, #6
	adds r4, r4, r2
	mov r2, ip
	movs r3, #0x50
	ldrh r3, [r2, r3]
	lsrs r3, r3, #0xe
	lsls r3, r3, #2
	ldr r2, _08003EB8 @ =_080092A0
	ldr r2, [r2, r3]
	ldrb r2, [r2, r4]
	cmp r2, #0xff
	beq _08003DF4
	movs r2, #0
_08003DF4:
	movs r3, #1
	ands r2, r3
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08003DFC
sub_08003DFC: @ 0x08003DFC
	ldr r1, _08003EBC @ =gUnk_0201EF20
	ldrb r2, [r1]
	cmp r2, #8
	bhs _08003E0E
	adds r3, r2, #1
	strb r3, [r1]
	ldr r1, _08003EC0 @ =gUnk_0201EDD0
	lsls r2, r2, #1
	strh r0, [r1, r2]
_08003E0E:
	mov pc, lr

	thumb_func_start sub_08003E10
sub_08003E10: @ 0x08003E10
	push {r4, lr}
	adds r4, r1, #0
	bl sub_08003714
	cmp r1, #0
	beq _08003E22
	adds r1, r4, #0
	bl sub_0800D1C0
_08003E22:
	pop {r4, pc}

	thumb_func_start sub_08003E24
sub_08003E24: @ 0x08003E24
	eors r2, r2
	movs r3, #0x47
	strb r2, [r0, r3]
	ldr r2, _08003EC4 @ =gUnk_03000840
_08003E2C:
	ldr r3, [r2]
	orrs r3, r3
	beq _08003E3C
	adds r2, #4
	ldr r3, _08003EC8 @ =gUnk_03000940
	cmp r2, r3
	blo _08003E2C
	mov pc, lr
_08003E3C:
	str r0, [r2]
	eors r2, r2
	lsrs r2, r2, #1
	mov pc, lr

	thumb_func_start sub_08003E44
sub_08003E44: @ 0x08003E44
	push {r4}
	ldr r2, _08003ECC @ =gUnk_03000840
_08003E48:
	ldr r3, [r2]
	cmp r0, r3
	bne _08003E74
	adds r4, r2, #0
_08003E50:
	adds r2, #4
	ldr r3, _08003ED0 @ =gUnk_03000940
	cmp r2, r3
	bhs _08003E64
	ldr r3, [r2]
	cmp r0, r3
	beq _08003E50
	str r3, [r4]
	adds r4, #4
	b _08003E50
_08003E64:
	eors r3, r3
	str r3, [r4]
	adds r4, #4
	ldr r3, _08003ED4 @ =gUnk_03000940
	cmp r4, r3
	blo _08003E64
	pop {r4}
	mov pc, lr
_08003E74:
	adds r2, #4
	ldr r3, _08003ED8 @ =gUnk_03000940
	cmp r2, r3
	blo _08003E48
	pop {r4}
	mov pc, lr
	.align 2, 0
_08003E80: .4byte gUnk_0814791C
_08003E84: .4byte _08003AA4 - 4
_08003E88: .4byte _08003AB0
_08003E8C: .4byte _08003B88
_08003E90: .4byte _08003B7E
_08003E94: .4byte gUnk_03000F44
_08003E98: .4byte gUnk_08137B10
_08003E9C: .4byte gUnk_03000F44
_08003EA0: .4byte gUnk_08137B10
_08003EA4: .4byte gUnk_03000F44
_08003EA8: .4byte gUnk_03000E20
_08003EAC: .4byte _08003B54
_08003EB0: .4byte _08003B54
_08003EB4: .4byte gUnk_03000468
_08003EB8: .4byte _080092A0
_08003EBC: .4byte gUnk_0201EF20
_08003EC0: .4byte gUnk_0201EDD0
_08003EC4: .4byte gUnk_03000840
_08003EC8: .4byte gUnk_03000940
_08003ECC: .4byte gUnk_03000840
_08003ED0: .4byte gUnk_03000940
_08003ED4: .4byte gUnk_03000940
_08003ED8: .4byte gUnk_03000940
_08003EDC:
	.byte 0x00, 0x01, 0x02, 0x03
	.byte 0x04, 0x00, 0x00, 0x00, 0x08, 0x07, 0x06, 0x05, 0x04, 0x00, 0x00, 0x00, 0x10, 0x0F, 0x0E, 0x0D
	.byte 0x0C, 0x00, 0x00, 0x00, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x1F, 0x1E, 0x1D
	.byte 0x1C, 0x00, 0x00, 0x00, 0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x00, 0x00, 0x00, 0x10, 0x11, 0x12, 0x13
	.byte 0x14, 0x00, 0x00, 0x00, 0x18, 0x17, 0x16, 0x15, 0x14, 0x00, 0x00, 0x00

	thumb_func_start sub_08003F1C
sub_08003F1C: @ 0x08003F1C
	ldr r2, [r0, #0x38]
	ldr r3, [r0, #0x10]
	subs r2, r2, r3
	bpl _08003F2E
	str r2, [r0, #0x38]
	subs r3, r3, r1
	str r3, [r0, #0x10]
	movs r0, #2
	mov pc, lr
_08003F2E:
	movs r2, #0
	str r2, [r0, #0x38]
	subs r3, r3, r1
	rsbs r3, r3, #0
	lsrs r3, r3, #1
	lsrs r1, r3, #2
	adds r3, r3, r1
	lsrs r1, r3, #0xc
	cmp r1, #0xc
	bhs _08003F46
	subs r2, #1
	movs r3, #0
_08003F46:
	str r3, [r0, #0x10]
	adds r0, r2, #1
	mov pc, lr

	thumb_func_start sub_08003F4C
sub_08003F4C: @ 0x08003F4C
	ldrh r3, [r1, #0x36]
	ldrh r2, [r1, #0x32]
	ldrh r1, [r0, #0x36]
	ldrh r0, [r0, #0x32]

	thumb_func_start sub_08003F54
sub_08003F54: @ 0x08003F54
	push {r4, lr}
	ldr r4, _08004200 @ =0xFFFF8000
	tst r0, r4
	beq _08003F5E
	orrs r0, r4
_08003F5E:
	tst r1, r4
	beq _08003F64
	orrs r1, r4
_08003F64:
	tst r2, r4
	beq _08003F6A
	orrs r2, r4
_08003F6A:
	tst r3, r4
	beq _08003F70
	orrs r3, r4
_08003F70:
	eors r4, r4
	subs r2, r2, r0
	bpl _08003F7A
	rsbs r2, r2, #0
	movs r4, #0x20
_08003F7A:
	subs r3, r1, r3
	bpl _08003F84
	rsbs r3, r3, #0
	movs r1, #0x10
	orrs r4, r1
_08003F84:
	cmp r2, r3
	blo _08003F92
	push {r3}
	adds r3, r2, #0
	pop {r2}
	movs r1, #8
	orrs r4, r1
_08003F92:
	lsls r2, r2, #3
	adds r1, r3, #0
	lsls r1, r1, #1
	movs r0, #4
_08003F9A:
	cmp r2, r3
	blo _08003FA6
	adds r3, r3, r1
	adds r4, #1
	subs r0, #1
	bne _08003F9A
_08003FA6:
	ldr r1, _08004204 @ =_08003EDC
	ldrb r0, [r1, r4]
	pop {r4, pc}

	thumb_func_start sub_08003FAC
sub_08003FAC: @ 0x08003FAC
	cmp r0, #0
	beq _08003FE2

	thumb_func_start sub_08003FB0
sub_08003FB0: @ 0x08003FB0
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	ldr r2, _08004208 @ =_08000FF4
	ldr r1, [r2, r1]
	ldrh r2, [r1, #0x36]
	ldr r3, _0800420C @ =0x00001A51
	ands r2, r3
	bne _08003FE2
	movs r3, #0x3c
	ldrb r3, [r1, r3]
	cmp r3, #0
	bne _08003FE2
	ldrb r2, [r0, #0x14]
	cmp r2, #0xb
	beq _08003FE2
	cmp r2, #3
	beq _08003FE2
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #1
	ldr r2, _08004210 @ =gUnk_03000940
	ldrh r1, [r2, r1]
	lsrs r1, r1, #0xb
	bhs _08003FE2
	movs r0, #1
	mov pc, lr
_08003FE2:
	movs r0, #0
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08003FE8
sub_08003FE8: @ 0x08003FE8
	cmp r0, #0
	beq _08004026
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	ldr r2, _08004214 @ =_08000FF4
	ldr r1, [r2, r1]
	ldrh r2, [r1, #0x36]
	ldr r3, _0800420C @ =0x00001A51
	ands r2, r3
	bne _08004026
	ldrb r2, [r1, #5]
	movs r3, #1
	cmp r2, r3
	beq _08004026
	movs r3, #0x3c
	ldrb r3, [r1, r3]
	cmp r3, #0
	bne _08004026
	ldrb r2, [r0, #0x14]
	cmp r2, #0xb
	beq _08004026
	cmp r2, #3
	beq _08004026
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #1
	ldr r2, _08004218 @ =gUnk_03000940
	ldrh r1, [r2, r1]
	lsrs r1, r1, #0xb
	bhs _08004026
	movs r0, #1
	mov pc, lr
_08004026:
	movs r0, #0
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_0800402C
sub_0800402C: @ 0x0800402C
	push {lr}
	bl sub_08009450
	cmp r1, #3
	beq _08004046
	cmp r1, #2
	beq _08004072
	cmp r1, #0x47
	beq _0800409E
	cmp r1, #0x48
	beq _0800409E
	pop {pc}

	thumb_func_start sub_08004044
sub_08004044: @ 0x08004044
	push {lr}
_08004046:
	movs r1, #0x50
	ldrh r2, [r0, r1]
	ldr r3, _0800421C @ =0x00003FFF
	ands r2, r3
	ldr r3, _08004220 @ =0x00008000
	orrs r2, r3
	strh r2, [r0, r1]
	ldrb r2, [r0, #0x1f]
	movs r3, #0x3f
	ands r3, r2
	movs r2, #0x40
	orrs r2, r3
	strb r2, [r0, #0x1f]
	ldrb r2, [r0, #0x1d]
	movs r3, #0x3f
	ands r2, r3
	movs r3, #0x40
	orrs r2, r3
	strb r2, [r0, #0x1d]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08004070
sub_08004070: @ 0x08004070
	push {lr}
_08004072:
	movs r1, #0x50
	ldrh r2, [r0, r1]
	ldr r3, _0800421C @ =0x00003FFF
	ands r2, r3
	ldr r3, _08004224 @ =0x00004000
	orrs r2, r3
	strh r2, [r0, r1]
	ldrb r2, [r0, #0x1f]
	movs r3, #0x3f
	ands r3, r2
	movs r2, #0x80
	orrs r2, r3
	strb r2, [r0, #0x1f]
	ldrb r2, [r0, #0x1d]
	movs r3, #0x3f
	ands r2, r3
	movs r3, #0x80
	orrs r2, r3
	strb r2, [r0, #0x1d]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0800409C
sub_0800409C: @ 0x0800409C
	push {lr}
_0800409E:
	movs r1, #0x50
	ldrh r2, [r0, r1]
	ldr r3, _08004228 @ =0x0000C000
	orrs r2, r3
	strh r2, [r0, r1]
	ldrb r2, [r0, #0x1f]
	movs r3, #0x3f
	ands r3, r2
	movs r2, #0x40
	orrs r2, r3
	strb r2, [r0, #0x1f]
	ldrb r2, [r0, #0x1d]
	movs r3, #0x3f
	ands r2, r3
	movs r3, #0x40
	orrs r2, r3
	strb r2, [r0, #0x1d]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080040C4
sub_080040C4: @ 0x080040C4
	movs r2, #0x2b
	ldrb r3, [r0, r2]
	subs r1, r1, r3
	beq _080040DE
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	cmp r1, #0x10
	bhs _080040D6
	adds r3, #2
_080040D6:
	subs r3, #1
	lsls r3, r3, #0x1b
	lsrs r3, r3, #0x1b
	strb r3, [r0, r2]
_080040DE:
	mov pc, lr

	thumb_func_start sub_080040E0
sub_080040E0: @ 0x080040E0
	push {r0, r1, r4, r5, r6, lr}
	movs r6, #0x40
	cmp r0, #0
	beq _0800414A
	ldr r5, _0800422C @ =gUnk_0813E74C
	ldr r2, _08004230 @ =0x80000000
	cmp r0, r2
	blo _080040F4
	mvns r0, r0
	adds r0, #1
_080040F4:
	cmp r1, r2
	blo _080040FC
	mvns r1, r1
	adds r1, #1
_080040FC:
	lsls r2, r1, #8
	adds r1, r0, #0
	adds r0, r2, #0
	bl sub_080009AC
	ldr r1, _08004234 @ =0x00000106
	cmp r0, r1
	bhs _08004120
	movs r1, #0x6e
	cmp r0, r1
	bhs _0800411A
	movs r6, #0
	movs r1, #0
	movs r2, #0x10
	b _08004130
_0800411A:
	movs r1, #0x10
	movs r2, #0x20
	b _08004130
_08004120:
	ldr r1, _08004238 @ =0x00000280
	cmp r0, r1
	bhs _0800412C
	movs r1, #0x20
	movs r2, #0x30
	b _08004130
_0800412C:
	movs r1, #0x30
	movs r2, #0x3f
_08004130:
	lsls r3, r1, #1
	adds r3, r3, r5
	ldrh r4, [r3]
	cmp r0, r4
	blo _08004144
	ldrh r4, [r3, #2]
	cmp r0, r4
	bhs _08004144
	adds r6, r1, #1
	b _0800414A
_08004144:
	adds r1, #1
	cmp r1, r2
	blo _08004130
_0800414A:
	adds r2, r6, #0
	pop {r0, r1, r4, r5, r6}
	lsls r0, r0, #1
	bhs _0800415C
	movs r0, #0x40
	lsls r1, r1, #1
	bhs _08004162
_08004158:
	adds r0, r0, r2
	pop {pc}
_0800415C:
	movs r0, #0xc0
	lsls r1, r1, #1
	bhs _08004158
_08004162:
	subs r0, r0, r2
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08004168
sub_08004168: @ 0x08004168
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	ldr r4, _0800423C @ =_08003B54
	ldr r1, [r4]
	ldr r1, [r1]
	bl sub_080041B4
	orrs r5, r0
	ldr r1, [r4, #4]
	ldr r1, [r1]
	cmp r1, #0
	beq _080041B0
	adds r0, r6, #0
	bl sub_080041B4
	lsls r0, r0, #1
	orrs r5, r0
	ldr r1, [r4, #8]
	ldr r1, [r1]
	cmp r1, #0
	beq _080041B0
	adds r0, r6, #0
	bl sub_080041B4
	lsls r0, r0, #2
	orrs r5, r0
	ldr r1, [r4, #0xc]
	ldr r1, [r1]
	cmp r1, #0
	beq _080041B0
	adds r0, r6, #0
	bl sub_080041B4
	lsls r0, r0, #3
	orrs r5, r0
_080041B0:
	adds r0, r5, #0
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080041B4
sub_080041B4: @ 0x080041B4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, r1, #0
	ldrb r2, [r0, #0x14]
	cmp r2, #5
	beq _080041FA
	cmp r2, #0x10
	beq _080041FA
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	ldr r2, _08004240 @ =_08000FF4
	ldr r1, [r2, r1]
	ldrb r2, [r1, #5]
	cmp r2, #2
	bne _080041DC
	movs r2, #0x29
	ldrb r2, [r0, r2]
	cmp r2, #0
	bne _080041FA
_080041DC:
	bl sub_08003FB0
	beq _080041FC
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08003C84
	beq _080041FC
	ldrb r0, [r5, #0x14]
	cmp r0, #2
	bne _080041F6
	movs r0, #3
	strb r0, [r5, #0x15]
_080041F6:
	movs r0, #1
	pop {r4, r5, pc}
_080041FA:
	movs r0, #0
_080041FC:
	pop {r4, r5, pc}
	.align 2, 0
_08004200: .4byte 0xFFFF8000
_08004204: .4byte _08003EDC
_08004208: .4byte _08000FF4
_0800420C: .4byte 0x00001A51
_08004210: .4byte gUnk_03000940
_08004214: .4byte _08000FF4
_08004218: .4byte gUnk_03000940
_0800421C: .4byte 0x00003FFF
_08004220: .4byte 0x00008000
_08004224: .4byte 0x00004000
_08004228: .4byte 0x0000C000
_0800422C: .4byte gUnk_0813E74C
_08004230: .4byte 0x80000000
_08004234: .4byte 0x00000106
_08004238: .4byte 0x00000280
_0800423C: .4byte _08003B54
_08004240: .4byte _08000FF4
_08004244: .4byte sub_08004FD0
_08004248: .4byte sub_080042CC
_0800424C: .4byte sub_0800557C
_08004250: .4byte sub_08004734
_08004254: .4byte sub_080052B8
_08004258: .4byte sub_08005730
_0800425C: .4byte sub_08005434
_08004260: .4byte sub_08004A34
_08004264: .4byte sub_0800585C
_08004268: .4byte sub_08005920
_0800426C: .4byte sub_08004814
_08004270: .4byte sub_08004974
_08004274: .4byte sub_080057A8
_08004278: .4byte sub_08004BEC
_0800427C: .4byte sub_08004CA0
_08004280: .4byte sub_08004CFC
_08004284: .4byte sub_080056B0
_08004288: .4byte sub_08004D78
_0800428C: .4byte sub_08004E80
_08004290: .4byte sub_08005BF8
_08004294: .4byte sub_08004BB0
_08004298:
	.byte 0x00, 0xE8, 0x18, 0x00, 0x00, 0x18, 0xE8, 0x00
_080042A0:
	.byte 0x20, 0xFF, 0xFF, 0x20, 0x20, 0xFF, 0xFF, 0x20

	thumb_func_start sub_080042A8
sub_080042A8: @ 0x080042A8
	push {lr}
	lsrs r1, r1, #1
	push {r1}
	bhs _080042B6
	bl sub_080020C8
	b _080042BA
_080042B6:
	bl sub_08001D68
_080042BA:
	pop {r1}
	lsrs r1, r1, #1
	blo _080042C8
	push {r1}
	bl sub_08002294
	pop {r1}
_080042C8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080042CC
sub_080042CC: @ 0x080042CC
	push {lr}
	bl sub_08001D5C
	ldrh r3, [r1, #0x36]
	movs r2, #0x10
	tst r2, r3
	beq _08004306
	eors r2, r2
	movs r3, #0x42
	strb r2, [r0, r3]
	ldr r2, _08004678 @ =0x0000015C
	strh r2, [r1, #8]
	movs r3, #0xff
	ands r2, r3
	ldrb r3, [r1]
	cmp r2, r3
	bne _080042FA
	push {r1}
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	pop {r1}
	ldrb r2, [r1]
_080042FA:
	strb r2, [r1]
	push {r0}
	bl sub_0803D134
	pop {r0}
	pop {pc}
_08004306:
	movs r3, #0x80
	ldrb r2, [r1, #0xf]
	tst r2, r3
	beq _0800437C
	push {r0}
	ldr r0, [r0, #0x54]
	pop {r1}
	movs r2, #0x2a
	ldrb r2, [r0, r2]
	lsrs r2, r2, #1
	lsls r2, r2, #1
	ldr r3, _0800467C @ =_080042A0
	adds r3, r3, r2
	ldrb r2, [r3]
	adds r3, #1
	ldrb r3, [r3]
	bl sub_08003634
	push {r0}
	push {r1}
	pop {r0}
	pop {r1}
	beq _0800436E
	push {r1}
	ldrb r2, [r1, #0xa]
	bl sub_08001D60
	ldrb r2, [r1, #0xf]
	pop {r1}
	lsrs r2, r2, #1
	blo _0800436E
	push {r0}
	ldr r2, _08004680 @ =0x00000140
	str r2, [r0, #0xc]
	movs r2, #0x2a
	ldrb r2, [r1, r2]
	lsrs r2, r2, #1
	lsls r2, r2, #1
	ldr r3, _08004684 @ =_08004298
	adds r3, r3, r2
	ldrb r2, [r3]
	adds r3, #1
	ldrb r3, [r3]
	bl sub_0803CEF0
	adds r1, r0, #0
	pop {r0}
	movs r2, #0x2b
	strb r1, [r0, r2]
	bl sub_08002294
	b _0800437C
_0800436E:
	bl sub_08001D5C
	eors r2, r2
	ldrb r2, [r1, #0xf]
	movs r3, #0x7f
	ands r2, r3
	strb r2, [r1, #0xf]
_0800437C:
	bl sub_08001D5C
	movs r2, #0x26
	ldrb r2, [r1, r2]
	orrs r2, r2
	bne _080043C0
	ldrb r2, [r1, #2]
	lsrs r2, r2, #8
	bhs _080043C0
	movs r2, #0x3e
	ldrb r2, [r1, r2]
	movs r3, #0x30
	ands r3, r2
	beq _080043A0
	lsrs r3, r3, #5
	movs r2, #0x30
	lsls r2, r3
	adds r3, r2, #0
_080043A0:
	ldr r2, _08004688 @ =0x00000133
	ldrb r4, [r1, #3]
	orrs r4, r4
	bne _080043BA
	movs r4, #0x21
	ldrb r4, [r1, r4]
	orrs r4, r4
	bne _080043BA
	ldrb r4, [r1, #0x1b]
	orrs r4, r4
	beq _080043BC
	movs r2, #0xe0
	b _080043BC
_080043BA:
	movs r2, #0xc0
_080043BC:
	adds r2, r2, r3
	str r2, [r0, #0xc]
_080043C0:
	bl sub_080019FC
	bl sub_08001EC0
	bne _080043CE
	bl sub_080047F4
_080043CE:
	movs r2, #0
	movs r3, #0x40
	strb r2, [r0, r3]
	movs r2, #2
	movs r3, #0x46
	strb r2, [r0, r3]
	bl sub_08001D5C
	bl sub_0800127C
	movs r2, #0x80
	strb r2, [r1, #6]
	ldrb r2, [r1, #2]
	orrs r2, r2
	bne _0800441A
	movs r2, #0x42
	ldrb r2, [r0, r2]
	orrs r2, r2
	bne _08004400
	bl sub_08001DF4
	bne _08004400
	bl sub_08001510
	pop {pc}
_08004400:
	ldrh r2, [r1, #0x36]
	movs r3, #4
	tst r2, r3
	bne _0800441E
	orrs r2, r2
	bne _0800441A
	push {r0, r1}
	bl sub_080152F4
	cmp r0, #2
	pop {r0, r1}
	bne _0800441A
	pop {pc}
_0800441A:
	eors r2, r2
	strb r2, [r1, #6]
_0800441E:
	movs r3, #0x3c
	ldrb r2, [r0, r3]
	movs r4, #0x80
	ands r2, r4
	ldrb r4, [r0, #0xa]
	lsls r4, r4, #1
	orrs r2, r4
	strb r2, [r0, r3]
	movs r1, #2
	bl sub_08002E50
	bl sub_08001510
	bl sub_0800127C
	bl sub_08007364
	bl sub_08001328
	bl sub_08001D5C
	ldrb r2, [r1, #0xf]
	movs r3, #0x40
	tst r2, r3
	bne _08004460
	ldrb r2, [r1, #2]
	orrs r2, r2
	bne _08004460
	ldrb r3, [r1, #0xa]
	orrs r2, r3
	bne _08004460
	bl sub_080015BC
_08004460:
	bl sub_08001818
	bl sub_080052A8
	bl sub_08001D5C
	movs r3, #2
	ldrsb r2, [r1, r3]
	orrs r2, r2
	beq _080044A8
	movs r3, #0xc0
	tst r2, r3
	bne _0800448A
	movs r3, #0xf
	ands r2, r3
	cmp r2, #3
	beq _0800448A
	eors r2, r2
	str r2, [r0, #0xc]
	bl sub_08001F70
_0800448A:
	bl sub_08002294
	movs r2, #0x29
	ldrb r2, [r0, r2]
	lsrs r2, r2, #2
	bhs _080044A6
	bl sub_08001D5C
	ldrb r1, [r1, #4]
	orrs r1, r1
	bne _080044A6
_080044A0:
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
_080044A6:
	pop {pc}
_080044A8:
	movs r2, #0x42
	ldrb r2, [r0, r2]
	orrs r2, r2
	bne _080044A0
	movs r2, #0x26
	ldrb r2, [r1, r2]
	orrs r2, r2
	beq _08004536
	eors r3, r3
	movs r2, #0x2e
	strb r3, [r0, r2]
	movs r2, #0x42
	strb r3, [r0, r2]
	ldr r2, [r0, #0xc]
	subs r2, #4
	str r2, [r0, #0xc]
	bmi _080044CC
	bne _080044E2
_080044CC:
	movs r2, #0x40
	str r2, [r0, #0xc]
	ldrb r3, [r1, #0xd]
	movs r2, #0x2b
	strb r3, [r0, r2]
	movs r2, #0x26
	ldrb r2, [r1, r2]
	movs r3, #0xf
	ands r2, r3
	subs r2, #1
	bne _08004530
_080044E2:
	movs r3, #0x89
	ldrb r4, [r1, r3]
	orrs r4, r4
	beq _080044F0
	subs r4, #1
	strb r4, [r1, r3]
	beq _080044FA
_080044F0:
	ldr r2, _0800468C @ =gUnk_03000BD0
	ldrh r2, [r2]
	movs r3, #2
	tst r2, r3
	beq _0800451C
_080044FA:
	movs r3, #0x26
	ldrb r4, [r1, r3]
	movs r5, #0x80
	eors r4, r5
	strb r4, [r1, r3]
	lsrs r4, r4, #8
	blo _08004516
	push {r0, r1, r2, r3}
	movs r0, #0x69
	bl sub_08003DFC
	pop {r0, r1, r2, r3}
	movs r4, #0xf0
	b _08004518
_08004516:
	eors r4, r4
_08004518:
	movs r6, #0x89
	strb r4, [r1, r6]
_0800451C:
	movs r3, #1
	tst r2, r3
	beq _08004530
	ldr r2, _08004690 @ =0x00000180
	str r2, [r0, #0xc]
	bl sub_08001D00
	movs r2, #0x68
	bl sub_080031AC
_08004530:
	movs r2, #0x2b
	ldrb r3, [r0, r2]
	b _08004590
_08004536:
	movs r1, #3
	movs r2, #0x2e
	strb r1, [r0, r2]
	bl sub_08001D5C
	ldrb r2, [r1, #0x12]
	cmp r2, #0x6c
	beq _0800454C
	bl sub_080020A0
	b _08004550
_0800454C:
	bl sub_08001F70
_08004550:
	bl sub_08001D5C
	ldrb r3, [r1, #0x1b]
	movs r4, #0x10
	tst r3, r4
	bne _08004590
	ldrb r3, [r1, #0xd]
	movs r4, #0x2b
	strb r3, [r0, r4]
	ldrh r2, [r1, #0x36]
	ldr r4, _08004694 @ =0x00000400
	tst r2, r4
	beq _08004590
	ldrb r2, [r1, #0x12]
	cmp r2, #0xff
	beq _0800457A
	cmp r2, #4
	beq _0800457A
	ldr r2, _08004698 @ =0x00000300
	str r2, [r0, #0xc]
	b _0800457E
_0800457A:
	ldr r2, _08004688 @ =0x00000133
	str r2, [r0, #0xc]
_0800457E:
	movs r2, #0x80
	tst r3, r2
	beq _08004590
	movs r3, #0x2a
	ldrb r3, [r0, r3]
	lsrs r3, r3, #1
	lsls r3, r3, #3
	movs r2, #0x2b
	strb r3, [r0, r2]
_08004590:
	ldrb r2, [r1, #7]
	eors r4, r4
	orrs r3, r2
	movs r2, #0x80
	tst r3, r2
	bne _080045C6
	ldrb r2, [r1, #0xa]
	orrs r2, r2
	beq _080045AC
	movs r3, #0x10
	tst r2, r3
	beq _080045C6
	movs r4, #1
	b _080045C6
_080045AC:
	movs r4, #1
	ldrb r2, [r1, #0xf]
	movs r3, #0x40
	tst r2, r3
	bne _080045C6
	ldrb r2, [r1, #0x12]
	cmp r2, #0x6c
	beq _080045C6
	movs r2, #0x42
	ldrb r2, [r0, r2]
	orrs r2, r2
	bne _080045C6
	movs r4, #3
_080045C6:
	adds r1, r4, #0
	bl sub_080042A8
	bl sub_08009490
	cmp r1, #0xf
	bne _080045DE
	movs r3, #0x1e
	movs r2, #0x3d
	strb r3, [r0, r2]
	bl sub_08002200
_080045DE:
	bl sub_08001D5C
	movs r2, #0x42
	ldrb r2, [r0, r2]
	orrs r2, r2
	bne _080045F8
	ldrb r2, [r1, #0xb]
	orrs r2, r2
	bne _080045F8
	push {r0}
	bl sub_0803D134
	pop {r0}
_080045F8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080045FC
sub_080045FC: @ 0x080045FC
	mov r3, lr
	push {r3, r4, r5, r6, r7}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	ldrb r1, [r0, #0x14]
	orrs r1, r1
	beq _08004618
	ldr r1, _0800469C @ =gUnk_03000C00
	ldrb r1, [r1]
	orrs r1, r1
	bne sub_08004632
_08004618:
	push {r0}
	bl sub_0803E048
	pop {r0}
	bl sub_080015A8
	ldr r2, _080046A0 @ =_08004244
	ldrb r1, [r0, #0x14]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	ldr r2, _080046A4 @ =sub_08004632
	mov lr, r2
	bx r1

	non_word_aligned_thumb_func_start sub_08004632
sub_08004632: @ 0x08004632
	bl sub_08001D5C
	movs r2, #0x36
	ldrh r2, [r1, r2]
	ldr r3, _080046A8 @ =0x00001000
	tst r2, r3
	bne _08004656
	ldr r2, [r0, #0x38]
	orrs r2, r2
	bne _08004656
	ldrb r1, [r0, #0x14]
	cmp r1, #1
	beq _08004650
	cmp r1, #9
	bne _08004656
_08004650:
	movs r1, #8
	bl sub_08001B68
_08004656:
	bl sub_080013FC
	bl sub_08001D5C
	push {r0}
	bl sub_080156BC
	pop {r0}
	bl sub_08003688
	pop {r4, r5, r6, r7}
	mov r8, r4
	mov sb, r5
	mov sl, r6
	mov fp, r7
	pop {r3, r4, r5, r6, r7}
	bx r3
	.align 2, 0
_08004678: .4byte 0x0000015C
_0800467C: .4byte _080042A0
_08004680: .4byte 0x00000140
_08004684: .4byte _08004298
_08004688: .4byte 0x00000133
_0800468C: .4byte gUnk_03000BD0
_08004690: .4byte 0x00000180
_08004694: .4byte 0x00000400
_08004698: .4byte 0x00000300
_0800469C: .4byte gUnk_03000C00
_080046A0: .4byte _08004244
_080046A4: .4byte sub_08004632
_080046A8: .4byte 0x00001000
_080046AC: .4byte sub_0800474C
_080046B0: .4byte sub_08004790
_080046B4: .4byte sub_08004820
_080046B8: .4byte sub_08004874
_080046BC: .4byte sub_08004900
_080046C0: .4byte sub_08004918
_080046C4: .4byte sub_080048E4
_080046C8: .4byte sub_08004980
_080046CC: .4byte sub_080049AC
_080046D0: .4byte sub_08004A04
_080046D4: .4byte sub_08004A5C
_080046D8: .4byte sub_08004A70
	.global gUnk_080046DC
gUnk_080046DC:
	.byte 0x32, 0x00, 0x00, 0x00
	.byte 0x64, 0x00, 0x00, 0x00, 0x96, 0x00, 0x00, 0x00, 0xC8, 0x00, 0x00, 0x00, 0xFA, 0x00, 0x00, 0x00
	.byte 0x2C, 0x01, 0x00, 0x00, 0x5E, 0x01, 0x00, 0x00, 0x90, 0x01, 0x00, 0x00, 0xC2, 0x01, 0x00, 0x00
	.byte 0xF4, 0x01, 0x00, 0x00, 0xF4, 0x01, 0x00, 0x00
_08004708:
	.byte 0x00, 0x0C, 0xF4, 0x00, 0x00, 0xF4, 0x0C, 0x00

	thumb_func_start sub_08004710
sub_08004710: @ 0x08004710
	push {r4, lr}
	bl sub_0800471C
	adds r0, r2, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0800471C
sub_0800471C: @ 0x0800471C
	push {lr}
	ldr r3, _08004B0C @ =gUnk_03006C80
	movs r4, #0x50
	ldrb r2, [r3, r4]
	cmp r2, #0xa
	blo _0800472A
	movs r2, #9
_0800472A:
	ldr r3, _08004B10 @ =gUnk_080046DC
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	pop {pc}

	thumb_func_start sub_08004734
sub_08004734: @ 0x08004734
	push {lr}
	bl sub_08001D5C
	movs r2, #0xff
	strb r2, [r1, #0xd]
	movs r2, #0x80
	strb r2, [r1, #6]
	ldr r2, _08004B14 @ =_080046AC
	ldrb r1, [r0, #0x15]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	bx r1

	thumb_func_start sub_0800474C
sub_0800474C: @ 0x0800474C
	bl sub_080037CC
	bl sub_08001D5C
	movs r2, #1
	ldrh r3, [r1, #0x36]
	orrs r2, r3
	ldr r4, _08004B18 @ =0x0000FBFF
	ands r3, r4
	strh r3, [r1, #0x36]
	movs r4, #0x80
	movs r2, #0xa4
	ands r3, r4
	beq _0800476A
	movs r2, #0xa7
_0800476A:
	strh r2, [r1, #8]
	ldrb r1, [r0, #0x15]
	adds r1, #1
	strb r1, [r0, #0x15]
	eors r1, r1
	movs r2, #0x2e
	strb r1, [r0, r2]
	movs r2, #0x3c
	ldrb r3, [r0, r2]
	lsls r3, r3, #0x1d
	lsrs r3, r3, #0x1d
	strb r3, [r0, r2]
	movs r2, #0x28
	bl sub_080031B8
	movs r2, #0xc4
	bl sub_080031B8
	pop {pc}

	thumb_func_start sub_08004790
sub_08004790: @ 0x08004790
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	ldrb r1, [r0, #0x1e]
	movs r2, #0xf0
	ands r2, r1
	lsrs r2, r2, #4
	orrs r1, r2
	strb r1, [r0, #0x1e]
	movs r2, #0x29
	ldrb r1, [r0, r2]
	lsrs r1, r1, #1
	blo _080047B2
	ldrb r2, [r0, #0x1e]
	movs r3, #0xf0
	ands r2, r3
	strb r2, [r0, #0x1e]
_080047B2:
	lsrs r1, r1, #7
	blo _080047F2
	bl sub_08002200
	bl sub_08001D5C
	eors r2, r2
	strb r2, [r1, #0xa]
	ldrh r2, [r1, #0x36]
	movs r3, #0x80
	tst r2, r3
	beq _080047DE
	movs r3, #0xfe
	ands r2, r3
	strh r2, [r1, #0x36]
	ldr r2, _08004B1C @ =0x000001A6
	strh r2, [r1, #8]
	movs r2, #9
	strb r2, [r0, #0x14]
	movs r2, #2
	strb r2, [r0, #0x15]
	b _080047E2
_080047DE:
	bl sub_080012FC
_080047E2:
	movs r1, #0x3d
	movs r2, #0x20
	strb r2, [r0, r1]
	push {r0}
	ldr r1, _08004B20 @ =0xFFFFFFFC
	bl sub_0802C3F0
	pop {r0}
_080047F2:
	pop {pc}

	thumb_func_start sub_080047F4
sub_080047F4: @ 0x080047F4
	bl sub_08001D5C
	movs r2, #0xff
	movs r3, #0x3c
	strb r2, [r1, r3]
	eors r2, r2
	movs r3, #0x3e
	strb r2, [r1, r3]
	movs r3, #0x3c
	ldrb r2, [r0, r3]
	lsls r2, r2, #0x1d
	lsrs r2, r2, #0x1d
	strb r2, [r0, r3]
	movs r2, #0xa
	bl sub_08001290

	thumb_func_start sub_08004814
sub_08004814: @ 0x08004814
	push {lr}
	ldr r2, _08004B24 @ =_080046B4
	ldrb r1, [r0, #0x15]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	bx r1

	thumb_func_start sub_08004820
sub_08004820: @ 0x08004820
	bl sub_0800402C
	bl sub_08001D5C
	ldrh r2, [r1, #0x36]
	movs r3, #0x80
	tst r2, r3
	beq _08004842
	ldrb r3, [r1, #0x12]
	cmp r3, #0x20
	blo _08004842
	cmp r3, #0x2d
	bhs _08004842
	bl sub_08002200
	bl sub_08001D5C
_08004842:
	bl sub_080076C4
	movs r2, #0xaa
	strh r2, [r1, #8]
	ldrh r2, [r1, #0x36]
	ldr r3, _08004B28 @ =0x00005000
	ands r2, r3

	thumb_func_start sub_08004850
sub_08004850: @ 0x08004850
	movs r3, #1
	orrs r2, r3
	strh r2, [r1, #0x36]
	eors r2, r2
	strb r2, [r1, #0xc]
	movs r2, #1
	strb r2, [r0, #0x15]
	movs r2, #4
	movs r3, #0x2a
	strb r2, [r0, r3]
	movs r1, #3
	movs r2, #0x2e
	strb r1, [r0, r2]
	movs r2, #0x26
	bl sub_080031AC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08004874
sub_08004874: @ 0x08004874
	push {r0}
	ldr r1, _08004B2C @ =0x00002000
	bl sub_08003594
	pop {r0}
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	movs r2, #0x29
	ldrb r1, [r0, r2]
	lsrs r1, r1, #8
	blo _080048FC
	movs r2, #0xc4
	bl sub_080031AC
	bl sub_08001D5C
	ldr r2, _08004B30 @ =0x000001AB
	strh r2, [r1, #8]
	movs r2, #2
	strb r2, [r0, #0x15]
	movs r2, #0xf0
	strb r2, [r0, #0x17]
	bl sub_0800471C
	ldr r3, _08004B34 @ =gUnk_03006C80
	ldr r3, [r3, #8]
	cmp r3, r2
	blo _080048D6
	push {r0}
	push {r0, r1, r2}
	adds r1, r2, #0
	rsbs r1, r1, #0
	bl sub_0802C53C
	pop {r0, r1, r2}
	ldr r3, _08004B38 @ =gUnk_03006C80
	movs r4, #0x50
	ldrb r5, [r3, r4]
	adds r5, #1
	cmp r5, #0xa
	blo _080048CA
	movs r5, #0xa
_080048CA:
	strb r5, [r3, r4]
	ldrb r1, [r0, #0xa]
	bl sub_0803F594
	pop {r0}

	thumb_func_start sub_080048D4
sub_080048D4: @ 0x080048D4
	b _080048FC
_080048D6:
	movs r2, #4
	strb r2, [r0, #0x15]
	push {r0}
	movs r0, #0xff
	bl sub_0803F594
	pop {r0}

	thumb_func_start sub_080048E4
sub_080048E4: @ 0x080048E4
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	movs r2, #0x29
	ldrb r1, [r0, r2]
	orrs r1, r1
	beq _080048FC
	ldrb r2, [r0, #0xa]
	movs r3, #0x80
	orrs r2, r3
	ldr r1, _08004B3C @ =gUnk_03000E20
	strb r2, [r1, #0x12]
_080048FC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08004900
sub_08004900: @ 0x08004900
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	ldrb r2, [r0, #0x17]
	subs r2, #1
	strb r2, [r0, #0x17]
	bne _08004916
	movs r2, #3
	strb r2, [r0, #0x15]
	movs r2, #0x14
	strb r2, [r0, #0x18]
_08004916:
	pop {pc}

	thumb_func_start sub_08004918
sub_08004918: @ 0x08004918
	ldrb r2, [r0, #0x18]
	subs r2, #1
	strb r2, [r0, #0x18]
	bne _08004970
	push {r0}
	movs r1, #0x28
	bl sub_0802C3F0
	pop {r0}
	bl sub_08001D5C
	eors r2, r2
	strb r2, [r1, #0xc]
	ldrh r2, [r1, #0x36]
	ldr r3, _08004B40 @ =0x00001000
	tst r2, r3
	bne _08004940
	bl sub_080012B4
	b _08004944
_08004940:
	bl sub_080012C0
_08004944:
	ldr r3, _08004B44 @ =0x00020000
	str r3, [r0, #0x10]
	movs r2, #0xff
	movs r3, #0x2b
	strb r2, [r0, r3]
	movs r3, #0x3c
	ldrb r2, [r0, r3]
	movs r4, #0x80
	orrs r2, r4
	strb r2, [r0, r3]
	movs r3, #0x3d
	movs r2, #0xc4
	strb r3, [r0, r3]
	movs r2, #0x81
	strb r2, [r1, #2]
	eors r2, r2
	movs r3, #0x3c
	strb r2, [r1, r3]
	ldrh r2, [r1, #0x36]
	ldr r3, _08004B28 @ =0x00005000
	ands r2, r3
	strh r2, [r1, #0x36]
_08004970:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08004974
sub_08004974: @ 0x08004974
	push {lr}
	ldr r2, _08004B48 @ =_080046C8
	ldrb r1, [r0, #0x15]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	bx r1

	thumb_func_start sub_08004980
sub_08004980: @ 0x08004980
	bl sub_08001D5C
	bl sub_080076C4

	thumb_func_start sub_08004988
sub_08004988: @ 0x08004988
	movs r3, #0x38
	ldrb r2, [r1, r3]
	strb r2, [r0, #0x17]
	movs r3, #0x39
	ldrb r2, [r1, r3]
	orrs r2, r2
	beq _080049A2
	eors r2, r2
	strb r2, [r1, r3]
	movs r2, #2
	strb r2, [r0, #0x15]
	movs r2, #0
	b _080049A8
_080049A2:
	movs r2, #1
	strb r2, [r0, #0x15]
	movs r2, #0x14
_080049A8:
	strh r2, [r1, #8]
	pop {pc}

	thumb_func_start sub_080049AC
sub_080049AC: @ 0x080049AC
	ldrh r2, [r0, #0x3a]
	orrs r2, r2
	bne _080049D4
	bl sub_08001D5C
	ldrb r2, [r1, #0x14]
	orrs r2, r2
	bne _080049D4
	bl sub_08001510
	ldrb r3, [r1, #0x12]
	cmp r3, #4
	bne _080049D4
	movs r3, #7
	strb r3, [r1, #0x11]
	ldrh r2, [r1, #0x36]
	ldr r3, _08004B4C @ =0x00000200
	orrs r2, r3
	strh r2, [r1, #0x36]
	b _080049FC
_080049D4:
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	bl sub_08001EC0
	bne _080049E4
	bl sub_080047F4
_080049E4:
	bl sub_08001328
	movs r3, #1
	ldr r2, _08004B50 @ =gUnk_03000BD0
	ldrh r2, [r2]
	orrs r2, r2
	beq _080049F4
	movs r3, #2
_080049F4:
	ldrb r2, [r0, #0x17]
	subs r2, r2, r3
	strb r2, [r0, #0x17]
	bpl _08004A00
_080049FC:
	bl sub_080012B4
_08004A00:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08004A04
sub_08004A04: @ 0x08004A04
	push {r0}
	ldr r1, _08004B2C @ =0x00002000
	bl sub_08003594
	pop {r0}
	bl sub_08002294
	bl sub_08001D5C
	ldrb r2, [r1, #0x1e]
	movs r3, #0x20
	ands r2, r3
	beq _08004A26
	movs r0, r0
	movs r2, #1
	ldr r3, _08004B54 @ =sub_08001290
	bx r3
_08004A26:
	ldrb r2, [r0, #0x17]
	subs r2, #1
	strb r2, [r0, #0x17]
	bpl _08004A32
	bl sub_080012B4
_08004A32:
	pop {pc}

	thumb_func_start sub_08004A34
sub_08004A34: @ 0x08004A34
	push {lr}
	ldr r2, _08004B58 @ =gUnk_03000E20
	ldrb r2, [r2]
	movs r3, #7
	ands r2, r3
	bne _08004A52
	push {r0}
	movs r1, #2
	movs r2, #0x40
	bl sub_0804CB38
	movs r0, #0xe
	bl sub_08003DFC
	pop {r0}
_08004A52:
	ldrb r2, [r0, #0x15]
	lsls r2, r2, #2
	ldr r3, _08004B5C @ =_080046D4
	ldr r2, [r3, r2]
	bx r2

	thumb_func_start sub_08004A5C
sub_08004A5C: @ 0x08004A5C
	bl sub_08001D5C
	ldr r3, _08004B60 @ =0x0000019C
	strh r3, [r1, #8]
	movs r2, #0x20
	strb r2, [r0, #0x17]
	bl sub_08001274
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08004A70
sub_08004A70: @ 0x08004A70
	movs r2, #0x40
	strb r2, [r0, #0x1f]
	ldrb r2, [r0, #0x1d]
	movs r3, #0x3f
	ands r2, r3
	movs r3, #0x40
	orrs r2, r3
	strb r2, [r0, #0x1d]
	bl sub_08001818
	ldr r1, _08004B64 @ =0x00000100
	str r1, [r0, #0xc]
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	movs r1, #0x2a
	ldrb r2, [r0, r1]
	lsrs r2, r2, #1
	lsls r2, r2, #3
	movs r1, #0x2b
	strb r2, [r0, r1]
	movs r1, #0x36
	movs r3, #8
	ands r2, r3
	bne _08004AA4
	movs r1, #0x32
_08004AA4:
	ldrh r2, [r0, r1]
	movs r3, #0xf
	ands r3, r2
	cmp r3, #8
	beq _08004AB8
	bhs _08004AB4
	adds r2, #1
	b _08004AB6
_08004AB4:
	subs r2, #1
_08004AB6:
	strh r2, [r0, r1]
_08004AB8:
	push {r0}
	bl sub_0803CC20
_08004ABE:
	pop {r0}
	ldrb r1, [r0, #0x17]
	orrs r1, r1
	beq _08004ACC
	subs r1, #1
	strb r1, [r0, #0x17]
	pop {pc}
_08004ACC:
	movs r2, #0x2a
	ldrb r2, [r0, r2]
	ldr r3, _08004B68 @ =_08004708
	ldrsb r1, [r3, r2]
	adds r2, #1
	ldrsb r2, [r3, r2]
	bl sub_08009444
	push {r0}
	adds r0, r1, #0
	ldr r1, _08004B6C @ =_0800175C
	bl sub_080012D8
	pop {r0}
	bne _08004B08
	bl sub_08001D5C
	ldrb r2, [r1, #0x1e]
	movs r3, #0xef
	ands r2, r3
	strb r2, [r1, #0x1e]
	movs r1, #0x50
	ldrh r2, [r0, r1]
	ldr r3, _08004B70 @ =0x00003FFF
	ands r2, r3
	ldr r3, _08004B74 @ =0x00008000
	orrs r2, r3
	strh r2, [r0, r1]
	bl sub_080012FC
_08004B08:
	pop {pc}
	.align 2, 0
_08004B0C: .4byte gUnk_03006C80
_08004B10: .4byte gUnk_080046DC
_08004B14: .4byte _080046AC
_08004B18: .4byte 0x0000FBFF
_08004B1C: .4byte 0x000001A6
_08004B20: .4byte 0xFFFFFFFC
_08004B24: .4byte _080046B4
_08004B28: .4byte 0x00005000
_08004B2C: .4byte 0x00002000
_08004B30: .4byte 0x000001AB
_08004B34: .4byte gUnk_03006C80
_08004B38: .4byte gUnk_03006C80
_08004B3C: .4byte gUnk_03000E20
_08004B40: .4byte 0x00001000
_08004B44: .4byte 0x00020000
_08004B48: .4byte _080046C8
_08004B4C: .4byte 0x00000200
_08004B50: .4byte gUnk_03000BD0
_08004B54: .4byte sub_08001290
_08004B58: .4byte gUnk_03000E20
_08004B5C: .4byte _080046D4
_08004B60: .4byte 0x0000019C
_08004B64: .4byte 0x00000100
_08004B68: .4byte _08004708
_08004B6C: .4byte _0800175C
_08004B70: .4byte 0x00003FFF
_08004B74: .4byte 0x00008000
_08004B78: .4byte sub_08004BF8
_08004B7C: .4byte sub_08004C18
_08004B80: .4byte sub_08004CAC
_08004B84: .4byte sub_08004CD0
_08004B88: .4byte sub_08004D08
_08004B8C: .4byte sub_08004D38
_08004B90: .4byte sub_08004D84
_08004B94: .4byte sub_08004DD0
_08004B98: .4byte sub_08004E4C
_08004B9C: .4byte sub_08004E8C
_08004BA0: .4byte sub_08004EC4
_08004BA4: .4byte sub_08004F40
_08004BA8: .4byte sub_08004BBC
_08004BAC: .4byte sub_08004BE4

	thumb_func_start sub_08004BB0
sub_08004BB0: @ 0x08004BB0
	push {lr}
	ldr r2, _08004F68 @ =_08004BA8
	ldrb r1, [r0, #0x15]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	bx r1

	thumb_func_start sub_08004BBC
sub_08004BBC: @ 0x08004BBC
	bl sub_08001D5C
	ldrh r2, [r1, #0x36]
	ldr r3, _08004F6C @ =0x0000F3FF
	ands r2, r3
	strh r2, [r1, #0x36]
	movs r3, #0x80
	tst r2, r3
	bne _08004BD2
	movs r2, #0xbf
	strh r2, [r1, #8]
_08004BD2:
	movs r2, #1
	strb r2, [r0, #0x15]
	movs r2, #4
	movs r3, #0x2a
	strb r2, [r0, r3]
	bl sub_080076C4
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08004BE4
sub_08004BE4: @ 0x08004BE4
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	pop {pc}

	thumb_func_start sub_08004BEC
sub_08004BEC: @ 0x08004BEC
	push {lr}
	ldr r2, _08004F70 @ =_08004B78
	ldrb r1, [r0, #0x15]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	bx r1

	thumb_func_start sub_08004BF8
sub_08004BF8: @ 0x08004BF8
	bl sub_08001D5C
	bl sub_080076C4
	movs r2, #0x78
	strb r2, [r0, #0x17]
	ldrh r2, [r0, #0x32]
	movs r3, #0x74
	strh r2, [r0, r3]
	movs r2, #1
	strb r2, [r0, #0x15]
	ldr r2, _08004F74 @ =0x00000198
	strh r2, [r1, #8]
	movs r2, #0x9b
	bl sub_080031AC

	thumb_func_start sub_08004C18
sub_08004C18: @ 0x08004C18
	push {r0}
	ldr r1, _08004F78 @ =0x00002000
	bl sub_08003594
	orrs r0, r0
	pop {r0}
	bne _08004C3A
	bl sub_08001D5C
	eors r2, r2
	strb r2, [r1, #2]
	ldrb r2, [r1, #0x14]
	orrs r2, r2
	bne _08004C3A
	bl sub_08002334
	bne _08004C6C
_08004C3A:
	bl sub_08001EC0
	bne _08004C46

	thumb_func_start sub_08004C40
sub_08004C40: @ 0x08004C40
	bl sub_080047F4

	thumb_func_start sub_08004C44
sub_08004C44: @ 0x08004C44
	b _08004C6C
_08004C46:
	bl sub_08001D5C
	ldrh r2, [r1, #0x36]
	ldr r3, _08004F7C @ =0x00000800
	ands r2, r3
	beq _08004C6C
	movs r3, #1
	ldr r2, _08004F80 @ =gUnk_03000BD0
	ldrh r2, [r2]
	orrs r2, r2
	beq _08004C98
	movs r3, #0x74
	ldrh r2, [r0, r3]
	adds r2, #2
	strh r2, [r0, #0x32]
	ldrb r2, [r0, #0x17]
	subs r2, #2
	strb r2, [r0, #0x17]
	bpl _08004C9E
_08004C6C:
	movs r2, #0x30
	movs r3, #0x3d
	strb r2, [r0, r3]
	movs r4, #0x3c
	ldrb r3, [r0, r4]
	movs r2, #0x80

	thumb_func_start sub_08004C78
sub_08004C78: @ 0x08004C78
	orrs r3, r2
	strb r3, [r0, r4]
	bl sub_08001D5C
	ldrh r2, [r1, #0x36]
	ldr r3, _08004F84 @ =0x0000F7FE
	ands r2, r3
	strh r2, [r1, #0x36]
	push {r0}
	movs r1, #0xd
	eors r2, r2
	bl sub_0804CB38
	pop {r0}
	bl sub_080012B4
_08004C98:
	movs r3, #0x74
	ldrh r2, [r0, r3]
	strh r2, [r0, #0x32]
_08004C9E:
	pop {pc}

	thumb_func_start sub_08004CA0
sub_08004CA0: @ 0x08004CA0
	push {lr}
	ldr r2, _08004F88 @ =_08004B80
	ldrb r1, [r0, #0x15]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	bx r1

	thumb_func_start sub_08004CAC
sub_08004CAC: @ 0x08004CAC
	movs r2, #1
	strb r2, [r0, #0x15]

	thumb_func_start sub_08004CB0
sub_08004CB0: @ 0x08004CB0
	bl sub_08001D5C
	bl sub_080076C4
	movs r3, #0x38
	ldrh r2, [r1, r3]
	strh r2, [r1, #8]
	movs r3, #0x3a
	ldrb r2, [r1, r3]
	strb r2, [r0, #0x17]
	movs r1, #0x3c
	ldrb r2, [r0, r1]
	movs r3, #0x7f
	ands r2, r3
	strb r2, [r0, r1]
	pop {pc}

	thumb_func_start sub_08004CD0
sub_08004CD0: @ 0x08004CD0
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	ldrb r2, [r0, #0x17]
	orrs r2, r2
	beq _08004CE4
	subs r2, #1
	strb r2, [r0, #0x17]
	beq _08004CEC
	b _08004CFA
_08004CE4:
	movs r3, #0x29
	ldrb r2, [r0, r3]
	lsrs r2, r2, #8
	blo _08004CFA
_08004CEC:
	movs r1, #0x3c
	ldrb r2, [r0, r1]
	movs r3, #0x80
	orrs r2, r3
	strb r2, [r0, r1]
	bl sub_080012B4
_08004CFA:
	pop {pc}

	thumb_func_start sub_08004CFC
sub_08004CFC: @ 0x08004CFC
	push {lr}
	ldr r2, _08004F8C @ =_08004B88
	ldrb r1, [r0, #0x15]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	bx r1

	thumb_func_start sub_08004D08
sub_08004D08: @ 0x08004D08
	bl sub_08001D5C
	bl sub_080076C4
	ldr r2, _08004F90 @ =0x00000128
	str r2, [r0, #0xc]
	movs r3, #0x38
	ldrb r3, [r1, r3]
	strb r3, [r0, #0x17]
	movs r3, #0x39
	ldrb r3, [r1, r3]
	orrs r3, r3
	beq _08004D28
	movs r3, #0xff
	movs r2, #0x2b
	strb r3, [r0, r2]
_08004D28:
	movs r2, #1
	strb r2, [r0, #0x15]
	movs r1, #0x3c
	ldrb r2, [r0, r1]
	movs r3, #0x7f
	ands r2, r3
	strb r2, [r0, r1]
	movs r0, r0

	thumb_func_start sub_08004D38
sub_08004D38: @ 0x08004D38
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	push {r0}
	bl sub_0803CF58
	pop {r0}
	push {r0}
	ldr r1, _08004F78 @ =0x00002000
	bl sub_08003594
	pop {r0}
	bl sub_08002294
	ldrb r2, [r0, #0x17]
	subs r2, #1
	strb r2, [r0, #0x17]
	bne _08004D76
	movs r3, #0x42
	strb r2, [r0, r3]
	movs r1, #0x3c
	ldrb r2, [r0, r1]
	movs r3, #0x80
	orrs r2, r3
	strb r2, [r0, r1]
	push {r0}
	bl sub_08008DD8
	pop {r0}
	bl sub_080012B4
_08004D76:
	pop {pc}

	thumb_func_start sub_08004D78
sub_08004D78: @ 0x08004D78
	push {lr}
	ldr r2, _08004F94 @ =_08004B90
	ldrb r1, [r0, #0x15]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	bx r1

	thumb_func_start sub_08004D84
sub_08004D84: @ 0x08004D84
	bl sub_08001D5C
	bl sub_080076C4
	movs r2, #0x3c
	ldrb r3, [r0, r2]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x19
	strb r3, [r0, r2]
	ldr r2, _08004F98 @ =0x00000401
	ldrh r3, [r1, #0x36]
	orrs r2, r3
	strh r2, [r1, #0x36]
	movs r2, #0x14
	strh r2, [r1, #8]
	movs r2, #1
	strb r2, [r0, #0x15]
	ldr r2, _08004F9C @ =0x00028000
	str r2, [r0, #0x10]
	push {r0}

	thumb_func_start sub_08004DAC
sub_08004DAC: @ 0x08004DAC
	movs r2, #0x2a
	bl sub_080031B8
	movs r2, #0xc3
	bl sub_080031B8
	movs r0, #0x55
	movs r1, #0x80
	eors r2, r2
	bl sub_0804C8A8
	adds r2, r0, #0
	pop {r0}
	orrs r2, r2
	beq _08004DCC
	str r0, [r2, #0x58]
_08004DCC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08004DD0
sub_08004DD0: @ 0x08004DD0
	push {r0}
	bl sub_0803CF58
	pop {r0}

	thumb_func_start sub_08004DD8
sub_08004DD8: @ 0x08004DD8
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	ldr r2, _08004FA0 @ =sub_08004DE8
	push {r2}
	ldr r2, _08004FA4 @ =sub_080025B0
	bx r2
	.align 2, 0

	thumb_func_start sub_08004DE8
sub_08004DE8: @ 0x08004DE8
	push {r0}
	ldr r1, _08004F78 @ =0x00002000
	bl sub_08003594
	adds r2, r0, #0
	pop {r0}
	bne _08004E48
	eors r1, r1
	movs r2, #0x2e
	strb r1, [r0, r2]
	movs r2, #0x42
	strb r1, [r0, r2]
	movs r2, #2
	strb r2, [r0, #0x15]
	movs r2, #0x3c
	strb r2, [r0, #0x17]
	ldrb r2, [r0, #0x1e]
	movs r3, #0xf0
	ands r2, r3
	strb r2, [r0, #0x1e]
	bl sub_08001D5C
	ldr r2, _08004FA8 @ =0x000001BE
	strh r2, [r1, #8]
	ldrh r2, [r1, #0x36]
	ldr r3, _08004FAC @ =0x0000FBFF
	ands r2, r3
	strh r2, [r1, #0x36]
	push {r0}
	bl sub_08008DD8
	movs r0, #0xac
	bl sub_08003DFC
	movs r0, #0xf
	movs r1, #0xc
	eors r2, r2
	bl sub_0804C8A8
	adds r2, r0, #0
	pop {r0}
	orrs r2, r2

	thumb_func_start sub_08004E3C
sub_08004E3C: @ 0x08004E3C
	beq _08004E48
	ldrh r3, [r0, #0x32]
	strh r3, [r2, #0x32]
	ldrh r3, [r0, #0x36]
	adds r3, #3
	strh r3, [r2, #0x36]
_08004E48:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08004E4C
sub_08004E4C: @ 0x08004E4C
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	ldrb r2, [r0, #0x17]
	subs r2, #1
	strb r2, [r0, #0x17]
	bne _08004E7E
	push {r0}
	ldr r1, _08004FB0 @ =0xFFFFFFFC
	bl sub_0802C3F0
	pop {r0}
	movs r1, #0x3d
	movs r2, #0x20
	strb r2, [r0, r1]
	ldrb r2, [r0, #0x1e]
	movs r3, #0xf0
	ands r3, r2
	lsrs r3, r3, #4
	orrs r2, r3
	strb r2, [r0, #0x1e]
	bl sub_08002200
	bl sub_080012FC
_08004E7E:
	pop {pc}

	thumb_func_start sub_08004E80
sub_08004E80: @ 0x08004E80
	push {lr}
	ldr r2, _08004FB4 @ =_08004B9C
	ldrb r1, [r0, #0x15]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	bx r1

	thumb_func_start sub_08004E8C
sub_08004E8C: @ 0x08004E8C
	bl sub_08001D5C
	bl sub_080076C4
	movs r2, #0x3c
	ldrb r3, [r0, r2]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x19
	strb r3, [r0, r2]
	movs r2, #1
	ldrh r3, [r1, #0x36]
	orrs r2, r3
	ldr r3, _08004FAC @ =0x0000FBFF
	ands r2, r3
	strh r2, [r1, #0x36]
	ldr r2, _08004FB8 @ =0x00000190
	strh r2, [r1, #8]
	eors r1, r1
	movs r2, #0x2e
	strb r1, [r0, r2]
	movs r2, #0x42
	strb r1, [r0, r2]
	movs r2, #0x5a
	strb r2, [r0, #0x17]

	thumb_func_start sub_08004EBC
sub_08004EBC: @ 0x08004EBC
	movs r2, #1
	strb r2, [r0, #0x15]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08004EC4
sub_08004EC4: @ 0x08004EC4
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	ldrb r2, [r0, #0x17]
	subs r2, #1
	strb r2, [r0, #0x17]
	cmp r2, #0x28
	bhs _08004EE2
	bl sub_08001D5C
	ldr r2, _08004FBC @ =0x000001AC
	strh r2, [r1, #8]
	movs r2, #2
	strb r2, [r0, #0x15]

	thumb_func_start nullsub_048
nullsub_048: @ 0x08004EE0
	pop {pc}
_08004EE2:
	movs r3, #3
	ands r2, r3
	bne _08004EF4
	movs r4, #0x2a
	ldrb r2, [r0, r4]
	subs r2, #2
	movs r3, #7
	ands r2, r3
	strb r2, [r0, r4]
_08004EF4:
	adds r4, r0, #0
	ldrb r2, [r0, #0x17]
	movs r3, #3
	ands r2, r3
	beq _08004F04
	subs r2, #1
	beq _08004F18
	pop {pc}
_08004F04:
	adds r4, #0x36
	ldrh r2, [r4]
	adds r2, #3
	ldr r3, _08004FC0 @ =0x0000FFF0
	ands r3, r2
	adds r3, #8
	ldrh r2, [r4]
	subs r3, r3, r2
	blo _08004F32
	b _08004F28
_08004F18:
	adds r4, #0x32
	ldrh r2, [r4]
	ldr r3, _08004FC0 @ =0x0000FFF0
	ands r3, r2
	adds r3, #8
	ldrh r2, [r4]
	subs r3, r3, r2
	blo _08004F32
_08004F28:
	subs r4, #2
	ldr r2, [r4]
	ldr r3, _08004FC4 @ =0x00012800
	adds r2, r2, r3
	b _08004F3A
_08004F32:
	subs r4, #2
	ldr r2, [r4]
	ldr r3, _08004FC4 @ =0x00012800
	subs r2, r2, r3
_08004F3A:
	str r2, [r4]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08004F40
sub_08004F40: @ 0x08004F40
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	ldrb r2, [r0, #0x17]
	subs r2, #1
	strb r2, [r0, #0x17]
	bne _08004F66
	push {r0}
	ldr r1, _08004FB0 @ =0xFFFFFFFC
	bl sub_0802C3F0
	pop {r0}
	movs r2, #0x30
	movs r3, #0x3d
	strb r2, [r0, r3]
	bl sub_08002200
	bl sub_080012FC
_08004F66:
	pop {pc}
	.align 2, 0
_08004F68: .4byte _08004BA8
_08004F6C: .4byte 0x0000F3FF
_08004F70: .4byte _08004B78
_08004F74: .4byte 0x00000198
_08004F78: .4byte 0x00002000
_08004F7C: .4byte 0x00000800
_08004F80: .4byte gUnk_03000BD0
_08004F84: .4byte 0x0000F7FE
_08004F88: .4byte _08004B80
_08004F8C: .4byte _08004B88
_08004F90: .4byte 0x00000128
_08004F94: .4byte _08004B90
_08004F98: .4byte 0x00000401
_08004F9C: .4byte 0x00028000
_08004FA0: .4byte sub_08004DE8
_08004FA4: .4byte sub_080025B0
_08004FA8: .4byte 0x000001BE
_08004FAC: .4byte 0x0000FBFF
_08004FB0: .4byte 0xFFFFFFFC
_08004FB4: .4byte _08004B9C
_08004FB8: .4byte 0x00000190
_08004FBC: .4byte 0x000001AC
_08004FC0: .4byte 0x0000FFF0
_08004FC4: .4byte 0x00012800
_08004FC8:
	.byte 0xFC, 0x06, 0xF3, 0x06, 0xCF, 0x06, 0x3F, 0x06

	thumb_func_start sub_08004FD0
sub_08004FD0: @ 0x08004FD0
	push {lr}
	bl sub_08008D90
	bl sub_08001D5C
	movs r2, #0xff
	strb r2, [r1]
	movs r2, #0
	strb r2, [r0, #0x1b]
	movs r1, #2
	ldrb r2, [r0, #9]
	bl sub_08003840
	movs r3, #0x20
	strb r3, [r0, #0x1a]
	movs r3, #0x5e
	ldrb r2, [r0, r3]
	movs r4, #4
	orrs r2, r4
	strb r2, [r0, r3]
	movs r3, #2
	movs r2, #0x3f
	strb r3, [r0, r2]
	ldrb r2, [r0, #0xa]
	lsls r2, r2, #1
	movs r3, #0x80
	orrs r2, r3
	movs r3, #0x3c
	strb r2, [r0, r3]
	movs r3, #0x7f
	ands r2, r3
	ldr r3, _08005028 @ =_08004FC8
	ldrh r3, [r3, r2]
	movs r2, #0x5c
	strh r3, [r0, r2]
	bl sub_0800127C
	bl sub_080012FC
	movs r2, #0x48
	ldr r1, _0800502C @ =gUnk_0813E7CC
	str r1, [r0, r2]
	pop {pc}
	.align 2, 0
_08005028: .4byte _08004FC8
_0800502C: .4byte gUnk_0813E7CC
_08005030:
	.byte 0x97, 0x01, 0x00, 0x80, 0x94, 0x01, 0x00, 0x80, 0x9B, 0x01, 0x00, 0x80, 0x9A, 0x01, 0x00, 0x80
	.byte 0x98, 0x01, 0x00, 0x80, 0x99, 0x01, 0x00, 0x80, 0x96, 0x01, 0x00, 0x80, 0x95, 0x01, 0x00, 0x80
	.byte 0x00, 0x00, 0x00, 0x00
_08005054: .4byte sub_080050C4
_08005058: .4byte sub_080050D4
_0800505C: .4byte sub_08005114
_08005060: .4byte sub_080051BC
_08005064: .4byte sub_08005200
_08005068: .4byte sub_08005278
_0800506C: .4byte sub_080052C4
_08005070: .4byte sub_08005358
_08005074: .4byte sub_08005400
_08005078: .4byte sub_08005444
_0800507C: .4byte sub_080054B8
_08005080: .4byte sub_080050B4
_08005084:
	.byte 0xF0, 0xF0, 0x00, 0xF0, 0x10, 0xF0, 0x00, 0x00
_0800508C:
	.byte 0x10, 0xF0, 0x10, 0x00
	.byte 0x10, 0x10, 0x00, 0x00
_08005094:
	.byte 0xF0, 0x10, 0x00, 0x10, 0x10, 0x10, 0x00, 0x00
_0800509C:
	.byte 0xF0, 0xF0, 0xF0, 0x00
	.byte 0xF0, 0x10, 0x00, 0x00
_080050A4: .4byte _08005084
_080050A8: .4byte _0800508C
_080050AC: .4byte _08005094
_080050B0: .4byte _0800509C

	thumb_func_start sub_080050B4
sub_080050B4: @ 0x080050B4
	ldrb r2, [r0, #0x17]
	subs r2, #1
	strb r2, [r0, #0x17]
	bne _080050C2
	strb r2, [r1, #2]
	bl sub_080012FC
_080050C2:
	pop {pc}

	thumb_func_start sub_080050C4
sub_080050C4: @ 0x080050C4
	ldr r2, [r0, #0x38]
	lsls r2, r2, #1
	bhs _080050CC
	mov pc, lr
_080050CC:
	movs r2, #2
	strb r2, [r1, #2]
	b _080050E8
	.align 2, 0

	thumb_func_start sub_080050D4
sub_080050D4: @ 0x080050D4
	push {lr}
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	movs r3, #0xc0
	ands r2, r3
	bne _080050E8
	ldrb r2, [r1, #0xd]
	movs r3, #0x2b
	strb r2, [r0, r3]
_080050E8:
	bl sub_08001F38
	ldrb r2, [r1, #5]
	ldrb r3, [r1, #0xb]
	orrs r2, r3
	bne _08005116
	movs r2, #0xc
	strh r2, [r1, #8]
	lsrs r2, r2, #8
	strb r2, [r0, #0x1b]
	movs r2, #0xff
	movs r3, #0x23
	strb r2, [r0, r3]
	push {r0}
	bl sub_0803D134
	movs r0, #0xd5
	bl sub_08003DFC
	pop {r0}
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08005114
sub_08005114: @ 0x08005114
	push {lr}
_08005116:
	push {r0, r1}
	bl sub_0803CF58
	ldr r4, _0800551C @ =0x00002000
	orrs r0, r0
	pop {r0, r1}
	beq _0800512E
	ldrb r4, [r1, #2]
	movs r3, #8
	orrs r4, r3
	strb r4, [r1, #2]
	ldr r4, _08005520 @ =0x00004000
_0800512E:
	ldrb r2, [r1, #2]
	lsrs r2, r2, #8
	blo _0800513A
	eors r3, r3
	strh r3, [r0, #0x2c]
	b _0800515C
_0800513A:
	ldrb r2, [r1, #2]
	movs r3, #0x20
	tst r2, r3
	beq _0800515C
	ldr r3, [r0, #0x10]
	orrs r3, r3
	beq _0800514A
	bpl _0800515C
_0800514A:
	adds r2, #2
	strb r2, [r1, #2]
	movs r2, #0x74
	strh r2, [r1, #8]
	ldr r3, _08005524 @ =0x00028000
	str r3, [r0, #0x10]
	movs r3, #0xa
	strb r3, [r0, #0x17]
	b sub_08005200
_0800515C:
	push {r0, r1}
	ldrb r2, [r1, #2]
	adds r1, r4, #0
	movs r3, #0x10
	ands r2, r3
	beq _0800516A
	lsrs r1, r1, #1
_0800516A:
	bl sub_08003594
	orrs r0, r0
	pop {r0, r1}
	beq _08005178
	pop {pc}
	.align 2, 0
_08005178:
	movs r2, #0x50
	ldrh r2, [r0, r2]
	lsrs r2, r2, #0x10
	bhs _08005190
	movs r2, #0x80
	strb r2, [r0, #0x1f]
	ldrb r2, [r0, #0x1d]
	movs r3, #0x3f
	ands r2, r3
	movs r3, #0x80
	orrs r2, r3
	strb r2, [r0, #0x1d]
_08005190:
	bl sub_08001D1C
	beq _080051A2
	ldrb r2, [r1, #0x14]
	orrs r2, r2
	bne _080051A2
	movs r3, #7
	strb r3, [r1, #0x11]
	b _080051CE
_080051A2:
	ldrb r2, [r1, #4]
	orrs r2, r2
	bne _080051CE
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	movs r2, #0x20
	strh r2, [r1, #8]
	movs r2, #0xe
	bl sub_080031AC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080051BC
sub_080051BC: @ 0x080051BC
	ldr r2, _08005528 @ =gUnk_03000510
	ldrh r2, [r2]
	orrs r2, r2
	bne _080051CE
	movs r2, #0x29
	ldrsb r2, [r0, r2]
	lsls r2, r2, #1
	bhs _080051CE
	mov pc, lr
_080051CE:
	eors r2, r2
	strb r2, [r1, #2]
	strb r2, [r1, #4]
	strb r2, [r1, #0x1b]
	movs r4, #0x3c
	ldrb r3, [r0, r4]
	movs r2, #0x80
	orrs r3, r2
	strb r3, [r0, r4]
	bl sub_080020C8
	ldrh r2, [r1, #0x36]
	ldr r3, _0800552C @ =0x00001000
	tst r2, r3
	bne _080051FA
	push {r1}
	bl sub_080019FC
	bl sub_080012B4
	pop {r1}
	pop {pc}
_080051FA:
	bl sub_080012C0
	pop {pc}

	thumb_func_start sub_08005200
sub_08005200: @ 0x08005200
	ldrb r2, [r1, #4]
	orrs r2, r2
	beq _080051CE
	push {r0, r1}
	push {r0}
	bl sub_0803CF58
	pop {r0}
	movs r2, #0x29
	ldrb r2, [r0, r2]
	lsrs r2, r2, #1
	bhs _0800521E
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
_0800521E:
	movs r2, #0x3c
	ldrb r3, [r0, r2]
	lsls r3, r3, #0x1d
	lsrs r3, r3, #0x1d
	strb r3, [r0, r2]
	ldrb r2, [r0, #0x17]
	orrs r2, r2
	beq _08005236
	subs r2, #1
	strb r2, [r0, #0x17]
	pop {r0, r1}
	pop {pc}
_08005236:
	ldr r1, _08005520 @ =0x00004000
	bl sub_08003594
	pop {r0, r1}
	ldrh r2, [r0, #0x3a]
	ldr r3, _08005530 @ =0x0000FFF8
	cmp r2, r3
	blo _08005274
	ldrb r2, [r1, #0x14]
	orrs r2, r2
	bne _08005258
	bl sub_08001D1C
	beq _08005258
	movs r3, #7
	strb r3, [r1, #0x11]
	b _080051CE
_08005258:
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	movs r2, #0xf
	strb r2, [r0, #0x17]
	push {r0, r1}
	movs r0, #0x10
	movs r1, #0
	bl sub_080161F8
	movs r0, #0x52
	bl sub_08003DFC
	pop {r0, r1}
_08005274:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08005278
sub_08005278: @ 0x08005278
	ldrb r2, [r1, #4]
	orrs r2, r2
	beq _080051CE
	push {r1}
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	pop {r1}
	movs r2, #0x3c
	ldrb r3, [r0, r2]
	lsls r3, r3, #0x1d
	lsrs r3, r3, #0x1d
	strb r3, [r0, r2]
	ldrb r2, [r0, #0x17]
	subs r2, #1
	strb r2, [r0, #0x17]
	bne _080052A4
	bl sub_08001D5C
	eors r2, r2
	strb r2, [r1, #4]
	b _080051CE
_080052A4:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080052A8
sub_080052A8: @ 0x080052A8
	ldrb r2, [r1, #2]
	movs r3, #7
	ands r2, r3
	lsls r2, r2, #2
	ldr r3, _08005534 @ =_08005054
	ldr r2, [r3, r2]
	bx r2
	.align 2, 0

	thumb_func_start sub_080052B8
sub_080052B8: @ 0x080052B8
	ldrb r2, [r0, #0x15]
	lsls r2, r2, #2
	ldr r3, _08005538 @ =_0800506C
	ldr r2, [r3, r2]
	bx r2
	.align 2, 0

	thumb_func_start sub_080052C4
sub_080052C4: @ 0x080052C4
	push {lr}
	bl sub_08001274
	bl sub_08001D5C
	movs r2, #1
	ldrh r3, [r1, #0x36]
	orrs r2, r3
	strh r2, [r1, #0x36]
	ldrb r2, [r1, #5]
	ldrb r3, [r1, #5]
	orrs r2, r3
	ldrb r3, [r1, #0x1b]
	orrs r2, r3
	bne _080052F2
	ldrh r2, [r1, #0x36]
	movs r3, #0x80
	ands r3, r2
	bne _080052F2
	bl sub_080076C4
	movs r2, #0x10
	strh r2, [r1, #8]
_080052F2:
	eors r2, r2
	strb r2, [r1, #0x1e]
	movs r3, #0x3d
	strb r2, [r1, r3]
	movs r2, #0xc1
	bl sub_080031AC
	movs r2, #0xd5
	bl sub_080031AC
	movs r3, #0x2a
	ldrb r2, [r0, r3]
	lsls r2, r2, #2
	movs r3, #0x2b
	strb r2, [r0, r3]
	bl sub_08003960
	movs r3, #0x2a
	ldrb r1, [r0, r3]
	bl sub_08003984
	movs r3, #2
_0800531E:
	adds r3, #1
	push {r3}
	movs r3, #0x2a
	ldrb r1, [r0, r3]
	bl sub_08003984
	pop {r3}
	lsrs r2, r2, #1
	ldr r4, _0800553C @ =gUnk_02021024
	ldrb r4, [r4, r2]
	lsls r2, r2, #1
	cmp r4, #0xf
	beq _0800531E
	blo _0800534A
	cmp r4, #0x1d
	beq _0800534A
	subs r4, #0x10
	lsls r4, r4, #1
	ldr r1, _08005540 @ =_08001780
	ldrh r4, [r1, r4]
	orrs r4, r4
	bne _0800531E
_0800534A:
	lsls r3, r3, #4
	subs r3, #4
	lsls r3, r3, #0xc
	str r3, [r0, #0x10]
	ldr r2, _08005544 @ =0x00000100
	str r2, [r0, #0xc]
	pop {pc}

	thumb_func_start sub_08005358
sub_08005358: @ 0x08005358
	push {lr}
	bl sub_08001D5C
	ldrb r3, [r1, #0x1b]
	orrs r3, r3
	bne _08005372
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	movs r2, #0x29
	ldrb r2, [r0, r2]
	lsrs r2, r2, #1
	bhs _080053FE
_08005372:
	push {r0}
	bl sub_0803CC20
_08005378:
	pop {r0}
	push {r0}
	ldr r1, _0800551C @ =0x00002000
	bl sub_08003594
	orrs r0, r0
	pop {r0}
	bne _080053FE
	bl sub_08004070
	ldr r1, [r0, #0x6c]
	orrs r1, r1
	beq _0800539C
	push {r0}
	ldr r0, [r1, #0x58]
	bl sub_08004070
	pop {r0}
_0800539C:
	movs r1, #7
	eors r2, r2
	movs r3, #3
	bl sub_08001B54
	bl sub_08001D5C
	ldrb r2, [r1, #0x14]
	orrs r2, r2
	bne _080053C8
	bl sub_08002350
	beq _080053C8
	movs r3, #7
	strb r3, [r1, #0x11]
	eors r2, r2
	strb r2, [r1, #5]
	ldrh r2, [r1, #0x36]
	ldr r3, _08005548 @ =0x0000FFFE
	ands r2, r3
	strh r2, [r1, #0x36]
	b _080051CE
_080053C8:
	movs r2, #6
	strb r2, [r0, #0x17]
	ldrb r2, [r1, #5]
	ldrb r3, [r1, #0xb]
	orrs r2, r3
	bne _080053EA
	ldrh r2, [r1, #0x36]
	movs r3, #0x80
	ands r3, r2
	bne _080053EA
	movs r2, #0xff
	movs r3, #0x23
	strb r2, [r0, r3]
	movs r2, #0x10
	strh r2, [r1, #8]
	lsrs r2, r2, #8
	strb r2, [r0, #0x1b]
_080053EA:
	bl sub_08001274
	bl sub_08001F5C
	movs r2, #0xe
	bl sub_080031AC
	eors r2, r2
	movs r3, #0x42
	strb r2, [r0, r3]
_080053FE:
	pop {pc}

	thumb_func_start sub_08005400
sub_08005400: @ 0x08005400
	push {lr}
	ldrb r2, [r0, #0x17]
	subs r2, #1
	strb r2, [r0, #0x17]
	bne _08005430
	bl sub_08001D5C
	eors r2, r2
	strb r2, [r1, #2]
	ldrh r2, [r1, #0x36]
	movs r3, #0x80
	ands r3, r2
	beq _0800542C
	ldrh r2, [r1, #0x36]
	ldr r3, _08005548 @ =0x0000FFFE
	ands r2, r3
	strh r2, [r1, #0x36]
	movs r2, #9
	strb r2, [r0, #0x14]
	movs r2, #2
	strb r2, [r0, #0x15]
	pop {pc}
_0800542C:
	bl sub_080012FC
_08005430:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08005434
sub_08005434: @ 0x08005434
	push {lr}
	bl sub_08001D5C
	ldrb r2, [r0, #0x15]
	lsls r2, r2, #2
	ldr r3, _0800554C @ =_08005078
	ldr r2, [r3, r2]
	bx r2

	thumb_func_start sub_08005444
sub_08005444: @ 0x08005444
	movs r3, #0x3c
	ldrb r2, [r0, r3]
	movs r4, #0x7f
	ands r2, r4
	strb r2, [r0, r3]
	movs r3, #0x2a
	ldrb r2, [r0, r3]
	lsrs r2, r2, #1
	lsls r2, r2, #3
	movs r3, #0x10
	eors r2, r3
	movs r3, #0x2b
	strb r2, [r0, r3]
	ldr r2, _08005544 @ =0x00000100
	str r2, [r0, #0xc]
	ldr r3, _08005550 @ =0x00020000
	str r3, [r0, #0x10]
	bl sub_08001274
	movs r3, #0x38
	ldrb r2, [r1, r3]
	strb r2, [r0, #0x17]
	movs r2, #0x14
	strh r2, [r1, #8]
	lsrs r2, r2, #8
	strb r2, [r0, #0x1b]
	push {r0}
	movs r2, #0x52
	bl sub_080031B8
	movs r0, #0x10
	movs r1, #0
	bl sub_080161F8
	pop {r0}
	movs r1, #0x2a
	ldrb r2, [r0, r1]
	lsrs r2, r2, #1
	lsls r2, r2, #2
	ldr r1, _08005554 @ =_080050A4
	adds r1, r1, r2
	ldr r1, [r1]
	movs r2, #3
_0800549A:
	push {r1, r2}
	eors r4, r4
	ldrsb r2, [r1, r4]
	movs r4, #1
	ldrsb r3, [r1, r4]
	movs r1, #0xa
	bl sub_08001B54
	pop {r1, r2}
	adds r1, #2
	subs r2, #1
	bne _0800549A
	bl sub_080076C4
	pop {pc}

	thumb_func_start sub_080054B8
sub_080054B8: @ 0x080054B8
	bl sub_0800402C
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	bl sub_080019FC
	bl sub_08002294
	push {r0}
	ldr r1, _0800551C @ =0x00002000
	bl sub_08003594
	orrs r0, r0
	pop {r0}
	bne _08005518
	bl sub_08001D5C
	ldrb r2, [r0, #0x17]
	orrs r2, r2
	beq _080054EC
	subs r2, #1
	strb r2, [r0, #0x17]
	ldr r3, _08005558 @ =0x00010000
	str r3, [r0, #0x10]
	pop {pc}
_080054EC:
	movs r3, #0x3c
	ldrb r2, [r0, r3]
	movs r4, #0x80
	orrs r2, r4
	strb r2, [r0, r3]
	ldrb r2, [r1, #0x14]
	orrs r2, r2
	bne _08005508
	bl sub_08002350
	beq _08005508
	movs r3, #7
	strb r3, [r1, #0x11]
	b _080051CE
_08005508:
	movs r2, #0
	strh r2, [r1, #8]
	lsrs r2, r2, #8
	strb r2, [r0, #0x1b]
	movs r2, #8
	strb r2, [r0, #0x17]
	bl sub_08001274
_08005518:
	pop {pc}
	.align 2, 0
_0800551C: .4byte 0x00002000
_08005520: .4byte 0x00004000
_08005524: .4byte 0x00028000
_08005528: .4byte gUnk_03000510
_0800552C: .4byte 0x00001000
_08005530: .4byte 0x0000FFF8
_08005534: .4byte _08005054
_08005538: .4byte _0800506C
_0800553C: .4byte gUnk_02021024
_08005540: .4byte _08001780
_08005544: .4byte 0x00000100
_08005548: .4byte 0x0000FFFE
_0800554C: .4byte _08005078
_08005550: .4byte 0x00020000
_08005554: .4byte _080050A4
_08005558: .4byte 0x00010000
_0800555C: .4byte sub_0800559C
_08005560: .4byte sub_080055C8
_08005564: .4byte sub_0800566C
_08005568: .4byte sub_0800568C
_0800556C: .4byte sub_080057B4
_08005570: .4byte sub_080057C4
_08005574: .4byte sub_08005804
_08005578: .4byte sub_08005814

	thumb_func_start sub_0800557C
sub_0800557C: @ 0x0800557C
	push {lr}
	bl sub_08001EC0
	bne _0800558E
	ldrb r2, [r0, #0xb]
	bl sub_08001D60
	eors r2, r2
	strb r2, [r1, #5]
_0800558E:
	bl sub_0800127C
	ldr r2, _08005828 @ =_0800555C
	ldrb r1, [r0, #0x15]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	bx r1

	thumb_func_start sub_0800559C
sub_0800559C: @ 0x0800559C
	bl sub_080076C4
	eors r1, r1
	strb r1, [r0, #0x17]
	movs r2, #0x7f
	movs r1, #0x3c
	ldrb r3, [r0, r1]
	ands r3, r2
	strb r3, [r0, r1]
	movs r1, #0x2e
	eors r2, r2
	strb r2, [r0, r1]
	bl sub_08001274
	bl sub_08001D5C
	ldr r2, _0800582C @ =0x00000250
	strh r2, [r1, #8]
	lsrs r2, r2, #8
	strb r2, [r0, #0x1b]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080055C8
sub_080055C8: @ 0x080055C8
	ldrb r2, [r0, #0xb]
	bl sub_08001D60
	ldr r1, [r1, #0x28]
	ldrb r2, [r1, #0x14]
	cmp r2, #1
	bne _0800561A
	ldr r1, _08005830 @ =gUnk_03000BD0
	ldrh r1, [r1]
	orrs r1, r1
	beq _0800561A
	movs r2, #0x28
	movs r3, #1
	strb r3, [r0, r2]
	movs r1, #0x1e
	strb r1, [r0, #0x18]
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	ldrb r1, [r0, #0x17]
	adds r1, #1
	strb r1, [r0, #0x17]
	cmp r1, #0x28
	blo _0800561A
	ldrb r2, [r0, #0xb]
	bl sub_08001D60
	eors r2, r2
	strb r2, [r1, #5]
	ldr r3, _08005834 @ =0x00008000
	str r3, [r0, #0x10]
	movs r2, #0xff
	movs r3, #0x2b
	strb r2, [r0, r3]
	bl sub_08001D5C
	movs r2, #0x41
	strb r2, [r1, #2]
	bl sub_080012FC
	pop {pc}
_0800561A:
	ldrb r1, [r0, #0x18]
	orrs r1, r1
	beq _08005626
	subs r1, #1
	strb r1, [r0, #0x18]
	bne _08005628
_08005626:
	strb r1, [r0, #0x17]
_08005628:
	ldrb r2, [r0, #0xb]
	bl sub_08001D60
	ldr r1, [r1, #0x28]
	ldrb r2, [r0, #0x1c]
	movs r3, #0xfb
	ands r2, r3
	strb r2, [r0, #0x1c]
	ldrb r2, [r1, #0x1c]
	movs r3, #4
	ands r3, r2
	beq _08005646
	ldrb r2, [r0, #0x1c]
	orrs r2, r3
	strb r2, [r0, #0x1c]
_08005646:
	movs r3, #0x2a
	ldrb r2, [r1, r3]
	strb r2, [r0, r3]
	ldrb r2, [r1, #0x14]
	cmp r2, #1
	bne _08005664
	ldrb r2, [r1, #0xa]
	bl sub_08001D60
	ldrh r2, [r1, #0x36]
	movs r3, #1
	tst r2, r3
	bne _08005664
	bl sub_08001510
_08005664:
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	pop {pc}

	thumb_func_start sub_0800566C
sub_0800566C: @ 0x0800566C
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	movs r1, #3
	movs r2, #0x2e
	strb r1, [r0, r2]
	ldrb r2, [r0, #0xb]
	bl sub_08001D60
	ldrb r2, [r1, #0x14]
	cmp r2, #1
	bne _08005688
	bl sub_08001510
_08005688:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0800568C
sub_0800568C: @ 0x0800568C
	movs r2, #0x80
	movs r1, #0x3c
	ldrb r3, [r0, r1]
	orrs r3, r2
	strb r3, [r0, r1]
	eors r2, r2
	movs r3, #0x42
	strb r2, [r0, r3]
	push {r0}
	bl sub_08008DD8
	pop {r0}
	bl sub_08001F5C
	bl sub_080012FC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080056B0
sub_080056B0: @ 0x080056B0
	push {lr}
	bl sub_0800127C
	bl sub_08001F5C
	ldrb r2, [r0, #0x15]
	lsls r2, r2, #2
	ldr r3, _08005838 @ =_080056C4
	ldr r2, [r3, r2]
	bx r2
	.align 2, 0
_080056C4: .4byte sub_080056CC
_080056C8: .4byte sub_08005700

	thumb_func_start sub_080056CC
sub_080056CC: @ 0x080056CC
	movs r1, #0x80
	str r1, [r0, #0xc]
	bl sub_08001274
	bl sub_080076C4
	bl sub_08001D5C
	ldr r2, _0800583C @ =0x00000244
	strh r2, [r1, #8]
	ldrh r2, [r1, #0x36]
	movs r3, #1
	orrs r2, r3
	strh r2, [r1, #0x36]
	movs r2, #0x38
	ldrb r2, [r1, r2]
	strb r2, [r0, #0x17]
	movs r3, #0x2a
	ldrb r2, [r0, r3]
	lsrs r2, r2, #1
	lsls r2, r2, #3
	movs r3, #0x10
	eors r2, r3
	movs r3, #0x2b
	strb r2, [r0, r3]
	movs r0, r0

	thumb_func_start sub_08005700
sub_08005700: @ 0x08005700
	bl sub_08001D5C
	movs r2, #0x34
	eors r3, r3
	strb r3, [r1, r2]
	bl sub_08002294
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	ldrb r2, [r0, #0x17]
	subs r2, #1
	strb r2, [r0, #0x17]
	bne _0800572C
	bl sub_08001D5C
	ldrh r2, [r1, #0x36]
	ldr r3, _08005840 @ =0x0000FFFE
	ands r2, r3
	strh r2, [r1, #0x36]
	bl sub_080012B4
_0800572C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08005730
sub_08005730: @ 0x08005730
	push {lr}
	bl sub_0800127C
	bl sub_08001F5C
	ldrb r2, [r0, #0x15]
	lsls r2, r2, #2
	ldr r3, _08005844 @ =_08005744
	ldr r2, [r3, r2]
	bx r2
	.align 2, 0
_08005744: .4byte sub_08005750
_08005748: .4byte sub_0800575C
_0800574C: .4byte sub_08005794

	thumb_func_start sub_08005750
sub_08005750: @ 0x08005750
	movs r1, #0x80
	str r1, [r0, #0xc]
	bl sub_08001274
	bl sub_08001D5C

	thumb_func_start sub_0800575C
sub_0800575C: @ 0x0800575C
	bl sub_08001D5C
	movs r2, #0x34
	eors r3, r3
	strb r3, [r1, r2]
	bl sub_08002294
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	bl sub_08001D5C
	ldrh r2, [r1, #0x36]
	movs r3, #1
	orrs r2, r3
	strh r2, [r1, #0x36]
	movs r3, #0x7f
	ldrb r2, [r1, #6]
	ands r2, r3
	subs r2, #1
	movs r3, #0x80
	orrs r3, r2
	strb r3, [r1, #6]
	orrs r2, r2
	bne _08005792
	bl sub_08001274
_08005792:
	pop {pc}

	thumb_func_start sub_08005794
sub_08005794: @ 0x08005794
	movs r2, #2
	strb r2, [r1, #6]
	ldrh r2, [r1, #0x36]
	ldr r3, _08005840 @ =0x0000FFFE
	ands r2, r3
	strh r2, [r1, #0x36]
	bl sub_080012B4
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080057A8
sub_080057A8: @ 0x080057A8
	push {lr}
	ldr r2, _08005848 @ =_0800556C
	ldrb r1, [r0, #0x15]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	bx r1

	thumb_func_start sub_080057B4
sub_080057B4: @ 0x080057B4
	bl sub_08001274
	bl sub_080076C4
	bl sub_08001D5C
	ldr r2, _0800584C @ =0x0000022C
	strh r2, [r1, #8]

	thumb_func_start sub_080057C4
sub_080057C4: @ 0x080057C4
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	bl sub_08001D5C
	movs r2, #0x41
	ldrb r2, [r0, r2]
	movs r3, #0x80
	tst r2, r3
	beq _080057DE
	movs r3, #0x7f
	ands r2, r3
	bne _080057F0
_080057DE:
	movs r2, #0x39
	ldrb r2, [r1, r2]
	orrs r2, r2
	bne _080057F8
	ldr r2, _08005850 @ =gUnk_03000BD0
	ldrh r2, [r2]
	ldr r3, _08005854 @ =0x00000103
	ands r2, r3
	beq _080057F6
_080057F0:
	ldr r2, [r0, #0x58]
	movs r3, #1
	strb r3, [r2, #0xb]
_080057F6:
	pop {pc}
_080057F8:
	ldr r2, _08005858 @ =0x00000238
	strh r2, [r1, #8]
	bl sub_08001274
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08005804
sub_08005804: @ 0x08005804
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	movs r2, #0x29
	ldrb r2, [r0, r2]
	lsrs r2, r2, #8
	bhs sub_08005814
	pop {pc}

	thumb_func_start sub_08005814
sub_08005814: @ 0x08005814
	bl sub_08001D5C
	ldrh r2, [r1, #0x36]
	ldr r3, _08005840 @ =0x0000FFFE
	ands r2, r3
	strh r2, [r1, #0x36]
	bl sub_080012B4
	pop {pc}
	.align 2, 0
_08005828: .4byte _0800555C
_0800582C: .4byte 0x00000250
_08005830: .4byte gUnk_03000BD0
_08005834: .4byte 0x00008000
_08005838: .4byte _080056C4
_0800583C: .4byte 0x00000244
_08005840: .4byte 0x0000FFFE
_08005844: .4byte _08005744
_08005848: .4byte _0800556C
_0800584C: .4byte 0x0000022C
_08005850: .4byte gUnk_03000BD0
_08005854: .4byte 0x00000103
_08005858: .4byte 0x00000238

	thumb_func_start sub_0800585C
sub_0800585C: @ 0x0800585C
	push {lr}
	ldrb r2, [r0, #0x15]
	lsls r2, r2, #2
	ldr r3, _08005918 @ =_08005868
	ldr r2, [r3, r2]
	bx r2
	.align 2, 0
_08005868: .4byte sub_08005874
_0800586C: .4byte sub_080058BC
_08005870: .4byte sub_080058E4

	thumb_func_start sub_08005874
sub_08005874: @ 0x08005874
	bl sub_08001274
	bl sub_08001F5C
	movs r3, #0x3c
	ldrb r2, [r0, r3]
	movs r4, #0x7f
	ands r2, r4
	strb r2, [r0, r3]
	bl sub_08001F5C
	movs r2, #1
	ldrh r3, [r1, #0x36]
	orrs r2, r3
	strh r2, [r1, #0x36]
	bl sub_080076C4
	movs r2, #0xa5
	movs r3, #0x38
	ldrb r3, [r1, r3]
	orrs r3, r3
	beq _080058A2
	movs r2, #0xa9
_080058A2:
	ldrh r3, [r1, #8]
	strh r2, [r1, #8]
	movs r2, #0x3a
	strh r3, [r1, r2]
	movs r3, #0x38
	ldrb r3, [r1, r3]
	orrs r3, r3
	beq _080058B4
	b _080058CC
_080058B4:
	movs r1, #0x1e
	strb r1, [r0, #0x17]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080058BC
sub_080058BC: @ 0x080058BC
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	movs r1, #0x29
	ldrb r1, [r0, r1]
	orrs r1, r1
	bne _080058CC
	pop {pc}
_080058CC:
	bl sub_08001D5C
	movs r1, #0x3c
	strb r1, [r0, #0x17]
	bl sub_08001274
	push {r0}
	movs r0, #0xf
	bl sub_0800D24C
	pop {r0}
	pop {pc}

	thumb_func_start sub_080058E4
sub_080058E4: @ 0x080058E4
	ldrb r1, [r0, #0x17]
	orrs r1, r1
	beq _080058F6
	subs r1, #1
	strb r1, [r0, #0x17]
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	pop {pc}
_080058F6:
	bl sub_08001D5C
	movs r2, #0x3a
	ldrh r3, [r1, r2]
	strh r3, [r1, #8]
	ldr r2, _0800591C @ =0x0000FFFE
	ldrh r3, [r1, #0x36]
	ands r2, r3
	strh r2, [r1, #0x36]
	movs r1, #1
	strb r1, [r0, #0x14]
	movs r3, #0x3c
	ldrb r2, [r0, r3]
	movs r4, #0x80
	orrs r2, r4
	strb r2, [r0, r3]
	pop {pc}
	.align 2, 0
_08005918: .4byte _08005868
_0800591C: .4byte 0x0000FFFE

	thumb_func_start sub_08005920
sub_08005920: @ 0x08005920
	push {lr}
	ldr r2, _08005BBC @ =_0800592C
	ldrb r1, [r0, #0x15]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	bx r1
	.align 2, 0
_0800592C: .4byte sub_0800596C
_08005930: .4byte sub_080059EC
_08005934: .4byte sub_08005A70
_08005938: .4byte sub_080059A8
_0800593C: .4byte sub_08005940

	thumb_func_start sub_08005940
sub_08005940: @ 0x08005940
	ldr r2, _08005BC0 @ =gUnk_03000510
	ldrh r2, [r2]
	orrs r2, r2
	bne _08005950
	ldrb r2, [r0, #0x17]
	subs r2, #1
	strb r2, [r0, #0x17]
	bne _08005966
_08005950:
	bl sub_08001D5C
	ldrh r2, [r1, #0x36]
	ldr r3, _08005BC4 @ =0x0000FF7E
	ands r3, r2
	strh r3, [r1, #0x36]
	eors r2, r2
	movs r3, #0x42
	strb r2, [r0, r3]
	bl sub_080012B4
_08005966:
	pop {pc}

	thumb_func_start sub_08005968
sub_08005968: @ 0x08005968
	push {lr}
	movs r0, r0

	thumb_func_start sub_0800596C
sub_0800596C: @ 0x0800596C
	eors r1, r1
	movs r2, #0x2e
	strb r1, [r0, r2]
	ldr r2, _08005BC8 @ =0x00000100
	str r2, [r0, #0x78]
	str r2, [r0, #0x7c]
	bl sub_08001D5C
	movs r2, #1
	ldrh r3, [r1, #0x36]
	orrs r2, r3
	strh r2, [r1, #0x36]
	ldr r2, _08005BCC @ =0x000001A8
	strh r2, [r1, #8]
	eors r2, r2
	strb r2, [r0, #0x17]
	movs r2, #2
	strb r2, [r0, #0x18]
	movs r2, #0xc0
	str r2, [r0, #0x74]
	movs r2, #1
	strb r2, [r0, #0x15]
	push {r0}
	bl sub_0803DC68
	pop {r0}
	movs r2, #0x75
	bl sub_080031B8
	pop {pc}

	thumb_func_start sub_080059A8
sub_080059A8: @ 0x080059A8
	ldr r2, [r0, #0x78]
	subs r2, #0x20
	str r2, [r0, #0x78]
	ldr r2, [r0, #0x7c]
	subs r2, #0x20
	str r2, [r0, #0x7c]
	ldr r3, _08005BC8 @ =0x00000100
	cmp r2, r3
	beq _080059C4
	push {r0}
	bl sub_0803DD0C
	pop {r0}
	pop {pc}
_080059C4:
	push {r0}
	bl sub_08003BCC
	pop {r0}
	ldr r2, [r0, #0x1c]
	ldr r3, _08005BD0 @ =0xFFFFFCFF
	ands r2, r3
	str r2, [r0, #0x1c]
	ldr r2, _08005BD4 @ =gUnk_0813E7CC
	str r2, [r0, #0x48]
	bl sub_080019FC
	movs r2, #4
	strb r2, [r0, #0x15]
	movs r2, #5
	strb r2, [r0, #0x17]
	pop {pc}
	.align 2, 0
_080059E8:
	push {lr}
	movs r0, r0

	thumb_func_start sub_080059EC
sub_080059EC: @ 0x080059EC
	ldrb r3, [r0, #0x17]
	lsrs r3, r3, #1
	blo _080059FA
	ldr r2, [r0, #0x78]
	subs r2, #0x48
	str r2, [r0, #0x78]
	b _08005A12
_080059FA:
	ldr r2, [r0, #0x78]
	ldr r3, _08005BD8 @ =0x00000400
	cmp r2, r3
	bhs _08005A08
	adds r2, #0x60
	str r2, [r0, #0x78]
	b _08005A12
_08005A08:
	ldrb r3, [r0, #0x17]
	adds r3, #1
	strb r3, [r0, #0x17]
	cmp r3, #3
	beq _08005A42
_08005A12:
	ldrb r3, [r0, #0x17]
	lsrs r3, r3, #1
	bhs _08005A24
	lsrs r3, r3, #1
	bhs _08005A38
	ldr r2, [r0, #0x7c]
	subs r2, #0x10
	str r2, [r0, #0x7c]
	b _08005A38
_08005A24:
	ldr r2, [r0, #0x7c]
	ldr r3, _08005BDC @ =0x00000500
	cmp r2, r3
	bhs _08005A32
	adds r2, #0x68
	str r2, [r0, #0x7c]
	b _08005A38
_08005A32:
	ldrb r3, [r0, #0x17]
	adds r3, #1
	strb r3, [r0, #0x17]
_08005A38:
	push {r0}
	bl sub_0803DD0C
	pop {r0}
	pop {pc}
_08005A42:
	push {r0}
	bl sub_08003BCC
	pop {r0}
	ldr r2, [r0, #0x1c]
	ldr r3, _08005BD0 @ =0xFFFFFCFF
	ands r2, r3
	str r2, [r0, #0x1c]
	bl sub_08001D5C
	ldr r2, _08005BE0 @ =0x000001A6
	strh r2, [r1, #8]
	ldrh r2, [r1, #0x36]
	ldr r3, _08005BE4 @ =0x0000FFFE
	ands r3, r2
	strh r3, [r1, #0x36]
	movs r2, #2
	strb r2, [r0, #0x15]
	eors r2, r2
	movs r3, #0x42
	strb r2, [r0, r3]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08005A70
sub_08005A70: @ 0x08005A70
	bl sub_08001F5C
	bl sub_08001D5C
	ldrh r2, [r1, #0x36]
	movs r3, #0x80
	tst r2, r3
	bne _08005A8E
	ldr r2, _08005BE8 @ =gUnk_0813E7CC
	str r2, [r0, #0x48]
	bl sub_080019FC
	bl sub_080012FC
	pop {pc}
_08005A8E:
	ldr r2, _08005BC8 @ =0x00000100
	str r2, [r0, #0xc]
	bl sub_08001EC0
	bne _08005A9C
	bl sub_080047F4
_08005A9C:
	bl sub_0800127C
	bl sub_08001510
	bl sub_0800127C
	ldrh r2, [r1, #0x36]
	movs r3, #0x41
	ands r2, r3
	bne _08005AFE
	ldrb r2, [r1, #0x12]
	cmp r2, #0xb0
	beq _08005AFE
	cmp r2, #0xac
	beq _08005AFE
	cmp r2, #0x20
	blo _08005AC2
	cmp r2, #0x2d
	blo _08005AFE
_08005AC2:
	ldr r3, _08005BEC @ =gUnk_03000BD0
	ldrh r3, [r3]
	movs r2, #1
	ands r3, r2
	beq _08005AFE
	ldrh r2, [r0, #0x36]
	adds r2, #3
	strh r2, [r0, #0x36]
	bl sub_08005968
	movs r2, #3
	strb r2, [r0, #0x15]
	ldr r2, _08005BD8 @ =0x00000400
	str r2, [r0, #0x78]
	str r2, [r0, #0x7c]
	push {r0}
	bl sub_0803DD0C
	pop {r0}
	movs r2, #4
	movs r3, #0x2a
	strb r2, [r0, r3]
	eors r2, r2
	strb r2, [r0, #0x17]
	bl sub_080037CC
	movs r2, #0x76
	bl sub_080031B8
	pop {pc}
_08005AFE:
	ldrh r2, [r1, #0x36]
	movs r3, #0x40
	ands r2, r3
	bne _08005B58
	bl sub_080019FC
	bl sub_08001328
	bl sub_08001D5C
	ldrb r3, [r1, #0xa]
	orrs r3, r3
	bne _08005B1C
	bl sub_080015BC
_08005B1C:
	movs r3, #2
	ldrsb r2, [r1, r3]
	orrs r2, r2
	beq _08005B3C
	bmi _08005B26
_08005B26:
	ldrb r2, [r1, #7]
	movs r3, #0xef
	ands r2, r3
	strb r2, [r1, #7]
	movs r2, #0x29
	ldrb r2, [r0, r2]
	lsrs r2, r2, #1
	bhs _08005B3A
	bl sub_08002294
_08005B3A:
	pop {pc}
_08005B3C:
	movs r1, #0x42
	ldrb r1, [r0, r1]
	orrs r1, r1
	beq _08005B4E
	movs r2, #0x3e
	ldrb r1, [r0, r2]
	movs r2, #0x2b
	strb r1, [r0, r2]
	pop {pc}
_08005B4E:
	movs r2, #0x3c
	ldrb r1, [r0, r2]
	movs r3, #0x80
	orrs r1, r3
	strb r1, [r0, r2]
_08005B58:
	eors r1, r1
	movs r2, #0x2e
	strb r1, [r0, r2]
	ldr r1, _08005BF0 @ =_08000FF4
	ldrb r2, [r0, #0xa]
	lsls r2, r2, #2
	ldr r1, [r1, r2]
	ldrb r2, [r1, #7]
	ldrb r3, [r1, #0xd]
	movs r4, #0x2b
	strb r3, [r0, r4]
	eors r4, r4
	orrs r3, r2
	movs r2, #0x80
	tst r3, r2
	bne _08005B86
	ldrb r2, [r1, #0xa]
	orrs r2, r2
	bne _08005B86
	push {r1}
	bl sub_08002294
	pop {r1}
_08005B86:
	ldr r1, _08005BF4 @ =_08000FF4
	ldrb r2, [r0, #0xa]
	lsls r2, r2, #2
	ldr r1, [r1, r2]
	ldrb r2, [r1, #0xb]
	orrs r2, r2
	bne _08005B9C
	push {r0}
	bl sub_0803D134
	pop {r0}
_08005B9C:
	bl sub_08001D5C
	ldrh r2, [r1, #0x36]
	movs r3, #0x40
	tst r2, r3
	bne _08005BBA
	bl sub_08009490
	cmp r1, #0xf
	bne _08005BBA
	movs r3, #0x1e
	movs r2, #0x3d
	strb r3, [r0, r2]
	bl sub_08002200
_08005BBA:
	pop {pc}
	.align 2, 0
_08005BBC: .4byte _0800592C
_08005BC0: .4byte gUnk_03000510
_08005BC4: .4byte 0x0000FF7E
_08005BC8: .4byte 0x00000100
_08005BCC: .4byte 0x000001A8
_08005BD0: .4byte 0xFFFFFCFF
_08005BD4: .4byte gUnk_0813E7CC
_08005BD8: .4byte 0x00000400
_08005BDC: .4byte 0x00000500
_08005BE0: .4byte 0x000001A6
_08005BE4: .4byte 0x0000FFFE
_08005BE8: .4byte gUnk_0813E7CC
_08005BEC: .4byte gUnk_03000BD0
_08005BF0: .4byte _08000FF4
_08005BF4: .4byte _08000FF4

	thumb_func_start sub_08005BF8
sub_08005BF8: @ 0x08005BF8
	push {lr}
	bl sub_08001D5C
	bl sub_08001EC0
	bne _08005C08
	bl sub_080047F4
_08005C08:
	movs r2, #0
	movs r3, #0x40
	strb r2, [r0, r3]
	movs r2, #2
	movs r3, #0x46
	strb r2, [r0, r3]
	bl sub_0800127C
	movs r2, #0x80
	strb r2, [r1, #0xa]
	eors r2, r2
	strb r2, [r1, #6]
	movs r3, #0x42
	strb r2, [r0, r3]
	bl sub_08007364
	bl sub_080052A8
	bl sub_08001D5C
	movs r3, #2
	ldrsb r2, [r1, r3]
	orrs r2, r2
	beq _08005C56
	bl sub_08002294
	movs r2, #0x29
	ldrb r2, [r0, r2]
	lsrs r2, r2, #2
	bhs _08005C54
	bl sub_08001D5C
	ldrb r1, [r1, #4]
	orrs r1, r1
	bne _08005C54
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
_08005C54:
	pop {pc}
_08005C56:
	eors r3, r3
	movs r2, #0x2e
	strb r3, [r0, r2]
	ldrb r3, [r1, #0xd]
	movs r4, #0x2b
	strb r3, [r0, r4]
	bl sub_08005C7C
	bl sub_08001D5C
	ldrb r2, [r1, #0xb]
	orrs r2, r2
	bne _08005C78
	push {r0}
	bl sub_0803D134
	pop {r0}
_08005C78:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08005C7C
sub_08005C7C: @ 0x08005C7C
	push {lr}
	bl sub_08001D5C
	ldrb r2, [r1, #0x1a]
	orrs r2, r2
	bne _08005CC6
	ldr r3, _08005CF0 @ =0x0000024C
	ldrb r2, [r1, #5]
	orrs r2, r2
	bne _08005CC4
	movs r3, #0x68
	ldrb r2, [r1, #0x1b]
	movs r4, #0x40
	tst r2, r4
	bne _08005CEA
	orrs r2, r2
	bne _08005CC4
	ldr r3, _08005CF4 @ =0x0000027C
	ldrb r2, [r1, #0xf]
	movs r4, #1
	tst r2, r4
	bne _08005CC4
	movs r3, #0x64
	ldrb r2, [r1, #3]
	orrs r2, r2
	bne _08005CC4
	movs r3, #0x21
	ldrb r2, [r1, r3]
	ldr r3, _08005CF8 @ =0x00000184
	orrs r2, r2
	bne _08005CC4
	movs r3, #0xff
	ldrb r2, [r1, #4]
	orrs r2, r2
	bne _08005CEA
	movs r3, #0
_08005CC4:
	strh r3, [r1, #8]
_08005CC6:
	ldrb r2, [r1, #0xf]
	movs r4, #1
	tst r2, r4
	bne _08005CEA
	ldrb r2, [r1, #5]
	orrs r2, r2
	bne _08005CEA
	movs r4, #0xff
	ands r3, r4
	ldrb r2, [r1]
	cmp r2, r3
	bne _08005CEA
	push {r1}
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	pop {r1}
	ldrb r3, [r1]
_08005CEA:
	strb r3, [r1]
	pop {pc}
	.align 2, 0
_08005CF0: .4byte 0x0000024C
_08005CF4: .4byte 0x0000027C
_08005CF8: .4byte 0x00000184
_08005CFC:
	.byte 0x02, 0xFF, 0x00, 0x80
	.byte 0x04, 0x00, 0x00, 0x00
_08005D04:
	.byte 0x01, 0xFF, 0x01, 0x00, 0x06, 0x05, 0x01, 0x00, 0x05, 0x03, 0x01, 0x00
	.byte 0x01, 0x87, 0x01, 0x00, 0x06, 0x05, 0x01, 0x00, 0x05, 0x03, 0x01, 0x00, 0x01, 0x03, 0x01, 0x00
	.byte 0x06, 0x05, 0x01, 0x00, 0x05, 0x03, 0x01, 0x00, 0x01, 0xFF, 0x01, 0x80, 0x28, 0x00, 0x00, 0x00
_08005D30:
	.byte 0x00, 0xFF, 0x00, 0x00, 0x04, 0x05, 0x00, 0x00, 0x03, 0x03, 0x00, 0x00, 0x00, 0x87, 0x00, 0x00
	.byte 0x04, 0x05, 0x00, 0x00, 0x03, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x04, 0x05, 0x00, 0x00
	.byte 0x03, 0x03, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x80, 0x28, 0x00, 0x00, 0x00
_08005D5C:
	.byte 0x07, 0x03, 0x00, 0x00
	.byte 0x08, 0x03, 0x00, 0x00, 0x09, 0x03, 0x00, 0x00, 0x0A, 0x03, 0x00, 0x00, 0x0B, 0x03, 0x00, 0x00
	.byte 0x0C, 0x03, 0x00, 0x00, 0x0D, 0x03, 0x00, 0x00, 0x0E, 0x03, 0x00, 0x00, 0x0F, 0x03, 0x00, 0x00
	.byte 0x10, 0x03, 0x00, 0x80, 0x24, 0x00, 0x00, 0x00
_08005D88:
	.byte 0x11, 0x03, 0x01, 0x00, 0x12, 0x03, 0x01, 0x00
	.byte 0x13, 0x03, 0x01, 0x00, 0x14, 0x03, 0x01, 0x00, 0x15, 0x03, 0x01, 0x00, 0x16, 0x03, 0x01, 0x00
	.byte 0x17, 0x03, 0x01, 0x00, 0x18, 0x03, 0x01, 0x00, 0x19, 0x03, 0x01, 0x00, 0x1A, 0x03, 0x01, 0x80
	.byte 0x28, 0x00, 0x00, 0x00
_08005DB4:
	.byte 0x1B, 0x03, 0x00, 0x00, 0x1C, 0x03, 0x00, 0x00, 0x1D, 0x03, 0x00, 0x00
	.byte 0x1E, 0x03, 0x00, 0x00, 0x1F, 0x03, 0x00, 0x00, 0x20, 0x03, 0x00, 0x00, 0x21, 0x03, 0x00, 0x00
	.byte 0x22, 0x03, 0x00, 0x00, 0x23, 0x03, 0x00, 0x00, 0x24, 0x03, 0x00, 0x80, 0x28, 0x00, 0x00, 0x00
_08005DE0:
	.byte 0x25, 0x02, 0x00, 0x00, 0x26, 0x01, 0x00, 0x50, 0x27, 0x02, 0x00, 0x10, 0x28, 0x02, 0x00, 0x10
	.byte 0x29, 0x01, 0x00, 0x51, 0x29, 0x02, 0x00, 0x10, 0x2A, 0x02, 0x00, 0x10, 0x2B, 0x02, 0x00, 0x10
	.byte 0x2C, 0x01, 0x00, 0x50, 0x2D, 0x01, 0x00, 0x10, 0x2D, 0xFF, 0x00, 0x80
_08005E0C:
	.byte 0x2E, 0x02, 0x00, 0x10
	.byte 0x2F, 0xFF, 0x00, 0x80, 0x04, 0x00, 0x00, 0x00
_08005E18:
	.byte 0x30, 0x02, 0x01, 0x00, 0x31, 0x01, 0x01, 0x50
	.byte 0x32, 0x02, 0x01, 0x10, 0x33, 0x02, 0x01, 0x10, 0x34, 0x01, 0x01, 0x52, 0x34, 0x02, 0x01, 0x10
	.byte 0x35, 0x02, 0x01, 0x10, 0x36, 0x02, 0x01, 0x10, 0x37, 0x01, 0x01, 0x50, 0x38, 0x01, 0x01, 0x10
	.byte 0x38, 0xFF, 0x01, 0x80
_08005E44:
	.byte 0x39, 0x02, 0x01, 0x10, 0x3A, 0xFF, 0x01, 0x80, 0x04, 0x00, 0x00, 0x00
_08005E50:
	.byte 0x3B, 0x02, 0x00, 0x00, 0x3C, 0x01, 0x00, 0x50, 0x3D, 0x02, 0x00, 0x10, 0x3E, 0x02, 0x00, 0x10
	.byte 0x3F, 0x01, 0x00, 0x53, 0x3F, 0x02, 0x00, 0x10, 0x40, 0x02, 0x00, 0x10, 0x41, 0x02, 0x00, 0x10
	.byte 0x42, 0x01, 0x00, 0x50, 0x43, 0x01, 0x00, 0x10, 0x43, 0xFF, 0x00, 0x80
_08005E7C:
	.byte 0x44, 0x01, 0x00, 0x10
	.byte 0x45, 0xFF, 0x00, 0x80, 0x04, 0x00, 0x00, 0x00
_08005E88:
	.byte 0x66, 0x02, 0x00, 0x00, 0x67, 0x06, 0x00, 0x00
	.byte 0x66, 0x01, 0x00, 0x09, 0x66, 0x01, 0x00, 0x00, 0x6C, 0x01, 0x00, 0x05, 0x6C, 0x01, 0x00, 0x00
	.byte 0x6D, 0x01, 0x00, 0x01, 0x6D, 0x01, 0x00, 0x00, 0x5F, 0x01, 0x00, 0x24, 0x5F, 0x01, 0x00, 0x00
	.byte 0x60, 0x01, 0x00, 0x0A, 0x60, 0x01, 0x00, 0x00, 0x61, 0x01, 0x00, 0x07, 0x61, 0x01, 0x00, 0x00
	.byte 0x62, 0x01, 0x00, 0x03, 0x62, 0x01, 0x00, 0x00, 0x63, 0x01, 0x00, 0x06, 0x63, 0x01, 0x00, 0x00
	.byte 0x64, 0x02, 0x00, 0x00, 0x65, 0x01, 0x00, 0x08, 0x65, 0x02, 0x00, 0x00, 0x65, 0x01, 0x00, 0x80
	.byte 0x04, 0x00, 0x00, 0x00
_08005EE4:
	.byte 0x72, 0x02, 0x00, 0x00, 0x73, 0x06, 0x00, 0x00, 0x72, 0x01, 0x00, 0x03
	.byte 0x72, 0x01, 0x00, 0x00, 0x74, 0x01, 0x00, 0x06, 0x74, 0x01, 0x00, 0x00, 0x75, 0x01, 0x00, 0x09
	.byte 0x75, 0x01, 0x00, 0x00, 0x64, 0x01, 0x00, 0x25, 0x64, 0x01, 0x00, 0x00, 0x65, 0x01, 0x00, 0x01
	.byte 0x65, 0x01, 0x00, 0x00, 0x5E, 0x01, 0x00, 0x04, 0x5E, 0x01, 0x00, 0x00, 0x5F, 0x01, 0x00, 0x0A
	.byte 0x5F, 0x01, 0x00, 0x00, 0x60, 0x01, 0x00, 0x07, 0x60, 0x01, 0x00, 0x00, 0x61, 0x02, 0x00, 0x00
	.byte 0x62, 0x01, 0x00, 0x08, 0x62, 0x02, 0x00, 0x00, 0x62, 0x01, 0x00, 0x80, 0x04, 0x00, 0x00, 0x00
_08005F40:
	.byte 0x68, 0x02, 0x00, 0x00, 0x69, 0x06, 0x00, 0x00, 0x68, 0x01, 0x00, 0x0A, 0x68, 0x01, 0x00, 0x00
	.byte 0x70, 0x01, 0x00, 0x07, 0x70, 0x01, 0x00, 0x00, 0x71, 0x01, 0x00, 0x03, 0x71, 0x01, 0x00, 0x00
	.byte 0x63, 0x01, 0x00, 0x26, 0x63, 0x01, 0x00, 0x00, 0x64, 0x01, 0x00, 0x09, 0x64, 0x01, 0x00, 0x00
	.byte 0x65, 0x01, 0x00, 0x05, 0x65, 0x01, 0x00, 0x00, 0x5E, 0x01, 0x00, 0x01, 0x5E, 0x01, 0x00, 0x00
	.byte 0x5F, 0x01, 0x00, 0x04, 0x5F, 0x01, 0x00, 0x00, 0x60, 0x02, 0x00, 0x00, 0x61, 0x01, 0x00, 0x08
	.byte 0x61, 0x02, 0x00, 0x00, 0x61, 0x01, 0x00, 0x80, 0x04, 0x00, 0x00, 0x00
_08005F9C:
	.byte 0x6A, 0x02, 0x01, 0x00
	.byte 0x6B, 0x06, 0x01, 0x00, 0x6A, 0x01, 0x01, 0x01, 0x6A, 0x01, 0x01, 0x00, 0x6E, 0x01, 0x01, 0x04
	.byte 0x6E, 0x01, 0x01, 0x00, 0x6F, 0x01, 0x01, 0x0A, 0x6F, 0x01, 0x01, 0x00, 0x61, 0x01, 0x01, 0x27
	.byte 0x61, 0x01, 0x01, 0x00, 0x62, 0x01, 0x01, 0x03, 0x62, 0x01, 0x01, 0x00, 0x63, 0x01, 0x01, 0x06
	.byte 0x63, 0x01, 0x01, 0x00, 0x64, 0x01, 0x01, 0x09, 0x64, 0x01, 0x01, 0x00, 0x65, 0x01, 0x01, 0x05
	.byte 0x65, 0x01, 0x01, 0x00, 0x5E, 0x02, 0x01, 0x00, 0x5F, 0x01, 0x01, 0x08, 0x5F, 0x02, 0x01, 0x00
	.byte 0x5F, 0x01, 0x01, 0x80, 0x04, 0x00, 0x00, 0x00
_08005FF8:
	.byte 0x66, 0x02, 0x00, 0x00, 0x67, 0x06, 0x00, 0x00
	.byte 0x66, 0x02, 0x00, 0x00, 0x6C, 0x02, 0x00, 0x00, 0x6D, 0x02, 0x00, 0x00, 0x5F, 0x01, 0x00, 0x21
	.byte 0x5F, 0x01, 0x00, 0x08, 0x60, 0x01, 0x00, 0x04, 0x60, 0x01, 0x00, 0x00, 0x61, 0x01, 0x00, 0x0A
	.byte 0x61, 0x01, 0x00, 0x00, 0x62, 0x01, 0x00, 0x07, 0x62, 0x01, 0x00, 0x00, 0x63, 0x01, 0x00, 0x03
	.byte 0x63, 0x01, 0x00, 0x00, 0x64, 0x01, 0x00, 0x06, 0x64, 0x01, 0x00, 0x00, 0x65, 0x01, 0x00, 0x09
	.byte 0x65, 0x01, 0x00, 0x00, 0x5E, 0x01, 0x00, 0x05, 0x5E, 0x01, 0x00, 0x80, 0x40, 0x00, 0x00, 0x00
_08006050:
	.byte 0x72, 0x02, 0x00, 0x00, 0x73, 0x06, 0x00, 0x00, 0x72, 0x02, 0x00, 0x00, 0x74, 0x02, 0x00, 0x00
	.byte 0x75, 0x02, 0x00, 0x00, 0x64, 0x01, 0x00, 0x26, 0x64, 0x01, 0x00, 0x08, 0x65, 0x01, 0x00, 0x09
	.byte 0x65, 0x01, 0x00, 0x00, 0x5E, 0x01, 0x00, 0x05, 0x5E, 0x01, 0x00, 0x00, 0x5F, 0x01, 0x00, 0x01
	.byte 0x5F, 0x01, 0x00, 0x00, 0x60, 0x01, 0x00, 0x04, 0x60, 0x01, 0x00, 0x00, 0x61, 0x01, 0x00, 0x0A
	.byte 0x61, 0x01, 0x00, 0x00, 0x62, 0x01, 0x00, 0x07, 0x62, 0x01, 0x00, 0x00, 0x63, 0x01, 0x00, 0x03
	.byte 0x63, 0x01, 0x00, 0x80, 0x40, 0x00, 0x00, 0x00
_080060A8:
	.byte 0x68, 0x02, 0x00, 0x00, 0x69, 0x06, 0x00, 0x00
	.byte 0x68, 0x02, 0x00, 0x00, 0x70, 0x02, 0x00, 0x00, 0x71, 0x02, 0x00, 0x00, 0x63, 0x01, 0x00, 0x23
	.byte 0x63, 0x01, 0x00, 0x08, 0x64, 0x01, 0x00, 0x06, 0x64, 0x01, 0x00, 0x00, 0x65, 0x01, 0x00, 0x09
	.byte 0x65, 0x01, 0x00, 0x00, 0x5E, 0x01, 0x00, 0x05, 0x5E, 0x01, 0x00, 0x00, 0x5F, 0x01, 0x00, 0x01
	.byte 0x5F, 0x01, 0x00, 0x00, 0x60, 0x01, 0x00, 0x04, 0x60, 0x01, 0x00, 0x00, 0x61, 0x01, 0x00, 0x0A
	.byte 0x61, 0x01, 0x00, 0x00, 0x62, 0x01, 0x00, 0x07, 0x62, 0x01, 0x00, 0x80, 0x40, 0x00, 0x00, 0x00
_08006100:
	.byte 0x6A, 0x02, 0x01, 0x00, 0x6B, 0x06, 0x01, 0x00, 0x6A, 0x02, 0x01, 0x00, 0x6E, 0x02, 0x01, 0x00
	.byte 0x6F, 0x02, 0x01, 0x00, 0x61, 0x01, 0x01, 0x2A, 0x61, 0x01, 0x01, 0x08, 0x62, 0x01, 0x01, 0x07
	.byte 0x62, 0x01, 0x01, 0x00, 0x63, 0x01, 0x01, 0x03, 0x63, 0x01, 0x01, 0x00, 0x64, 0x01, 0x01, 0x06
	.byte 0x64, 0x01, 0x01, 0x00, 0x65, 0x01, 0x01, 0x09, 0x65, 0x01, 0x01, 0x00, 0x5E, 0x01, 0x01, 0x05
	.byte 0x5E, 0x01, 0x01, 0x00, 0x5F, 0x01, 0x01, 0x01, 0x5F, 0x01, 0x01, 0x00, 0x60, 0x01, 0x01, 0x04
	.byte 0x60, 0x01, 0x01, 0x80, 0x40, 0x00, 0x00, 0x00
_08006158:
	.byte 0x46, 0x02, 0x00, 0x10, 0x47, 0x02, 0x00, 0x10
	.byte 0x48, 0x02, 0x00, 0x10, 0x49, 0x02, 0x00, 0x10, 0x4A, 0x02, 0x00, 0x90, 0x14, 0x00, 0x00, 0x00
_08006170:
	.byte 0x4B, 0x02, 0x01, 0x10, 0x4C, 0x02, 0x01, 0x10, 0x4D, 0x02, 0x01, 0x10, 0x4E, 0x02, 0x01, 0x10
	.byte 0x4F, 0x02, 0x01, 0x90, 0x14, 0x00, 0x00, 0x00
_08006188:
	.byte 0x50, 0x02, 0x00, 0x10, 0x51, 0x02, 0x00, 0x10
	.byte 0x52, 0x02, 0x00, 0x10, 0x53, 0x02, 0x00, 0x10, 0x54, 0x02, 0x00, 0x90, 0x14, 0x00, 0x00, 0x00
_080061A0:
	.byte 0x55, 0x05, 0x00, 0x10, 0x56, 0x05, 0x00, 0x10, 0x57, 0x01, 0x00, 0x10, 0x57, 0x01, 0x00, 0x91
	.byte 0x10, 0x00, 0x00, 0x00
_080061B4:
	.byte 0x58, 0x05, 0x01, 0x10, 0x59, 0x05, 0x01, 0x10, 0x5A, 0x01, 0x01, 0x10
	.byte 0x5A, 0x01, 0x01, 0x92, 0x10, 0x00, 0x00, 0x00
_080061C8:
	.byte 0x5B, 0x05, 0x00, 0x10, 0x5C, 0x05, 0x00, 0x10
	.byte 0x5D, 0x01, 0x00, 0x10, 0x5D, 0x01, 0x00, 0x93, 0x10, 0x00, 0x00, 0x00
_080061DC:
	.byte 0x79, 0x04, 0x00, 0x00
	.byte 0x78, 0x04, 0x00, 0x00, 0x77, 0x04, 0x00, 0x00, 0x76, 0x01, 0x00, 0x20, 0x76, 0x09, 0x00, 0x00
	.byte 0x77, 0x04, 0x00, 0x00, 0x78, 0x04, 0x00, 0x00, 0x79, 0x04, 0x00, 0x00, 0x7A, 0x01, 0x00, 0x01
	.byte 0x7B, 0x04, 0x00, 0x08, 0x7C, 0x04, 0x00, 0x00, 0x7D, 0x04, 0x00, 0x00, 0x7D, 0xFF, 0x00, 0x80
_08006210:
	.byte 0x81, 0x04, 0x01, 0x00, 0x80, 0x04, 0x01, 0x00, 0x7F, 0x04, 0x01, 0x00, 0x7E, 0x01, 0x01, 0x20
	.byte 0x7E, 0x09, 0x01, 0x00, 0x7F, 0x04, 0x01, 0x00, 0x80, 0x04, 0x01, 0x00, 0x81, 0x04, 0x01, 0x00
	.byte 0x82, 0x01, 0x01, 0x01, 0x83, 0x04, 0x01, 0x08, 0x84, 0x04, 0x01, 0x00, 0x85, 0x04, 0x01, 0x00
	.byte 0x85, 0xFF, 0x01, 0x80
_08006244:
	.byte 0x89, 0x04, 0x00, 0x00, 0x88, 0x04, 0x00, 0x00, 0x87, 0x04, 0x00, 0x00
	.byte 0x86, 0x01, 0x00, 0x20, 0x86, 0x09, 0x00, 0x00, 0x87, 0x04, 0x00, 0x00, 0x88, 0x04, 0x00, 0x00
	.byte 0x89, 0x04, 0x00, 0x00, 0x8A, 0x01, 0x00, 0x01, 0x8B, 0x04, 0x00, 0x08, 0x8C, 0x04, 0x00, 0x00
	.byte 0x8D, 0x04, 0x00, 0x00, 0x8D, 0xFF, 0x00, 0x80
_08006278:
	.byte 0xD0, 0x05, 0x00, 0x00, 0xD1, 0x03, 0x00, 0x00
	.byte 0xD2, 0x03, 0x00, 0x00, 0xD3, 0x03, 0x00, 0x00, 0xD4, 0x03, 0x00, 0x00, 0xD5, 0x03, 0x00, 0x00
	.byte 0xD6, 0x03, 0x00, 0x00, 0xD7, 0xFF, 0x00, 0x00
_08006298:
	.byte 0xD8, 0x06, 0x00, 0x00, 0xD8, 0xFF, 0x00, 0x80
	.byte 0x04, 0x00, 0x00, 0x00
_080062A4:
	.byte 0xD9, 0x05, 0x01, 0x00, 0xDA, 0x03, 0x01, 0x00, 0xDB, 0x03, 0x01, 0x00
	.byte 0xDC, 0x03, 0x01, 0x00, 0xDD, 0x03, 0x01, 0x00, 0xDE, 0x03, 0x01, 0x00, 0xDF, 0x03, 0x01, 0x00
	.byte 0xE0, 0xFF, 0x01, 0x00
_080062C4:
	.byte 0xE1, 0x06, 0x01, 0x00, 0xE1, 0xFF, 0x01, 0x80, 0x04, 0x00, 0x00, 0x00
_080062D0:
	.byte 0xE2, 0x05, 0x00, 0x00, 0xE3, 0x03, 0x00, 0x00, 0xE4, 0x03, 0x00, 0x00, 0xE5, 0x03, 0x00, 0x00
	.byte 0xE6, 0x03, 0x00, 0x00, 0xE7, 0x03, 0x00, 0x00, 0xE8, 0x03, 0x00, 0x00, 0xE9, 0xFF, 0x00, 0x00
_080062F0:
	.byte 0xEA, 0x06, 0x00, 0x00, 0xEA, 0xFF, 0x00, 0x80, 0x04, 0x00, 0x00, 0x00
_080062FC:
	.byte 0xD8, 0x05, 0x00, 0x01
	.byte 0xD1, 0x03, 0x00, 0x00, 0xD2, 0x03, 0x00, 0x00, 0xD3, 0x03, 0x00, 0x00, 0xD4, 0x03, 0x00, 0x00
	.byte 0xD5, 0x03, 0x00, 0x00, 0xD6, 0x03, 0x00, 0x80, 0x18, 0x00, 0x00, 0x00
_0800631C:
	.byte 0xE1, 0x05, 0x01, 0x01
	.byte 0xDA, 0x03, 0x01, 0x00, 0xDB, 0x03, 0x01, 0x00, 0xDC, 0x03, 0x01, 0x00, 0xDD, 0x03, 0x01, 0x00
	.byte 0xDE, 0x03, 0x01, 0x00, 0xDF, 0x03, 0x01, 0x80, 0x18, 0x00, 0x00, 0x00
_0800633C:
	.byte 0xEA, 0x05, 0x00, 0x01
	.byte 0xE3, 0x03, 0x00, 0x00, 0xE4, 0x03, 0x00, 0x00, 0xE5, 0x03, 0x00, 0x00, 0xE6, 0x03, 0x00, 0x00
	.byte 0xE7, 0x03, 0x00, 0x00, 0xE8, 0x03, 0x00, 0x80, 0x18, 0x00, 0x00, 0x00
_0800635C:
	.byte 0x5E, 0x04, 0x00, 0x00
	.byte 0x5F, 0x04, 0x00, 0x00, 0x60, 0x04, 0x00, 0x00, 0x61, 0x04, 0x00, 0x00, 0x62, 0x04, 0x00, 0x00
	.byte 0x63, 0x04, 0x00, 0x00, 0x64, 0x04, 0x00, 0x00, 0x65, 0x04, 0x00, 0x00, 0x65, 0x01, 0x00, 0x80
	.byte 0x24, 0x00, 0x00, 0x00
_08006384:
	.byte 0x62, 0x08, 0x00, 0x00, 0x63, 0x08, 0x00, 0x00, 0x64, 0x08, 0x00, 0x00
	.byte 0x65, 0x08, 0x00, 0x00, 0x66, 0xFF, 0x00, 0x80, 0x04, 0x00, 0x00, 0x00
_0800639C:
	.byte 0x54, 0x0A, 0x00, 0x00
	.byte 0x55, 0x0A, 0x00, 0x00, 0x56, 0x0A, 0x00, 0x80, 0x0C, 0x00, 0x00, 0x00
_080063AC:
	.byte 0x57, 0x0A, 0x01, 0x00
	.byte 0x58, 0x0A, 0x01, 0x00, 0x59, 0x0A, 0x01, 0x80, 0x0C, 0x00, 0x00, 0x00
_080063BC:
	.byte 0x5A, 0x0A, 0x01, 0x00
	.byte 0x5B, 0x0A, 0x01, 0x00, 0x5C, 0x0A, 0x00, 0x80, 0x0C, 0x00, 0x00, 0x00
_080063CC:
	.byte 0x33, 0x06, 0x00, 0x0A
	.byte 0x34, 0x06, 0x00, 0x0A, 0x35, 0x06, 0x00, 0x00, 0x36, 0x06, 0x00, 0x04
_080063DC:
	.byte 0x37, 0xFF, 0x00, 0x8C
	.byte 0x04, 0x00, 0x00, 0x00
_080063E4:
	.byte 0x3C, 0x06, 0x01, 0x06, 0x3D, 0x06, 0x01, 0x06, 0x3E, 0x06, 0x01, 0x08
	.byte 0x3F, 0x06, 0x01, 0x04
_080063F4:
	.byte 0x40, 0xFF, 0x01, 0x8C, 0x04, 0x00, 0x00, 0x00
_080063FC:
	.byte 0x45, 0x06, 0x00, 0x00
	.byte 0x46, 0x06, 0x00, 0x00, 0x47, 0x06, 0x00, 0x02, 0x48, 0x06, 0x00, 0x04
_0800640C:
	.byte 0x49, 0xFF, 0x00, 0x8C
	.byte 0x04, 0x00, 0x00, 0x00
_08006414:
	.byte 0x38, 0x03, 0x00, 0x04, 0x39, 0x01, 0x00, 0x03, 0x39, 0x03, 0x00, 0x00
	.byte 0x3A, 0x03, 0x00, 0x00, 0x3B, 0x03, 0x00, 0x00, 0x3B, 0x03, 0x00, 0x80, 0x04, 0x00, 0x00, 0x00
_08006430:
	.byte 0x41, 0x03, 0x01, 0x0C, 0x42, 0x01, 0x01, 0x0F, 0x42, 0x03, 0x01, 0x00, 0x43, 0x03, 0x01, 0x00
	.byte 0x44, 0x03, 0x01, 0x00, 0x44, 0x03, 0x01, 0x80, 0x04, 0x00, 0x00, 0x00
_0800644C:
	.byte 0x4A, 0x03, 0x00, 0x02
	.byte 0x4B, 0x01, 0x00, 0x0F, 0x4B, 0x03, 0x00, 0x00, 0x4C, 0x03, 0x00, 0x00, 0x4D, 0x03, 0x00, 0x00
	.byte 0x4D, 0x03, 0x00, 0x80, 0x04, 0x00, 0x00, 0x00
_08006468:
	.byte 0x4E, 0x03, 0x00, 0x04, 0x4F, 0x03, 0x00, 0x04
	.byte 0x50, 0x03, 0x00, 0x0E, 0x51, 0x03, 0x00, 0x0E, 0x52, 0x03, 0x00, 0x0C, 0x53, 0x03, 0x00, 0x04
	.byte 0x54, 0x03, 0x00, 0x04, 0x55, 0x03, 0x00, 0x0E, 0x56, 0x03, 0x00, 0x0E, 0x57, 0x03, 0x00, 0x8C
	.byte 0x28, 0x00, 0x00, 0x00
_08006494:
	.byte 0x58, 0x03, 0x01, 0x04, 0x59, 0x03, 0x01, 0x04, 0x5A, 0x03, 0x01, 0x0E
	.byte 0x5B, 0x03, 0x01, 0x0E, 0x5C, 0x03, 0x01, 0x0C, 0x5D, 0x03, 0x01, 0x04, 0x5E, 0x03, 0x01, 0x04
	.byte 0x5F, 0x03, 0x01, 0x0E, 0x60, 0x03, 0x01, 0x0E, 0x61, 0x03, 0x01, 0x8C, 0x28, 0x00, 0x00, 0x00
_080064C0:
	.byte 0x62, 0x03, 0x00, 0x04, 0x63, 0x03, 0x00, 0x04, 0x64, 0x03, 0x00, 0x0E, 0x65, 0x03, 0x00, 0x0E
	.byte 0x66, 0x03, 0x00, 0x0C, 0x67, 0x03, 0x00, 0x04, 0x68, 0x03, 0x00, 0x04, 0x69, 0x03, 0x00, 0x0E
	.byte 0x67, 0x03, 0x00, 0x0E, 0x68, 0x03, 0x00, 0x8C, 0x28, 0x00, 0x00, 0x00
_080064EC:
	.byte 0x03, 0x08, 0x00, 0x00
	.byte 0x04, 0x08, 0x00, 0x01, 0x05, 0x10, 0x00, 0x01, 0x06, 0x08, 0x00, 0x01, 0x07, 0x08, 0x00, 0x01
	.byte 0x08, 0x10, 0x00, 0x01, 0x03, 0x08, 0x00, 0x01, 0x04, 0x08, 0x00, 0x01, 0x05, 0x10, 0x00, 0x01
	.byte 0x06, 0x08, 0x00, 0x01, 0x07, 0x08, 0x00, 0x01, 0x08, 0x10, 0x00, 0x01, 0x03, 0x08, 0x00, 0x01
	.byte 0x04, 0x08, 0x00, 0x01, 0x05, 0x10, 0x00, 0x01, 0x06, 0x08, 0x00, 0x01, 0x07, 0x08, 0x00, 0x01
	.byte 0x08, 0x10, 0x00, 0x01, 0xD5, 0x08, 0x00, 0x01, 0xD6, 0x08, 0x00, 0x01, 0xD7, 0x10, 0x00, 0x01
	.byte 0xD8, 0x08, 0x00, 0x01, 0xD9, 0x08, 0x00, 0x01, 0xDA, 0x10, 0x00, 0x81, 0x18, 0x00, 0x00, 0x00
_08006550:
	.byte 0x14, 0x08, 0x01, 0x00, 0x15, 0x08, 0x01, 0x01, 0x16, 0x10, 0x01, 0x01, 0x17, 0x08, 0x01, 0x01
	.byte 0x18, 0x08, 0x01, 0x01, 0x19, 0x10, 0x01, 0x01, 0x14, 0x08, 0x01, 0x01, 0x15, 0x08, 0x01, 0x01
	.byte 0x16, 0x10, 0x01, 0x01, 0x17, 0x08, 0x01, 0x01, 0x18, 0x08, 0x01, 0x01, 0x19, 0x10, 0x01, 0x01
	.byte 0x14, 0x08, 0x01, 0x01, 0x15, 0x08, 0x01, 0x01, 0x16, 0x10, 0x01, 0x01, 0x17, 0x08, 0x01, 0x01
	.byte 0x18, 0x08, 0x01, 0x01, 0x19, 0x10, 0x01, 0x01, 0xE1, 0x08, 0x01, 0x01, 0xE2, 0x08, 0x01, 0x01
	.byte 0xE3, 0x10, 0x01, 0x01, 0xE4, 0x08, 0x01, 0x01, 0xE5, 0x08, 0x01, 0x01, 0xE6, 0x10, 0x01, 0x81
	.byte 0x18, 0x00, 0x00, 0x00
_080065B4:
	.byte 0x25, 0x08, 0x00, 0x00, 0x26, 0x08, 0x00, 0x01, 0x27, 0x10, 0x00, 0x01
	.byte 0x28, 0x08, 0x00, 0x01, 0x29, 0x08, 0x00, 0x01, 0x2A, 0x10, 0x00, 0x01, 0x25, 0x08, 0x00, 0x01
	.byte 0x26, 0x08, 0x00, 0x01, 0x27, 0x10, 0x00, 0x01, 0x28, 0x08, 0x00, 0x01, 0x29, 0x08, 0x00, 0x01
	.byte 0x2A, 0x10, 0x00, 0x01, 0x25, 0x08, 0x00, 0x01, 0x26, 0x08, 0x00, 0x01, 0x27, 0x10, 0x00, 0x01
	.byte 0x28, 0x08, 0x00, 0x01, 0x29, 0x08, 0x00, 0x01, 0x2A, 0x10, 0x00, 0x01, 0xED, 0x08, 0x00, 0x01
	.byte 0xEE, 0x08, 0x00, 0x01, 0xEF, 0x10, 0x00, 0x01, 0xF0, 0x08, 0x00, 0x01, 0xF1, 0x08, 0x00, 0x01
	.byte 0xF2, 0x10, 0x00, 0x81, 0x18, 0x00, 0x00, 0x00
_08006618:
	.byte 0x36, 0x08, 0x00, 0x00, 0x37, 0x08, 0x00, 0x00
	.byte 0x38, 0x10, 0x00, 0x00, 0x39, 0x08, 0x00, 0x00, 0x3A, 0x08, 0x00, 0x00, 0x3B, 0x10, 0x00, 0x80
	.byte 0x18, 0x00, 0x00, 0x00
_08006634:
	.byte 0x3C, 0x08, 0x01, 0x00, 0x3D, 0x08, 0x01, 0x00, 0x3E, 0x10, 0x01, 0x00
	.byte 0x3F, 0x08, 0x01, 0x00, 0x40, 0x08, 0x01, 0x00, 0x41, 0x10, 0x01, 0x80, 0x18, 0x00, 0x00, 0x00
_08006650:
	.byte 0x42, 0x08, 0x00, 0x00, 0x43, 0x08, 0x00, 0x00, 0x44, 0x10, 0x00, 0x00, 0x45, 0x08, 0x00, 0x00
	.byte 0x46, 0x08, 0x00, 0x00, 0x47, 0x10, 0x00, 0x80, 0x18, 0x00, 0x00, 0x00
_0800666C:
	.byte 0x00, 0x04, 0x00, 0x00
	.byte 0x01, 0x04, 0x00, 0x00, 0x02, 0xFF, 0x00, 0x80, 0x04, 0x00, 0x00, 0x00
_0800667C:
	.byte 0x02, 0x04, 0x00, 0x00
	.byte 0x09, 0x04, 0x00, 0x00, 0x0A, 0x04, 0x00, 0x01, 0x09, 0x04, 0x00, 0x00
_0800668C:
	.byte 0x0B, 0x10, 0x00, 0x01
	.byte 0x0C, 0x08, 0x00, 0x01, 0x0D, 0x08, 0x00, 0x01, 0x0E, 0x10, 0x00, 0x01, 0x0F, 0x08, 0x00, 0x01
	.byte 0x10, 0x08, 0x00, 0x01, 0x0B, 0x10, 0x00, 0x01, 0x0C, 0x08, 0x00, 0x01, 0x0D, 0x08, 0x00, 0x01
	.byte 0x0E, 0x10, 0x00, 0x01, 0x0F, 0x08, 0x00, 0x01, 0x10, 0x08, 0x00, 0x01, 0x0B, 0x10, 0x00, 0x01
	.byte 0x0C, 0x08, 0x00, 0x01, 0x0D, 0x08, 0x00, 0x01, 0x0E, 0x10, 0x00, 0x01, 0x0F, 0x08, 0x00, 0x01
	.byte 0x10, 0x08, 0x00, 0x01, 0xDB, 0x10, 0x00, 0x01, 0xDC, 0x08, 0x00, 0x01, 0xDD, 0x08, 0x00, 0x01
	.byte 0xDE, 0x10, 0x00, 0x01, 0xDF, 0x08, 0x00, 0x01, 0xE0, 0x08, 0x00, 0x81, 0x18, 0x00, 0x00, 0x00
_080066F0:
	.byte 0x11, 0x04, 0x01, 0x00, 0x12, 0x04, 0x01, 0x00, 0x13, 0xFF, 0x01, 0x80, 0x04, 0x00, 0x00, 0x00
_08006700:
	.byte 0x13, 0x04, 0x01, 0x00, 0x1A, 0x04, 0x01, 0x00, 0x1B, 0x04, 0x01, 0x01, 0x1A, 0x04, 0x01, 0x00
_08006710:
	.byte 0x1C, 0x10, 0x01, 0x01, 0x1D, 0x08, 0x01, 0x01, 0x1E, 0x08, 0x01, 0x01, 0x1F, 0x10, 0x01, 0x01
	.byte 0x20, 0x08, 0x01, 0x01, 0x21, 0x08, 0x01, 0x01, 0x1C, 0x10, 0x01, 0x01, 0x1D, 0x08, 0x01, 0x01
	.byte 0x1E, 0x08, 0x01, 0x01, 0x1F, 0x10, 0x01, 0x01, 0x20, 0x08, 0x01, 0x01, 0x21, 0x08, 0x01, 0x01
	.byte 0x1C, 0x10, 0x01, 0x01, 0x1D, 0x08, 0x01, 0x01, 0x1E, 0x08, 0x01, 0x01, 0x1F, 0x10, 0x01, 0x01
	.byte 0x20, 0x08, 0x01, 0x01, 0x21, 0x08, 0x01, 0x01, 0xE7, 0x10, 0x01, 0x01, 0xE8, 0x08, 0x01, 0x01
	.byte 0xE9, 0x08, 0x01, 0x01, 0xEA, 0x10, 0x01, 0x01, 0xEB, 0x08, 0x01, 0x01, 0xEC, 0x08, 0x01, 0x81
	.byte 0x18, 0x00, 0x00, 0x00
_08006774:
	.byte 0x22, 0x04, 0x00, 0x00, 0x23, 0x04, 0x00, 0x00, 0x24, 0xFF, 0x00, 0x80
	.byte 0x04, 0x00, 0x00, 0x00
_08006784:
	.byte 0x24, 0x04, 0x00, 0x00, 0x2B, 0x04, 0x00, 0x00, 0x2C, 0x04, 0x00, 0x01
	.byte 0x2B, 0x04, 0x00, 0x00
_08006794:
	.byte 0x2D, 0x10, 0x00, 0x01, 0x2E, 0x08, 0x00, 0x01, 0x2F, 0x08, 0x00, 0x01
	.byte 0x30, 0x10, 0x00, 0x01, 0x31, 0x08, 0x00, 0x01, 0x32, 0x08, 0x00, 0x01, 0x2D, 0x10, 0x00, 0x01
	.byte 0x2E, 0x08, 0x00, 0x01, 0x2F, 0x08, 0x00, 0x01, 0x30, 0x10, 0x00, 0x01, 0x31, 0x08, 0x00, 0x01
	.byte 0x32, 0x08, 0x00, 0x01, 0x2D, 0x10, 0x00, 0x01, 0x2E, 0x08, 0x00, 0x01, 0x2F, 0x08, 0x00, 0x01
	.byte 0x30, 0x10, 0x00, 0x01, 0x31, 0x08, 0x00, 0x01, 0x32, 0x08, 0x00, 0x01, 0xF3, 0x10, 0x00, 0x01
	.byte 0xF4, 0x08, 0x00, 0x01, 0xF5, 0x08, 0x00, 0x01, 0xF6, 0x10, 0x00, 0x01, 0xF7, 0x08, 0x00, 0x01
	.byte 0xF8, 0x08, 0x00, 0x81, 0x18, 0x00, 0x00, 0x00
_080067F8:
	.byte 0x6E, 0x04, 0x00, 0x00, 0x6D, 0x04, 0x00, 0x00
	.byte 0x6C, 0x04, 0x00, 0x00, 0x6D, 0x02, 0x00, 0x00, 0x6E, 0x04, 0x00, 0x00, 0x6F, 0x04, 0x00, 0x00
	.byte 0x70, 0x04, 0x00, 0x00, 0x6F, 0x04, 0x00, 0x80, 0x20, 0x00, 0x00, 0x00
_0800681C:
	.byte 0x73, 0x04, 0x01, 0x00
	.byte 0x72, 0x04, 0x01, 0x00, 0x71, 0x04, 0x01, 0x00, 0x72, 0x02, 0x01, 0x00, 0x73, 0x04, 0x01, 0x00
	.byte 0x74, 0x04, 0x01, 0x00, 0x75, 0x04, 0x01, 0x00, 0x74, 0x04, 0x01, 0x80, 0x20, 0x00, 0x00, 0x00
_08006840:
	.byte 0x78, 0x04, 0x00, 0x00, 0x77, 0x04, 0x00, 0x00, 0x76, 0x04, 0x00, 0x00, 0x77, 0x02, 0x00, 0x00
	.byte 0x78, 0x04, 0x00, 0x00, 0x79, 0x04, 0x00, 0x00, 0x7A, 0x04, 0x00, 0x00, 0x79, 0x04, 0x00, 0x80
	.byte 0x20, 0x00, 0x00, 0x00
_08006864:
	.byte 0x7B, 0x04, 0x00, 0x00, 0x7C, 0x04, 0x00, 0x00
_0800686C:
	.byte 0x7D, 0x04, 0x00, 0x00
	.byte 0x7E, 0x04, 0x00, 0x01, 0x7F, 0x04, 0x00, 0x81, 0x0C, 0x00, 0x00, 0x00
_0800687C:
	.byte 0x81, 0x04, 0x01, 0x00
	.byte 0x82, 0x04, 0x01, 0x00
_08006884:
	.byte 0x83, 0x04, 0x01, 0x00, 0x84, 0x04, 0x01, 0x01, 0x85, 0x04, 0x01, 0x81
	.byte 0x0C, 0x00, 0x00, 0x00
_08006894:
	.byte 0x87, 0x04, 0x00, 0x00, 0x88, 0x04, 0x00, 0x00
_0800689C:
	.byte 0x89, 0x04, 0x00, 0x00
	.byte 0x8A, 0x04, 0x00, 0x01, 0x8B, 0x04, 0x00, 0x81, 0x0C, 0x00
_080068AA:
	.byte 0x8D, 0x04, 0x00, 0x00, 0x8E, 0x04
	.byte 0x00, 0x00, 0x8F, 0x04, 0x00, 0x00, 0x90, 0x04, 0x00, 0x00, 0x91, 0x04, 0x00, 0x00, 0x92, 0x04
	.byte 0x00, 0x00, 0x93, 0x04, 0x00, 0x00, 0x94, 0x04, 0x00, 0x00, 0x95, 0x04, 0x00, 0x00, 0x96, 0x04
	.byte 0x00, 0x00, 0x97, 0x04, 0x00, 0x00, 0x98, 0x04, 0x00, 0x00, 0x99, 0x04, 0x00, 0x00, 0x9A, 0x04
	.byte 0x00, 0x00, 0x9B, 0x04, 0x00, 0x00, 0x9C, 0x04, 0x00, 0x00, 0x9D, 0x04, 0x00, 0x00, 0x9E, 0x04
	.byte 0x00, 0x00, 0x9F, 0x04, 0x00, 0x00, 0xA0, 0x04, 0x00, 0x00, 0xA1, 0x04, 0x00, 0x00, 0xA2, 0x04
	.byte 0x00, 0x00, 0xA3, 0x04, 0x00, 0x00, 0xA4, 0x04, 0x00, 0x80, 0x60, 0x00
_0800690C:
	.byte 0xA5, 0x04, 0x01, 0x00
	.byte 0xA6, 0x04, 0x01, 0x00, 0xA7, 0x04, 0x01, 0x00, 0xA8, 0x04, 0x01, 0x00, 0xA9, 0x04, 0x01, 0x00
	.byte 0xAA, 0x04, 0x01, 0x00, 0xAB, 0x04, 0x01, 0x00, 0xAC, 0x04, 0x01, 0x00, 0xAD, 0x04, 0x01, 0x00
	.byte 0xAE, 0x04, 0x01, 0x00, 0xAF, 0x04, 0x01, 0x00, 0xB0, 0x04, 0x01, 0x00, 0xB1, 0x04, 0x01, 0x00
	.byte 0xB2, 0x04, 0x01, 0x00, 0xB3, 0x04, 0x01, 0x00, 0xB4, 0x04, 0x01, 0x00, 0xB5, 0x04, 0x01, 0x00
	.byte 0xB6, 0x04, 0x01, 0x00, 0xB7, 0x04, 0x01, 0x00, 0xB8, 0x04, 0x01, 0x00, 0xB9, 0x04, 0x01, 0x00
	.byte 0xBA, 0x04, 0x01, 0x00, 0xBB, 0x04, 0x01, 0x00, 0xBC, 0x04, 0x01, 0x80, 0x60, 0x00
_0800696E:
	.byte 0xBD, 0x04
	.byte 0x00, 0x00, 0xBE, 0x04, 0x00, 0x00, 0xBF, 0x04, 0x00, 0x00, 0xC0, 0x04, 0x00, 0x00, 0xC1, 0x04
	.byte 0x00, 0x00, 0xC2, 0x04, 0x00, 0x00, 0xC3, 0x04, 0x00, 0x00, 0xC4, 0x04, 0x00, 0x00, 0xC5, 0x04
	.byte 0x00, 0x00, 0xC6, 0x04, 0x00, 0x00, 0xC7, 0x04, 0x00, 0x00, 0xC8, 0x04, 0x00, 0x00, 0xC9, 0x04
	.byte 0x00, 0x00, 0xCA, 0x04, 0x00, 0x00, 0xCB, 0x04, 0x00, 0x00, 0xCC, 0x04, 0x00, 0x00, 0xCD, 0x04
	.byte 0x00, 0x00, 0xCE, 0x04, 0x00, 0x00, 0xCF, 0x04, 0x00, 0x00, 0xD0, 0x04, 0x00, 0x00, 0xD1, 0x04
	.byte 0x00, 0x00, 0xD2, 0x04, 0x00, 0x00, 0xD3, 0x04, 0x00, 0x00, 0xD4, 0x04, 0x00, 0x80, 0x60, 0x00
_080069D0:
	.byte 0x8E, 0x03, 0x00, 0x00, 0x8F, 0x03, 0x00, 0x00, 0x90, 0x03, 0x00, 0x80, 0x0C, 0x00, 0x00, 0x00
_080069E0:
	.byte 0x91, 0x03, 0x01, 0x00, 0x92, 0x03, 0x01, 0x00, 0x93, 0x03, 0x01, 0x80, 0x0C, 0x00, 0x00, 0x00
_080069F0:
	.byte 0x94, 0x03, 0x00, 0x00, 0x95, 0x03, 0x00, 0x00, 0x96, 0x03, 0x00, 0x80, 0x0C, 0x00, 0x00, 0x00
_08006A00:
	.byte 0xEB, 0x08, 0x00, 0x00, 0xEC, 0x08, 0x00, 0x00, 0xED, 0x08, 0x00, 0x00, 0xEE, 0x08, 0x00, 0x00
_08006A10:
	.byte 0xEF, 0x08, 0x00, 0x01, 0xF0, 0x08, 0x00, 0x01, 0xF0, 0xFF, 0x00, 0x81, 0x04, 0x00, 0x00, 0x00
_08006A20:
	.byte 0x97, 0x03, 0x00, 0x38, 0x98, 0x02, 0x00, 0x3A, 0x99, 0x02, 0x00, 0x01, 0x9A, 0x03, 0x00, 0x00
	.byte 0x9B, 0x04, 0x00, 0x00, 0x9C, 0x03, 0x00, 0x00, 0x9C, 0x03, 0x00, 0x80
_08006A3C:
	.byte 0x9D, 0x03, 0x01, 0x3C
	.byte 0x9E, 0x02, 0x01, 0x3E, 0x9F, 0x02, 0x01, 0x01, 0xA0, 0x03, 0x01, 0x00, 0xA1, 0x04, 0x01, 0x00
	.byte 0xA2, 0x03, 0x01, 0x00, 0xA2, 0x03, 0x01, 0x80
_08006A58:
	.byte 0xA3, 0x03, 0x00, 0x40, 0xA4, 0x02, 0x00, 0x42
	.byte 0xA5, 0x02, 0x00, 0x01, 0xA6, 0x03, 0x00, 0x00, 0xA7, 0x04, 0x00, 0x00, 0xA8, 0x03, 0x00, 0x00
	.byte 0xA8, 0x03, 0x00, 0x80
_08006A74:
	.byte 0x00, 0x05, 0x00, 0x00, 0x01, 0x05, 0x00, 0x00
_08006A7C:
	.byte 0x02, 0xFF, 0x00, 0x80
	.byte 0x04, 0x00, 0x00, 0x00
_08006A84:
	.byte 0x03, 0x01, 0x00, 0x01, 0x03, 0x05, 0x00, 0x00, 0x04, 0x06, 0x00, 0x00
	.byte 0x05, 0x09, 0x00, 0x00, 0x05, 0xFF, 0x00, 0x80
_08006A98:
	.byte 0x06, 0x05, 0x01, 0x00, 0x07, 0x05, 0x01, 0x00
_08006AA0:
	.byte 0x08, 0xFF, 0x01, 0x80, 0x04, 0x00, 0x00, 0x00
_08006AA8:
	.byte 0x09, 0x01, 0x01, 0x01, 0x09, 0x05, 0x01, 0x00
	.byte 0x0A, 0x06, 0x01, 0x00, 0x0B, 0x09, 0x01, 0x00, 0x0B, 0xFF, 0x01, 0x80
_08006ABC:
	.byte 0x0C, 0x05, 0x00, 0x00
	.byte 0x0D, 0x05, 0x00, 0x00
_08006AC4:
	.byte 0x0E, 0xFF, 0x00, 0x80, 0x04, 0x00, 0x00, 0x00
_08006ACC:
	.byte 0x0F, 0x01, 0x00, 0x01
	.byte 0x0F, 0x05, 0x00, 0x00, 0x10, 0x06, 0x00, 0x00, 0x11, 0x09, 0x00, 0x00, 0x11, 0xFF, 0x00, 0x80
_08006AE0:
	.byte 0x12, 0x08, 0x00, 0x00, 0x13, 0x08, 0x00, 0x00, 0x14, 0x08, 0x00, 0x00, 0x15, 0x08, 0x00, 0x00
	.byte 0x16, 0x08, 0x00, 0x00, 0x17, 0x08, 0x00, 0x00, 0x18, 0x08, 0x00, 0x00, 0x19, 0x08, 0x00, 0x80
	.byte 0x20, 0x00, 0x00, 0x00
_08006B04:
	.byte 0x1A, 0x08, 0x01, 0x00, 0x1B, 0x08, 0x01, 0x00, 0x1C, 0x08, 0x01, 0x00
	.byte 0x1D, 0x08, 0x01, 0x00, 0x1E, 0x08, 0x01, 0x00, 0x1F, 0x08, 0x01, 0x00, 0x20, 0x08, 0x01, 0x00
	.byte 0x21, 0x08, 0x01, 0x80, 0x20, 0x00, 0x00, 0x00
_08006B28:
	.byte 0x22, 0x08, 0x00, 0x00, 0x23, 0x08, 0x00, 0x00
	.byte 0x24, 0x08, 0x00, 0x00, 0x25, 0x08, 0x00, 0x00, 0x26, 0x08, 0x00, 0x00, 0x27, 0x08, 0x00, 0x00
	.byte 0x28, 0x08, 0x00, 0x00, 0x29, 0x08, 0x00, 0x80, 0x20, 0x00, 0x00, 0x00
_08006B4C:
	.byte 0xA9, 0x02, 0x00, 0x00
	.byte 0xAB, 0x02, 0x00, 0x00, 0xAD, 0x02, 0x00, 0x00
_08006B58:
	.byte 0xAC, 0xFF, 0x00, 0x80, 0x04, 0x00, 0x00, 0x00
_08006B60:
	.byte 0xAE, 0x02, 0x01, 0x00, 0xB0, 0x02, 0x01, 0x00, 0xB2, 0x02, 0x01, 0x00
_08006B6C:
	.byte 0xB1, 0xFF, 0x01, 0x80
	.byte 0x04, 0x00, 0x00, 0x00
_08006B74:
	.byte 0xB3, 0x02, 0x00, 0x00, 0xB5, 0x02, 0x00, 0x00, 0xB7, 0x02, 0x00, 0x00
_08006B80:
	.byte 0xB6, 0xFF, 0x00, 0x80, 0x04, 0x00, 0x00, 0x00
_08006B88:
	.byte 0xB8, 0x06, 0x00, 0x00, 0xB9, 0x06, 0x00, 0x00
	.byte 0xBA, 0x06, 0x00, 0x00, 0xBB, 0x06, 0x00, 0x00, 0xBC, 0x06, 0x00, 0x00, 0xBD, 0x06, 0x00, 0x00
	.byte 0xBE, 0x06, 0x00, 0x00, 0xBF, 0x06, 0x00, 0x80, 0x20, 0x00, 0x00, 0x00
_08006BAC:
	.byte 0xC0, 0x06, 0x01, 0x00
	.byte 0xC1, 0x06, 0x01, 0x00, 0xC2, 0x06, 0x01, 0x00, 0xC3, 0x06, 0x01, 0x00, 0xC4, 0x06, 0x01, 0x00
	.byte 0xC5, 0x06, 0x01, 0x00, 0xC6, 0x06, 0x01, 0x00, 0xC7, 0x06, 0x01, 0x80, 0x20, 0x00
_08006BCE:
	.byte 0xC8, 0x06
	.byte 0x00, 0x00, 0xC9, 0x06, 0x00, 0x00, 0xCA, 0x06, 0x00, 0x00, 0xCB, 0x06, 0x00, 0x00, 0xCC, 0x06
	.byte 0x00, 0x00, 0xCD, 0x06, 0x00, 0x00, 0xCE, 0x06, 0x00, 0x00, 0xCF, 0x06, 0x00, 0x80, 0x20, 0x00
_08006BF0:
	.byte 0x2A, 0x04, 0x00, 0x00, 0x2B, 0x04, 0x00, 0x00, 0x2C, 0x05, 0x00, 0x00, 0x2D, 0x05, 0x00, 0x00
	.byte 0x2E, 0x05, 0x00, 0x00, 0x2D, 0x05, 0x00, 0x80, 0x10, 0x00, 0x00, 0x00
_08006C0C:
	.byte 0x2F, 0x04, 0x01, 0x00
	.byte 0x30, 0x04, 0x01, 0x00, 0x31, 0x05, 0x01, 0x00, 0x32, 0x05, 0x01, 0x00, 0x33, 0x05, 0x01, 0x00
	.byte 0x32, 0x05, 0x01, 0x80, 0x10, 0x00, 0x00, 0x00
_08006C28:
	.byte 0x34, 0x04, 0x00, 0x00, 0x35, 0x04, 0x00, 0x00
	.byte 0x36, 0x05, 0x00, 0x00, 0x37, 0x05, 0x00, 0x00, 0x38, 0x05, 0x00, 0x00, 0x37, 0x05, 0x00, 0x80
	.byte 0x10, 0x00, 0x00, 0x00
_08006C44:
	.byte 0x39, 0x08, 0x00, 0x00, 0x3A, 0x08, 0x00, 0x00, 0x3B, 0x08, 0x00, 0x00
	.byte 0x3C, 0x08, 0x00, 0x80, 0x10, 0x00, 0x00, 0x00
_08006C58:
	.byte 0x41, 0x08, 0x01, 0x00, 0x42, 0x08, 0x01, 0x00
	.byte 0x43, 0x08, 0x01, 0x00, 0x44, 0x08, 0x01, 0x80, 0x10, 0x00, 0x00, 0x00
_08006C6C:
	.byte 0x49, 0x08, 0x00, 0x00
	.byte 0x4A, 0x08, 0x00, 0x00, 0x4B, 0x08, 0x00, 0x00, 0x4C, 0x08, 0x00, 0x80, 0x10, 0x00, 0x00, 0x00
_08006C80:
	.byte 0x3D, 0x08, 0x00, 0x00, 0x3E, 0x08, 0x00, 0x00, 0x3F, 0x08, 0x00, 0x00, 0x40, 0x08, 0x00, 0x80
	.byte 0x10, 0x00, 0x00, 0x00
_08006C94:
	.byte 0x45, 0x08, 0x01, 0x00, 0x46, 0x08, 0x01, 0x00, 0x47, 0x08, 0x01, 0x00
	.byte 0x48, 0x08, 0x01, 0x80, 0x10, 0x00, 0x00, 0x00
_08006CA8:
	.byte 0x4D, 0x08, 0x00, 0x00, 0x4E, 0x08, 0x00, 0x00
	.byte 0x4F, 0x08, 0x00, 0x00, 0x50, 0x08, 0x00, 0x80, 0x10, 0x00
_08006CBA:
	.byte 0xA8, 0x04, 0x00, 0x00, 0xA9, 0x04
	.byte 0x00, 0x80, 0x08, 0x00
_08006CC4:
	.byte 0xAA, 0x04, 0x01, 0x00, 0xAB, 0x04, 0x01, 0x80, 0x08, 0x00
_08006CCE:
	.byte 0xAC, 0x04
	.byte 0x00, 0x00, 0xAD, 0x04, 0x00, 0x80, 0x08, 0x00
_08006CD8:
	.byte 0xF1, 0x0F, 0x00, 0x00, 0xF1, 0x35, 0x00, 0x00
	.byte 0xF1, 0x01, 0x00, 0x01
_08006CE4:
	.byte 0xF2, 0x01, 0x00, 0x00, 0xF3, 0xFF, 0x00, 0x80
_08006CEC:
	.byte 0x5E, 0xFF, 0x00, 0x80
	.byte 0x04, 0x00, 0x00, 0x00
_08006CF4:
	.byte 0x5D, 0xFF, 0x00, 0x00
_08006CF8:
	.byte 0x51, 0x04, 0x00, 0x00, 0x52, 0x04, 0x00, 0x00
	.byte 0x53, 0x04, 0x00, 0x80, 0x0C, 0x00, 0x00, 0x00
_08006D08:
	.byte 0xAE, 0x04, 0x00, 0x00, 0xAF, 0x04, 0x00, 0x00
	.byte 0xB0, 0x04, 0x00, 0x80, 0x0C, 0x00, 0x00, 0x00
_08006D18:
	.byte 0x5F, 0xFF, 0x00, 0x80, 0x04, 0x00, 0x00, 0x00
_08006D20:
	.byte 0x60, 0xFF, 0x01, 0x80, 0x04, 0x00, 0x00, 0x00
_08006D28:
	.byte 0x61, 0xFF, 0x00, 0x80, 0x04, 0x00, 0x00, 0x00
_08006D30:
	.byte 0x67, 0x05, 0x00, 0x00, 0x68, 0x05, 0x00, 0x00, 0x69, 0x06, 0x00, 0x00, 0x6A, 0x02, 0x00, 0x00
	.byte 0x6B, 0x02, 0x00, 0x00, 0x6C, 0x02, 0x00, 0x00, 0x6D, 0x04, 0x00, 0x00, 0x6E, 0x04, 0x00, 0x00
	.byte 0x6F, 0x04, 0x00, 0x00, 0x70, 0xFF, 0x00, 0x80
_08006D58:
	.byte 0x71, 0x02, 0x00, 0x00, 0x72, 0x02, 0x00, 0x00
	.byte 0x73, 0x02, 0x00, 0x00, 0x74, 0x02, 0x00, 0x00, 0x75, 0x02, 0x00, 0x00, 0x76, 0x02, 0x00, 0x00
	.byte 0x77, 0x02, 0x00, 0x00, 0x78, 0x02, 0x00, 0x00, 0x79, 0x02, 0x00, 0x00, 0x7A, 0x02, 0x00, 0x80
	.byte 0x28, 0x00, 0x00, 0x00
_08006D84:
	.byte 0x7B, 0x02, 0x01, 0x00, 0x7C, 0x02, 0x01, 0x00, 0x7D, 0x02, 0x01, 0x00
	.byte 0x7E, 0x02, 0x01, 0x00, 0x7F, 0x02, 0x01, 0x00, 0x80, 0x02, 0x01, 0x00, 0x81, 0x02, 0x01, 0x00
	.byte 0x82, 0x02, 0x01, 0x00, 0x83, 0x02, 0x01, 0x00, 0x84, 0x02, 0x01, 0x80, 0x28, 0x00, 0x00, 0x00
_08006DB0:
	.byte 0x85, 0x02, 0x00, 0x00, 0x86, 0x02, 0x00, 0x00, 0x87, 0x02, 0x00, 0x00, 0x88, 0x02, 0x00, 0x00
	.byte 0x89, 0x02, 0x00, 0x00, 0x8A, 0x02, 0x00, 0x00, 0x8B, 0x02, 0x00, 0x00, 0x8C, 0x02, 0x00, 0x00
	.byte 0x8D, 0x02, 0x00, 0x00, 0x8E, 0x02, 0x00, 0x80, 0x28, 0x00
_08006DDA:
	.byte 0x8F, 0xFF, 0x00, 0x80, 0x04, 0x00
_08006DE0:
	.byte 0x90, 0x04, 0x00, 0x00, 0x91, 0xFF, 0x00, 0x80, 0x04, 0x00
_08006DEA:
	.byte 0x92, 0x04, 0x00, 0x00, 0x93, 0xFF
	.byte 0x00, 0x80, 0x04, 0x00
_08006DF4:
	.byte 0x94, 0xFF, 0x01, 0x80, 0x04, 0x00
_08006DFA:
	.byte 0x95, 0x04, 0x01, 0x00, 0x96, 0xFF
	.byte 0x01, 0x80, 0x04, 0x00
_08006E04:
	.byte 0x97, 0x04, 0x01, 0x00, 0x98, 0xFF, 0x01, 0x80, 0x04, 0x00
_08006E0E:
	.byte 0x99, 0xFF
	.byte 0x01, 0x80, 0x04, 0x00
_08006E14:
	.byte 0x9A, 0x04, 0x01, 0x00, 0x9B, 0xFF, 0x01, 0x80, 0x04, 0x00
_08006E1E:
	.byte 0x9C, 0x04
	.byte 0x01, 0x00, 0x9D, 0xFF, 0x01, 0x80, 0x04, 0x00
_08006E28:
	.byte 0x9E, 0xFF, 0x00, 0x80, 0x04, 0x00
_08006E2E:
	.byte 0x9F, 0x04
	.byte 0x00, 0x00, 0xA0, 0xFF, 0x00, 0x80, 0x04, 0x00
_08006E38:
	.byte 0xA1, 0x04, 0x00, 0x00, 0xA2, 0xFF, 0x00, 0x80
	.byte 0x04, 0x00
_08006E42:
	.byte 0xA3, 0xFF, 0x00, 0x80, 0x04, 0x00
_08006E48:
	.byte 0xA4, 0x04, 0x00, 0x00, 0xA5, 0xFF, 0x00, 0x80
	.byte 0x04, 0x00
_08006E52:
	.byte 0xA6, 0x04, 0x00, 0x00, 0xA7, 0xFF, 0x00, 0x80, 0x04, 0x00
_08006E5C:
	.byte 0x6D, 0x04, 0x00, 0x00
	.byte 0xFA, 0x04, 0x01, 0x00, 0x72, 0x04, 0x01, 0x00, 0xF9, 0x04, 0x01, 0x00, 0x77, 0x04, 0x00, 0x00
	.byte 0xF9, 0x04, 0x00, 0x00, 0x72, 0x04, 0x00, 0x00, 0xFA, 0x04, 0x00, 0x80, 0x20, 0x00
_08006E7E:
	.byte 0xF4, 0x04
	.byte 0x00, 0x00, 0xF5, 0x03, 0x00, 0x00, 0xF6, 0x02, 0x00, 0x00, 0xF7, 0x02, 0x00, 0x00, 0xF8, 0x02
	.byte 0x00, 0x00, 0xF9, 0x02, 0x00, 0x00, 0xFA, 0x03, 0x00, 0x00, 0xFB, 0x03, 0x00, 0x00, 0xFC, 0x03
	.byte 0x00, 0x00, 0xFD, 0xFF, 0x00, 0x80, 0x04, 0x00
_08006EA8: .4byte _08005CFC
_08006EAC: .4byte _08005D04
_08006EB0: .4byte _08005D30
_08006EB4: .4byte _08005D04
_08006EB8: .4byte _08005DB4
_08006EBC: .4byte _08005D88
_08006EC0: .4byte _08005D5C
_08006EC4: .4byte _08005D88
_08006EC8: .4byte _08005E50
_08006ECC: .4byte _08005E18
_08006ED0: .4byte _08005DE0
_08006ED4: .4byte _08005E18
_08006ED8: .4byte _080062D0
_08006EDC: .4byte _080062A4
_08006EE0: .4byte _08006278
_08006EE4: .4byte _080062A4
_08006EE8: .4byte _0800633C
_08006EEC: .4byte _0800631C
_08006EF0: .4byte _080062FC
_08006EF4: .4byte _0800631C
_08006EF8: .4byte _080069F0
_08006EFC: .4byte _080069E0
_08006F00: .4byte _080069D0
_08006F04: .4byte _080069E0
_08006F08: .4byte _08006A58
_08006F0C: .4byte _08006A3C
_08006F10: .4byte _08006A20
_08006F14: .4byte _08006A3C
_08006F18: .4byte _08006ABC
_08006F1C: .4byte _08006A98
_08006F20: .4byte _08006A74
_08006F24: .4byte _08006A98
_08006F28: .4byte _080062F0
_08006F2C: .4byte _080062C4
_08006F30: .4byte _08006298
_08006F34: .4byte _080062C4
_08006F38: .4byte _08005F40
_08006F3C: .4byte _08005EE4
_08006F40: .4byte _08005E88
_08006F44: .4byte _08005F9C
_08006F48: .4byte _080060A8
_08006F4C: .4byte _08006050
_08006F50: .4byte _08005FF8
_08006F54: .4byte _08006100
_08006F58: .4byte _080063FC
_08006F5C: .4byte _080063E4
_08006F60: .4byte _080063CC
_08006F64: .4byte _080063E4
_08006F68: .4byte _080065B4
_08006F6C: .4byte _08006550
_08006F70: .4byte _080064EC
_08006F74: .4byte _08006550
_08006F78: .4byte _08006784
_08006F7C: .4byte _08006700
_08006F80: .4byte _0800667C
_08006F84: .4byte _08006700
_08006F88: .4byte _0800644C
_08006F8C: .4byte _08006430
_08006F90: .4byte _08006414
_08006F94: .4byte _08006430
_08006F98: .4byte _080064C0
_08006F9C: .4byte _08006494
_08006FA0: .4byte _08006468
_08006FA4: .4byte _08006494
_08006FA8: .4byte _08006650
_08006FAC: .4byte _08006634
_08006FB0: .4byte _08006618
_08006FB4: .4byte _08006634
_08006FB8: .4byte _08006794
_08006FBC: .4byte _08006710
_08006FC0: .4byte _0800668C
_08006FC4: .4byte _08006710
_08006FC8: .4byte _08006894
_08006FCC: .4byte _0800687C
_08006FD0: .4byte _08006864
_08006FD4: .4byte _0800687C
_08006FD8: .4byte _0800640C
_08006FDC: .4byte _080063F4
_08006FE0: .4byte _080063DC
_08006FE4: .4byte _080063F4
_08006FE8: .4byte _08006840
_08006FEC: .4byte _0800681C
_08006FF0: .4byte _080067F8
_08006FF4: .4byte _0800681C
_08006FF8: .4byte _08006B74
_08006FFC: .4byte _08006B60
_08007000: .4byte _08006B4C
_08007004: .4byte _08006B60
_08007008: .4byte _0800696E
_0800700C: .4byte _0800690C
_08007010: .4byte _080068AA
_08007014: .4byte _0800690C
_08007018: .4byte _080063BC
_0800701C: .4byte _080063AC
_08007020: .4byte _0800639C
_08007024: .4byte _080063AC
_08007028: .4byte _08006BCE
_0800702C: .4byte _08006BAC
_08007030: .4byte _08006B88
_08007034: .4byte _08006BAC
_08007038: .4byte _08006B80
_0800703C: .4byte _08006B6C
_08007040: .4byte _08006B58
_08007044: .4byte _08006B6C
_08007048: .4byte _08005E7C
_0800704C: .4byte _08005E44
_08007050: .4byte _08005E0C
_08007054: .4byte _08005E44
_08007058: .4byte _08006188
_0800705C: .4byte _08006170
_08007060: .4byte _08006158
_08007064: .4byte _08006170
_08007068: .4byte _080061C8
_0800706C: .4byte _080061B4
_08007070: .4byte _080061A0
_08007074: .4byte _080061B4
_08007078: .4byte _08006244
_0800707C: .4byte _08006210
_08007080: .4byte _080061DC
_08007084: .4byte _08006210
_08007088: .4byte _08006774
_0800708C: .4byte _080066F0
_08007090: .4byte _0800666C
_08007094: .4byte _080066F0
_08007098: .4byte _0800689C
_0800709C: .4byte _08006884
_080070A0: .4byte _0800686C
_080070A4: .4byte _08006884
_080070A8: .4byte _08006ACC
_080070AC: .4byte _08006AA8
_080070B0: .4byte _08006A84
_080070B4: .4byte _08006AA8
_080070B8: .4byte _08006AC4
_080070BC: .4byte _08006AA0
_080070C0: .4byte _08006A7C
_080070C4: .4byte _08006AA0
_080070C8: .4byte _08006B28
_080070CC: .4byte _08006B04
_080070D0: .4byte _08006AE0
_080070D4: .4byte _08006B04
_080070D8: .4byte _08006C28
_080070DC: .4byte _08006C0C
_080070E0: .4byte _08006BF0
_080070E4: .4byte _08006C0C
_080070E8: .4byte _08006C6C
_080070EC: .4byte _08006C58
_080070F0: .4byte _08006C44
_080070F4: .4byte _08006C58
_080070F8: .4byte _08006CA8
_080070FC: .4byte _08006C94
_08007100: .4byte _08006C80
_08007104: .4byte _08006C94
_08007108: .4byte _08006D28
_0800710C: .4byte _08006D20
_08007110: .4byte _08006D18
_08007114: .4byte _08006D20
_08007118: .4byte _08006DB0
_0800711C: .4byte _08006D84
_08007120: .4byte _08006D58
_08007124: .4byte _08006D84
_08007128: .4byte _08006CCE
_0800712C: .4byte _08006CC4
_08007130: .4byte _08006CBA
_08007134: .4byte _08006CC4
_08007138: .4byte _08006A00
_0800713C: .4byte _08006CD8
_08007140: .4byte _08006CEC
_08007144: .4byte _08006A10
_08007148: .4byte _08006CF4
_0800714C: .4byte _08006CE4
_08007150: .4byte _0800635C
_08007154: .4byte _08006384
_08007158: .4byte _08006CF8
_0800715C: .4byte _08006D30
_08007160: .4byte _08006E52
_08007164: .4byte _08006E42
_08007168: .4byte _08006E48
_0800716C: .4byte _08006E38
_08007170: .4byte _08006E28
_08007174: .4byte _08006E2E
_08007178: .4byte _08006E1E
_0800717C: .4byte _08006E0E
_08007180: .4byte _08006E14
_08007184: .4byte _08006E04
_08007188: .4byte _08006DF4
_0800718C: .4byte _08006DFA
_08007190: .4byte _08006DEA
_08007194: .4byte _08006DDA
_08007198: .4byte _08006DE0
_0800719C: .4byte _08006E5C
_080071A0: .4byte _08006D08
_080071A4: .4byte _08006E7E
_080071A8: .4byte 0x03000040
_080071AC: .4byte 0x030000B0
_080071B0: .4byte gUnk_03000120
_080071B4: .4byte gUnk_03000190

	thumb_func_start sub_080071B8
sub_080071B8: @ 0x080071B8
	movs r4, #0xf
	ands r4, r2
	cmp r4, #1
	beq _080071C8
	mov r1, sl
	ldrb r1, [r1, #0x1e]
	orrs r1, r1
	bne sub_080072B4
_080071C8:
	lsls r4, r4, #2
	ldr r1, _08007418 @ =_080071D0
	ldr r1, [r1, r4]
	bx r1
	.align 2, 0
_080071D0: .4byte sub_080072B4
_080071D4: .4byte sub_08007230
_080071D8: .4byte sub_08007204
_080071DC: .4byte sub_08007254
_080071E0: .4byte sub_080071E8
_080071E4: .4byte sub_0800729C

	thumb_func_start sub_080071E8
sub_080071E8: @ 0x080071E8
	movs r1, #3
	mov sb, r1
	mov r1, sl
	ldrb r4, [r1, #5]
	orrs r4, r4
	bne sub_080072B4
	ldr r1, [r1, #0x28]
	ldrb r4, [r1, #0xa]
	ldr r1, _0800741C @ =_080071A8
	lsls r4, r4, #2
	ldr r1, [r1, r4]
	ldrb r4, [r1, #9]
	orrs r4, r4
	bne _080072B6

	thumb_func_start sub_08007204
sub_08007204: @ 0x08007204
	movs r1, #2
	mov sb, r1
	mov r1, sl
	ldrb r4, [r1, #5]
	orrs r4, r4
	bne sub_080072B4
	ldr r1, [r1, #0x28]
	ldrb r4, [r1, #0xa]
	ldr r1, _08007420 @ =_080071A8
	lsls r4, r4, #2
	ldr r1, [r1, r4]
	adds r1, #0x1c
	ldrb r4, [r1, #1]
	cmp r0, r4
	beq sub_080072B4
	movs r4, #1
	mov sb, r4
	adds r1, #0x1c
	ldrb r4, [r1, #1]
	cmp r0, r4
	beq sub_080072B4
	movs r0, r0

	thumb_func_start sub_08007230
sub_08007230: @ 0x08007230
	movs r4, #2
	mov sb, r4
	mov r1, sl
	ldr r1, [r1, #0x28]
	ldrb r4, [r1, #0xa]
	ldr r1, _08007424 @ =_080071A8
	lsls r4, r4, #2
	ldr r1, [r1, r4]
	adds r1, #0x1c
	ldrb r4, [r1, #9]
	orrs r4, r4
	beq _080072B6
	movs r4, #1
	mov sb, r4
	adds r1, #0x1c
	ldrb r4, [r1, #9]
	orrs r4, r4
	b _080072B6

	thumb_func_start sub_08007254
sub_08007254: @ 0x08007254
	mov r1, sl
	ldrb r4, [r1, #5]
	orrs r4, r4
	bne sub_080072B4
	ldrh r4, [r1, #0x36]
	movs r5, #0x80
	ands r4, r5
	bne sub_080072B4
	ldrb r4, [r1, #2]
	movs r5, #0x20
	ands r4, r5
	bne sub_080072B4
	movs r4, #0xf0
	ands r2, r4
	adds r2, #1
	movs r4, #3
	mov sb, r4
	ldr r1, [r1, #0x28]
	ldrb r4, [r1, #0xa]
	ldr r1, _08007428 @ =_080071A8
	lsls r4, r4, #2
	ldr r1, [r1, r4]
	ldrb r4, [r1, #9]
	cmp r2, r4
	blo sub_080072B4
	push {lr}
	push {r0, r2, r3}
	adds r0, r1, #0
	bl sub_0800750C
	adds r1, r0, #0
	eors r4, r4
	mov r0, sl
	strb r4, [r1, #0x1b]
	pop {r0, r2, r3}
	pop {pc}

	thumb_func_start sub_0800729C
sub_0800729C: @ 0x0800729C
	movs r4, #0
	mov sb, r4
	mov r1, sl
	ldr r1, [r1, #0x28]
	ldrb r4, [r1, #0xa]
	ldr r1, _0800742C @ =_080071A8
	lsls r4, r4, #2
	ldr r1, [r1, r4]
	adds r1, #0x54
	ldrb r4, [r1, #9]
	orrs r4, r4
	beq _080072B6

	thumb_func_start sub_080072B4
sub_080072B4: @ 0x080072B4
	orrs r1, r1
_080072B6:
	mov pc, lr

	thumb_func_start sub_080072B8
sub_080072B8: @ 0x080072B8
	push {r1, r2, r3}
	mov r2, sl
	ldr r2, [r2, #0x28]
	movs r3, #0x71
	ldrb r1, [r2, r3]
	orrs r1, r1
	beq _080072D4
	mov r2, sl
	ldrb r1, [r2, #5]
	orrs r1, r1
	bne _080072D4
	pop {r1, r2, r3}
	push {r4, lr}
	b _080072E0
_080072D4:
	pop {r1, r2, r3}
	movs r0, r0

	thumb_func_start sub_080072D8
sub_080072D8: @ 0x080072D8
	push {r4, lr}
	ldrh r1, [r1]
	ands r1, r3
	beq _080072F0
_080072E0:
	bl sub_080071B8
	bne _080072F0
	strb r2, [r1, #9]
	strb r0, [r1, #1]
	strb r3, [r1, #3]
	.hword 0x1C1B @ assembler mismatch -- adds r3, r3, #0
	pop {r4, pc}
_080072F0:
	eors r2, r2
	pop {r4, pc}

	thumb_func_start sub_080072F4
sub_080072F4: @ 0x080072F4
	push {lr}
	push {r0, r4}
	mov r1, sl
	ldrb r0, [r1, r2]
	orrs r0, r0
	bne _0800730E
	movs r2, #0x1c
	ldrb r2, [r1, r2]
	movs r0, #0x1d
	ldrb r0, [r1, r0]
	orrs r0, r2
	bne _08007334
	movs r0, #0x12
_0800730E:
	cmp r0, #0x20
	bhs _08007334
	adds r4, r0, #0
	ldr r1, _08007430 @ =_08007338
	lsls r4, r4, #1
	ldrb r2, [r1, r4]
	adds r4, #1
	ldrb r4, [r1, r4]
	ldr r1, _08007434 @ =_0800735C
	ldr r1, [r1, r4]
	ldrh r4, [r1]
	ands r4, r3
	beq _08007334
	bl sub_080071B8
	bne _08007334
	strb r2, [r1, #9]
	strb r0, [r1, #1]
	strb r3, [r1, #3]
_08007334:
	pop {r0, r4}
	pop {pc}
_08007338:
	.byte 0x02, 0x04, 0x53, 0x04, 0x62, 0x04, 0x22, 0x04
	.byte 0x24, 0x04, 0x13, 0x00, 0x01, 0x04, 0x43, 0x04, 0x01, 0x04, 0x03, 0x00, 0x01, 0x04, 0x01, 0x00
	.byte 0x01, 0x00, 0x01, 0x04, 0x01, 0x00, 0x01, 0x04, 0x02, 0x04, 0x00, 0x00
_0800735C: .4byte gUnk_03000510
_08007360: .4byte gUnk_03000BD0

	thumb_func_start sub_08007364
sub_08007364: @ 0x08007364
	push {lr}
	mov sl, r1
	eors r2, r2
	strb r2, [r1, #3]
	movs r2, #0xf
	ldrb r3, [r1, #4]
	ands r2, r3
	strb r2, [r1, #4]
	ldrb r3, [r1, #7]
	ldrb r2, [r1, #2]
	orrs r2, r3
	lsrs r2, r2, #7
	bhs _080073F0
	lsrs r2, r2, #1
	bhs _080073F0
	ldrh r2, [r1, #0x36]
	ldr r3, _08007438 @ =0x00004000
	tst r2, r3
	beq _0800739C
	ldr r2, _0800743C @ =gUnk_03000BD0
	ldrh r2, [r2]
	ldr r3, _08007440 @ =0x00000103
	tst r2, r3
	beq _080073F0
	movs r2, #0x40
	bl sub_080031AC
	b _080073F0
_0800739C:
	ldrb r3, [r1, #0x1a]
	movs r2, #0x72
	ldrh r2, [r0, r2]
	orrs r2, r3
	bne _080073F0
	movs r2, #0x3d
	ldrsb r3, [r0, r2]
	orrs r3, r3
	beq _080073B8
	bmi _080073B8
	movs r2, #0x42
	ldrb r3, [r0, r2]
	orrs r3, r3
	bne _080073F0
_080073B8:
	ldrh r2, [r1, #0x36]
	ldr r3, _08007444 @ =0x00000C04
	ands r2, r3
	bne _080073F0
	ldrb r2, [r1, #0x1e]
	movs r3, #0x26
	ldrb r3, [r1, r3]
	orrs r2, r3
	bne _080073F0
	push {r0, r1}
	movs r0, #5
	ldr r1, _08007448 @ =gUnk_03000510
	movs r2, #0x13
	ldr r3, _0800744C @ =0x00000100
	bl sub_080072B8
	bne _080073EE
	movs r2, #0x1c
	movs r3, #1
	bl sub_080072F4
	movs r0, #1
	ldr r1, _08007450 @ =gUnk_03000BD0
	movs r2, #0x63
	movs r3, #2
	bl sub_080072D8
_080073EE:
	pop {r0, r1}
_080073F0:
	push {r0, r1}
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	ldr r0, _08007454 @ =_080071A8
	ldr r0, [r0, r1]
	movs r1, #4
_080073FC:
	ldrb r2, [r0, #9]
	orrs r2, r2
	beq _0800740C
	push {r0, r1}
	subs r1, #1
	bl sub_08007F10
	pop {r0, r1}
_0800740C:
	adds r0, #0x1c
	subs r1, #1
	bne _080073FC
	pop {r0, r1}
	pop {pc}
	.align 2, 0
_08007418: .4byte _080071D0
_0800741C: .4byte _080071A8
_08007420: .4byte _080071A8
_08007424: .4byte _080071A8
_08007428: .4byte _080071A8
_0800742C: .4byte _080071A8
_08007430: .4byte _08007338
_08007434: .4byte _0800735C
_08007438: .4byte 0x00004000
_0800743C: .4byte gUnk_03000BD0
_08007440: .4byte 0x00000103
_08007444: .4byte 0x00000C04
_08007448: .4byte gUnk_03000510
_0800744C: .4byte 0x00000100
_08007450: .4byte gUnk_03000BD0
_08007454: .4byte _080071A8
_08007458:
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x86, 0x00
	.byte 0x18, 0x00, 0x83, 0x00, 0x1C, 0x01, 0x83, 0x00, 0x00, 0x00, 0x03, 0x00, 0x34, 0x02, 0x04, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x48, 0x02, 0x82, 0x00, 0x04, 0x00, 0x06, 0x00, 0x54, 0x00, 0x02, 0x00
	.byte 0xA6, 0x01, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
_0800749C:
	.byte 0x05, 0x0F, 0x0F, 0x05
	.byte 0x05, 0x0F, 0x0F, 0x05
_080074A4:
	.byte 0x08, 0x0F, 0x0F, 0x08, 0x08, 0x0F, 0x0F, 0x08
_080074AC:
	.byte 0x06, 0x00, 0xFB, 0x00
	.byte 0x00, 0x60, 0x00, 0x07, 0x60, 0x00, 0x08, 0x00, 0x00, 0x06, 0x00, 0xF9
_080074BC:
	.byte 0x01, 0x02, 0x04, 0x08

	thumb_func_start sub_080074C0
sub_080074C0: @ 0x080074C0
	push {lr}
	mov r2, sb
	mov r3, sl
	push {r2, r3}
	bl sub_080076C4
	pop {r2, r3}
	mov sb, r2
	mov sl, r3
	pop {pc}

	thumb_func_start sub_080074D4
sub_080074D4: @ 0x080074D4
	push {lr}
	mov r1, sb
	adds r1, #1
	movs r2, #4
	ands r1, r2
	bne _0800750A
	push {r0}
	ldrb r0, [r0, #1]
	movs r1, #2
	bl sub_080127A8
_080074EA:
	adds r2, r0, #0
	subs r0, #1
	pop {r0}
	bmi _0800750A
	mov r1, sl
	ldr r1, [r1, #0x28]
	ldrb r1, [r1, #0xa]
	ldrb r3, [r2, #0xa]
	cmp r1, r3
	beq _0800750A
	push {r0}
	adds r0, r2, #0
	movs r1, #2
	bl sub_080127D4
	b _080074EA
_0800750A:
	pop {pc}

	thumb_func_start sub_0800750C
sub_0800750C: @ 0x0800750C
	push {lr}
	movs r0, r0

	thumb_func_start sub_08007510
sub_08007510: @ 0x08007510
	mov r1, sl
	bl sub_080075AC
	bl sub_080075DC
	bl sub_08007608
	eors r2, r2
	adds r3, r0, #0
	movs r1, #0x1c
_08007524:
	strb r2, [r3]
	adds r3, #1
	subs r1, #1
	bne _08007524
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08007530
sub_08007530: @ 0x08007530
	push {r7, lr}
	push {r0}
	adds r7, r1, #0
	adds r0, r1, #0
	movs r1, #2
	bl sub_080127A8
_0800753E:
	adds r2, r0, #0
	orrs r0, r0
	pop {r0}
	beq _0800755A
	ldrb r1, [r0, #0xa]
	ldrb r3, [r2, #0xa]
	cmp r1, r3
	beq _0800758C
	push {r0}
	adds r0, r2, #0
	movs r1, #2
	bl sub_080127D4
	b _0800753E
_0800755A:
	push {r0}
	bl sub_080123E8
	adds r1, r0, #0
	pop {r0}
	beq _0800758C
	push {r0, r1}
	movs r0, #2
	bl sub_08012728
	pop {r0, r1}
	strb r7, [r1, #9]
	movs r3, #8
	strb r3, [r1, #8]
	movs r2, #0x80
	strb r2, [r1, #0x19]
	str r0, [r1, #0x54]
	ldrb r2, [r0, #0xa]
	strb r2, [r1, #0xa]
	push {r1}
	adds r0, r1, #0
	bl sub_08000620
	pop {r0}
	pop {r7, pc}
_0800758C:
	eors r0, r0
	pop {r7, pc}

	thumb_func_start nullsub_049
nullsub_049: @ 0x08007590
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08007594
sub_08007594: @ 0x08007594
	push {lr}
	bl sub_080077C8
	adds r3, r2, #0
	lsls r2, r2, #4
	orrs r2, r3
	mov r3, sl
	ldrb r3, [r3, #4]
	orrs r2, r3
	mov r3, sl
	strb r2, [r3, #4]
	pop {pc}

	thumb_func_start sub_080075AC
sub_080075AC: @ 0x080075AC
	push {lr}
	bl sub_080077C8
	adds r3, r2, #0
	lsls r2, r2, #4
	orrs r2, r3
	movs r3, #0xff
	eors r2, r3
	mov r3, sl
	ldrb r3, [r3, #4]
	ands r2, r3
	mov r3, sl
	strb r2, [r3, #4]
	pop {pc}

	thumb_func_start sub_080075C8
sub_080075C8: @ 0x080075C8
	push {lr}
	bl sub_080077C8
	mov r3, sl
	ldrb r3, [r3, #0xa]
	orrs r2, r3
	mov r3, sl
	strb r2, [r3, #0xa]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080075DC
sub_080075DC: @ 0x080075DC
	push {lr}
	bl sub_080077C8
	movs r3, #0xff
	eors r2, r3
	mov r3, sl
	ldrb r3, [r3, #0xa]
	ands r2, r3
	mov r3, sl
	strb r2, [r3, #0xa]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080075F4
sub_080075F4: @ 0x080075F4
	push {lr}
	bl sub_080077C8
	mov r3, sl
	ldrb r3, [r3, #0xb]
	orrs r2, r3
	mov r3, sl
	strb r2, [r3, #0xb]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08007608
sub_08007608: @ 0x08007608
	push {lr}
	bl sub_080077C8
	movs r3, #0xff
	eors r2, r3
	mov r3, sl
	ldrb r3, [r3, #0xb]
	ands r2, r3
	mov r3, sl
	strb r2, [r3, #0xb]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08007620
sub_08007620: @ 0x08007620
	push {lr}
	mov r1, sl
	ldr r1, [r1, #0x2c]
	orrs r1, r1
	beq _08007632
	ldrb r2, [r1, #9]
	cmp r2, #1
	bne _08007664
	pop {pc}
_08007632:
	b _08007688

	thumb_func_start sub_08007634
sub_08007634: @ 0x08007634
	push {lr}
	b _0800764C

	thumb_func_start sub_08007638
sub_08007638: @ 0x08007638
	push {lr}
	mov r1, sl
	ldr r1, [r1, #0x2c]
	orrs r1, r1
	bne _08007664
	pop {r2}

	thumb_func_start sub_08007644
sub_08007644: @ 0x08007644
	push {lr}
	bl sub_080074D4
	beq _08007686
_0800764C:
	push {r0}
	bl sub_080123E8
	eors r2, r2
	adds r1, r0, #0
	pop {r0}
	beq _08007686
	push {r0, r1}
	movs r0, #2
	bl sub_08012728
	pop {r0, r1}
_08007664:
	ldrb r2, [r0, #1]
	strb r2, [r1, #9]
	movs r2, #8
	strb r2, [r1, #8]
	movs r2, #0x80
	strb r2, [r1, #0x19]
	str r0, [r1, #0x54]
	mov r2, sl
	ldr r2, [r2, #0x28]
	ldrb r2, [r2, #0xa]
	strb r2, [r1, #0xa]
	push {r0, r1}
	adds r0, r1, #0
	bl sub_08000620
	pop {r0, r1}
	movs r2, #1
_08007686:
	pop {pc}
_08007688:
	push {r0}
	bl sub_08012440
	eors r2, r2
	adds r1, r0, #0
	pop {r0}
	beq _080076C2
	push {r0, r1}
	movs r0, #2
	bl sub_08012728
	pop {r0, r1}
	ldrb r2, [r0, #1]
	strb r2, [r1, #9]
	movs r2, #8
	strb r2, [r1, #8]
	movs r2, #0x80
	strb r2, [r1, #0x19]
	str r0, [r1, #0x54]
	mov r2, sl
	ldr r2, [r2, #0x28]
	ldrb r2, [r2, #0xa]
	strb r2, [r1, #0xa]
	push {r0, r1}
	adds r0, r1, #0
	bl sub_08000620
	pop {r0, r1}
	movs r2, #1
_080076C2:
	pop {pc}

	thumb_func_start sub_080076C4
sub_080076C4: @ 0x080076C4
	push {lr}
	mov r2, sb
	mov r3, sl
	push {r0, r1, r2, r3}
	ldr r1, _080079E8 @ =_08000FF4
	ldrb r2, [r0, #0xa]
	lsls r2, r2, #2
	ldr r1, [r1, r2]
	mov sl, r1
	ldr r1, _080079EC @ =_080071A8
	ldrb r2, [r0, #0xa]
	lsls r2, r2, #2
	ldr r0, [r1, r2]
	movs r1, #4
_080076E0:
	push {r1}
	subs r1, #1
	mov sb, r1
	bl sub_0800750C
	pop {r1}
	adds r0, #0x1c
	subs r1, #1
	bne _080076E0
	mov r1, sl
	ldrb r2, [r1, #0xf]
	movs r3, #2
	ands r2, r3
	strb r2, [r1, #0xf]
	eors r2, r2
	strb r2, [r1, #3]
	strb r2, [r1, #0x1b]
	strb r2, [r1, #0x1e]
	strb r2, [r1, #0xe]
	strb r2, [r1, #1]
	movs r3, #0x3d
	strb r2, [r1, r3]
	movs r3, #0x21
	strb r2, [r1, r3]
	strb r2, [r1, #5]
	strb r2, [r1, #0x1e]
	strb r2, [r1, #4]
	strb r2, [r1, #0xa]
	strb r2, [r1, #0xb]
	str r2, [r1, #0x2c]
	ldrh r2, [r1, #0x36]
	ldr r3, _080079F0 @ =0x0000FF7F
	ands r3, r2
	strh r3, [r1, #0x36]
	pop {r0, r1, r2, r3}
	mov sb, r2
	mov sl, r3
	pop {pc}

	thumb_func_start sub_0800772C
sub_0800772C: @ 0x0800772C
	push {lr}
	push {r0, r1}
	mov r1, sl
	ldr r0, [r1, #0x28]
	ldrb r1, [r0, #0x1b]
	bl sub_080037EC
	pop {r0, r1}
	b _08007764
	.align 2, 0

	thumb_func_start sub_08007740
sub_08007740: @ 0x08007740
	push {lr}
	strh r3, [r0, #0x10]
	movs r2, #0xa4
	cmp r3, r2
	bhs _08007750
	ldrb r2, [r0, #0xa]
	lsrs r2, r2, #1
	adds r3, r3, r2
_08007750:
	strb r3, [r0, #0xc]
	push {r0, r1}
	ldrb r1, [r0, #0xc]
	ldrb r2, [r0, #0x11]
	mov r3, sl
	ldr r0, [r3, #0x28]
	strb r2, [r0, #0x1b]
	bl sub_08003840
	pop {r0, r1}
_08007764:
	mov r3, sl
	ldr r2, [r3, #0x28]
	movs r4, #0x21
	ldrb r3, [r2, r4]
	strb r3, [r0, #0x12]
	movs r4, #0x28
	ldrb r3, [r2, r4]
	strb r3, [r0, #0xd]
	movs r4, #0x29
	ldrb r3, [r2, r4]
	strb r3, [r0, #0xe]
	pop {pc}

	thumb_func_start sub_0800777C
sub_0800777C: @ 0x0800777C
	mov r1, sl
	movs r0, r0

	thumb_func_start sub_08007780
sub_08007780: @ 0x08007780
	ldr r1, [r1, #0x28]
	movs r3, #0x2a
	ldrb r2, [r1, r3]
	lsrs r2, r2, #1
	lsls r2, r2, #2
	ldr r3, _080079F4 @ =_080074AC
	adds r2, r2, r3
	ldrh r3, [r2]
	ldrh r4, [r1, #0x2c]
	ands r4, r3
	cmp r3, r4
	bne _080077AE
	adds r2, #2
	eors r4, r4
	ldrsb r4, [r2, r4]
	ldrh r3, [r1, #0x36]
	adds r3, r3, r4
	movs r4, #1
	ldrsb r4, [r2, r4]
	ldrh r1, [r1, #0x32]
	adds r1, r1, r4
	adds r2, r3, #0
	eors r4, r4
_080077AE:
	mov pc, lr

	thumb_func_start sub_080077B0
sub_080077B0: @ 0x080077B0
	ldrb r2, [r0, #3]
	ldr r3, _080079F8 @ =gUnk_03000BD0
	ldrb r3, [r3]
	ands r3, r2
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_080077BC
sub_080077BC: @ 0x080077BC
	ldrb r2, [r0, #3]
	movs r0, r0

	thumb_func_start sub_080077C0
sub_080077C0: @ 0x080077C0
	ldr r3, _080079FC @ =gUnk_03000510
	ldrb r3, [r3]
	ands r3, r2
	mov pc, lr

	thumb_func_start sub_080077C8
sub_080077C8: @ 0x080077C8
	ldr r2, _08007A00 @ =_080074BC
	mov r3, sb
	ldrb r2, [r2, r3]
	mov pc, lr

	thumb_func_start sub_080077D0
sub_080077D0: @ 0x080077D0
	ldr r1, _08007A04 @ =gUnk_03000838
	ldrb r3, [r1]
	movs r2, #0x80
	cmp r3, r2
	bhs _080077E6
	adds r2, r3, #1
	strb r2, [r1]
	lsls r3, r3, #2
	ldr r2, _08007A08 @ =gUnk_03006830
	adds r3, r3, r2
	str r0, [r3]
_080077E6:
	mov pc, lr

	thumb_func_start sub_080077E8
sub_080077E8: @ 0x080077E8
	push {r0, r1, r2, r4, lr}
	adds r0, r1, #0
	adds r1, r2, #0
	movs r4, #0x2a
	ldrb r4, [r0, r4]
	lsrs r4, r4, #1
	lsls r4, r4, #1
	ldr r3, _08007A0C @ =_0800749C
	ldrb r2, [r3, r4]
	adds r4, #1
	ldrb r3, [r3, r4]
	bl sub_080035B4
	pop {r0, r1, r2, r4, pc}

	thumb_func_start sub_08007804
sub_08007804: @ 0x08007804
	push {r0, r4, lr}
	adds r0, r1, #0
	ldr r1, _08007A10 @ =gUnk_03000838
	ldrb r3, [r1]
	ldr r2, _08007A14 @ =gUnk_03006830
_0800780E:
	orrs r3, r3
	beq _0800783E
	ldr r1, [r2]
	orrs r1, r1
	beq _08007832
	push {r0, r1, r2, r3}
	movs r4, #0x2a
	ldrb r4, [r0, r4]
	lsrs r4, r4, #1
	lsls r4, r4, #1
	ldr r3, _08007A18 @ =_0800749C
	ldrb r2, [r3, r4]
	adds r4, #1
	ldrb r3, [r3, r4]
	bl sub_080035B4
	pop {r0, r1, r2, r3}
	bne _08007838
_08007832:
	adds r2, #4
	subs r3, #1
	b _0800780E
_08007838:
	eors r3, r3
	ldr r3, [r2]
	movs r0, #1
_0800783E:
	pop {r0, r4, pc}

	thumb_func_start sub_08007840
sub_08007840: @ 0x08007840
	push {lr}
	push {r0}
	adds r0, r1, #0
	movs r4, #0x2a
	ldrb r4, [r1, r4]
	lsrs r4, r4, #1
	lsls r4, r4, #1
	ldr r3, _08007A1C @ =_0800749C
	ldrb r1, [r3, r4]
	adds r4, #1
	ldrb r2, [r3, r4]
	bl sub_080078EC
	pop {r0}
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08007860
sub_08007860: @ 0x08007860
	push {lr}
	push {r0}
	adds r0, r1, #0
	movs r4, #0x2a
	ldrb r4, [r1, r4]
	lsrs r4, r4, #1
	lsls r4, r4, #1
	ldr r3, _08007A20 @ =_080074A4
	ldrb r1, [r3, r4]
	adds r4, #1
	ldrb r2, [r3, r4]
	bl sub_080078EC
	pop {r0}
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08007880
sub_08007880: @ 0x08007880
	push {lr}
	ldr r3, [r1, #0x28]
	ldrb r4, [r3, #0x14]
	cmp r4, #1
	bne _08007892
	movs r4, #0x26
	ldrb r4, [r1, r4]
	orrs r4, r4
	beq _08007896
_08007892:
	eors r4, r4
	b _080078AC
_08007896:
	adds r1, r3, #0
	movs r4, #0x2a
	ldrb r4, [r0, r4]
	lsrs r4, r4, #1
	lsls r4, r4, #1
	ldr r3, _08007A24 @ =_080074A4
	ldrb r2, [r3, r4]
	adds r4, #1
	ldrb r3, [r3, r4]
	bl sub_08003634
_080078AC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080078B0
sub_080078B0: @ 0x080078B0
	push {lr}
	bl sub_080075C8
	bl sub_080075F4
	mov r1, sl
	ldr r2, [r1, #0x28]
	ldrh r3, [r2, #0x2a]
	strh r3, [r0, #0xa]
	movs r2, #1
	strb r2, [r0, #4]
	ldrb r2, [r0, #1]
	ldr r3, _08007A28 @ =_08007458
	lsls r2, r2, #2
	adds r2, r2, r3
	ldrh r3, [r2]
	push {r2}
	bl sub_08007740
	pop {r2}
	ldrb r1, [r2, #2]
	movs r3, #0xf
	ands r3, r1
	strb r3, [r0, #0xf]
	movs r3, #0x80
	ands r3, r1
	beq _080078EA
	bl sub_08007594
_080078EA:
	pop {pc}

	thumb_func_start sub_080078EC
sub_080078EC: @ 0x080078EC
	movs r3, #3
	movs r0, r0

	thumb_func_start sub_080078F0
sub_080078F0: @ 0x080078F0
	push {lr}
	push {r4, r5, r6}
	adds r4, r3, #0
	adds r3, r2, #0
	adds r2, r1, #0
_080078FA:
	push {r2}
	adds r2, r4, #0
	bl sub_08001D60
	pop {r2}
	ldrb r5, [r1, #2]
	ldrb r6, [r1, #5]
	orrs r5, r6
	ldrb r6, [r1, #7]
	orrs r5, r6
	bne _08007954
	movs r5, #0x27
	ldrb r5, [r1, r5]
	movs r6, #0x26
	ldrb r6, [r1, r6]
	orrs r5, r6
	bne _08007954
	ldrh r5, [r1, #0x36]
	ldr r6, _08007A2C @ =0x00001291
	ands r5, r6
	bne _08007954
	ldr r1, [r1, #0x28]
	orrs r1, r1
	beq _08007954
	cmp r0, r1
	beq _08007954
	ldrb r5, [r1, #0x14]
	cmp r5, #0xb
	beq _0800794E
	subs r5, #1
	bne _08007954
	movs r5, #0x3d
	ldrb r5, [r1, r5]
	orrs r5, r5
	bne _08007954
	movs r6, #0x50
	ldrh r5, [r0, r6]
	ldrh r6, [r1, r6]
	lsrs r5, r5, #0xe
	lsrs r6, r6, #0xe
	ands r5, r6
	beq _08007954
_0800794E:
	bl sub_08003634
	bne _0800795E
_08007954:
	subs r4, #1
	bpl _080078FA
	push {r4}
	eors r4, r4
	b _08007962
_0800795E:
	push {r4}
	movs r4, #1
_08007962:
	pop {r3}
	pop {r4, r5, r6}
	pop {pc}

	thumb_func_start sub_08007968
sub_08007968: @ 0x08007968
	push {r0, r4, lr}
	mov r1, sl
	ldr r1, [r1, #0x28]
	push {r1}
	movs r0, #4
	movs r1, #2
	bl sub_080127A8
_08007978:
	adds r1, r0, #0
	orrs r0, r0
	pop {r0}
	beq _080079B6
	ldrb r4, [r1, #0x14]
	subs r4, #1
	bne _080079AA
	movs r4, #0x64
	ldrh r4, [r1, r4]
	orrs r4, r4
	bne _080079AA
	ldrb r4, [r1, #0x1a]
	cmp r4, #6
	beq _080079AA
	movs r4, #0x2a
	ldrb r4, [r0, r4]
	lsrs r4, r4, #1
	lsls r4, r4, #1
	ldr r3, _08007A30 @ =_0800749C
	ldrb r2, [r3, r4]
	adds r4, #1
	ldrb r3, [r3, r4]
	bl sub_08003920
	bne _080079B6
_080079AA:
	push {r0}
	adds r0, r1, #0
	movs r1, #2
	bl sub_080127D4
	b _08007978
_080079B6:
	pop {r0, r4, pc}

	thumb_func_start sub_080079B8
sub_080079B8: @ 0x080079B8
	mov r1, sl
	ldrb r2, [r1, #2]
	orrs r2, r2
	bne _080079C6
	ldrh r2, [r1, #0x36]
	ldr r3, _08007A34 @ =0x00001201
	ands r2, r3
_080079C6:
	mov pc, lr

	thumb_func_start sub_080079C8
sub_080079C8: @ 0x080079C8
	push {lr}
	mov r1, sl
	ldrb r2, [r1, #0x1b]
	movs r3, #8
	tst r2, r3
	beq _080079E6
	movs r3, #0x70
	bl sub_08007740
	movs r2, #0x28
	strb r2, [r0, #7]
	movs r2, #7
	strb r2, [r0, #4]
	movs r2, #6
	strb r2, [r0, #0xf]
_080079E6:
	pop {pc}
	.align 2, 0
_080079E8: .4byte _08000FF4
_080079EC: .4byte _080071A8
_080079F0: .4byte 0x0000FF7F
_080079F4: .4byte _080074AC
_080079F8: .4byte gUnk_03000BD0
_080079FC: .4byte gUnk_03000510
_08007A00: .4byte _080074BC
_08007A04: .4byte gUnk_03000838
_08007A08: .4byte gUnk_03006830
_08007A0C: .4byte _0800749C
_08007A10: .4byte gUnk_03000838
_08007A14: .4byte gUnk_03006830
_08007A18: .4byte _0800749C
_08007A1C: .4byte _0800749C
_08007A20: .4byte _080074A4
_08007A24: .4byte _080074A4
_08007A28: .4byte _08007458
_08007A2C: .4byte 0x00001291
_08007A30: .4byte _0800749C
_08007A34: .4byte 0x00001201

	thumb_func_start sub_08007A38
sub_08007A38: @ 0x08007A38
	push {r0, lr}
	mov r1, sl
	ldr r0, [r1, #0x28]
	movs r2, #0x50
	ldrh r2, [r0, r2]
	lsrs r2, r2, #0x10
	bhs _08007AAC
	push {r0}
	ldrh r1, [r0, #0x36]
	subs r1, #4
	ldrh r0, [r0, #0x32]
	ldr r2, _08007AB0 @ =0x00008000
	bl sub_08009310
	adds r1, r0, #0
	pop {r0}
	movs r2, #0xcd
	subs r1, r1, r2
	cmp r1, #4
	bhs _08007AAC
	push {r0}
	movs r1, #0x50
	ldrh r2, [r0, r1]
	ldr r3, _08007AB4 @ =0x00003FFF
	ands r2, r3
	ldr r3, _08007AB0 @ =0x00008000
	orrs r2, r3
	strh r2, [r0, r1]
	movs r2, #0x40
	strb r2, [r0, #0x1f]
	ldrb r2, [r0, #0x1d]
	movs r3, #0x3f
	ands r2, r3
	movs r3, #0x40
	orrs r2, r3
	strb r2, [r0, #0x1d]
	bl sub_08001D5C
	ldrb r2, [r1, #2]
	movs r3, #8
	orrs r2, r3
	strb r2, [r1, #2]
	ldrb r1, [r0, #0xa]
	movs r0, #0x4e
	eors r2, r2
	bl sub_0804C8A8
	adds r2, r0, #0
	pop {r0}
	orrs r2, r2
	beq _08007AAC
	ldrh r3, [r0, #0x32]
	strh r3, [r2, #0x32]
	ldrh r3, [r0, #0x36]
	subs r3, #4
	strh r3, [r2, #0x36]
	subs r3, #6
	strh r3, [r0, #0x36]
_08007AAC:
	pop {r0, pc}
	.align 2, 0
_08007AB0: .4byte 0x00008000
_08007AB4: .4byte 0x00003FFF
_08007AB8: .4byte sub_08007F04
_08007ABC: .4byte sub_08007DB8
_08007AC0: .4byte sub_08007DC4
_08007AC4: .4byte sub_08007E58
_08007AC8: .4byte sub_080082E4
_08007ACC: .4byte sub_080082F0
_08007AD0: .4byte sub_080082FC
_08007AD4: .4byte sub_08008564
_08007AD8: .4byte sub_08008570
_08007ADC: .4byte sub_080086DC
_08007AE0: .4byte sub_0800875C
_08007AE4: .4byte sub_08007F04
_08007AE8: .4byte sub_08007F04
_08007AEC: .4byte sub_08007F04
_08007AF0: .4byte sub_08007F04
_08007AF4: .4byte sub_08007F04
_08007AF8: .4byte sub_080087EC
_08007AFC: .4byte sub_08007B34
_08007B00: .4byte sub_08007BE0
_08007B04: .4byte sub_08007C4C
_08007B08: .4byte sub_08007C98
_08007B0C: .4byte sub_08007D14
_08007B10: .4byte sub_08007C04
_08007B14: .4byte sub_08007D80
_08007B18: .4byte sub_08007D90
_08007B1C: .4byte sub_08007DD0
_08007B20: .4byte sub_08007E3C
_08007B24: .4byte sub_08007E64
_08007B28: .4byte sub_08007E90
_08007B2C: .4byte sub_08007ED0
_08007B30: .4byte sub_08007E3C

	thumb_func_start sub_08007B34
sub_08007B34: @ 0x08007B34
	push {lr}
	mov r1, sl
	ldrb r2, [r1, #2]
	orrs r2, r2
	beq _08007B68
	movs r3, #0x70
	tst r2, r3
	bne _08007B68
	ldrb r2, [r1, #2]
	movs r3, #8
	tst r2, r3
	bne _08007B68
	ldr r2, [r1, #0x28]
	ldr r3, [r2, #0x10]
	ldr r4, _08007F1C @ =0x00018000
	cmp r3, r4
	bhs _08007B68
	ldrb r2, [r1, #2]
	movs r3, #0x20
	orrs r2, r3
	strb r2, [r1, #2]
	bl sub_08007594
	bl sub_08007620
	b _08007D78
_08007B68:
	ldrb r2, [r1, #0x1b]
	movs r3, #0x80
	tst r2, r3
	bne _08007B7E
	eors r2, r2
	strb r2, [r1, #0x1b]
	push {r0}
	ldr r0, [r1, #0x28]
	bl sub_0803D134
	pop {r0}
_08007B7E:
	mov r1, sl
	ldr r2, [r1, #0x2c]
	orrs r2, r2
	beq _08007B9E
	ldrb r3, [r2, #9]
	cmp r3, #1
	beq _08007B9E
	push {r0}
	adds r0, r2, #0
	eors r2, r2
	str r2, [r1, #0x2c]
	bl sub_08000620
	bl sub_08012540
	pop {r0}
_08007B9E:
	ldrb r2, [r0, #9]
	movs r3, #0x80
	orrs r2, r3
	strb r2, [r0, #9]
	bl sub_080078B0
	bl sub_08007620
	push {r0}
	mov r1, sl
	ldr r0, [r1, #0x28]
	push {r0}
	bl sub_08039A70
	pop {r0}
	beq _08007BDA
	ldr r2, _08007F20 @ =gUnk_03006C80
	adds r2, #0x60
	mov r1, sl
	ldr r1, [r1, #0x28]
	ldrb r1, [r1, #0xa]
	ldrb r3, [r2, r1]
	adds r2, #4
	ldrb r2, [r2, r1]
	lsls r2, r2, #3
	cmp r2, r3
	bne _08007BDA
	movs r1, #0x11
	bl sub_08007530
_08007BDA:
	pop {r0}
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08007BE0
sub_08007BE0: @ 0x08007BE0
	push {lr}
	mov r1, sl
	ldrb r2, [r1, #0x1b]
	movs r3, #0x80
	ands r2, r3
	bne _08007CBA
	bl sub_0800772C
	ldrb r2, [r0, #0xe]
	orrs r2, r2
	beq _08007BFE
	ldrb r1, [r0, #9]
	movs r3, #0x7f
	ands r1, r3
	strb r1, [r0, #9]
_08007BFE:
	lsrs r2, r2, #8
	bhs _08007C06
	pop {pc}

	thumb_func_start sub_08007C04
sub_08007C04: @ 0x08007C04
	push {lr}
_08007C06:
	bl sub_080077BC
	beq _08007C88
	mov r1, sl
	ldrb r2, [r1, #2]
	orrs r2, r2
	bne _08007C88
	eors r2, r2
	strb r2, [r0, #0xf]
	movs r2, #2
	strb r2, [r0, #4]
	movs r2, #1
	strb r2, [r1, #0x1b]
	ldr r2, [r1, #0x2c]
	movs r3, #0xc
	movs r4, #0x40
	strb r3, [r2, r4]
	movs r2, #0x28
	strb r2, [r0, #7]
	bl sub_080075DC
	movs r3, #0x68
	bl sub_08007740
	push {r0}
	movs r0, #0x52
	mov r1, sl
	ldr r1, [r1, #0x28]
	ldrb r1, [r1, #0xa]
	eors r2, r2
	bl sub_0804C8A8
	pop {r0}
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08007C4C
sub_08007C4C: @ 0x08007C4C
	push {lr}
	ldr r2, _08007F24 @ =gUnk_03000510
	ldrh r2, [r2]
	movs r3, #2
	ands r2, r3
	beq _08007C88
	bl sub_080079C8
	bne _08007C86
	mov r1, sl
	ldrb r2, [r1, #0x1b]
	orrs r2, r2
	beq _08007C88
	ldrb r3, [r0, #7]
	subs r3, #1
	strb r3, [r0, #7]
	beq _08007C70
	pop {pc}
_08007C70:
	movs r2, #3
	strb r2, [r0, #4]
	ldrb r2, [r0, #9]
	movs r3, #0x80
	orrs r2, r3
	strb r2, [r0, #9]
	mov r1, sl
	ldrb r2, [r1, #0x1b]
	movs r3, #0x20
	orrs r2, r3
	strb r2, [r1, #0x1b]
_08007C86:
	pop {pc}
_08007C88:
	mov r1, sl
	eors r2, r2
	strb r2, [r1, #0x1b]
	str r2, [r1, #0x2c]
	bl sub_0800750C
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08007C98
sub_08007C98: @ 0x08007C98
	push {lr}
	mov r1, sl
	ldrb r2, [r1, #0x1b]
	orrs r2, r2
	beq _08007C88
	ldrb r2, [r1, #4]
	orrs r2, r2
	beq _08007C88
	bl sub_080079C8
	bne _08007CB8
	ldr r2, _08007F28 @ =gUnk_03000510
	ldrh r2, [r2]
	movs r3, #2
	ands r2, r3
	beq _08007CBA
_08007CB8:
	pop {pc}
_08007CBA:
	bl sub_080075C8
	push {r0}
	ldr r0, [r1, #0x28]
	bl sub_08039A40
	pop {r0}
	beq _08007CEA
	mov r1, sl
	ldrb r2, [r1, #0x1b]
	movs r3, #0x10
	orrs r2, r3
	strb r2, [r1, #0x1b]
	ldr r2, [r1, #0x28]
	movs r3, #0x2a
	ldrb r3, [r2, r3]
	lsls r3, r3, #2
	strb r3, [r0, #0xb]
	movs r2, #1
	strb r2, [r0, #7]
	eors r2, r2
	strb r2, [r0, #8]
	movs r3, #0x28
	b _08007CEC
_08007CEA:
	movs r3, #0x24
_08007CEC:
	movs r2, #4
	strb r2, [r0, #4]
	movs r2, #6
	strb r2, [r0, #0xf]
	bl sub_08007740
	mov r1, sl
	ldrb r2, [r1, #0x1b]
	movs r3, #0x40
	orrs r2, r3
	strb r2, [r1, #0x1b]
	ldr r0, [r1, #0x28]
	movs r2, #0x77
	bl sub_080031B8
	movs r2, #0xbf
	bl sub_080031B8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08007D14
sub_08007D14: @ 0x08007D14
	push {lr}
	ldrb r2, [r1, #4]
	orrs r2, r2
	beq _08007C88
	bl sub_0800772C
	mov r1, sl
	ldrb r2, [r1, #0x1b]
	movs r3, #0x10
	tst r2, r3
	bne _08007D36
	ldr r1, [r1, #0x28]
	movs r3, #0x29
	ldrsb r2, [r1, r3]
	lsls r2, r2, #1
	bhs _08007C88
	pop {pc}
_08007D36:
	ldr r2, _08007F2C @ =gUnk_03000BD0
	ldrh r2, [r2]
	movs r3, #2
	tst r2, r3
	beq _08007D44
	movs r2, #2
	strb r2, [r0, #7]
_08007D44:
	ldrb r2, [r1, #0xd]
	cmp r2, #0x80
	blo _08007D4C
	ldrb r2, [r0, #0xb]
_08007D4C:
	strb r2, [r0, #0xb]
	ldr r1, [r1, #0x28]
	movs r3, #0x2b
	strb r2, [r1, r3]
	ldr r2, _08007F30 @ =0x00000180
	str r2, [r1, #0xc]
	movs r3, #0x29
	ldrsb r2, [r1, r3]
	lsls r2, r2, #1
	blo _08007D76
	bl sub_080075DC
	ldrb r2, [r0, #8]
	adds r2, #1
	strb r2, [r0, #8]
	cmp r2, #0xa
	bhs _08007C88
	ldrb r2, [r0, #7]
	subs r2, #1
	beq _08007C88
	strb r2, [r0, #7]
_08007D76:
	pop {pc}
_08007D78:
	movs r2, #6
	strb r2, [r0, #4]
	b _08007D82
	.align 2, 0

	thumb_func_start sub_08007D80
sub_08007D80: @ 0x08007D80
	push {lr}
_08007D82:
	mov r1, sl
	ldrb r2, [r1, #4]
	orrs r2, r2
	bne _08007D8C
	b _08007C88
_08007D8C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08007D90
sub_08007D90: @ 0x08007D90
	push {lr}
	bl sub_0800772C
	ldrb r2, [r0, #0xe]
	lsrs r2, r2, #8
	blo _08007DB6
	mov r1, sl
	movs r4, #3
	ldrb r2, [r1, #0x1b]
	movs r3, #0x20
	tst r2, r3
	bne _08007DAA
	movs r4, #5
_08007DAA:
	strb r4, [r0, #4]
	movs r3, #0xf7
	ands r2, r3
	strb r2, [r1, #0x1b]
	eors r2, r2
	strb r2, [r0, #0xf]
_08007DB6:
	pop {pc}

	thumb_func_start sub_08007DB8
sub_08007DB8: @ 0x08007DB8
	ldr r1, _08007F34 @ =_08007AFC
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	ldr r1, [r1, r2]
	bx r1
	.align 2, 0

	thumb_func_start sub_08007DC4
sub_08007DC4: @ 0x08007DC4
	ldr r1, _08007F38 @ =_08007B1C
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	ldr r1, [r1, r2]
	bx r1
	.align 2, 0

	thumb_func_start sub_08007DD0
sub_08007DD0: @ 0x08007DD0
	push {lr}
	mov r1, sl
	ldrb r2, [r1, #4]
	lsrs r2, r2, #4
	bhs _08007DF8
	ldrb r2, [r1, #1]
	orrs r2, r2
	bne _08007DF8
	bl sub_080074D4
	beq _08007DF8
	push {r0}
	mov r1, sl
	ldr r0, [r1, #0x28]
	bl sub_0803D134
	pop {r0}
	bl sub_08007644
	bne _08007DFC
_08007DF8:
	bl sub_08007510
_08007DFC:
	bl sub_080078B0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08007E04
sub_08007E04: @ 0x08007E04
	push {lr}
	mov r1, sl
	ldrb r2, [r1, #1]
	orrs r2, r2
	bne _08007E52
	ldrb r2, [r0, #0xe]
	lsrs r2, r2, #1
	blo _08007E18
	bl sub_08007634
_08007E18:
	bl sub_08007E3C
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08007E20
sub_08007E20: @ 0x08007E20
	push {lr}
	mov r1, sl
	ldrb r2, [r1, #1]
	orrs r2, r2
	bne _08007E52
	ldrb r2, [r0, #0xe]
	lsrs r2, r2, #1
	blo _08007E34
	bl sub_08007644
_08007E34:
	bl sub_08007E3C
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08007E3C
sub_08007E3C: @ 0x08007E3C
	push {lr}
	mov r1, sl
	ldrb r2, [r1, #4]
	lsrs r2, r2, #4
	bhs _08007E52
	bl sub_0800772C
	ldrb r2, [r0, #0xe]
	movs r3, #0x80
	tst r2, r3
	beq _08007E56
_08007E52:
	bl sub_0800750C
_08007E56:
	pop {pc}

	thumb_func_start sub_08007E58
sub_08007E58: @ 0x08007E58
	ldr r1, _08007F3C @ =_08007B24
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	ldr r1, [r1, r2]
	bx r1
	.align 2, 0

	thumb_func_start sub_08007E64
sub_08007E64: @ 0x08007E64
	push {lr}
	mov r1, sl
	ldrb r2, [r1, #4]
	lsrs r2, r2, #4
	blo _08007E72
	bl sub_08007510
_08007E72:
	push {r0}
	ldr r0, [r1, #0x28]
	bl sub_0803D134
	pop {r0}
	mov r1, sl
	movs r2, #1
	movs r3, #0x21
	strb r2, [r1, r3]
	bl sub_08007634
	bl sub_080078B0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08007E90
sub_08007E90: @ 0x08007E90
	push {lr}
	mov r1, sl
	ldrb r2, [r1, #1]
	orrs r2, r2
	bne _08007EC2
	movs r3, #0x21
	ldrb r2, [r1, r3]
	orrs r2, r2
	beq _08007EC2
	ldrb r2, [r1, #4]
	lsrs r2, r2, #4
	bhs _08007EC2
	bl sub_0800772C
	ldrb r2, [r0, #0xe]
	movs r3, #0x80
	tst r2, r3
	beq _08007EC0
	movs r2, #2
	strb r2, [r0, #4]
	eors r2, r2
	strb r2, [r0, #0xf]
	bl sub_080075DC
_08007EC0:
	pop {pc}
_08007EC2:
	movs r2, #0
	movs r3, #0x21
	strb r2, [r1, r3]
	bl sub_0800750C
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08007ED0
sub_08007ED0: @ 0x08007ED0
	push {lr}
	mov r1, sl
	bl sub_080077BC
	beq _08007EEA
	ldrb r2, [r1, #4]
	lsrs r2, r2, #4
	bhs _08007EC2
	movs r3, #0x21
	ldrb r2, [r1, r3]
	orrs r2, r2
	beq _08007EC2
	pop {pc}
_08007EEA:
	movs r2, #0
	movs r3, #0x21
	strb r2, [r1, r3]
	bl sub_080075C8
	ldr r3, _08007F30 @ =0x00000180
	bl sub_08007740
	movs r2, #1
	strb r2, [r0, #0xf]
	movs r2, #3
	strb r2, [r0, #4]
	pop {pc}

	thumb_func_start sub_08007F04
sub_08007F04: @ 0x08007F04
	push {lr}
	bl sub_08007644
	bl sub_0800750C
	pop {pc}

	thumb_func_start sub_08007F10
sub_08007F10: @ 0x08007F10
	mov sb, r1
	ldr r1, _08007F40 @ =_08007AB8
	ldrb r2, [r0, #1]
	lsls r2, r2, #2
	ldr r1, [r1, r2]
	bx r1
	.align 2, 0
_08007F1C: .4byte 0x00018000
_08007F20: .4byte gUnk_03006C80
_08007F24: .4byte gUnk_03000510
_08007F28: .4byte gUnk_03000510
_08007F2C: .4byte gUnk_03000BD0
_08007F30: .4byte 0x00000180
_08007F34: .4byte _08007AFC
_08007F38: .4byte _08007B1C
_08007F3C: .4byte _08007B24
_08007F40: .4byte _08007AB8
_08007F44: .4byte sub_08007F80
_08007F48: .4byte sub_08007E3C
_08007F4C: .4byte sub_0800820C
_08007F50: .4byte sub_0800824C
_08007F54: .4byte sub_080082C8
_08007F58: .4byte sub_08007FB8
_08007F5C: .4byte sub_080080E0
_08007F60: .4byte sub_0800820C
_08007F64: .4byte sub_0800824C
_08007F68: .4byte sub_080082C8
_08007F6C:
	.byte 0x80, 0x20, 0x40, 0x10

	thumb_func_start sub_08007F70
sub_08007F70: @ 0x08007F70
	mov r1, sl
	ldrb r2, [r1, #5]
	orrs r2, r2
	beq _08007F7E
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08007F7C
sub_08007F7C: @ 0x08007F7C
	push {lr}
_08007F7E:
	b _080080D4

	thumb_func_start sub_08007F80
sub_08007F80: @ 0x08007F80
	push {lr}
	mov r1, sl
	ldrb r2, [r1, #2]
	orrs r2, r2
	bne _08007FA8
	ldr r2, [r1, #4]
	orrs r2, r2
	bne _08007FA8
	ldrb r2, [r1, #0x12]
	cmp r2, #0xac
	beq _08007FA8
	bl sub_08007968
	beq _08007F9E
	b _08008184
_08007F9E:
	bl sub_08007644
	bne _08007FAE
	movs r3, #1
	str r3, [r2, #0x68]
_08007FA8:
	bl sub_0800750C
	pop {pc}
_08007FAE:
	push {r1}
	bl sub_080078B0
	pop {r1}
	b _08008184

	thumb_func_start sub_08007FB8
sub_08007FB8: @ 0x08007FB8
	push {lr}
	mov r1, sl
	ldrb r2, [r1, #4]
	orrs r2, r2
	bne _08007FCE
	ldrb r2, [r1, #0x12]
	cmp r2, #0xac
	beq _08007FCE
	bl sub_080079B8
	beq _08007FD0
_08007FCE:
	b _080080D4
_08007FD0:
	ldrb r2, [r0, #7]
	orrs r2, r2
	beq _08007FDE
	subs r2, #1
	strb r2, [r0, #7]
	bne _08008008
	b _08008008
_08007FDE:
	bl sub_080075DC
	bl sub_08007608
	movs r2, #0x7f
	ldrb r3, [r0, #9]
	orrs r2, r3
	strb r2, [r0, #9]
	eors r3, r3
	strb r3, [r0, #0xf]
	mov r1, sl
	ldr r1, [r1, #0x28]
	movs r2, #0x71
	ldrb r3, [r1, r2]
	orrs r3, r3
	bne _08008008
	ldr r2, _080083B0 @ =gUnk_03000510
	ldrh r2, [r2]
	ldr r3, _080083B4 @ =0x00000100
	ands r2, r3
	beq _080080D4
_08008008:
	mov r1, sl
	ldrb r2, [r1, #0x1e]
	orrs r2, r2
	bne _080080D4
	ldr r1, [r1, #0x28]
	movs r2, #0x3d
	ldrb r2, [r1, r2]
	orrs r2, r2
	bne _08008094
	movs r2, #0x71
	ldrb r3, [r1, r2]
	orrs r3, r3
	beq _0800802A
	eors r3, r3
	strb r3, [r1, r2]
	ldr r1, [r1, #0x6c]
	b _08008184
_0800802A:
	bl sub_08007804
	bne _0800803A
	mov r1, sl
	ldr r1, [r1, #0x28]
	bl sub_08007840
	beq _0800805C
_0800803A:
	eors r2, r2
	strb r2, [r0, #7]
	ldrb r2, [r1, #0x1a]
	lsrs r2, r2, #1
	bhs _08008046
	b _0800817A
_08008046:
	str r1, [r0, #0x18]
	movs r2, #2
	strb r2, [r1, #0x14]
	movs r2, #5
	strb r2, [r1, #0x15]
	mov r2, sl
	ldr r2, [r2, #0x28]
	ldrb r2, [r2, #0xa]
	strb r2, [r1, #0xb]
	movs r2, #2
	b _08008082
_0800805C:
	bl sub_08007968
	beq _08008068
	eors r2, r2
	strb r2, [r0, #7]
	b _08008184
_08008068:
	bl sub_0800777C
	bne _08008094
	push {r0}
	mov r1, sl
	ldr r0, [r1, #0x28]
	bl sub_080019E4
	pop {r0}
	cmp r1, #0x18
	beq _08008094
	eors r1, r1
	movs r2, #1
_08008082:
	str r1, [r0, #0x18]
	mov r1, sl
	strb r2, [r1, #5]
	bl sub_080078B0
	movs r2, #0x62
	bl sub_080031AC
	pop {pc}
_08008094:
	mov r1, sl
	ldr r2, [r1, #0x28]
	movs r3, #0x2a
	ldrb r2, [r2, r3]
	movs r3, #0x80
	orrs r2, r3
	strb r2, [r1, #1]
	ldr r2, _080083B8 @ =gUnk_03000BD0
	ldrh r2, [r2]
	ldr r3, _080083B4 @ =0x00000100
	ands r2, r3
	beq _080080D0
	ldr r3, _080083BC @ =0x00000278
	bl sub_08007740
	movs r3, #4
	strb r3, [r0, #0xf]
	movs r2, #0x80
	ldrb r3, [r0, #9]
	orrs r2, r3
	strb r2, [r0, #9]
	movs r2, #0x14
	strb r2, [r0, #7]
	bl sub_080075C8
	bl sub_080075F4
	movs r2, #0x8e
	bl sub_080031AC
_080080D0:
	pop {pc}
	.align 2, 0
_080080D4:
	mov r1, sl
	bl sub_080012A4
	bl sub_0800750C
	pop {pc}

	thumb_func_start sub_080080E0
sub_080080E0: @ 0x080080E0
	push {lr}
	bl sub_08007F70
	mov r1, sl
	ldr r1, [r1, #0x28]
	movs r2, #0x3d
	ldrb r2, [r1, r2]
	orrs r2, r2
	bne _08008114
	ldr r2, [r0, #0x18]
	orrs r2, r2
	beq _0800810A
	ldrb r3, [r2, #0x14]
	cmp r3, #2
	bne _08008114
	ldrb r3, [r2, #0x15]
	cmp r3, #5
	bne _08008114
	bl sub_080077E8
	beq _08008114
_0800810A:
	ldr r2, _080083C0 @ =gUnk_03000510
	ldrh r2, [r2]
	ldr r3, _080083B4 @ =0x00000100
	ands r2, r3
	bne _08008120
_08008114:
	ldr r1, [r0, #0x18]
	orrs r1, r1
	beq _080080D4
	movs r2, #6
	strb r2, [r1, #0x15]
	b _080080D4
_08008120:
	mov r1, sl
	ldrb r2, [r1, #2]
	orrs r2, r2
	bne _080080D4
	ldrb r2, [r1, #5]
	cmp r2, #1
	bne _08008134
	bl sub_0800777C
	bne _080080D4
_08008134:
	mov r1, sl
	ldr r2, [r1, #0x28]
	movs r3, #0x2a
	ldrb r3, [r2, r3]
	lsrs r3, r3, #1
	ldr r2, _080083C4 @ =_08007F6C
	ldrb r2, [r2, r3]
	bl sub_080077C0
	bne _08008150
	ldr r3, _080083C8 @ =0x00000234
	bl sub_08007740
	b _0800815E
_08008150:
	bl sub_0800772C
	mov r1, sl
	ldrb r3, [r1, #5]
	movs r2, #1
	cmp r3, r2
	bne _08008178
_0800815E:
	mov r1, sl
	push {r0}
	ldr r0, [r1, #0x28]
	movs r1, #6
	bl sub_08001B40
	pop {r0}
	beq _08008208
	strb r1, [r0, #3]
	strb r2, [r0, #7]
	strb r3, [r0, #8]
	eors r1, r1
	b _0800817A
_08008178:
	ldr r1, [r0, #0x18]
_0800817A:
	orrs r1, r1
	beq _0800818C
	ldrb r2, [r1, #0x1a]
	lsrs r2, r2, #1
	bhs _08008208
_08008184:
	movs r2, #2
	strb r2, [r1, #0x14]
	movs r2, #0
	strb r2, [r1, #0x15]
_0800818C:
	str r1, [r0, #0x18]
	mov r2, sl
	ldr r2, [r2, #0x28]
	ldrb r2, [r2, #0xa]
	strb r2, [r1, #0xb]
	ldr r3, _080083CC @ =0x0000022C
	bl sub_08007740
	bl sub_080075C8
	bl sub_080075F4
	mov r1, sl
	movs r2, #3
	strb r2, [r1, #5]
	movs r2, #2
	strb r2, [r0, #4]
	movs r2, #0xf
	strb r2, [r0, #0xf]
	push {r0}
	movs r0, #0xb
	bl sub_08003DFC
	bl sub_080123E8
	adds r1, r0, #0
	pop {r0}
	bne _080081C6
	b _080080D4
_080081C6:
	push {r0, r1}
	movs r0, #2
	bl sub_08012728
	pop {r0, r1}
	movs r2, #5
	strb r2, [r1, #9]
	movs r2, #8
	strb r2, [r1, #8]
	movs r2, #0x80
	strb r2, [r1, #0x19]
	mov r2, sl
	ldr r2, [r2, #0x28]
	str r1, [r2, #0x6c]
	ldrb r2, [r2, #0xa]
	strb r2, [r1, #0xa]
	ldr r2, [r0, #0x18]
	str r2, [r1, #0x58]
	ldrb r2, [r2, #0x1a]
	strb r2, [r1, #0x1a]
	str r0, [r1, #0x54]
	str r1, [r0, #0x18]
	ldrb r2, [r0, #3]
	strb r2, [r1, #0xb]
	ldrb r2, [r0, #7]
	strb r2, [r1, #0x17]
	ldrb r2, [r0, #8]
	strb r2, [r1, #0x18]
	movs r2, #0x3c
	ldrb r1, [r0, r2]
	movs r3, #0x7f
	ands r1, r3
	strb r1, [r0, r2]
_08008208:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0800820C
sub_0800820C: @ 0x0800820C
	push {lr}
	bl sub_08007F70

	non_word_aligned_thumb_func_start sub_08008212
sub_08008212: @ 0x08008212
	bl sub_0800772C
	ldrb r1, [r0, #0xe]
	movs r2, #0x80
	tst r2, r1
	bne _08008220
	pop {pc}
_08008220:
	mov r1, sl
	ldr r1, [r1, #0x28]
	movs r2, #0x3c
	ldrb r2, [r1, r2]
	movs r3, #0x80
	orrs r3, r2
	movs r2, #0x3c
	strb r3, [r1, r2]
	mov r1, sl
	movs r2, #4
	strb r2, [r1, #5]
	ldrb r1, [r0, #4]
	adds r1, #1
	strb r1, [r0, #4]
	eors r1, r1
	strb r1, [r0, #0xf]
	bl sub_08007608
	bl sub_080075DC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0800824C
sub_0800824C: @ 0x0800824C
	push {lr}
	bl sub_08007F70

	non_word_aligned_thumb_func_start sub_08008252
sub_08008252: @ 0x08008252
	mov r1, sl
	movs r3, #2
	ldrsb r2, [r1, r3]
	lsls r2, r2, #1
	bhs _080082C6
	ldrb r2, [r1, #0x1f]
	orrs r2, r2
	bne _080082C6
	ldrb r2, [r1, #0xf]
	movs r3, #0x80
	tst r2, r3
	bne _0800827C
	ldr r1, [r1, #0x28]
	movs r2, #0x41
	ldrb r2, [r1, r2]
	cmp r2, #0x81
	blo _0800827E
	movs r2, #0x42
	ldrb r2, [r1, r2]
	orrs r2, r2
	beq _0800827E
_0800827C:
	b _080080D4
_0800827E:
	ldr r2, _080083D0 @ =gUnk_03000BD0
	ldrh r2, [r2]
	ldr r3, _080083D4 @ =0x00000103
	ands r2, r3
	beq _080082C6
	mov r1, sl
	push {r0}
	ldr r0, [r1, #0x28]
	bl sub_0803D134
	pop {r0}
	ldr r1, [r0, #0x18]
	eors r2, r2
	str r2, [r0, #0x18]
	movs r2, #2
	strb r2, [r1, #0x15]
	mov r2, sl
	ldr r2, [r2, #0x28]
	movs r3, #0x2a
	ldrb r3, [r2, r3]
	lsrs r3, r3, #1
	lsls r3, r3, #3
	movs r2, #0x2b
	strb r3, [r1, r2]
	ldrb r2, [r0, #4]
	adds r2, #1
	strb r2, [r0, #4]
	movs r2, #0xf
	strb r2, [r0, #0xf]
	ldr r3, _080083D8 @ =0x00000238
	bl sub_08007740
	bl sub_080075C8
	bl sub_080075F4
_080082C6:
	pop {pc}

	thumb_func_start sub_080082C8
sub_080082C8: @ 0x080082C8
	push {lr}
	bl sub_08007F70

	non_word_aligned_thumb_func_start sub_080082CE
sub_080082CE: @ 0x080082CE
	movs r2, #0xe
	ldrsb r2, [r0, r2]
	lsls r2, r2, #1
	bhs _080082DC
	bl sub_0800772C
	pop {pc}
_080082DC:
	bl sub_08007F7C
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080082E4
sub_080082E4: @ 0x080082E4
	ldr r1, _080083DC @ =_08007F44
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	ldr r1, [r1, r2]
	bx r1
	.align 2, 0

	thumb_func_start sub_080082F0
sub_080082F0: @ 0x080082F0
	ldr r1, _080083E0 @ =_08007F58
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	ldr r1, [r1, r2]
	bx r1
	.align 2, 0

	thumb_func_start sub_080082FC
sub_080082FC: @ 0x080082FC
	push {lr}
	mov r1, sl
	ldrb r2, [r0, #4]
	orrs r2, r2
	bne _0800837C
	ldrb r3, [r1, #0x1b]
	ldrb r2, [r1, #0xa]
	orrs r2, r3
	ldrb r3, [r1, #4]
	orrs r2, r3
	bne _08008376
	ldrb r2, [r1, #0xf]
	movs r3, #0x80
	tst r2, r3
	bne _08008376
	ldrb r2, [r1, #0x12]
	cmp r2, #4
	beq _08008376
	cmp r2, #0xac
	beq _08008376
	ldrb r2, [r1, #2]
	orrs r2, r2
	beq _0800833C
	movs r3, #0xf
	ands r3, r2
	cmp r3, #3
	bne _0800837C
	ldr r2, [r1, #0x28]
	movs r3, #0x29
	ldrb r2, [r2, r3]
	lsrs r2, r2, #3
	blo _08008376
_0800833C:
	ldr r2, [r1, #0x28]
	ldrb r3, [r2, #0x14]
	subs r3, #2
	beq _0800834A
	ldr r3, [r2, #0x38]
	orrs r3, r3
	bne _08008376
_0800834A:
	ldr r3, _080083E4 @ =0x00020000
	str r3, [r2, #0x10]
	movs r3, #1
	strb r3, [r1, #2]
	ldrb r3, [r1, #0xd]
	lsrs r3, r3, #8
	bhs _08008366
	movs r3, #0x2a
	ldrb r3, [r2, r3]
	lsrs r3, r3, #1
	lsls r3, r3, #1
	adds r3, #0x80
	movs r2, #0x80
	strh r2, [r1, r3]
_08008366:
	movs r1, #1
	strb r1, [r0, #4]
	bl sub_08007A38
	movs r2, #0xc1
	bl sub_080031AC
	pop {pc}
_08008376:
	bl sub_0800750C
	pop {pc}
_0800837C:
	ldrb r2, [r1, #2]
	movs r3, #0x38
	tst r2, r3
	bne _08008376
	bl sub_080077BC
	beq _08008376
	mov r1, sl
	ldr r2, [r1, #0x28]
	ldr r3, [r2, #0x10]
	orrs r3, r3
	bpl _080083AC
	ldr r3, _080083E8 @ =0x00010000
	str r3, [r2, #0x10]
	ldrb r2, [r1, #2]
	movs r3, #0x10
	orrs r2, r3
	strb r2, [r1, #2]
	ldr r3, _080083EC @ =0x0000018C
	strh r3, [r1, #8]
	movs r2, #0x78
	bl sub_080031AC
	b _08008376
_080083AC:
	pop {pc}
	.align 2, 0
_080083B0: .4byte gUnk_03000510
_080083B4: .4byte 0x00000100
_080083B8: .4byte gUnk_03000BD0
_080083BC: .4byte 0x00000278
_080083C0: .4byte gUnk_03000510
_080083C4: .4byte _08007F6C
_080083C8: .4byte 0x00000234
_080083CC: .4byte 0x0000022C
_080083D0: .4byte gUnk_03000BD0
_080083D4: .4byte 0x00000103
_080083D8: .4byte 0x00000238
_080083DC: .4byte _08007F44
_080083E0: .4byte _08007F58
_080083E4: .4byte 0x00020000
_080083E8: .4byte 0x00010000
_080083EC: .4byte 0x0000018C
_080083F0: .4byte sub_08008428
_080083F4: .4byte sub_08008458
_080083F8: .4byte sub_080086E8
_080083FC: .4byte sub_08008710
_08008400: .4byte sub_08008738
_08008404: .4byte sub_080085AC
_08008408: .4byte sub_080085D0
_0800840C: .4byte sub_0800861C
_08008410:
	.byte 0x10, 0xFF, 0xFF, 0x10, 0x10, 0xFF, 0xFF, 0x10
_08008418:
	.byte 0x10, 0x20, 0x80, 0x40, 0x20, 0x10, 0x40, 0x80
_08008420:
	.byte 0x00, 0x02, 0x03, 0x02, 0x02, 0x03, 0x03, 0x03

	thumb_func_start sub_08008428
sub_08008428: @ 0x08008428
	push {lr}
	mov r1, sl
	ldr r2, [r1, #0x28]
	movs r3, #0x3d
	ldrb r2, [r2, r3]
	orrs r2, r2
	bne _08008452
	ldrb r2, [r1, #0xf]
	movs r3, #0x80
	tst r2, r3
	bne _08008452
	bl sub_08007638
	bl sub_080078B0
	mov r1, sl
	ldrb r3, [r1, #0xf]
	movs r2, #1
	orrs r2, r3
	strb r2, [r1, #0xf]
	pop {pc}
_08008452:
	bl sub_0800750C
	pop {pc}

	thumb_func_start sub_08008458
sub_08008458: @ 0x08008458
	push {lr}
	push {r0, r4}
	bl sub_0800772C
	bl sub_080077BC
	beq _08008490
	mov r1, sl
	ldrb r2, [r1, #0xf]
	movs r3, #0x80
	tst r2, r3
	bne _08008490
	ldrb r2, [r0, #0xe]
	orrs r2, r2
	beq _0800847E
	eors r2, r2
	strb r2, [r0, #0xf]
	bl sub_080075DC
_0800847E:
	mov r1, sl
	movs r2, #1
	movs r3, #0x34
	strb r2, [r1, r3]
	ldr r2, [r1, #0x28]
	movs r3, #0x3d
	ldrb r2, [r2, r3]
	orrs r2, r2
	beq _080084AC
_08008490:
	mov r1, sl
	ldrb r2, [r1, #0xf]
	movs r3, #0x40
	tst r2, r3
	beq _0800849E
	movs r3, #6
	strb r3, [r1, #0x14]
_0800849E:
	movs r3, #2
	ands r2, r3
	eors r2, r3
	strb r2, [r1, #0xf]
	bl sub_0800750C
	b _08008560
_080084AC:
	mov r0, sl
	ldr r0, [r0, #0x28]
	bl sub_08003960
	movs r4, #0x10
_080084B6:
	ldr r3, _080087A8 @ =0x0000010F
	cmp r1, r3
	beq _080084E0
	subs r4, #1
	beq _08008506
	movs r1, #0x50
	ldrh r1, [r0, r1]
	lsrs r1, r1, #0xe
	lsls r1, r1, #2
	ldr r3, _080087AC @ =_080092A0
	ldr r3, [r1, r3]
	lsrs r2, r2, #1
	ldrb r3, [r3, r2]
	lsls r2, r2, #1
	cmp r3, #0xff
	beq _08008506
	movs r1, #0x2a
	ldrb r1, [r0, r1]
	bl sub_08003984
	b _080084B6
_080084E0:
	mov r1, sl
	ldrb r2, [r1, #0xf]
	movs r3, #0x40
	orrs r2, r3
	strb r2, [r1, #0xf]
	movs r1, #0x2a
	ldrb r1, [r0, r1]
	lsls r1, r1, #2
	movs r3, #2
	tst r2, r3
	bne _080084FA
	movs r3, #0x10
	eors r1, r3
_080084FA:
	movs r2, #0x2b
	strb r1, [r0, r2]
	ldr r2, _080087B0 @ =0x00000400
	str r2, [r0, #0xc]
	bl sub_08002294
_08008506:
	mov r0, sl
	ldr r0, [r0, #0x28]
	movs r4, #0x2a
	ldrb r4, [r0, r4]
	lsrs r4, r4, #1
	lsls r4, r4, #1
	ldr r3, _080087B4 @ =_08008410
	ldrb r1, [r3, r4]
	adds r4, #1
	ldrb r2, [r3, r4]
	push {r1, r2}
	bl sub_080078EC
	beq _08008524
	adds r4, r1, #0
_08008524:
	pop {r1, r2}
	beq _08008560
_08008528:
	push {r1, r2, r3}
	ldrb r2, [r4, #0xa]
	bl sub_08001D60
	ldrb r2, [r1, #0xf]
	movs r3, #0x10
	tst r2, r3
	bne _0800854C
	ldrb r2, [r1, #5]
	orrs r2, r2
	bne _0800854C
	str r0, [r4, #0x54]
	ldrb r2, [r1, #0xf]
	movs r3, #0x80
	orrs r2, r3
	movs r3, #0xfe
	ands r2, r3
	strb r2, [r1, #0xf]
_0800854C:
	pop {r1, r2, r3}
	subs r3, #1
	bmi _08008560
	push {r1, r2}
	bl sub_080078F0
	push {r1}
	pop {r4}
	pop {r1, r2}
	bne _08008528
_08008560:
	pop {r0, r4}
	pop {pc}

	thumb_func_start sub_08008564
sub_08008564: @ 0x08008564
	ldr r1, _080087B8 @ =_080083F0
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	ldr r1, [r1, r2]
	bx r1
	.align 2, 0

	thumb_func_start sub_08008570
sub_08008570: @ 0x08008570
	push {lr}
	ldrb r1, [r0, #7]
	subs r1, #1
	strb r1, [r0, #7]
	beq _08008582
	movs r2, #7
	ands r1, r2
	beq _08008596
	b _080085A0
_08008582:
	movs r2, #0x10
	strb r2, [r0, #7]
	push {r0}
	mov r1, sl
	ldr r0, [r1, #0x28]
	movs r1, #2
	movs r2, #0x40
	bl sub_0804CB38
	pop {r0}
_08008596:
	push {r0}
	movs r0, #0xe
	bl sub_08003DFC
	pop {r0}
_080085A0:
	ldr r1, _080087BC @ =_08008404
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	ldr r1, [r1, r2]
	bx r1
	.align 2, 0

	thumb_func_start sub_080085AC
sub_080085AC: @ 0x080085AC
	mov r1, sl
	ldrb r2, [r1, #4]
	orrs r2, r2
	bne _0800860C
	ldrb r2, [r1, #5]
	orrs r2, r2
	bne _0800860C
	ldrh r2, [r1, #0x36]
	ldr r3, _080087C0 @ =0x00001000
	tst r2, r3
	bne _0800860C
	movs r2, #1
	strb r2, [r1, #0x1e]
	bl sub_080078B0
	movs r2, #0x10
	strb r2, [r0, #7]
	b sub_080085D0

	thumb_func_start sub_080085D0
sub_080085D0: @ 0x080085D0
	bl sub_080077BC
	beq _0800860C
	bl sub_0800772C
	bl sub_0800772C
	mov r1, sl
	ldrb r2, [r1, #0x1e]
	orrs r2, r2
	beq _0800860C
	adds r2, #1
	strb r2, [r1, #0x1e]
	cmp r2, #0x1e
	bne _0800860A
	movs r3, #0x40
	strb r3, [r1, #0x1e]
	movs r2, #0xff
	strb r2, [r1, #0xe]
	bl sub_080075DC
	ldrb r2, [r0, #4]
	adds r2, #1
	strb r2, [r0, #4]
	ldr r3, _080087C4 @ =0x0000019C
	bl sub_08007740
	bl sub_08007644
_0800860A:
	pop {pc}
_0800860C:
	mov r1, sl
	eors r2, r2
	strb r2, [r1, #0x1e]
	strb r2, [r1, #0xe]
	bl sub_0800750C
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0800861C
sub_0800861C: @ 0x0800861C
	bl sub_080077BC
	beq _0800860C
	mov r1, sl
	ldrb r2, [r1, #0x1e]
	orrs r2, r2
	beq _0800860C
	movs r3, #0x10
	ands r2, r3
	bne _080086A2
	ldrb r2, [r1, #0x12]
	cmp r2, #0xff
	beq _080086A2
	ldr r1, [r1, #0x28]
	ldr r3, _080087C8 @ =0x00000280
	str r3, [r1, #0xc]
	movs r2, #0x2a
	ldrb r2, [r1, r2]
	lsrs r2, r2, #1
	lsls r2, r2, #4
	ldr r3, _080087CC @ =_08002DBC
	ldrh r3, [r3, r2]
	ldrh r2, [r1, #0x2c]
	ands r2, r3
	cmp r2, r3
	beq _080086BC
	movs r3, #0x2a
	ldrb r3, [r1, r3]
	lsrs r3, r3, #1
	ldr r2, _080087D0 @ =_08007F6C
	ldrb r2, [r2, r3]
	bl sub_080077C0
	bne _0800860C
	mov r1, sl
	ldrb r2, [r1, #2]
	orrs r2, r2
	bne _08008668
_08008668:
	eors r4, r4
	mov r1, sl
	movs r3, #0xd
	ldrsb r2, [r1, r3]
	lsls r2, r2, #1
	bhs _080086A2
	ldrb r2, [r1, #0x1e]
	movs r3, #0x80
	tst r2, r3
	bne _080086A2
	ldr r2, [r1, #0x28]
	movs r3, #0x2a
	ldrb r3, [r2, r3]
	lsrs r3, r3, #1
	lsls r3, r3, #1
	ldr r2, _080087D4 @ =_08008418
	adds r2, r2, r3
	ldrb r1, [r2]
	ldr r3, _080087D8 @ =gUnk_03000510
	ldrb r3, [r3]
	movs r4, #1
	ands r1, r3
	bne _080086A0
	rsbs r4, r4, #0
	ldrb r1, [r2, #1]
	ands r1, r3
	bne _080086A0
	eors r4, r4
_080086A0:
	mov r1, sl
_080086A2:
	ldr r2, [r1, #0x28]
	movs r3, #0x2a
	ldrb r3, [r2, r3]
	lsrs r3, r3, #1
	lsls r3, r3, #3
	adds r4, r4, r3
	movs r3, #0x1f
	ands r3, r4
	strb r3, [r1, #0xd]
	movs r1, #0x2b
	strb r3, [r2, r1]
_080086B8:
	pop {pc}
	.align 2, 0
_080086BC:
	ldrb r2, [r0, #8]
	orrs r2, r2
	bne _080086C8
	adds r2, #1
	strb r2, [r0, #8]
	b _080086B8
_080086C8:
	movs r2, #6
	strb r2, [r1, #0x14]
	eors r2, r2
	strb r2, [r1, #0x15]
	mov r1, sl
	movs r3, #0x38
	strb r2, [r1, r3]
	movs r3, #0xff
	strb r3, [r1, #0xd]
	b _0800860C

	thumb_func_start sub_080086DC
sub_080086DC: @ 0x080086DC
	ldr r1, _080087DC @ =_080083F8
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	ldr r1, [r1, r2]
	bx r1
	.align 2, 0

	thumb_func_start sub_080086E8
sub_080086E8: @ 0x080086E8
	push {lr}
	mov r1, sl
	movs r2, #0x81
	strb r2, [r1, #3]
	movs r2, #2
	strb r2, [r0, #9]
	push {r0}
	ldr r0, [r1, #0x28]
	bl sub_0803D134
	pop {r0}
	bl sub_080078B0
	bl sub_08007638
	movs r2, #0x63
	bl sub_080031AC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08008710
sub_08008710: @ 0x08008710
	push {lr}
	bl sub_080077BC
	beq _0800874E
	mov r1, sl
	movs r3, #1
	strb r3, [r1, #3]
	bl sub_0800772C
	ldrb r2, [r0, #0xe]
	orrs r2, r2
	beq _08008734
	movs r2, #2
	strb r2, [r0, #4]
	eors r2, r2
	strb r2, [r0, #0xf]
	bl sub_080075DC
_08008734:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08008738
sub_08008738: @ 0x08008738
	push {lr}
	mov r1, sl
	movs r3, #1
	strb r3, [r1, #3]
	ldr r2, [r1, #0x2c]
	bl sub_080077BC
	beq _0800874E
	bl sub_0800772C
	pop {pc}
_0800874E:
	mov r1, sl
	eors r2, r2
	strb r2, [r1, #3]
	bl sub_0800750C
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0800875C
sub_0800875C: @ 0x0800875C
	push {lr}
	mov r1, sl
	ldrb r2, [r1, #0x12]
	cmp r2, #0xac
	beq _080087A2
	cmp r2, #0xb0
	beq _080087A2
	ldrb r2, [r1, #0xa]
	orrs r2, r2
	bne _080087A2
	push {r0}
	ldr r0, [r1, #0x28]
	ldr r2, [r0, #0x38]
	orrs r2, r2
	pop {r0}
	bne _080087A2
	push {r0}
	ldr r0, [r1, #0x28]
	eors r2, r2
	strb r2, [r0, #0x18]
	bl sub_080076C4
	pop {r0}
	ldrh r2, [r1, #0x36]
	movs r3, #0x81
	orrs r3, r2
	strh r3, [r1, #0x36]
	ldr r1, [r1, #0x28]
	movs r2, #9
	strb r2, [r1, #0x14]
	eors r2, r2
	strb r2, [r1, #0x15]
	ldr r2, _080087E0 @ =_08008420
	str r2, [r1, #0x48]
	pop {pc}
_080087A2:
	bl sub_0800750C
	pop {pc}
	.align 2, 0
_080087A8: .4byte 0x0000010F
_080087AC: .4byte _080092A0
_080087B0: .4byte 0x00000400
_080087B4: .4byte _08008410
_080087B8: .4byte _080083F0
_080087BC: .4byte _08008404
_080087C0: .4byte 0x00001000
_080087C4: .4byte 0x0000019C
_080087C8: .4byte 0x00000280
_080087CC: .4byte _08002DBC
_080087D0: .4byte _08007F6C
_080087D4: .4byte _08008418
_080087D8: .4byte gUnk_03000510
_080087DC: .4byte _080083F8
_080087E0: .4byte _08008420
_080087E4: .4byte sub_080087F8
_080087E8: .4byte sub_08008818

	thumb_func_start sub_080087EC
sub_080087EC: @ 0x080087EC
	ldr r1, _0800883C @ =_080087E4
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	ldr r1, [r1, r2]
	bx r1
	.align 2, 0

	thumb_func_start sub_080087F8
sub_080087F8: @ 0x080087F8
	push {lr}
	mov r1, sl
	movs r2, #0x3d
	ldrb r2, [r1, r2]
	orrs r2, r2
	bne _08008836
	ldr r2, [r1, #0x28]
	ldrb r2, [r2, #0x14]
	cmp r2, #1
	bne _08008836
	movs r2, #1
	strb r2, [r0, #4]
	bl sub_08007644
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08008818
sub_08008818: @ 0x08008818
	push {lr}
	mov r1, sl
	movs r2, #0x3d
	ldrb r3, [r1, r2]
	orrs r3, r3
	beq _08008836
	bl sub_080077B0
	beq _0800883A
	mov r1, sl
	movs r2, #0x3d
	ldrb r3, [r1, r2]
	movs r4, #2
	orrs r3, r4
	strb r3, [r1, r2]
_08008836:
	bl sub_0800750C
_0800883A:
	pop {pc}
	.align 2, 0
_0800883C: .4byte _080087E4

	.global gUnk_08008840
gUnk_08008840:
	.byte 0x0D, 0x01, 0x01, 0x00, 0x0E, 0x01, 0x01, 0x00, 0xD5, 0x00, 0x01, 0x00, 0xD6, 0x00, 0x01, 0x00
	.byte 0xA2, 0x04, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
_08008858:
	.byte 0x00, 0xFC, 0x04, 0xFC, 0x04, 0x00, 0x04, 0x04
	.byte 0x00, 0x04, 0xFC, 0x04, 0xFC, 0x00, 0xFC, 0x00

	thumb_func_start sub_08008868
sub_08008868: @ 0x08008868
	push {r4, lr}
	ldr r2, _08008AF4 @ =gUnk_03000C00
	ldrb r2, [r2]
	orrs r2, r2
	bne _080088B2
	ldr r2, _08008AF8 @ =_080088B4
	ldrb r1, [r0, #0x14]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	ldr r2, _08008AFC @ =sub_08008880
	mov lr, r2
	bx r1

	thumb_func_start sub_08008880
sub_08008880: @ 0x08008880
	ldrb r1, [r0, #0x1c]
	movs r2, #3
	ands r1, r2
	beq _080088B2
	movs r3, #0xb
	ldrb r2, [r0, r3]
	cmp r2, #0x23
	beq _08008894
	bl sub_08003828
_08008894:
	ldrb r1, [r0, #0x18]
	subs r1, #1
	strb r1, [r0, #0x18]
	movs r2, #0xf
	ands r1, r2
	bne _080088A6
	movs r2, #1
	bl sub_080031AC
_080088A6:
	bl sub_08003688
	push {r0}
	bl sub_0803F0E4
	pop {r0}
_080088B2:
	pop {r4, pc}
	.align 2, 0
_080088B4: .4byte sub_080088C4
_080088B8: .4byte sub_08008940
_080088BC: .4byte sub_080089F4
_080088C0: .4byte sub_08008A7C

	thumb_func_start sub_080088C4
sub_080088C4: @ 0x080088C4
	push {lr}
	ldrb r1, [r0, #0x14]
	adds r1, #1
	strb r1, [r0, #0x14]
	movs r1, #9
	strb r1, [r0, #0x1b]
	ldr r1, _08008B00 @ =0x00000280
	str r1, [r0, #0xc]
	movs r1, #0x1e
	strb r1, [r0, #0x17]
	ldr r1, _08008B04 @ =gUnk_084299AC
	str r1, [r0, #0x48]
	movs r2, #3
	movs r1, #0x44
	strb r2, [r0, r1]
	movs r2, #0xa
	movs r1, #0x46
	strb r2, [r0, r1]
	movs r3, #0x14
	movs r2, #0x40
	strb r3, [r0, r2]
	movs r3, #4
	movs r2, #0x3f
	strb r3, [r0, r2]
	bl sub_08001D5C
	str r0, [r1, #0x2c]
	movs r3, #0x2b
	movs r2, #0xd
	ldrsb r2, [r1, r2]
	ldr r1, [r1, #0x28]
	str r1, [r0, #0x54]
	orrs r2, r2
	bpl _0800890E
	movs r2, #0x2a
	ldrb r2, [r1, r2]
	lsls r2, r2, #2
_0800890E:
	strb r2, [r0, r3]
	movs r2, #0x23
	movs r3, #0xb
	strb r3, [r0, r2]
	movs r2, #0x50
	ldrh r3, [r1, r2]
	strh r3, [r0, r2]
	ldr r2, _08008B08 @ =0x0000C000
	ands r3, r2
	ldr r2, _08008B0C @ =0x00008000
	cmp r2, r3
	bne _0800892A
	movs r3, #1
	strb r3, [r0, #0xb]
_0800892A:
	eors r3, r3
	strb r3, [r0, #0x1e]
	bl sub_0800238C
	push {r0}
	bl sub_080005F0
	pop {r0}
	bl sub_08008940
	pop {pc}

	thumb_func_start sub_08008940
sub_08008940: @ 0x08008940
	push {r4, lr}
	bl sub_08001D5C
	ldrb r2, [r1, #4]
	orrs r2, r2
	beq _08008964
	movs r3, #8
	tst r2, r3
	bne _08008964
	ldrh r2, [r1, #0x1a]
	orrs r2, r2
	bne _08008964
	ldr r2, [r1, #0x28]
	ldrb r2, [r2, #0x14]
	cmp r2, #1
	beq _0800897A
	cmp r2, #0x13
	beq _0800897A
_08008964:
	eors r2, r2
	str r2, [r1, #0x2c]
	push {r0}
	bl sub_08000620
	pop {r0}
	push {r0}
	bl sub_08012540
	pop {r0}
	pop {r4, pc}
_0800897A:
	ldr r1, [r0, #0x54]
	movs r2, #0x29
	ldrb r2, [r1, r2]
	lsrs r2, r2, #1
	blo _080089DA
	ldr r3, [r1, #0x1c]
	str r3, [r0, #0x1c]
	movs r2, #0x3c
	ldrb r3, [r1, r2]
	adds r3, #1
	strb r3, [r0, r2]
	movs r2, #0x5c
	ldrb r3, [r1, r2]
	strb r3, [r0, r2]
	movs r2, #0x2a
	ldrb r2, [r1, r2]
	lsrs r2, r2, #1
	lsls r2, r2, #2
	ldr r1, _08008B10 @ =_080089E4
	ldrsh r3, [r1, r2]
	ldrh r4, [r0, #0x32]
	adds r3, r3, r4
	strh r3, [r0, #0x32]
	adds r2, #2
	ldrsh r3, [r1, r2]
	ldrh r4, [r0, #0x36]
	adds r3, r3, r4
	strh r3, [r0, #0x36]
	ldr r1, [r0, #0x1c]
	ldr r2, _08008B14 @ =0xFF00FFFC
	ands r1, r2
	movs r2, #0xc1
	orrs r1, r2
	str r1, [r0, #0x1c]
	movs r1, #0xd4
	movs r2, #0x20
	strb r1, [r0, r2]
	ldrb r1, [r0, #0x14]
	adds r1, #1
	strb r1, [r0, #0x14]
	eors r1, r1
	bl sub_08003870
	bl sub_08001D5C
	eors r2, r2
	str r2, [r1, #0x2c]
	pop {r4, pc}
_080089DA:
	movs r3, #0x21
	strb r2, [r0, r3]
	movs r3, #0x28
	strb r2, [r0, r3]
	pop {r4, pc}
_080089E4:
	.byte 0x00, 0x00, 0xF8, 0xFF, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00
	.byte 0xF8, 0xFF, 0x00, 0x00

	thumb_func_start sub_080089F4
sub_080089F4: @ 0x080089F4
	push {r4, lr}
	bl sub_08008AD0
	push {r0}
	bl sub_0803CC20
	pop {r0}
	ldr r1, _08008B18 @ =_08008858
	movs r4, #0x2a
	ldrb r4, [r0, r4]
	lsrs r4, r4, #1
	lsls r4, r4, #1
	ldrsb r2, [r1, r4]
	adds r4, #1
	ldrsb r3, [r1, r4]
	movs r1, #2
	bl sub_08001B54
	bl sub_08009450
	movs r2, #0x46
	cmp r1, r2
	beq _08008A3C
	bl sub_08009404
	push {r0}
	adds r0, r1, #0
	ldr r1, _08008B1C @ =gUnk_08008840
	bl sub_080012D8
	pop {r0}
	bne _08008A3C
	ldr r1, _08008B20 @ =gUnk_08003538
	bl sub_08003754
	bne _08008A58
_08008A3C:
	ldrb r1, [r0, #0x17]
	subs r1, #1
	strb r1, [r0, #0x17]
	cmp r1, #0xc
	bhs _08008A4C
	ldr r2, [r0, #0xc]
	subs r2, #0x10
	str r2, [r0, #0xc]
_08008A4C:
	orrs r1, r1
	beq _08008A58
	movs r1, #0x41
	ldrsb r1, [r0, r1]
	orrs r1, r1
	beq _08008A7A
_08008A58:
	ldrb r1, [r0, #0x14]
	adds r1, #1
	strb r1, [r0, #0x14]
	movs r1, #0xc
	strb r1, [r0, #0x17]
	ldr r1, _08008B24 @ =0x000001C0
	str r1, [r0, #0xc]
	ldr r1, [r0, #0x30]
	lsls r1, r1, #1
	blo _08008A70
	eors r1, r1
	str r1, [r0, #0x30]
_08008A70:
	ldr r1, [r0, #0x34]
	lsls r1, r1, #1
	blo _08008A7A
	eors r1, r1
	str r1, [r0, #0x34]
_08008A7A:
	pop {r4, pc}

	thumb_func_start sub_08008A7C
sub_08008A7C: @ 0x08008A7C
	ldrb r1, [r0, #0x17]
	orrs r1, r1
	beq _08008A88
	subs r1, #1
	strb r1, [r0, #0x17]
	mov pc, lr
_08008A88:
	push {lr}
	bl sub_08008AD0
	ldr r1, [r0, #0xc]
	ldr r2, _08008B28 @ =0x00000180
	cmp r1, r2
	beq _08008A9A
	adds r1, #8
	str r1, [r0, #0xc]
_08008A9A:
	ldr r1, [r0, #0x54]
	push {r0, r1}
	bl sub_0803CECC
	adds r2, r0, #0
	pop {r0, r1}
	push {r0, r1}
	movs r1, #0x2b
	strb r2, [r0, r1]
	bl sub_0803CC20
	pop {r0, r1}
	movs r2, #2
	adds r3, r2, #0
	bl sub_0800391C
	beq _08008ACE
	push {r0}
	bl sub_08000620
	pop {r0}
	push {r0}
	bl sub_08012540
	pop {r0}
	pop {pc}
_08008ACE:
	pop {pc}

	thumb_func_start sub_08008AD0
sub_08008AD0: @ 0x08008AD0
	push {lr}
	ldrb r2, [r0, #0xb]
	orrs r2, r2
	bne _08008ADC
	bl sub_0800402C
_08008ADC:
	ldr r1, _08008B2C @ =_08008858
	movs r4, #0x2b
	ldrb r4, [r0, r4]
	lsrs r4, r4, #2
	lsls r4, r4, #1
	ldrsb r2, [r1, r4]
	adds r4, #1
	ldrsb r3, [r1, r4]
	movs r1, #2
	bl sub_08001B54
	pop {pc}
	.align 2, 0
_08008AF4: .4byte gUnk_03000C00
_08008AF8: .4byte _080088B4
_08008AFC: .4byte sub_08008880
_08008B00: .4byte 0x00000280
_08008B04: .4byte gUnk_084299AC
_08008B08: .4byte 0x0000C000
_08008B0C: .4byte 0x00008000
_08008B10: .4byte _080089E4
_08008B14: .4byte 0xFF00FFFC
_08008B18: .4byte _08008858
_08008B1C: .4byte gUnk_08008840
_08008B20: .4byte gUnk_08003538
_08008B24: .4byte 0x000001C0
_08008B28: .4byte 0x00000180
_08008B2C: .4byte _08008858

	thumb_func_start sub_08008B30
sub_08008B30: @ 0x08008B30
	ldr r0, _08008E64 @ =gUnk_03000450
	ldr r1, [r0]
	orrs r1, r1
	bne _08008B3A
	mov pc, lr
_08008B3A:
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	ldrh r4, [r0, #0x20]
	adds r3, r4, #0
	ldrh r5, [r0, #0x18]
	subs r4, r4, r5
	ldrh r2, [r1, #0x32]
	adds r3, #0x78
	cmp r2, r3
	bhs _08008B7C
	subs r5, r4, #1
	lsls r5, r5, #1
	bhs _08008BB2
	subs r3, r3, r2
	cmp r3, #4
	blo _08008B5C
	movs r3, #4
_08008B5C:
	subs r4, r4, r3
	bhs _08008B64
	adds r3, r3, r4
	movs r4, #0
_08008B64:
	ldrh r6, [r0, #0x20]
	subs r6, r6, r3
	strh r6, [r0, #0x20]
	movs r6, #7
	ands r6, r4
	beq _08008B76
	adds r6, r6, r3
	cmp r6, #8
	blo _08008BB2
_08008B76:
	adds r6, r4, #0
	movs r7, #1
	b _08008BB2
_08008B7C:
	cmp r3, r2
	bhs _08008BB2
	ldrh r6, [r0, #0x28]
	subs r6, #0xf0
	cmp r4, r6
	bhs _08008BB2
	subs r2, r2, r3
	cmp r2, #4
	blo _08008B90
	movs r2, #4
_08008B90:
	adds r4, r4, r2
	cmp r6, r4
	bhs _08008B9C
	subs r4, r4, r6
	subs r2, r2, r4
	adds r4, r6, #0
_08008B9C:
	ldrh r6, [r0, #0x20]
	adds r6, r6, r2
	strh r6, [r0, #0x20]
	movs r6, #7
	ands r6, r4
	beq _08008BAC
	cmp r6, r2
	bhs _08008BB2
_08008BAC:
	adds r6, r4, #0
	adds r6, #0xf0
	movs r7, #1
_08008BB2:
	cmp r7, #0
	beq _08008BCE
	ldr r7, _08008E68 @ =0x80000000
	cmp r6, r7
	bhs _08008BCE
	ldrh r7, [r0, #0x28]
	cmp r6, r7
	bhs _08008BCE
	ldr r2, _08008E6C @ =gUnk_02000028
	ldr r3, _08008E70 @ =gUnk_03000204
	ldrb r3, [r3]
	adds r2, r2, r3
	movs r3, #1
	strb r3, [r2]
_08008BCE:
	movs r7, #0
	ldrh r5, [r0, #0x22]
	adds r3, r5, #0
	ldrh r6, [r0, #0x1a]
	subs r5, r5, r6
	ldrh r2, [r1, #0x36]
	adds r3, #0x50
	cmp r2, r3
	bhs _08008C0E
	subs r6, r5, #1
	lsls r6, r6, #1
	bhs _08008C44
	subs r3, r3, r2
	cmp r3, #4
	blo _08008BEE
	movs r3, #4
_08008BEE:
	subs r5, r5, r3
	bhs _08008BF6
	adds r3, r3, r5
	movs r5, #0
_08008BF6:
	ldrh r6, [r0, #0x22]
	subs r6, r6, r3
	strh r6, [r0, #0x22]
	movs r6, #7
	ands r6, r5
	beq _08008C08
	adds r6, r6, r3
	cmp r6, #8
	blo _08008C44
_08008C08:
	adds r6, r5, #0
	movs r7, #1
	b _08008C44
_08008C0E:
	cmp r3, r2
	bhs _08008C44
	ldrh r6, [r0, #0x2a]
	subs r6, #0xa0
	cmp r5, r6
	bhs _08008C44
	subs r2, r2, r3
	cmp r2, #4
	blo _08008C22
	movs r2, #4
_08008C22:
	adds r5, r5, r2
	cmp r6, r5
	bhs _08008C2E
	subs r5, r5, r6
	subs r2, r2, r5
	adds r5, r6, #0
_08008C2E:
	ldrh r6, [r0, #0x22]
	adds r6, r6, r2
	strh r6, [r0, #0x22]
	movs r6, #7
	ands r6, r5
	beq _08008C3E
	cmp r6, r2
	bhs _08008C44
_08008C3E:
	adds r6, r5, #0
	adds r6, #0xa0
	movs r7, #1
_08008C44:
	cmp r7, #0
	beq _08008C60
	ldr r7, _08008E68 @ =0x80000000
	cmp r6, r7
	bhs _08008C60
	ldrh r7, [r0, #0x2a]
	cmp r6, r7
	bhs _08008C60
	ldr r2, _08008E74 @ =gUnk_02000028
	ldr r3, _08008E78 @ =gUnk_03000204
	ldrb r3, [r3]
	adds r2, r2, r3
	movs r3, #1
	strb r3, [r2]
_08008C60:
	movs r6, #0
	adds r7, r6, #0
	ldrh r2, [r0, #0x16]
	cmp r2, #0
	beq _08008C80
	subs r2, #1
	strh r2, [r0, #0x16]
	movs r6, #0xe
	ands r2, r6
	ldrb r6, [r0, #5]
	lsls r6, r6, #4
	adds r2, r2, r6
	ldr r3, _08008E7C @ =_08008CC0
	ldrsb r6, [r3, r2]
	adds r2, #1
	ldrsb r7, [r3, r2]
_08008C80:
	ldr r2, _08008E80 @ =gUnk_0201F020
	ldr r2, [r2]
	ldrh r3, [r0, #0x1c]
	adds r3, r3, r4
	adds r3, r3, r6
	strh r3, [r2, #2]
	ldr r2, _08008E84 @ =gUnk_0200B320
	ldr r2, [r2]
	strh r3, [r2, #2]
	ldrh r3, [r0, #0x1e]
	adds r3, r3, r5
	adds r3, r3, r7
	strh r3, [r2, #4]
	ldr r2, _08008E88 @ =gUnk_0201F020
	ldr r2, [r2]
	strh r3, [r2, #4]
	ldr r2, _08008E8C @ =gUnk_03000458
	ldrb r2, [r2]
	cmp r2, #0
	beq sub_08008CB4
	subs r2, #4
	ldr r3, _08008E90 @ =_08008D00
	ldr r2, [r3, r2]
	ldr r3, _08008E94 @ =sub_08008CB4
	mov lr, r3
	bx r2

	thumb_func_start sub_08008CB4
sub_08008CB4: @ 0x08008CB4
	ldrh r2, [r1, #0x32]
	strh r2, [r0, #0x24]
	ldrh r2, [r1, #0x36]
	strh r2, [r0, #0x26]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08008CC0:
	.byte 0x01, 0xFF, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0xFF, 0xFF, 0x01, 0x00, 0xFF, 0x01, 0x00, 0x00
	.byte 0x02, 0xFF, 0x01, 0xFE, 0x00, 0xFF, 0xFF, 0x00, 0xFE, 0x01, 0xFF, 0x02, 0x00, 0x00, 0x01, 0x01
	.byte 0x02, 0xFF, 0x03, 0xFE, 0xFE, 0x02, 0xFF, 0x03, 0xFD, 0xFF, 0xFE, 0x01, 0x01, 0xFD, 0xFF, 0xFE
	.byte 0x04, 0xFE, 0x02, 0x00, 0x00, 0xFE, 0xFE, 0x04, 0xFC, 0x02, 0xFE, 0x00, 0x00, 0xFC, 0x02, 0x00
_08008D00: .4byte sub_08008D0C
_08008D04: .4byte sub_08008D24
_08008D08: .4byte sub_08008D50

	thumb_func_start sub_08008D0C
sub_08008D0C: @ 0x08008D0C
	ldr r2, _08008E98 @ =gUnk_030059A0
	ldr r2, [r2]
	adds r2, #0x2c
	ldr r3, _08008E9C @ =gUnk_0201F020
	ldr r3, [r3]
	ldrh r4, [r3, #2]
	lsrs r4, r4, #2
	strh r4, [r2, #2]
	ldrh r4, [r3, #4]
	lsrs r4, r4, #2
	strh r4, [r2, #4]
	mov pc, lr

	thumb_func_start sub_08008D24
sub_08008D24: @ 0x08008D24
	ldr r2, _08008EA0 @ =gUnk_030059A0
	ldr r2, [r2]
	adds r2, #0x2c
	ldr r3, _08008EA4 @ =gUnk_0201F020
	ldr r3, [r3]
	ldr r5, [r0, #0x2c]
	ldr r6, _08008EA8 @ =0x00008000
	subs r5, r5, r6
	str r5, [r0, #0x2c]
	lsrs r5, r5, #0x10
	ldrh r4, [r3, #2]
	adds r5, r5, r4
	strh r5, [r2, #2]
	ldr r6, [r0, #0x30]
	ldr r7, _08008EA8 @ =0x00008000
	subs r6, r6, r7
	str r6, [r0, #0x30]
	lsrs r6, r6, #0x10
	ldrh r4, [r3, #4]
	adds r6, r6, r4
	strh r6, [r2, #4]
	mov pc, lr

	thumb_func_start sub_08008D50
sub_08008D50: @ 0x08008D50
	ldr r2, _08008EAC @ =gUnk_030059A0
	ldr r2, [r2]
	adds r2, #0x2c
	ldr r3, _08008EB0 @ =gUnk_0201F020
	ldr r3, [r3]
	ldr r5, [r0, #0x2c]
	ldr r6, _08008EB4 @ =0x00002000
	subs r5, r5, r6
	str r5, [r0, #0x2c]
	lsrs r5, r5, #0x10
	ldrh r4, [r3, #2]
	adds r5, r5, r4
	strh r5, [r2, #2]
	ldrh r4, [r3, #4]
	lsrs r4, r4, #2
	strh r4, [r2, #4]
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08008D74
sub_08008D74: @ 0x08008D74
	push {r4, r5, r6, r7, lr}
	ldr r0, _08008EB8 @ =gUnk_03000450
	ldr r2, _08008EBC @ =gUnk_03000458
	ldrb r2, [r2]
	cmp r2, #0
	beq sub_08008D8C
	subs r2, #4
	ldr r3, _08008EC0 @ =_08008D00
	ldr r2, [r3, r2]
	ldr r3, _08008EC4 @ =sub_08008D8C
	mov lr, r3
	bx r2

	thumb_func_start sub_08008D8C
sub_08008D8C: @ 0x08008D8C
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08008D90
sub_08008D90: @ 0x08008D90
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x32]
	ldrh r1, [r4, #0x36]
	ldr r2, _08008EA8 @ =0x00008000
	bl sub_08009310
	ldr r5, _08008EC8 @ =0x00004000
	cmp r0, #0
	beq _08008DC2
	bl sub_080094BC
	cmp r0, #0x48
	beq _08008DC0
	cmp r0, #0x47
	beq _08008DC0
	subs r0, #0x56
	cmp r0, #5
	blo _08008DC0
	subs r0, #0xe
	cmp r0, #4
	blo _08008DC0
	lsls r5, r5, #1
	b _08008DC2
_08008DC0:
	ldr r5, _08008ECC @ =0x0000C000
_08008DC2:
	movs r1, #0x50
	ldrh r2, [r4, r1]
	lsls r2, r2, #0x12
	lsrs r2, r2, #0x12
	orrs r2, r5
	strh r2, [r4, r1]
	adds r0, r4, #0
	bl sub_08008DD8
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08008DD8
sub_08008DD8: @ 0x08008DD8
	movs r1, #0x50
	ldrh r1, [r0, r1]
	lsrs r1, r1, #0xf
	movs r2, #3
	eors r1, r2
	subs r1, #1
	lsls r1, r1, #6
	ldrb r2, [r0, #0x1d]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1a
	orrs r2, r1
	strb r2, [r0, #0x1d]
	ldrb r2, [r0, #0x1f]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1a
	orrs r2, r1
	strb r2, [r0, #0x1f]
	mov pc, lr

	thumb_func_start sub_08008DFC
sub_08008DFC: @ 0x08008DFC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x32]
	ldrh r1, [r4, #0x36]
	ldr r2, _08008EA8 @ =0x00008000
	bl _08009364
	ldr r1, _08008ED0 @ =_08008E34 - 6
_08008E0C:
	adds r1, #6
	ldrh r2, [r1]
	cmp r2, #0
	beq _08008E30
	cmp r0, r2
	bne _08008E0C
	movs r2, #0x50
	ldrh r3, [r4, r2]
	ldr r0, _08008ECC @ =0x0000C000
	ands r0, r3
	ldrh r5, [r1, #2]
	cmp r0, r5
	beq _08008E30
	lsls r3, r3, #0x12
	lsrs r3, r3, #0x12
	ldrh r5, [r1, #4]
	orrs r3, r5
	strh r3, [r4, r2]
_08008E30:
	adds r0, r4, #0
	pop {r4, r5, pc}
_08008E34:
	.byte 0x02, 0x00, 0x00, 0x80, 0x00, 0x40, 0x03, 0x00, 0x00, 0x40, 0x00, 0x80
	.byte 0x48, 0x00, 0x00, 0xC0, 0x00, 0xC0, 0x47, 0x00, 0x00, 0xC0, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x00

	thumb_func_start sub_08008E50
sub_08008E50: @ 0x08008E50
	push {lr}
	bl sub_08008DFC
	bl sub_08008DD8
	pop {pc}

	thumb_func_start sub_08008E5C
sub_08008E5C: @ 0x08008E5C
	ldr r1, _08008ED4 @ =gUnk_0200B324
	lsls r0, r0, #1
	ldrh r0, [r1, r0]
	mov pc, lr
	.align 2, 0
_08008E64: .4byte gUnk_03000450
_08008E68: .4byte 0x80000000
_08008E6C: .4byte gUnk_02000028
_08008E70: .4byte gUnk_03000204
_08008E74: .4byte gUnk_02000028
_08008E78: .4byte gUnk_03000204
_08008E7C: .4byte _08008CC0
_08008E80: .4byte gUnk_0201F020
_08008E84: .4byte gUnk_0200B320
_08008E88: .4byte gUnk_0201F020
_08008E8C: .4byte gUnk_03000458
_08008E90: .4byte _08008D00
_08008E94: .4byte sub_08008CB4
_08008E98: .4byte gUnk_030059A0
_08008E9C: .4byte gUnk_0201F020
_08008EA0: .4byte gUnk_030059A0
_08008EA4: .4byte gUnk_0201F020
_08008EA8: .4byte 0x00008000
_08008EAC: .4byte gUnk_030059A0
_08008EB0: .4byte gUnk_0201F020
_08008EB4: .4byte 0x00002000
_08008EB8: .4byte gUnk_03000450
_08008EBC: .4byte gUnk_03000458
_08008EC0: .4byte _08008D00
_08008EC4: .4byte sub_08008D8C
_08008EC8: .4byte 0x00004000
_08008ECC: .4byte 0x0000C000
_08008ED0: .4byte _08008E34 - 6
_08008ED4: .4byte gUnk_0200B324

	thumb_func_start sub_08008ED8
sub_08008ED8: @ 0x08008ED8
	push {r4, r5, lr}
	ldr r0, _08008F18 @ =gUnk_02000028
	ldr r1, _08008F1C @ =gUnk_03000204
	ldrb r1, [r1]
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq sub_08008F06
	ldr r0, _08008F20 @ =gUnk_03000204
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r5, _08008F24 @ =_08008F08
	adds r5, r5, r0
	ldr r0, [r5]
	ldr r1, _08008F28 @ =gUnk_02016D90
	ldr r2, _08008F2C @ =sub_08008EFC
	mov lr, r2
	ldr r4, _08008F30 @ =gUnk_03000530
	bx r4

	thumb_func_start sub_08008EFC
sub_08008EFC: @ 0x08008EFC
	ldr r0, [r5, #4]
	ldr r1, _08008F34 @ =gUnk_020031D0
	ldr r2, _08008F38 @ =sub_08008F06
	mov lr, r2
	bx r4

	non_word_aligned_thumb_func_start sub_08008F06
sub_08008F06: @ 0x08008F06
	pop {r4, r5, pc}
	.align 2, 0
_08008F08: .4byte gUnk_02000440
_08008F0C: .4byte gUnk_02000C40
_08008F10: .4byte gUnk_02001440
_08008F14: .4byte gUnk_02001C40
_08008F18: .4byte gUnk_02000028
_08008F1C: .4byte gUnk_03000204
_08008F20: .4byte gUnk_03000204
_08008F24: .4byte _08008F08
_08008F28: .4byte gUnk_02016D90
_08008F2C: .4byte sub_08008EFC
_08008F30: .4byte gUnk_03000530
_08008F34: .4byte gUnk_020031D0
_08008F38: .4byte sub_08008F06

	thumb_func_start sub_08008F3C
sub_08008F3C: @ 0x08008F3C
	lsrs r2, r2, #0xe
	lsls r2, r2, #2
	ldr r3, _08008F90 @ =_080092A0
	ldr r2, [r3, r2]
	strb r0, [r2, r1]
	mov pc, lr

	thumb_func_start sub_08008F48
sub_08008F48: @ 0x08008F48
	lsrs r2, r2, #0xe
	lsls r2, r2, #3
	ldr r3, _08008F94 @ =_08009280
	ldr r2, [r3, r2]
	lsls r1, r1, #1
	strh r0, [r2, r1]
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08008F58
sub_08008F58: @ 0x08008F58
	lsrs r1, r1, #0xe
	lsls r1, r1, #3
	ldr r2, _08008F98 @ =_08009280
	ldr r1, [r2, r1]
	lsls r0, r0, #1
	ldrh r0, [r1, r0]
	mov pc, lr
	.align 2, 0
_08008F68: .4byte gUnk_02025024
_08008F6C: .4byte gUnk_02025024
_08008F70: .4byte gUnk_02011324
_08008F74: .4byte gUnk_02025024

	thumb_func_start sub_08008F78
sub_08008F78: @ 0x08008F78
	lsrs r2, r2, #0xe
	lsls r2, r2, #2
	ldr r3, _08008F9C @ =_08008F68
	ldr r3, [r3, r2]
	lsls r0, r0, #1
	ldrh r0, [r3, r0]
	lsls r2, r2, #1
	ldr r3, _08008FA0 @ =_08009280
	ldr r2, [r3, r2]
	lsls r1, r1, #1
	strh r0, [r2, r1]
	mov pc, lr
	.align 2, 0
_08008F90: .4byte _080092A0
_08008F94: .4byte _08009280
_08008F98: .4byte _08009280
_08008F9C: .4byte _08008F68
_08008FA0: .4byte _08009280

	arm_func_start sub_08008FA4
sub_08008FA4: @ 0x08008FA4
	push {r4, r5, r6, r7}
	ldr r2, _0800927C @ =gUnk_03000450
	ldrh r4, [r2, #0x20]
	ldrh r5, [r2, #0x18]
	sub r4, r4, r5
	ldrh r5, [r2, #0x1c]
	add r5, r4, r5
	lsrs r5, r5, #3
	lsrs r4, r4, #3
	cmp r4, #1
	blo _08008FD8
	sub r4, r4, #1
	sub r5, r5, #1
_08008FD8:
	and r5, r5, #0x1f
	lsls r5, r5, #1
	ldrh r6, [r2, #0x22]
	ldrh r7, [r2, #0x1a]
	sub r6, r6, r7
	ldrh r7, [r2, #0x1e]
	add r7, r6, r7
	lsrs r6, r6, #3
	lsrs r7, r7, #3
	cmp r6, #2
	blo _0800900C
	sub r6, r6, #2
	sub r7, r7, #2
_0800900C:
	and r7, r7, #0x1f
	lsls r7, r7, #1
	add r4, r4, r6, lsl #7
	add r1, r1, r4, lsl #1
	mov r2, #0x18
	mov r3, #2
	tst r1, r3
	beq _08009158
_0800902C:
	mov r3, r5
	add r6, r0, r7, lsl #5
	ldrh r4, [r1]
	strh r4, [r6, r3]
	add r3, r3, #2
	and r3, r3, #0x3c
	ldr r4, [r1, #2]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #6]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #0xa]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #0xe]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #0x12]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #0x16]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #0x1a]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #0x1e]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #0x22]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #0x26]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #0x2a]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #0x2e]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #0x32]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #0x36]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #0x3a]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldrh r4, [r1, #0x3e]
	strh r4, [r6, r3]
	add r7, r7, #2
	and r7, r7, #0x3e
	add r1, r1, #0x100
	subs r2, r2, #1
	bne _0800902C
	pop {r4, r5, r6, r7}
	bx lr
_08009158:
	mov r3, r5
	add r6, r0, r7, lsl #5
	ldr r4, [r1]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #4]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #8]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #0xc]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #0x10]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #0x14]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #0x18]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #0x1c]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #0x20]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #0x24]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #0x28]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #0x2c]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #0x30]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #0x34]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #0x38]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	ldr r4, [r1, #0x3c]
	str r4, [r6, r3]
	add r3, r3, #4
	and r3, r3, #0x3c
	add r7, r7, #2
	and r7, r7, #0x3e
	add r1, r1, #0x100
	subs r2, r2, #1
	bne _08009158
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_0800927C: .4byte gUnk_03000450
_08009280: .4byte gUnk_0201F024
_08009284: .4byte gUnk_02024024
_08009288: .4byte gUnk_0201F024
_0800928C: .4byte gUnk_02024024
_08009290: .4byte gUnk_0200B324
_08009294: .4byte gUnk_02010324
_08009298: .4byte gUnk_0201F024
_0800929C: .4byte gUnk_02024024
_080092A0: .4byte gUnk_02021024
_080092A4: .4byte gUnk_02021024
_080092A8: .4byte gUnk_0200D324
_080092AC: .4byte gUnk_02021024
_080092B0: .4byte gUnk_02022024
_080092B4: .4byte gUnk_02024024
_080092B8: .4byte gUnk_02022024
_080092BC: .4byte gUnk_02024024
_080092C0: .4byte gUnk_0200E324
_080092C4: .4byte gUnk_02010324
_080092C8: .4byte gUnk_02022024
_080092CC: .4byte gUnk_02024024

	thumb_func_start sub_080092D0
sub_080092D0: @ 0x080092D0
	movs r2, #0x50
	ldrh r2, [r0, r2]
	ldrh r1, [r0, #0x36]
	ldrh r0, [r0, #0x32]
	ldr r3, _080094E4 @ =gUnk_03000468
	ldrh r3, [r3]
	subs r0, r0, r3
	ldr r3, _080094E8 @ =gUnk_0300046A
	ldrh r3, [r3]
	subs r1, r1, r3
	lsls r0, r0, #0x16
	lsls r1, r1, #0x16
	lsrs r0, r0, #0x1a
	lsrs r1, r1, #0x1a
	lsls r1, r1, #6
	adds r0, r0, r1
	adds r1, r2, #0
	movs r0, r0
	ldr r2, _080094EC @ =_080092B0
	b _0800932E

	thumb_func_start sub_080092F8
sub_080092F8: @ 0x080092F8
	ldrh r3, [r0, #0x32]
	adds r3, r3, r1
	ldrh r1, [r0, #0x36]
	adds r1, r1, r2
	movs r2, #0x50
	ldrh r2, [r0, r2]
	adds r0, r3, #0
	b sub_08009310

	thumb_func_start sub_08009308
sub_08009308: @ 0x08009308
	movs r2, #0x50
	ldrh r2, [r0, r2]
	ldrh r1, [r0, #0x36]
	ldrh r0, [r0, #0x32]

	thumb_func_start sub_08009310
sub_08009310:
	ldr r3, _080094F0 @ =gUnk_03000468
	ldrh r3, [r3]
	subs r0, r0, r3
	ldr r3, _080094F4 @ =gUnk_0300046A
	ldrh r3, [r3]
	subs r1, r1, r3
	lsls r0, r0, #0x16
	lsls r1, r1, #0x16
	lsrs r0, r0, #0x1a
	lsrs r1, r1, #0x1a
	lsls r1, r1, #6
	adds r0, r0, r1
	adds r1, r2, #0
	movs r0, r0

	thumb_func_start sub_0800932C
sub_0800932C: @ 0x0800932C
	ldr r2, _080094F8 @ =_08009280
_0800932E:
	lsrs r1, r1, #0xe
	lsls r1, r1, #3
	adds r2, r2, r1
	ldr r1, [r2]
	lsls r0, r0, #1
	ldrh r0, [r1, r0]
	ldr r1, _080094FC @ =0x00007FFF
	ands r0, r1
	ldr r1, _08009500 @ =0x00004000
	tst r0, r1
	bne _0800934A
	lsls r0, r0, #1
	ldr r1, [r2, #4]
	ldrh r0, [r1, r0]
_0800934A:
	mov pc, lr

	thumb_func_start sub_0800934C
sub_0800934C: @ 0x0800934C
	ldrh r3, [r0, #0x32]
	adds r3, r3, r1
	ldrh r1, [r0, #0x36]
	adds r1, r1, r2
	movs r2, #0x50
	ldrh r2, [r0, r2]
	adds r0, r3, #0
	b _08009364

	thumb_func_start sub_0800935C
sub_0800935C: @ 0x0800935C
	movs r2, #0x50
	ldrh r2, [r0, r2]
	ldrh r1, [r0, #0x36]
	ldrh r0, [r0, #0x32]
_08009364:
	ldr r3, _08009504 @ =gUnk_03000468
	ldrh r3, [r3]
	subs r0, r0, r3
	ldr r3, _08009508 @ =gUnk_0300046A
	ldrh r3, [r3]
	subs r1, r1, r3
	lsls r0, r0, #0x16
	lsls r1, r1, #0x16
	lsrs r0, r0, #0x1a
	lsrs r1, r1, #0x1a
	lsls r1, r1, #6
	adds r0, r0, r1
	adds r1, r2, #0
	movs r0, r0

	thumb_func_start sub_08009380
sub_08009380: @ 0x08009380
	push {lr}
	bl sub_0800932C
	ldr r1, _08009500 @ =0x00004000
	tst r0, r1
	bne _08009392
	ldr r1, _0800950C @ =gUnk_0814791C
	lsls r0, r0, #1
	ldrh r0, [r1, r0]
_08009392:
	pop {pc}

	thumb_func_start sub_08009394
sub_08009394: @ 0x08009394
	ldrh r3, [r0, #0x32]
	adds r3, r3, r1
	ldrh r1, [r0, #0x36]
	adds r1, r1, r2
	movs r2, #0x50
	ldrh r2, [r0, r2]
	adds r0, r3, #0
	b sub_080093AC

	thumb_func_start sub_080093A4
sub_080093A4: @ 0x080093A4
	movs r2, #0x50
	ldrh r2, [r0, r2]
	ldrh r1, [r0, #0x36]
	ldrh r0, [r0, #0x32]

	thumb_func_start sub_080093AC
sub_080093AC:
	ldr r3, _08009510 @ =gUnk_03000468
	ldrh r3, [r3]
	subs r0, r0, r3
	ldr r3, _08009514 @ =gUnk_0300046A
	ldrh r3, [r3]
	subs r1, r1, r3
	lsls r0, r0, #0x16
	lsls r1, r1, #0x16
	lsrs r0, r0, #0x1a
	lsrs r1, r1, #0x1a
	lsls r1, r1, #6
	adds r0, r0, r1
	adds r1, r2, #0
	movs r0, r0

	thumb_func_start sub_080093C8
sub_080093C8: @ 0x080093C8
	ldr r2, _08009518 @ =_080092A0
	lsrs r1, r1, #0xe
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	ldrb r0, [r1, r0]
	mov pc, lr

	thumb_func_start sub_080093D4
sub_080093D4: @ 0x080093D4
	ldrh r1, [r0, #0x32]
	ldrh r2, [r0, #0x36]
	ldr r3, _0800951C @ =gUnk_03000468
	ldrh r3, [r3]
	subs r1, r1, r3
	ldr r3, _08009520 @ =gUnk_0300046A
	ldrh r3, [r3]
	subs r2, r2, r3
	movs r3, #0x50
	ldrh r3, [r0, r3]
	lsls r1, r1, #0x16
	lsls r2, r2, #0x16
	lsrs r1, r1, #0x1a
	lsrs r2, r2, #0x1a
	lsls r2, r2, #6
	adds r1, r1, r2
	ldr r2, _08009524 @ =_080092B0
	b _0800932E

	thumb_func_start sub_080093F8
sub_080093F8: @ 0x080093F8
	ldrh r3, [r0, #0x32]
	adds r1, r1, r3
	ldrh r3, [r0, #0x36]
	adds r2, r2, r3
	b _08009408
	.align 2, 0

	thumb_func_start sub_08009404
sub_08009404: @ 0x08009404
	ldrh r1, [r0, #0x32]
	ldrh r2, [r0, #0x36]
_08009408:
	ldr r3, _08009528 @ =gUnk_03000468
	ldrh r3, [r3]
	subs r1, r1, r3
	ldr r3, _0800952C @ =gUnk_0300046A
	ldrh r3, [r3]
	subs r2, r2, r3
	movs r3, #0x50
	ldrh r3, [r0, r3]
	lsls r1, r1, #0x16
	lsls r2, r2, #0x16
	lsrs r1, r1, #0x1a
	lsrs r2, r2, #0x1a
	lsls r2, r2, #6
	adds r1, r1, r2

	thumb_func_start sub_08009424
sub_08009424: @ 0x08009424
	ldr r2, _08009530 @ =_08009280
	lsrs r3, r3, #0xe
	lsls r3, r3, #3
	adds r2, r2, r3
	ldr r3, [r2]
	lsls r1, r1, #1
	ldrh r1, [r3, r1]
	ldr r3, _080094FC @ =0x00007FFF
	ands r1, r3
	ldr r3, _08009500 @ =0x00004000
	tst r1, r3
	bne _08009442
	lsls r1, r1, #1
	ldr r3, [r2, #4]
	ldrh r1, [r3, r1]
_08009442:
	mov pc, lr

	thumb_func_start sub_08009444
sub_08009444: @ 0x08009444
	ldrh r3, [r0, #0x32]
	adds r1, r1, r3
	ldrh r3, [r0, #0x36]
	adds r2, r2, r3
	b _08009454
	.align 2, 0

	thumb_func_start sub_08009450
sub_08009450: @ 0x08009450
	ldrh r1, [r0, #0x32]
	ldrh r2, [r0, #0x36]
_08009454:
	ldr r3, _08009534 @ =gUnk_03000468
	ldrh r3, [r3]
	subs r1, r1, r3
	ldr r3, _08009538 @ =gUnk_0300046A
	ldrh r3, [r3]
	subs r2, r2, r3
	movs r3, #0x50
	ldrh r3, [r0, r3]
	lsls r1, r1, #0x16
	lsls r2, r2, #0x16
	lsrs r1, r1, #0x1a
	lsrs r2, r2, #0x1a
	lsls r2, r2, #6
	adds r1, r1, r2
	push {lr}
	bl sub_08009424
	ldr r2, _08009500 @ =0x00004000
	tst r1, r2
	bne _08009482
	ldr r2, _0800953C @ =gUnk_0814791C
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
_08009482:
	pop {pc}

	thumb_func_start sub_08009484
sub_08009484: @ 0x08009484
	ldrh r3, [r0, #0x32]
	adds r1, r1, r3
	ldrh r3, [r0, #0x36]
	adds r2, r2, r3
	b _08009494
	.align 2, 0

	thumb_func_start sub_08009490
sub_08009490: @ 0x08009490
	ldrh r1, [r0, #0x32]
	ldrh r2, [r0, #0x36]
_08009494:
	ldr r3, _08009540 @ =gUnk_03000468
	ldrh r3, [r3]
	subs r1, r1, r3
	ldr r3, _08009544 @ =gUnk_0300046A
	ldrh r3, [r3]
	subs r2, r2, r3
	movs r3, #0x50
	ldrh r3, [r0, r3]
	lsls r1, r1, #0x16
	lsls r2, r2, #0x16
	lsrs r1, r1, #0x1a
	lsrs r2, r2, #0x1a
	lsls r2, r2, #6
	adds r1, r1, r2

	thumb_func_start sub_080094B0
sub_080094B0: @ 0x080094B0
	ldr r2, _08009548 @ =_080092A0
	lsrs r3, r3, #0xe
	lsls r3, r3, #2
	ldr r3, [r2, r3]
	ldrb r1, [r3, r1]
	mov pc, lr

	thumb_func_start sub_080094BC
sub_080094BC: @ 0x080094BC
	ldr r1, _08009500 @ =0x00004000
	tst r1, r0
	bne _080094C8
	ldr r1, _0800954C @ =gUnk_0814791C
	lsls r0, r0, #1
	ldrh r0, [r1, r0]
_080094C8:
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_080094CC
sub_080094CC: @ 0x080094CC
	ldr r2, _08009500 @ =0x00004000
	cmp r0, r2
	bhs _080094E0
	ldr r2, _08009550 @ =_08009280
	lsrs r1, r1, #0xe
	lsls r1, r1, #3
	adds r2, r2, r1
	ldr r1, [r2, #4]
	lsls r0, r0, #1
	ldrh r0, [r1, r0]
_080094E0:
	mov pc, lr
	.align 2, 0
_080094E4: .4byte gUnk_03000468
_080094E8: .4byte gUnk_0300046A
_080094EC: .4byte _080092B0
_080094F0: .4byte gUnk_03000468
_080094F4: .4byte gUnk_0300046A
_080094F8: .4byte _08009280
_080094FC: .4byte 0x00007FFF
_08009500: .4byte 0x00004000
_08009504: .4byte gUnk_03000468
_08009508: .4byte gUnk_0300046A
_0800950C: .4byte gUnk_0814791C
_08009510: .4byte gUnk_03000468
_08009514: .4byte gUnk_0300046A
_08009518: .4byte _080092A0
_0800951C: .4byte gUnk_03000468
_08009520: .4byte gUnk_0300046A
_08009524: .4byte _080092B0
_08009528: .4byte gUnk_03000468
_0800952C: .4byte gUnk_0300046A
_08009530: .4byte _08009280
_08009534: .4byte gUnk_03000468
_08009538: .4byte gUnk_0300046A
_0800953C: .4byte gUnk_0814791C
_08009540: .4byte gUnk_03000468
_08009544: .4byte gUnk_0300046A
_08009548: .4byte _080092A0
_0800954C: .4byte gUnk_0814791C
_08009550: .4byte _08009280

	thumb_func_start sub_08009554
sub_08009554: @ 0x08009554
	mov r3, lr
	push {r3, r4}
	adds r4, r0, #0
	ldrb r2, [r0, #0x14]
	cmp r2, #0
	beq _0800957C
	ldr r1, _0800984C @ =gUnk_03006D14
	ldrh r1, [r1]
	cmp r1, #0
	bne _0800959C
	bl sub_08003130
_0800956C:
	adds r0, r4, #0
	ldrb r1, [r0, #9]
	lsls r1, r1, #2
	ldr r2, _08009850 @ =gUnk_0813EC74
	ldr r1, [r2, r1]
	ldr r2, _08009854 @ =sub_08009590
	mov lr, r2
	bx r1
_0800957C:
	bl sub_08043B94
	cmp r0, #0
	beq _0800956C
	adds r0, r4, #0
	bl sub_08012540
	pop {r3, r4}
	bx r3
	.align 2, 0

	thumb_func_start sub_08009590
sub_08009590: @ 0x08009590
	adds r0, r4, #0
	movs r1, #0x41
	ldrb r2, [r0, r1]
	movs r3, #0x7f
	ands r2, r3
	strb r2, [r0, r1]
_0800959C:
	bl sub_08003688
	pop {r3, r4}
	bx r3

	thumb_func_start sub_080095A4
sub_080095A4: @ 0x080095A4
	ldr r1, _08009858 @ =gUnk_03000208
	ldrh r1, [r1, #2]
	cmp r1, #0
	bne _080095AE
	mov pc, lr
_080095AE:
	push {lr}
	lsrs r1, r1, #1
	blo _080095B8
	bl sub_080095CC
_080095B8:
	lsrs r1, r1, #1
	blo _080095C0
	bl sub_080095D4
_080095C0:
	lsrs r1, r1, #1
	blo _080095C8
	bl sub_080095E8
_080095C8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080095CC
sub_080095CC: @ 0x080095CC
	movs r2, #0x45
	movs r3, #0
	strb r3, [r0, r2]
	mov pc, lr

	thumb_func_start sub_080095D4
sub_080095D4: @ 0x080095D4
	movs r2, #0x6c
	ldrb r3, [r0, r2]
	cmp r3, #0
	beq _080095E6
	movs r3, #1
	strb r3, [r0, r2]
	movs r2, #0x6b
	movs r3, #0
	strb r3, [r0, r2]
_080095E6:
	mov pc, lr

	thumb_func_start sub_080095E8
sub_080095E8: @ 0x080095E8
	ldr r2, _0800985C @ =gUnk_0201EFF0
	ldrb r3, [r2]
	adds r3, #1
	strb r3, [r2]
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_080095F4
sub_080095F4: @ 0x080095F4
	movs r1, #0x3c
	ldrb r2, [r0, r1]
	cmp r2, #0
	beq _0800960E
	movs r2, #0
	strb r2, [r0, r1]
	movs r1, #1
	movs r2, #0x29
	ldrb r2, [r0, r2]
	lsrs r2, r2, #7
	blo _0800960C
	movs r1, #0x20
_0800960C:
	strb r1, [r0, #0x17]
_0800960E:
	push {lr}
	ldrb r1, [r0, #0x17]
	subs r1, #1
	beq _0800961E
	strb r1, [r0, #0x17]
	bl sub_08003834
	pop {pc}
_0800961E:
	bl sub_08003A48
	pop {pc}

	thumb_func_start sub_08009624
sub_08009624: @ 0x08009624
	push {lr}
	movs r1, #0x3e
	ldrb r1, [r0, r1]
	bl sub_08002EB8
	pop {pc}

	thumb_func_start sub_08009630
sub_08009630: @ 0x08009630
	push {lr}
	movs r1, #0x3e
	ldrb r1, [r0, r1]
	bl sub_08002E8C
	pop {pc}

	thumb_func_start sub_0800963C
sub_0800963C: @ 0x0800963C
	push {lr}
	bl sub_080096D8
	bl sub_0800303C
	adds r0, r1, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0800964C
sub_0800964C: @ 0x0800964C
	push {lr}
	bl sub_080096D8
	push {r0, r1}
	bl sub_0800303C
	pop {r0, r1}
	bl sub_080038E8
	adds r0, r1, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08009664
sub_08009664: @ 0x08009664
	push {lr}
	movs r1, #8
	strh r1, [r0, #0x2c]
	bl sub_080096DC
	bl sub_0800303C
	adds r0, r1, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08009678
sub_08009678: @ 0x08009678
	push {lr}
	movs r1, #8
	strh r1, [r0, #0x2c]
	bl sub_080096DC
	push {r0, r1}
	bl sub_0800303C
	pop {r0, r1}
	bl sub_080038E8
	adds r0, r1, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08009694
sub_08009694: @ 0x08009694
	push {lr}
	movs r1, #4
	strh r1, [r0, #0x2c]
	bl sub_080096DC
	push {r0, r1}
	bl sub_0800303C
	pop {r0, r1}
	bl sub_080038E8
	adds r0, r1, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080096B0
sub_080096B0: @ 0x080096B0
	push {lr}
	movs r1, #0xc
	strh r1, [r0, #0x2c]
	bl sub_080096DC
	bl sub_0800303C
	adds r0, r1, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080096C4
sub_080096C4: @ 0x080096C4
	push {lr}
	movs r1, #0x10
	strh r1, [r0, #0x2c]
	bl sub_080096DC
	bl sub_0800303C
	adds r0, r1, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080096D8
sub_080096D8: @ 0x080096D8
	movs r1, #0
	strh r1, [r0, #0x2c]

	thumb_func_start sub_080096DC
sub_080096DC: @ 0x080096DC
	push {r4, r5, r6, r7, lr}
	movs r1, #0
	mov ip, r1
	adds r1, r0, #0
	adds r1, #0x48
	ldrh r7, [r1, #8]
	lsrs r7, r7, #0xe
	lsls r7, r7, #2
	ldr r6, _08009860 @ =_080092A0
	ldr r7, [r6, r7]
	ldr r1, [r1]
	ldr r6, _08009864 @ =gUnk_03000450
	ldrh r2, [r0, #0x32]
	ldrh r3, [r6, #0x18]
	subs r2, r2, r3
	movs r4, #0
	ldrsb r5, [r1, r4]
	adds r2, r2, r5
	ldrh r3, [r0, #0x36]
	ldrh r6, [r6, #0x1a]
	subs r3, r3, r6
	movs r4, #1
	ldrsb r5, [r1, r4]
	adds r3, r3, r5
	push {r2, r3}
	movs r4, #0x2b
	ldrb r5, [r0, r4]
	cmp r5, #0x10
	ldrb r4, [r1, #2]
	blo _0800971E
	subs r2, r2, r4
	ldr r6, _08009868 @ =0x00000400
	b _08009722
_0800971E:
	adds r2, r2, r4
	ldr r6, _0800986C @ =0x00004000
_08009722:
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x16
	ldrb r4, [r1, #3]
	adds r3, r3, r4
	lsls r3, r3, #0x16
	lsrs r3, r3, #0x16
	bl sub_08009780
	lsrs r6, r6, #1
	ldrb r4, [r1, #3]
	subs r3, r3, r4
	subs r3, r3, r4
	lsls r3, r3, #0x16
	lsrs r3, r3, #0x16
	bl sub_08009780
	pop {r2, r3}
	movs r4, #0x2b
	ldrb r5, [r0, r4]
	subs r5, #8
	cmp r5, #0x10
	ldrb r4, [r1, #5]
	blo _08009756
	subs r3, r3, r4
	movs r6, #4
	b _0800975A
_08009756:
	adds r3, r3, r4
	movs r6, #0x40
_0800975A:
	lsls r3, r3, #0x16
	lsrs r3, r3, #0x16
	ldrb r4, [r1, #4]
	adds r2, r2, r4
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x16
	bl sub_08009780
	lsrs r6, r6, #1
	ldrb r4, [r1, #4]
	subs r2, r2, r4
	subs r2, r2, r4
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x16
	bl sub_08009780
	mov r1, ip
	strh r1, [r0, #0x2c]
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08009780
sub_08009780: @ 0x08009780
	ldrh r4, [r0, #0x2c]
	ldr r5, _08009870 @ =_08009788
	ldr r4, [r5, r4]
	bx r4
	.align 2, 0
_08009788: .4byte sub_0800979C
_0800978C: .4byte sub_080097F8
_08009790: .4byte sub_080097D8
_08009794: .4byte sub_08009810
_08009798: .4byte sub_08009830

	thumb_func_start sub_0800979C
sub_0800979C: @ 0x0800979C
	lsrs r4, r2, #4
	lsrs r5, r3, #4
	lsls r5, r5, #6
	adds r4, r4, r5
	ldrb r4, [r7, r4]
	adds r5, r4, #0
	subs r5, #0x10
	cmp r5, #0xef
	blo _080097C8
_080097AE:
	movs r5, #8
	tst r3, r5
	bne _080097B6
	lsrs r4, r4, #2
_080097B6:
	tst r2, r5
	bne _080097BC
	lsrs r4, r4, #1
_080097BC:
	lsrs r4, r4, #1
	blo _080097C6
	mov r4, ip
	orrs r4, r6
	mov ip, r4
_080097C6:
	mov pc, lr
_080097C8:
	cmp r4, #0x22
	beq _080097C6
	cmp r4, #0x23
	beq _080097C6
	mov r4, ip
	orrs r4, r6
	mov ip, r4
	mov pc, lr

	thumb_func_start sub_080097D8
sub_080097D8: @ 0x080097D8
	lsrs r4, r2, #4
	lsrs r5, r3, #4
	lsls r5, r5, #6
	adds r4, r4, r5
	ldrb r4, [r7, r4]
	adds r5, r4, #0
	subs r5, #0x10
	cmp r5, #0xef
	bhs _080097AE
	cmp r5, #0x10
	bhs _080097F4
	mov r4, ip
	orrs r4, r6
	mov ip, r4
_080097F4:
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_080097F8
sub_080097F8: @ 0x080097F8
	lsrs r4, r2, #4
	lsrs r5, r3, #4
	lsls r5, r5, #6
	adds r4, r4, r5
	ldrb r4, [r7, r4]
	cmp r4, #0xff
	bne _0800980C
	mov r4, ip
	orrs r4, r6
	mov ip, r4
_0800980C:
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08009810
sub_08009810: @ 0x08009810
	lsrs r4, r2, #4
	lsrs r5, r3, #4
	lsls r5, r5, #6
	adds r4, r4, r5
	ldrb r4, [r7, r4]
	adds r5, r4, #0
	cmp r5, #0xff
	beq _08009826
	subs r5, #0xf
	cmp r5, #0x11
	bhs _0800982C
_08009826:
	mov r4, ip
	orrs r4, r6
	mov ip, r4
_0800982C:
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08009830
sub_08009830: @ 0x08009830
	lsrs r4, r2, #4
	lsrs r5, r3, #4
	lsls r5, r5, #6
	adds r4, r4, r5
	ldrb r4, [r7, r4]
	cmp r4, #0xff
	beq _08009842
	cmp r4, #0x20
	beq _08009848
_08009842:
	mov r4, ip
	orrs r4, r6
	mov ip, r4
_08009848:
	mov pc, lr
	.align 2, 0
_0800984C: .4byte gUnk_03006D14
_08009850: .4byte gUnk_0813EC74
_08009854: .4byte sub_08009590
_08009858: .4byte gUnk_03000208
_0800985C: .4byte gUnk_0201EFF0
_08009860: .4byte _080092A0
_08009864: .4byte gUnk_03000450
_08009868: .4byte 0x00000400
_0800986C: .4byte 0x00004000
_08009870: .4byte _08009788

	thumb_func_start sub_08009874
sub_08009874: @ 0x08009874
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08003AC0
	orrs r0, r0
	bne _0800988E
	movs r2, #0x3c
	ldrb r1, [r4, r2]
	cmp r1, #0
	bne _0800989C
	movs r1, #0x89
	strb r1, [r4, r2]
	b _0800989C
_0800988E:
	cmp r0, #1
	beq _0800989C
	movs r1, #1
	strb r1, [r4, #0x17]
	movs r1, #0
	movs r2, #0x3c
	strb r1, [r4, r2]
_0800989C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080098A0
sub_080098A0: @ 0x080098A0
	ldr r2, [r0, #0x4c]
	ldrb r2, [r2, #0xa]
	strb r2, [r0, #0x16]
	adds r2, r0, #0
	adds r2, #0x3c
	ldrb r3, [r2, #6]
	cmp r3, #0
	bne _080098C0
	ldrb r3, [r2, #9]
	cmp r3, #0
	beq _080098C4
	ldrb r3, [r2, #7]
	cmp r3, #0
	bne _080098C8
	ldr r1, [r1]
	bx r1
_080098C0:
	ldr r1, [r1, #8]
	bx r1
_080098C4:
	ldr r1, [r1, #0xc]
	bx r1
_080098C8:
	ldr r1, [r1, #0x10]
	bx r1

	thumb_func_start sub_080098CC
sub_080098CC: @ 0x080098CC
	push {r0, lr}
	bl sub_0804C9C8
	pop {r0}
	bl sub_08012540
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080098DC
sub_080098DC: @ 0x080098DC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08002E18
	cmp r0, #0
	bne _080098EC
	bl sub_080098F0
_080098EC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080098F0
sub_080098F0: @ 0x080098F0
	movs r1, #0x6c
	ldrh r2, [r4, r1]
	cmp r2, #0
	beq _08009920
	subs r2, #1
	bne _0800991E
	movs r2, #0x6b
	ldrb r2, [r4, r2]
	cmp r2, #0
	bne _0800991C
	movs r2, #0x3c
	ldrb r2, [r4, r2]
	cmp r2, #0x80
	blo _0800991C
	movs r2, #0x5c
	ldrh r2, [r4, r2]
	movs r3, #0x55
	ands r2, r3
	cmp r2, r3
	bne _0800991C
	movs r0, #5
	mov pc, lr
_0800991C:
	movs r2, #0x40
_0800991E:
	strh r2, [r4, r1]
_08009920:
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_08009924
sub_08009924: @ 0x08009924
	mov r3, lr
	push {r3, r4, r5}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_080095A4
	adds r0, r4, #0
	bl sub_08009874
	cmp r0, #0
	bne _0800994C
	adds r0, r4, #0
	bl sub_080098DC
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	adds r0, r4, #0
	pop {r3, r4, r5}
	mov lr, r3
	bx r1
_0800994C:
	ldr r1, _08009CF0 @ =_0800995C
	lsls r0, r0, #2
	ldr r1, [r1, r0]
	adds r0, r4, #0
	pop {r3, r4, r5}
	mov lr, r3
	bx r1
	.align 2, 0
_0800995C: .4byte 0x00000000
_08009960: .4byte sub_080095F4
_08009964: .4byte sub_08003A40
_08009968: .4byte sub_08003A44

	thumb_func_start sub_0800996C
sub_0800996C: @ 0x0800996C
	ldr r2, _08009CF4 @ =_0800995C
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	bx r1

	thumb_func_start sub_08009974
sub_08009974: @ 0x08009974
	ldr r3, _08009CF8 @ =_08009A18
	mov ip, r3
	b _0800999C
	.align 2, 0

	thumb_func_start sub_0800997C
sub_0800997C: @ 0x0800997C
	ldr r2, _08009CFC @ =gUnk_03000E20
	ldrh r2, [r2]
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1d
	ldr r3, _08009D00 @ =gUnk_03000940
	ldrh r3, [r3, r2]
	lsrs r3, r3, #0xb
	blo _08009990
	movs r0, #0
	mov pc, lr
_08009990:
	lsls r2, r2, #1
	ldr r3, _08009D04 @ =_08003B54
	ldr r2, [r3, r2]
	ldr r2, [r2]

	thumb_func_start sub_08009998
sub_08009998: @ 0x08009998
	ldr r3, _08009D08 @ =_08009A08
	mov ip, r3
_0800999C:
	push {r4, r5, r6, r7, lr}
	cmp r2, #0
	beq _080099FA
	movs r3, #0x45
	ldrb r3, [r2, r3]
	cmp r3, #0
	beq _080099FA
	movs r3, #0x50
	ldrh r4, [r0, r3]
	ldrh r5, [r2, r3]
	ands r5, r4
	lsrs r4, r5, #0xe
	beq _080099FA
	ldrh r6, [r0, #0x32]
	ldrh r7, [r2, #0x32]
	subs r6, r6, r7
	adds r6, r6, r1
	lsls r4, r1, #1
	adds r4, #1
	cmp r6, r4
	bhs _080099D4
	movs r3, #0
	ldrh r6, [r0, #0x36]
	ldrh r7, [r2, #0x36]
	cmp r6, r7
	bhs _080099EC
	movs r3, #8
	b _080099EC
_080099D4:
	ldrh r6, [r0, #0x36]
	ldrh r7, [r2, #0x36]
	subs r6, r6, r7
	adds r6, r6, r1
	cmp r6, r4
	bhs _080099FA
	movs r3, #0xc
	ldrh r6, [r0, #0x32]
	ldrh r7, [r2, #0x32]
	cmp r6, r7
	bhs _080099EC
	movs r3, #4
_080099EC:
	lsrs r5, r5, #0xe
	lsls r5, r5, #2
	ldr r4, _08009D0C @ =_080092A0
	ldr r1, [r4, r5]
	mov r4, ip
	ldr r4, [r4, r3]
	bx r4
_080099FA:
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08009A00:
	.byte 0x00, 0xF7, 0x09, 0x00, 0x00, 0x09, 0xF7, 0x00
_08009A08: .4byte sub_08009A28
_08009A0C: .4byte sub_08009A90
_08009A10: .4byte sub_08009AF4
_08009A14: .4byte sub_08009B54
_08009A18: .4byte sub_08009BB8
_08009A1C: .4byte sub_08009C08
_08009A20: .4byte sub_08009C54
_08009A24: .4byte sub_08009CA0

	thumb_func_start sub_08009A28
sub_08009A28: @ 0x08009A28
	ldrh r4, [r0, #0x32]
	ldrh r5, [r2, #0x32]
	adds r4, r4, r5
	lsrs r4, r4, #1
	ldrh r5, [r0, #0x36]
	subs r5, #6
	bpl _08009A38
	movs r5, #0
_08009A38:
	adds r3, r5, #0
	ldr r7, _08009D10 @ =gUnk_03000450
	ldrh r6, [r7, #0x18]
	subs r4, r4, r6
	ldrh r6, [r7, #0x1a]
	subs r5, r5, r6
	lsrs r6, r4, #4
	lsrs r7, r5, #4
	lsls r7, r7, #6
	adds r6, r6, r7
	adds r1, r1, r6
	movs r7, #8
	ands r4, r7
	lsrs r4, r4, #3
	ldr r7, _08009D14 @ =_08009A8C
	ldrb r7, [r7, r4]
	ldrh r6, [r2, #0x36]
	cmp r3, r6
	blo _08009A86
	subs r3, r3, r6
	adds r3, #8
	lsrs r3, r3, #4
	beq _08009A7C
	adds r3, #1
_08009A68:
	ldrb r4, [r1]
	ands r4, r7
	bne _08009A78
	subs r1, #0x40
	subs r3, #1
	bne _08009A68
_08009A74:
	movs r0, #0x80
	pop {r4, r5, r6, r7, pc}
_08009A78:
	subs r3, #1
	bne _08009A86
_08009A7C:
	ldrb r4, [r1]
	movs r5, #3
	ands r7, r5
	ands r4, r7
	beq _08009A74
_08009A86:
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08009A8C:
	.byte 0xFA, 0xF5, 0x00, 0x00

	thumb_func_start sub_08009A90
sub_08009A90: @ 0x08009A90
	ldrh r4, [r0, #0x32]
	adds r4, #6
	adds r3, r4, #0
	ldrh r5, [r0, #0x36]
	ldrh r6, [r2, #0x36]
	adds r5, r5, r6
	lsrs r5, r5, #1
	ldr r7, _08009D18 @ =gUnk_03000450
	ldrh r6, [r7, #0x18]
	subs r4, r4, r6
	ldrh r6, [r7, #0x1a]
	subs r5, r5, r6
	lsrs r6, r4, #4
	lsrs r7, r5, #4
	lsls r7, r7, #6
	adds r6, r6, r7
	adds r1, r1, r6
	movs r7, #8
	ands r5, r7
	lsrs r5, r5, #3
	ldr r7, _08009D1C @ =_08009AF0
	ldrb r7, [r7, r5]
	ldrh r6, [r2, #0x32]
	cmp r6, r3
	blo _08009AEA
	subs r6, r6, r3
	adds r6, #8
	lsrs r6, r6, #4
	beq _08009AE0
	adds r6, #1
_08009ACC:
	ldrb r4, [r1]
	ands r4, r7
	bne _08009ADC
	adds r1, #1
	subs r6, #1
	bne _08009ACC
_08009AD8:
	movs r0, #0x88
	pop {r4, r5, r6, r7, pc}
_08009ADC:
	subs r6, #1
	bne _08009AEA
_08009AE0:
	ldrb r4, [r1]
	movs r5, #0xa
	ands r7, r5
	ands r4, r7
	beq _08009AD8
_08009AEA:
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08009AF0:
	.byte 0xFC, 0xF3, 0x00, 0x00

	thumb_func_start sub_08009AF4
sub_08009AF4: @ 0x08009AF4
	ldrh r4, [r0, #0x32]
	ldrh r5, [r2, #0x32]
	adds r4, r4, r5
	lsrs r4, r4, #1
	ldrh r5, [r0, #0x36]
	adds r5, #6
	adds r3, r5, #0
	ldr r7, _08009D20 @ =gUnk_03000450
	ldrh r6, [r7, #0x18]
	subs r4, r4, r6
	ldrh r6, [r7, #0x1a]
	subs r5, r5, r6
	lsrs r6, r4, #4
	lsrs r7, r5, #4
	lsls r7, r7, #6
	adds r6, r6, r7
	adds r1, r1, r6
	movs r7, #8
	ands r4, r7
	lsrs r4, r4, #3
	ldr r7, _08009D24 @ =_08009A8C
	ldrb r7, [r7, r4]
	ldrh r6, [r2, #0x36]
	cmp r6, r3
	blo _08009B4E
	subs r6, r6, r3
	adds r6, #8
	lsrs r6, r6, #4
	beq _08009B44
	adds r6, #1
_08009B30:
	ldrb r4, [r1]
	ands r4, r7
	bne _08009B40
	adds r1, #0x40
	subs r6, #1
	bne _08009B30
_08009B3C:
	movs r0, #0x90
	pop {r4, r5, r6, r7, pc}
_08009B40:
	subs r6, #1
	bne _08009B4E
_08009B44:
	ldrb r4, [r1]
	movs r5, #0xc
	ands r7, r5
	ands r4, r7
	beq _08009B3C
_08009B4E:
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08009B54
sub_08009B54: @ 0x08009B54
	ldrh r4, [r0, #0x32]
	subs r4, #6
	bpl _08009B5C
	movs r4, #0
_08009B5C:
	adds r3, r4, #0
	ldrh r5, [r0, #0x36]
	ldrh r6, [r2, #0x36]
	adds r5, r5, r6
	lsrs r5, r5, #1
	ldr r7, _08009D28 @ =gUnk_03000450
	ldrh r6, [r7, #0x18]
	subs r4, r4, r6
	ldrh r6, [r7, #0x1a]
	subs r5, r5, r6
	lsrs r6, r4, #4
	lsrs r7, r5, #4
	lsls r7, r7, #6
	adds r6, r6, r7
	adds r1, r1, r6
	movs r7, #8
	ands r5, r7
	lsrs r5, r5, #3
	ldr r7, _08009D2C @ =_08009AF0
	ldrb r7, [r7, r5]
	ldrh r6, [r2, #0x32]
	cmp r3, r6
	blo _08009BB2
	subs r3, r3, r6
	adds r3, #8
	lsrs r3, r3, #4
	beq _08009BA8
	adds r3, #1
_08009B94:
	ldrb r4, [r1]
	ands r4, r7
	bne _08009BA4
	subs r1, #1
	subs r3, #1
	bne _08009B94
_08009BA0:
	movs r0, #0x98
	pop {r4, r5, r6, r7, pc}
_08009BA4:
	subs r3, #1
	bne _08009BB2
_08009BA8:
	ldrb r4, [r1]
	movs r5, #5
	ands r7, r5
	ands r4, r7
	beq _08009BA0
_08009BB2:
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08009BB8
sub_08009BB8: @ 0x08009BB8
	ldrh r4, [r0, #0x32]
	ldrh r5, [r2, #0x32]
	adds r4, r4, r5
	lsrs r4, r4, #1
	ldrh r5, [r0, #0x36]
	subs r5, #6
	bpl _08009BC8
	movs r5, #0
_08009BC8:
	adds r3, r5, #0
	ldr r7, _08009D30 @ =gUnk_03000450
	ldrh r6, [r7, #0x18]
	subs r4, r4, r6
	ldrh r6, [r7, #0x1a]
	subs r5, r5, r6
	lsrs r6, r4, #4
	lsrs r7, r5, #4
	lsls r7, r7, #6
	adds r6, r6, r7
	adds r1, r1, r6
	ldrh r6, [r2, #0x36]
	cmp r3, r6
	blo _08009C04
	subs r3, r3, r6
	adds r3, #8
	lsrs r3, r3, #4
	beq _08009C00
	adds r3, #1
_08009BEE:
	ldrb r4, [r1]
	cmp r4, #0xff
	beq _08009C04
	subs r4, #0xf
	cmp r4, #0x11
	blo _08009C04
	subs r1, #0x40
	subs r3, #1
	bne _08009BEE
_08009C00:
	movs r0, #0x80
	pop {r4, r5, r6, r7, pc}
_08009C04:
	movs r0, #0
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08009C08
sub_08009C08: @ 0x08009C08
	ldrh r4, [r0, #0x32]
	adds r4, #6
	adds r3, r4, #0
	ldrh r5, [r0, #0x36]
	ldrh r6, [r2, #0x36]
	adds r5, r5, r6
	lsrs r5, r5, #1
	ldr r7, _08009D34 @ =gUnk_03000450
	ldrh r6, [r7, #0x18]
	subs r4, r4, r6
	ldrh r6, [r7, #0x1a]
	subs r5, r5, r6
	lsrs r6, r4, #4
	lsrs r7, r5, #4
	lsls r7, r7, #6
	adds r6, r6, r7
	adds r1, r1, r6
	ldrh r6, [r2, #0x32]
	cmp r6, r3
	blo _08009C50
	subs r6, r6, r3
	adds r6, #8
	lsrs r6, r6, #4
	beq _08009C4C
	adds r6, #1
_08009C3A:
	ldrb r4, [r1]
	cmp r4, #0xff
	beq _08009C50
	subs r4, #0xf
	cmp r4, #0x11
	blo _08009C50
	adds r1, #1
	subs r6, #1
	bne _08009C3A
_08009C4C:
	movs r0, #0x88
	pop {r4, r5, r6, r7, pc}
_08009C50:
	movs r0, #0
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08009C54
sub_08009C54: @ 0x08009C54
	ldrh r4, [r0, #0x32]
	ldrh r5, [r2, #0x32]
	adds r4, r4, r5
	lsrs r4, r4, #1
	ldrh r5, [r0, #0x36]
	adds r5, #6
	adds r3, r5, #0
	ldr r7, _08009D38 @ =gUnk_03000450
	ldrh r6, [r7, #0x18]
	subs r4, r4, r6
	ldrh r6, [r7, #0x1a]
	subs r5, r5, r6
	lsrs r6, r4, #4
	lsrs r7, r5, #4
	lsls r7, r7, #6
	adds r6, r6, r7
	adds r1, r1, r6
	ldrh r6, [r2, #0x36]
	cmp r6, r3
	blo _08009C9C
	subs r6, r6, r3
	adds r6, #8
	lsrs r6, r6, #4
	beq _08009C98
	adds r6, #1
_08009C86:
	ldrb r4, [r1]
	cmp r4, #0xff
	beq _08009C9C
	subs r4, #0xf
	cmp r4, #0x11
	blo _08009C9C
	adds r1, #0x40
	subs r6, #1
	bne _08009C86
_08009C98:
	movs r0, #0x90
	pop {r4, r5, r6, r7, pc}
_08009C9C:
	movs r0, #0
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08009CA0
sub_08009CA0: @ 0x08009CA0
	ldrh r4, [r0, #0x32]
	subs r4, #6
	bpl _08009CA8
	movs r4, #0
_08009CA8:
	adds r3, r4, #0
	ldrh r5, [r0, #0x36]
	ldrh r6, [r2, #0x36]
	adds r5, r5, r6
	lsrs r5, r5, #1
	ldr r7, _08009D3C @ =gUnk_03000450
	ldrh r6, [r7, #0x18]
	subs r4, r4, r6
	ldrh r6, [r7, #0x1a]
	subs r5, r5, r6
	lsrs r6, r4, #4
	lsrs r7, r5, #4
	lsls r7, r7, #6
	adds r6, r6, r7
	adds r1, r1, r6
	ldrh r6, [r2, #0x32]
	cmp r3, r6
	blo _08009CEC
	subs r3, r3, r6
	adds r3, #8
	lsrs r3, r3, #4
	beq _08009CE8
	adds r3, #1
_08009CD6:
	ldrb r4, [r1]
	cmp r4, #0xff
	beq _08009CEC
	subs r4, #0xf
	cmp r4, #0x11
	blo _08009CEC
	subs r1, #1
	subs r3, #1
	bne _08009CD6
_08009CE8:
	movs r0, #0x98
	pop {r4, r5, r6, r7, pc}
_08009CEC:
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08009CF0: .4byte _0800995C
_08009CF4: .4byte _0800995C
_08009CF8: .4byte _08009A18
_08009CFC: .4byte gUnk_03000E20
_08009D00: .4byte gUnk_03000940
_08009D04: .4byte _08003B54
_08009D08: .4byte _08009A08
_08009D0C: .4byte _080092A0
_08009D10: .4byte gUnk_03000450
_08009D14: .4byte _08009A8C
_08009D18: .4byte gUnk_03000450
_08009D1C: .4byte _08009AF0
_08009D20: .4byte gUnk_03000450
_08009D24: .4byte _08009A8C
_08009D28: .4byte gUnk_03000450
_08009D2C: .4byte _08009AF0
_08009D30: .4byte gUnk_03000450
_08009D34: .4byte gUnk_03000450
_08009D38: .4byte gUnk_03000450
_08009D3C: .4byte gUnk_03000450

	thumb_func_start sub_08009D40
sub_08009D40: @ 0x08009D40
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	movs r1, #0
	mov ip, r1
	adds r1, r0, #0
	adds r1, #0x48
	ldrh r7, [r1, #8]
	lsrs r7, r7, #0xe
	lsls r7, r7, #2
	ldr r6, _08009EEC @ =_080092A0
	ldr r7, [r6, r7]
	ldr r1, [r1]
	ldr r6, _08009EF0 @ =gUnk_03000450
	ldrh r2, [r0, #0x32]
	ldrh r3, [r6, #0x18]
	subs r2, r2, r3
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r2, r2, r4
	ldrh r3, [r0, #0x36]
	ldrh r6, [r6, #0x1a]
	subs r3, r3, r6
	movs r4, #1
	ldrsb r4, [r1, r4]
	adds r3, r3, r4
	movs r4, #0xf
	ands r4, r5
	cmp r4, #8
	beq _08009DA6
	push {r2, r3, r5}
	ldrb r4, [r1, #2]
	cmp r5, #0x10
	bhs _08009D84
	rsbs r4, r4, #0
_08009D84:
	adds r2, r2, r4
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x16
	ldrb r4, [r1, #3]
	adds r3, r3, r4
	lsls r3, r3, #0x16
	lsrs r3, r3, #0x16
	bl sub_08009DDC
	ldrb r4, [r1, #3]
	subs r3, r3, r4
	subs r3, r3, r4
	lsls r3, r3, #0x16
	lsrs r3, r3, #0x16
	bl sub_08009DDC
	pop {r2, r3, r5}
_08009DA6:
	movs r4, #0xf
	ands r4, r5
	beq _08009DD8
	ldrb r4, [r1, #5]
	adds r6, r5, #0
	subs r6, #8
	cmp r6, #0x10
	blo _08009DB8
	rsbs r4, r4, #0
_08009DB8:
	adds r3, r3, r4
	lsls r3, r3, #0x16
	lsrs r3, r3, #0x16
	ldrb r4, [r1, #4]
	adds r2, r2, r4
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x16
	bl sub_08009DDC
	ldrb r4, [r1, #4]
	subs r2, r2, r4
	subs r2, r2, r4
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x16
	bl sub_08009DDC
_08009DD8:
	mov r0, ip
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08009DDC
sub_08009DDC: @ 0x08009DDC
	lsrs r4, r2, #4
	lsrs r5, r3, #4
	lsls r5, r5, #6
	adds r4, r4, r5
	ldrb r4, [r7, r4]
	adds r5, r4, #0
	subs r5, #0x10
	cmp r5, #0xef
	blo _08009E06
	movs r6, #8
	tst r3, r6
	bne _08009DF6
	lsrs r4, r4, #2
_08009DF6:
	tst r2, r6
	bne _08009DFC
	lsrs r4, r4, #1
_08009DFC:
	lsrs r4, r4, #1
	blo _08009E04
	movs r6, #1
	mov ip, r6
_08009E04:
	mov pc, lr
_08009E06:
	movs r6, #1
	mov ip, r6
	mov pc, lr

	thumb_func_start sub_08009E0C
sub_08009E0C: @ 0x08009E0C
	ldr r0, _08009EF4 @ =gUnk_03000E20
	ldrh r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	ldr r1, _08009EF8 @ =_08003B54
	ldr r0, [r1, r0]
	ldr r0, [r0]
	mov pc, lr

	thumb_func_start sub_08009E1C
sub_08009E1C: @ 0x08009E1C
	push {r4, lr}
	adds r4, r2, #0
	bl sub_0800932C
	ldr r1, _08009EFC @ =_08002B50
	bl sub_080012D8
	beq _08009E3E
	ldr r2, _08009F00 @ =_08002CC4
	lsls r3, r3, #3
	ldrh r3, [r2, r3]
	movs r2, #1
	lsls r2, r4
	tst r2, r3
	beq _08009E3E
	movs r0, #1
	pop {r4, pc}
_08009E3E:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08009E44
sub_08009E44: @ 0x08009E44
	push {lr}
	movs r1, #0x43
	ldrb r2, [r0, r1]
	subs r2, #1
	strb r2, [r0, r1]
	cmp r2, #0x3c
	bhs _08009E60
	movs r3, #3
	ands r2, r3
	ldr r1, _08009F04 @ =_08009E68
	ldrsb r1, [r1, r2]
	ldrh r2, [r0, #0x32]
	adds r2, r2, r1
	strh r2, [r0, #0x32]
_08009E60:
	ldr r1, _08009F08 @ =0x00001800
	bl sub_08003594
	pop {pc}
_08009E68:
	.byte 0xFF, 0x01, 0x01, 0xFF

	thumb_func_start sub_08009E6C
sub_08009E6C: @ 0x08009E6C
	push {r4, r5, lr}
	adds r3, r2, #0
	adds r2, r1, #0
	ldr r1, _08009F0C @ =gUnk_03000E20
	ldrh r1, [r1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1c
	ldr r4, _08009F10 @ =_08003B54
	ldr r1, [r4, r1]
	ldr r1, [r1]
	cmp r1, #0
	beq _08009EA0
	movs r5, #0x45
	ldrb r5, [r1, r5]
	cmp r5, #0
	beq _08009E9E
	ldrb r5, [r1, #0xa]
	lsls r5, r5, #1
	ldr r4, _08009F14 @ =gUnk_03000940
	ldrh r5, [r4, r5]
	lsrs r5, r5, #0xb
	bhs _08009E9E
	bl sub_08003920
	bne _08009EA0
_08009E9E:
	movs r1, #0
_08009EA0:
	adds r0, r1, #0
	pop {r4, r5, pc}

	thumb_func_start sub_08009EA4
sub_08009EA4: @ 0x08009EA4
	ldr r2, _08009F18 @ =gUnk_03000940
	ldrb r3, [r1, #0xa]
	lsls r3, r3, #1
	ldrh r2, [r2, r3]
	lsrs r2, r2, #0xb
	bhs _08009EE4
	movs r2, #0x45
	ldrb r3, [r1, r2]
	cmp r3, #0
	beq _08009EE4
	movs r2, #0x50
	ldrh r3, [r1, r2]
	ldrh r2, [r0, r2]
	ands r2, r3
	lsrs r2, r2, #0xe
	beq _08009EE4
	ldrh r2, [r0, #0x32]
	ldrh r3, [r1, #0x32]
	subs r2, r2, r3
	adds r2, #8
	cmp r2, #0x11
	bhs _08009EDC
	ldrh r2, [r0, #0x36]
	ldrh r3, [r1, #0x36]
	subs r2, r2, r3
	adds r2, #8
	cmp r2, #0x11
	blo _08009EE4
_08009EDC:
	push {lr}
	bl sub_0803CECC
	pop {pc}
_08009EE4:
	movs r2, #0x2b
	ldrb r0, [r0, r2]
	mov pc, lr
	.align 2, 0
_08009EEC: .4byte _080092A0
_08009EF0: .4byte gUnk_03000450
_08009EF4: .4byte gUnk_03000E20
_08009EF8: .4byte _08003B54
_08009EFC: .4byte _08002B50
_08009F00: .4byte _08002CC4
_08009F04: .4byte _08009E68
_08009F08: .4byte 0x00001800
_08009F0C: .4byte gUnk_03000E20
_08009F10: .4byte _08003B54
_08009F14: .4byte gUnk_03000940
_08009F18: .4byte gUnk_03000940

	thumb_func_start sub_08009F1C
sub_08009F1C: @ 0x08009F1C
	mov r3, lr
	push {r3, r4}
	adds r4, r0, #0
	ldrb r2, [r0, #0x14]
	cmp r2, #0
	beq _08009F44
	ldr r1, _0800A120 @ =gUnk_03006D14
	ldrh r1, [r1]
	cmp r1, #0
	bne _08009F64
	bl sub_08003130
_08009F34:
	adds r0, r4, #0
	ldrb r1, [r0, #9]
	lsls r1, r1, #2
	ldr r2, _0800A124 @ =gUnk_0813F604
	ldr r1, [r2, r1]
	ldr r2, _0800A128 @ =sub_08009F58
	mov lr, r2
	bx r1
_08009F44:
	bl sub_08049708
	cmp r0, #0
	beq _08009F34
	adds r0, r4, #0
	bl sub_08012540
	pop {r3, r4}
	bx r3
	.align 2, 0

	thumb_func_start sub_08009F58
sub_08009F58: @ 0x08009F58
	adds r0, r4, #0
	movs r1, #0x41
	ldrb r2, [r0, r1]
	movs r3, #0x7f
	ands r2, r3
	strb r2, [r0, r1]
_08009F64:
	bl sub_08003688
	pop {r3, r4}
	bx r3

	thumb_func_start sub_08009F6C
sub_08009F6C: @ 0x08009F6C
	push {r0, r1, lr}
	bl sub_0800303C
	pop {r0, r2}
	ldrh r2, [r0, #0x32]
	ldr r3, _0800A12C @ =0x000003F1
	cmp r2, r3
	bhs _08009F82
	ldrh r2, [r0, #0x36]
	cmp r2, r3
	blo _08009F88
_08009F82:
	ldr r1, _0800A130 @ =0x0000FFFF
	strh r1, [r0, #0x2c]
	movs r1, #0
_08009F88:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08009F8C
sub_08009F8C: @ 0x08009F8C
	push {lr}
	bl sub_08009FF0
	bl sub_08009F6C
	adds r0, r1, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08009F9C
sub_08009F9C: @ 0x08009F9C
	push {lr}
	movs r1, #8
	strh r1, [r0, #0x2c]
	bl sub_08009FF4
	push {r1}
	bl sub_08009F6C
	pop {r1}
	bl sub_080038E8
	adds r0, r1, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08009FB8
sub_08009FB8: @ 0x08009FB8
	push {lr}
	movs r1, #8
	strh r1, [r0, #0x2c]
	bl sub_08009FF4
	bl sub_08009F6C
	adds r0, r1, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08009FCC
sub_08009FCC: @ 0x08009FCC
	push {lr}
	movs r1, #0
	strh r1, [r0, #0x2c]
	bl sub_08009F6C
	adds r0, r1, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08009FDC
sub_08009FDC: @ 0x08009FDC
	push {lr}
	movs r1, #0xc
	strh r1, [r0, #0x2c]
	bl sub_08009FF4
	bl sub_08009F6C
	adds r0, r1, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08009FF0
sub_08009FF0: @ 0x08009FF0
	movs r1, #0
	strh r1, [r0, #0x2c]

	thumb_func_start sub_08009FF4
sub_08009FF4: @ 0x08009FF4
	push {r4, r5, r6, r7, lr}
	movs r1, #0
	mov ip, r1
	adds r1, r0, #0
	adds r1, #0x48
	ldrh r7, [r1, #8]
	lsrs r7, r7, #0xe
	lsls r7, r7, #2
	ldr r6, _0800A134 @ =_080092A0
	ldr r7, [r6, r7]
	ldr r1, [r1]
	ldr r6, _0800A138 @ =gUnk_03000450
	ldrh r2, [r0, #0x32]
	ldrh r3, [r6, #0x18]
	subs r2, r2, r3
	movs r4, #0
	ldrsb r5, [r1, r4]
	adds r2, r2, r5
	ldrh r3, [r0, #0x36]
	ldrh r6, [r6, #0x1a]
	subs r3, r3, r6
	movs r4, #1
	ldrsb r5, [r1, r4]
	adds r3, r3, r5
	push {r2, r3}
	movs r4, #0x2b
	ldrb r5, [r0, r4]
	cmp r5, #0x10
	ldrb r4, [r1, #2]
	blo _0800A034
	subs r2, r2, r4
	b _0800A036
_0800A034:
	adds r2, r2, r4
_0800A036:
	ldr r6, _0800A13C @ =0x00004400
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x16
	lsls r3, r3, #0x16
	lsrs r3, r3, #0x16
	bl sub_0800A06C
	pop {r2, r3}
	movs r4, #0x2b
	ldrb r5, [r0, r4]
	subs r5, #8
	cmp r5, #0x10
	ldrb r4, [r1, #5]
	blo _0800A056
	subs r3, r3, r4
	b _0800A058
_0800A056:
	adds r3, r3, r4
_0800A058:
	movs r6, #0x44
	lsls r3, r3, #0x16
	lsrs r3, r3, #0x16
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x16
	bl sub_0800A06C
	mov r1, ip
	strh r1, [r0, #0x2c]
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0800A06C
sub_0800A06C: @ 0x0800A06C
	ldrh r4, [r0, #0x2c]
	ldr r5, _0800A140 @ =_0800A074
	ldr r4, [r5, r4]
	bx r4
	.align 2, 0
_0800A074: .4byte sub_0800A084
_0800A078: .4byte nullsub_050
_0800A07C: .4byte sub_0800A0C0
_0800A080: .4byte sub_0800A0E4

	thumb_func_start sub_0800A084
sub_0800A084: @ 0x0800A084
	lsrs r4, r2, #4
	lsrs r5, r3, #4
	lsls r5, r5, #6
	adds r4, r4, r5
	ldrb r4, [r7, r4]
	cmp r4, #0xff
	beq _0800A0AE
	cmp r4, #0x10
	bhs _0800A0B0
_0800A096:
	movs r5, #8
	tst r3, r5
	bne _0800A09E
	lsrs r4, r4, #2
_0800A09E:
	tst r2, r5
	bne _0800A0A4
	lsrs r4, r4, #1
_0800A0A4:
	lsrs r4, r4, #1
	blo _0800A0AE
	mov r4, ip
	orrs r4, r6
	mov ip, r4
_0800A0AE:
	mov pc, lr
_0800A0B0:
	cmp r4, #0x22
	beq _0800A0AE
	cmp r4, #0x23
	beq _0800A0AE
	mov r4, ip
	orrs r4, r6
	mov ip, r4
	mov pc, lr

	thumb_func_start sub_0800A0C0
sub_0800A0C0: @ 0x0800A0C0
	lsrs r4, r2, #4
	lsrs r5, r3, #4
	lsls r5, r5, #6
	adds r4, r4, r5
	ldrb r4, [r7, r4]
	cmp r4, #0xff
	beq _0800A0DC
	cmp r4, #0x10
	blo _0800A096
	cmp r4, #0x20
	bhs _0800A0DC
	mov r4, ip
	orrs r4, r6
	mov ip, r4
_0800A0DC:
	mov pc, lr
	.align 2, 0

	thumb_func_start nullsub_050
nullsub_050: @ 0x0800A0E0
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_0800A0E4
sub_0800A0E4: @ 0x0800A0E4
	lsrs r4, r2, #4
	lsrs r5, r3, #4
	lsls r5, r5, #6
	adds r4, r4, r5
	ldrb r5, [r7, r4]
	cmp r5, #0xff
	beq _0800A11C
	subs r5, #1
	cmp r5, #0xe
	bhs _0800A112
	movs r5, #0x50
	ldrh r5, [r0, r5]
	lsrs r5, r5, #0xe
	cmp r5, #2
	beq _0800A11C
	ldr r5, _0800A144 @ =gUnk_0200D324
	ldrb r4, [r5, r4]
	cmp r4, #0
	beq _0800A11C
	mov r4, ip
	orrs r4, r6
	mov ip, r4
	mov pc, lr
_0800A112:
	cmp r5, #0x1f
	bhs _0800A11C
	mov r4, ip
	orrs r4, r6
	mov ip, r4
_0800A11C:
	mov pc, lr
	.align 2, 0
_0800A120: .4byte gUnk_03006D14
_0800A124: .4byte gUnk_0813F604
_0800A128: .4byte sub_08009F58
_0800A12C: .4byte 0x000003F1
_0800A130: .4byte 0x0000FFFF
_0800A134: .4byte _080092A0
_0800A138: .4byte gUnk_03000450
_0800A13C: .4byte 0x00004400
_0800A140: .4byte _0800A074
_0800A144: .4byte gUnk_0200D324

	thumb_func_start sub_0800A148
sub_0800A148: @ 0x0800A148
	ldr r3, _0800A394 @ =gUnk_0201EFF8
	lsls r2, r2, #2
	adds r2, r2, r3
	push {r4, r5, r6, r7, lr}
	ldr r6, _0800A398 @ =0x0000FFFF
	ldrh r3, [r1]
	lsls r7, r3, #0x13
	lsrs r7, r7, #0x1c
	strb r7, [r0, #8]
	adds r5, r7, #0
	adds r7, #0x80
	lsls r3, r3, #0x17
	lsrs r3, r3, #0x17
	strb r3, [r0, #9]
	cmp r5, #3
	bne _0800A17A
	ldr r5, _0800A39C @ =gUnk_0813812C
_0800A16A:
	adds r5, #2
	ldrh r4, [r5]
	cmp r4, r6
	beq _0800A18E
	cmp r3, r4
	bne _0800A16A
	movs r6, #0
	b _0800A18E
_0800A17A:
	cmp r5, #6
	bne _0800A18E
	ldr r5, _0800A3A0 @ =gUnk_08138122
_0800A180:
	adds r5, #2
	ldrh r4, [r5]
	cmp r4, r6
	beq _0800A18E
	cmp r3, r4
	bne _0800A180
	movs r6, #0
_0800A18E:
	movs r4, #0x1c
	ldrh r3, [r1]
	lsrs r3, r3, #0xb
	ands r3, r4
	ldrh r4, [r1, #2]
	lsrs r5, r4, #8
	strb r5, [r0, #0xa]
	strb r4, [r0, #0xb]
	ldr r4, _0800A3A4 @ =_0800A1D8
	ldr r3, [r4, r3]
	ldr r4, _0800A3A8 @ =sub_0800A1A8
	mov lr, r4
	bx r3

	thumb_func_start sub_0800A1A8
sub_0800A1A8: @ 0x0800A1A8
	cmp r1, #0
	beq _0800A1D0
	strb r2, [r0, #0x17]
	movs r2, #0x50
	ldrh r2, [r0, r2]
	lsrs r2, r2, #0xe
	push {r0}
	bne _0800A1BC
	bl sub_08008D90
_0800A1BC:
	pop {r1}
	cmp r7, #0x80
	blo _0800A1C8
	subs r7, #0x80
	ldr r2, _0800A3AC @ =gUnk_081380F8
	ldrb r0, [r2, r7]
_0800A1C8:
	bl sub_08012728
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0800A1D0:
	bl sub_08012540
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0800A1D8: .4byte sub_0800A1EC
_0800A1DC: .4byte sub_0800A224
_0800A1E0: .4byte sub_0800A264
_0800A1E4: .4byte sub_0800A30C
_0800A1E8: .4byte sub_0800A240

	thumb_func_start sub_0800A1EC
sub_0800A1EC: @ 0x0800A1EC
	ldrh r3, [r1, #4]
	ldrh r5, [r1, #6]
	lsls r4, r3, #0x14
	lsrs r4, r4, #0x14
	lsls r1, r5, #0x14
	lsrs r1, r1, #0x14
_0800A1F8:
	cmp r6, #0
	beq _0800A204
	ldrh r6, [r2]
	adds r4, r4, r6
	ldrh r6, [r2, #2]
	adds r1, r1, r6
_0800A204:
	ldr r2, _0800A3B0 @ =gUnk_03000450
	ldrh r6, [r2, #0x18]
	adds r4, r4, r6
	strh r4, [r0, #0x32]
	ldrh r6, [r2, #0x1a]
	adds r1, r1, r6
	strh r1, [r0, #0x36]
	ldr r2, _0800A3B4 @ =0x0000F000
	ands r3, r2
	lsrs r3, r3, #0xc
	ands r2, r5
	lsrs r2, r2, #8
	adds r2, r2, r3
	movs r1, #1
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_0800A224
sub_0800A224: @ 0x0800A224
	ldrh r3, [r1, #4]
	ldrh r5, [r1, #6]
	adds r4, r3, #0
	ldr r7, _0800A3B8 @ =0x00000C00
	ands r4, r7
	lsrs r4, r4, #0xa
	ands r7, r5
	lsrs r7, r7, #8
	adds r7, r7, r4
	lsls r4, r3, #0x16
	lsrs r4, r4, #0x16
	lsls r1, r5, #0x16
	lsrs r1, r1, #0x16
	b _0800A1F8

	thumb_func_start sub_0800A240
sub_0800A240: @ 0x0800A240
	ldrh r3, [r1, #4]
	lsrs r4, r3, #0xa
	lsls r4, r4, #0xe
	ldr r5, _0800A3BC @ =gUnk_03000462
	ldrh r5, [r5]
	orrs r4, r5
	movs r5, #0x50
	ldrh r5, [r0, r5]
	orrs r4, r5
	movs r5, #0x50
	strh r4, [r0, r5]
	ldrh r5, [r1, #6]
	lsls r4, r3, #0x16
	lsrs r4, r4, #0x16
	lsls r1, r5, #0x16
	lsrs r1, r1, #0x16
	b _0800A1F8
	.align 2, 0

	thumb_func_start sub_0800A264
sub_0800A264: @ 0x0800A264
	ldrh r3, [r1, #4]
	ldrh r4, [r1, #6]
	ldr r5, _0800A3B4 @ =0x0000F000
	adds r1, r3, #0
	ands r1, r5
	lsrs r1, r1, #0xc
	ands r5, r4
	lsrs r5, r5, #8
	adds r1, r1, r5
	push {r1, r7, lr}
	ldr r1, _0800A3C0 @ =0x00000FC0
	adds r5, r3, #0
	ands r5, r1
	lsrs r5, r5, #2
	ands r1, r4
	lsrs r1, r1, #2
	cmp r6, #0
	beq _0800A290
	ldrh r6, [r2]
	adds r5, r5, r6
	ldrh r6, [r2, #2]
	adds r1, r1, r6
_0800A290:
	movs r6, #0x3f
	ands r3, r6
	adds r3, #1
	ands r4, r6
	adds r4, #1
	lsls r6, r6, #4
	ands r5, r6
	lsrs r5, r5, #4
	ands r1, r6
	lsls r1, r1, #2
	adds r1, r1, r5
	push {r0}
	adds r0, r1, #0
	adds r1, r3, #0
	adds r2, r4, #0
	bl sub_08013754
	adds r1, r0, #0
	pop {r0}
	beq _0800A306
	mov ip, r0
	ldr r2, _0800A3C4 @ =gUnk_02021024
	ldr r3, _0800A3C8 @ =gUnk_0200D324
	ldr r4, [r1]
	movs r7, #9
_0800A2C2:
	subs r7, #1
	beq _0800A304
	ldrh r5, [r1, #8]
	adds r5, #1
	lsls r6, r5, #1
	ldrh r6, [r4, r6]
	ldrh r0, [r4]
	cmp r5, r0
	blo _0800A2D6
	movs r5, #0
_0800A2D6:
	strh r5, [r1, #8]
	ldrh r5, [r2, r6]
	cmp r5, #0
	bne _0800A2C2
	ldrh r5, [r3, r6]
	cmp r5, #0
	bne _0800A2C2
	mov r0, ip
	ldr r1, _0800A3CC @ =gUnk_03000450
	lsls r2, r6, #0x1a
	lsrs r2, r2, #0x16
	adds r2, #8
	ldrh r3, [r1, #0x18]
	adds r2, r2, r3
	strh r2, [r0, #0x32]

	thumb_func_start sub_0800A2F4
sub_0800A2F4: @ 0x0800A2F4
	lsrs r6, r6, #6
	lsls r6, r6, #4
	adds r6, #8
	ldrh r3, [r1, #0x1a]
	adds r6, r6, r3
	strh r6, [r0, #0x36]
	movs r1, #1
	pop {r2, r7, pc}
_0800A304:
	mov r0, ip
_0800A306:
	movs r1, #0
	pop {r2, r7, pc}
	.align 2, 0

	thumb_func_start sub_0800A30C
sub_0800A30C: @ 0x0800A30C
	ldrh r3, [r1, #4]
	ldrh r4, [r1, #6]
	ldr r5, _0800A3B4 @ =0x0000F000
	adds r1, r3, #0
	ands r1, r5
	lsrs r1, r1, #0xc
	ands r5, r4
	lsrs r5, r5, #8
	adds r1, r1, r5
	push {r1, r7, lr}
	ldr r1, _0800A3C0 @ =0x00000FC0
	adds r5, r3, #0
	ands r5, r1
	lsrs r5, r5, #2
	ands r1, r4
	lsrs r1, r1, #2
	cmp r6, #0
	beq _0800A338
	ldrh r6, [r2]
	adds r5, r5, r6
	ldrh r6, [r2, #2]
	adds r1, r1, r6
_0800A338:
	movs r6, #0x3f
	ands r3, r6
	adds r3, #1
	ands r4, r6
	adds r4, #1
	lsls r6, r6, #4
	ands r5, r6
	lsrs r5, r5, #4
	ands r1, r6
	lsls r1, r1, #2
	adds r1, r1, r5
	push {r0}
	adds r0, r1, #0
	adds r1, r3, #0
	adds r2, r4, #0
	bl sub_08013754
	adds r1, r0, #0
	pop {r0}
	beq _0800A390
	ldr r4, [r1]
	ldrh r5, [r1, #8]
	adds r5, #1
	lsls r6, r5, #1
	ldrh r6, [r4, r6]
	ldrh r7, [r4]
	cmp r5, r7
	blo _0800A372
	movs r5, #0
_0800A372:
	strh r5, [r1, #8]
	ldr r1, _0800A3D0 @ =gUnk_03000450
	lsls r2, r6, #0x1a
	lsrs r2, r2, #0x16
	adds r2, #8
	ldrh r3, [r1, #0x18]
	adds r2, r2, r3
	strh r2, [r0, #0x32]
	lsrs r6, r6, #6
	lsls r6, r6, #4
	adds r6, #8
	ldrh r3, [r1, #0x1a]
	adds r6, r6, r3
	strh r6, [r0, #0x36]
	movs r1, #1
_0800A390:
	pop {r2, r7, pc}
	.align 2, 0
_0800A394: .4byte gUnk_0201EFF8
_0800A398: .4byte 0x0000FFFF
_0800A39C: .4byte gUnk_0813812C
_0800A3A0: .4byte gUnk_08138122
_0800A3A4: .4byte _0800A1D8
_0800A3A8: .4byte sub_0800A1A8
_0800A3AC: .4byte gUnk_081380F8
_0800A3B0: .4byte gUnk_03000450
_0800A3B4: .4byte 0x0000F000
_0800A3B8: .4byte 0x00000C00
_0800A3BC: .4byte gUnk_03000462
_0800A3C0: .4byte 0x00000FC0
_0800A3C4: .4byte gUnk_02021024
_0800A3C8: .4byte gUnk_0200D324
_0800A3CC: .4byte gUnk_03000450
_0800A3D0: .4byte gUnk_03000450

	thumb_func_start sub_0800A3D4
sub_0800A3D4: @ 0x0800A3D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _0800A468 @ =gUnk_020163D0
	mov r8, r0
	ldr r1, _0800A46C @ =gUnk_02000030
	mov ip, r1
	movs r2, #0
	ldr r3, _0800A470 @ =gUnk_03000520
	ldr r3, [r3, #0xc]
	str r3, [sp]
	ldr r0, _0800A474 @ =gUnk_0201EDE0
	mov sl, r0
_0800A3F8:
	movs r1, #1
	lsls r1, r2
	ldr r0, [sp]
	ands r0, r1
	cmp r0, #0
	beq _0800A478
	mov r3, sl
	ldr r0, [r3]
	orrs r0, r1
	str r0, [r3]
	movs r7, #0x10
	adds r2, #1
	mov sb, r2
	movs r6, #0x1f
_0800A414:
	mov r0, r8
	ldrh r2, [r0]
	adds r3, r2, #0
	ands r3, r6
	lsrs r2, r2, #5
	adds r1, r2, #0
	ands r1, r6
	lsrs r2, r2, #5
	ands r2, r6
	ldr r0, _0800A470 @ =gUnk_03000520
	ldrb r4, [r0, #7]
	subs r0, r4, r3
	muls r0, r5, r0
	asrs r0, r0, #4
	adds r3, r3, r0
	lsls r3, r3, #0x10
	subs r0, r4, r1
	muls r0, r5, r0
	asrs r0, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #0x15
	orrs r1, r3
	subs r4, r4, r2
	adds r0, r4, #0
	muls r0, r5, r0
	asrs r0, r0, #4
	adds r2, r2, r0
	lsls r2, r2, #0x1a
	orrs r1, r2
	lsrs r1, r1, #0x10
	mov r3, ip
	strh r1, [r3]
	subs r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r0, #2
	add r8, r0
	add ip, r0
	cmp r7, #0
	bne _0800A414
	b _0800A482
	.align 2, 0
_0800A468: .4byte gUnk_020163D0
_0800A46C: .4byte gUnk_02000030
_0800A470: .4byte gUnk_03000520
_0800A474: .4byte gUnk_0201EDE0
_0800A478:
	movs r1, #0x20
	add r8, r1
	add ip, r1
	adds r2, #1
	mov sb, r2
_0800A482:
	mov r3, sb
	lsls r0, r3, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x1f
	bls _0800A3F8
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.global gUnk_0800A49C
gUnk_0800A49C:
	.byte 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3C, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00
_0800A4D4:
	.byte 0x80, 0x60, 0x00, 0x00
_0800A4D8:
	.byte 0x22, 0x00, 0x24, 0x00, 0x24, 0x00, 0x24, 0x00
	.byte 0x24, 0x00, 0x24, 0x00, 0x24, 0x00, 0x24, 0x00, 0x24, 0x00, 0x24, 0x00, 0x22, 0x00, 0x22, 0x00
	.byte 0x22, 0x00, 0x24, 0x00
_0800A4F4:
	.byte 0x00, 0x02, 0x06, 0x03, 0x03, 0x06, 0x02, 0x02, 0x40, 0x00, 0x00, 0x00
_0800A500: .4byte sub_0800A654
_0800A504: .4byte sub_0800A758
_0800A508: .4byte sub_0800A7C8
_0800A50C: .4byte sub_0800A8C4
_0800A510: .4byte sub_0800A91C
_0800A514: .4byte sub_0800A974
_0800A518: .4byte sub_0800A9BC
_0800A51C: .4byte sub_0800A830
_0800A520: .4byte sub_0800A810
_0800A524: .4byte sub_0800A810
_0800A528: .4byte sub_0800A810
_0800A52C: .4byte sub_0800A810
_0800A530: .4byte sub_0800A830
_0800A534: .4byte sub_0800A830
_0800A538: .4byte sub_0800A884
_0800A53C: .4byte sub_0800A830
_0800A540: .4byte sub_0800A830
_0800A544: .4byte sub_0800A830
_0800A548: .4byte sub_0800A830
_0800A54C: .4byte sub_0800A830
_0800A550: .4byte sub_0800A830
_0800A554:
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x01, 0x06, 0x00, 0x00
	.byte 0x02, 0x06, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x80, 0x14, 0x00, 0x00, 0x00
_0800A56C:
	.byte 0x00, 0x00, 0x00, 0x80
	.byte 0x04, 0x00, 0x00, 0x00
_0800A574:
	.byte 0x10, 0x04, 0x00, 0x00, 0x0F, 0x04, 0x00, 0x00, 0x0E, 0x04, 0x00, 0x00
	.byte 0x0D, 0x03, 0x00, 0x00, 0x0C, 0x02, 0x00, 0x00, 0x0C, 0x01, 0x00, 0x01, 0x00, 0x02, 0x00, 0x00
	.byte 0x01, 0x02, 0x00, 0x00, 0x02, 0x02, 0x00, 0x00, 0x03, 0x02, 0x00, 0x00, 0x04, 0x02, 0x00, 0x00
	.byte 0x05, 0x02, 0x00, 0x00, 0x06, 0x02, 0x00, 0x00, 0x07, 0x02, 0x00, 0x00, 0x08, 0x02, 0x00, 0x00
	.byte 0x09, 0x02, 0x00, 0x00, 0x0A, 0x02, 0x00, 0x00, 0x0B, 0x02, 0x00, 0x80, 0x30, 0x00, 0x00, 0x00
_0800A5C0: .4byte _0800A554
_0800A5C4: .4byte _0800A56C
_0800A5C8: .4byte _0800A56C
_0800A5CC: .4byte _0800A574

	thumb_func_start sub_0800A5D0
sub_0800A5D0: @ 0x0800A5D0
	movs r1, #0x41
	ldrb r1, [r0, r1]
	cmp r1, #0x80
	blo _0800A648
	subs r1, #0x80
	cmp r1, #0x14
	bne _0800A602
	movs r1, #3
	strb r1, [r0, #0x14]
	ldrb r1, [r0, #0x1c]
	movs r2, #0xfc
	ands r1, r2
	adds r1, #1
	strb r1, [r0, #0x1c]
	movs r1, #0x3c
	adds r1, r1, r0
	ldrb r2, [r1]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x19
	movs r3, #0x10
	orrs r2, r3
	strb r2, [r1]
	ldr r2, [r1, #0x10]
	str r2, [r1, #0x1c]
	b _0800A648
_0800A602:
	cmp r1, #0
	bne _0800A614
	movs r1, #4
	strb r1, [r0, #0x14]
	movs r1, #0x4c
	adds r1, r1, r0
	ldr r2, [r1]
	str r2, [r1, #0xc]
	b _0800A648
_0800A614:
	cmp r1, #0x13
	bne _0800A62A
	movs r1, #0x3c
	ldrb r2, [r0, r1]
	adds r2, #0x80
	strb r2, [r0, r1]
	ldrb r1, [r0, #0xa]
	cmp r1, #5
	beq _0800A648
	ldr r1, _0800AA20 @ =sub_08012540
	bx r1
_0800A62A:
	cmp r1, #0x24
	bhs _0800A648
	cmp r1, #4
	blo _0800A648
	movs r1, #4
	strb r1, [r0, #0x14]
	movs r1, #0x4c
	adds r1, r1, r0
	ldr r2, [r1]
	ldrb r2, [r2, #0xa]
	lsls r2, r2, #2
	ldr r3, _0800AA24 @ =_08003B54
	ldr r2, [r3, r2]
	ldr r2, [r2]
	str r2, [r1, #0xc]
_0800A648:
	ldrb r1, [r0, #0x14]
	lsls r1, r1, #2
	ldr r2, _0800AA28 @ =_0800A500
	ldr r1, [r2, r1]
	bx r1
	.align 2, 0

	thumb_func_start sub_0800A654
sub_0800A654: @ 0x0800A654
	mov r3, lr
	push {r3, r4, r5}
	adds r4, r0, #0
	movs r1, #1
	strb r1, [r0, #0x14]
	ldrb r1, [r0, #0x1c]
	movs r2, #0xfc
	ands r1, r2
	adds r1, #1
	strb r1, [r0, #0x1c]
	ldrb r2, [r0, #0x1c]
	movs r1, #0xcf
	ands r2, r1
	adds r2, #0x10
	strb r2, [r0, #0x1c]
	movs r1, #0x2b
	movs r2, #0xff
	ldrb r3, [r0, r1]
	cmp r3, #0x80
	blo _0800A68A
	ldrh r2, [r0, #0xc]
	cmp r2, #0
	bne _0800A686
	ldr r2, _0800AA2C @ =0x00000100
	strh r2, [r0, #0xc]
_0800A686:
	movs r2, #0x1f
	ands r2, r3
_0800A68A:
	strb r2, [r0, r1]
	movs r1, #0x2c
	adds r1, r1, r0
	movs r2, #5
	strb r2, [r1, #0x13]
	movs r2, #0x49
	strb r2, [r1, #0x10]
	movs r2, #0x34
	strb r2, [r1, #0x14]
	movs r2, #0xff
	strh r2, [r1, #0x30]
	ldr r2, _0800AA30 @ =_0800A4F4
	str r2, [r1, #0x1c]
	ldrb r1, [r0, #0xb]
	cmp r1, #0x80
	blo _0800A6D6
	subs r1, #0x80
	strb r1, [r0, #0xb]
	movs r1, #6
	strb r1, [r0, #0x14]
	ldr r1, _0800AA34 @ =0xFFFFFF80
	strh r1, [r0, #0x3a]
	movs r1, #0x5e
	ldrb r2, [r0, r1]
	movs r3, #0xfc
	ands r2, r3
	adds r2, #3
	strb r2, [r0, r1]
	ldrb r1, [r0, #0x1f]
	movs r2, #0x3f
	ands r1, r2
	adds r1, #0x40
	strb r1, [r0, #0x1f]
	ldrb r1, [r0, #0x1d]
	movs r2, #0x3f
	ands r1, r2
	adds r1, #0x40
	strb r1, [r0, #0x1d]
_0800A6D6:
	ldrb r1, [r0, #0xb]
	lsrs r1, r1, #1
	blo _0800A6E6
	ldr r1, [r0, #0x10]
	cmp r1, #0
	bne _0800A6E6
	ldr r1, _0800AA38 @ =0x0001E000
	str r1, [r0, #0x10]
_0800A6E6:
	ldrb r1, [r0, #0xb]
	lsrs r1, r1, #2
	blo _0800A6F0
	movs r1, #4
	strb r1, [r0, #0x14]
_0800A6F0:
	movs r1, #0x50
	ldrh r1, [r0, r1]
	lsls r1, r1, #0xe
	cmp r1, #2
	bne _0800A6FE
	bl sub_08008D90
_0800A6FE:
	ldrb r1, [r0, #0xa]
	cmp r1, #7
	bne _0800A724
	ldrb r1, [r0, #0x1f]
	movs r2, #0x3f
	ands r1, r2
	adds r1, #0x40
	strb r1, [r0, #0x1f]
	ldrh r1, [r0, #0x3a]
	adds r1, #8
	strh r1, [r0, #0x3a]
	movs r1, #0x2e
	adds r1, r1, r0
	movs r2, #4
	strb r2, [r1]
	ldrh r2, [r1, #0x22]
	ldr r3, _0800AA3C @ =0x0000C000
	orrs r2, r3
	strh r2, [r1, #0x22]
_0800A724:
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	ldr r5, _0800AA40 @ =gUnk_0800A49C
	adds r5, r5, r1
	ldrb r1, [r5]
	movs r3, #0x2a
	strb r1, [r0, r3]
	bl sub_08003870
	ldrb r1, [r5, #1]
	cmp r1, #1
	bne _0800A74A
	bl sub_0800099C
	movs r1, #0x7f
	ands r1, r0
	adds r1, #0x78
	movs r2, #0x28
	strb r1, [r4, r2]
_0800A74A:
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _0800A754
	bl sub_08003DFC
_0800A754:
	pop {r3, r4, r5}
	bx r3

	thumb_func_start sub_0800A758
sub_0800A758: @ 0x0800A758
	mov r3, lr
	push {r3, r4}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	cmp r1, #7
	beq _0800A78C
	movs r1, #0x2b
	ldrb r1, [r4, r1]
	cmp r1, #0x80
	bhs _0800A770
	bl sub_08009664
_0800A770:
	adds r0, r4, #0
	ldr r1, _0800AA44 @ =0x00002800
	bl sub_08003594
	ldr r1, [r4, #0x10]
	subs r1, #1
	lsls r1, r1, #1
	blo _0800A7C4
	movs r0, #0x3c
	ldrb r1, [r4, r0]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r4, r0]
	b _0800A7B4
_0800A78C:
	ldr r1, [r4, #0x38]
	ldr r2, _0800AA48 @ =0x0000E000
	subs r1, r1, r2
	str r1, [r4, #0x38]
	bl sub_08003828
	movs r1, #0x29
	ldrb r2, [r4, r1]
	cmp r2, #0
	beq _0800A7C4
	movs r1, #0x1e
	strb r1, [r4, #0x18]
	movs r1, #0x80
	str r1, [r4, #0xc]
	bl sub_0800099C
	movs r1, #0x1f
	ands r0, r1
	movs r1, #0x2b
	strb r0, [r4, r1]
_0800A7B4:
	movs r1, #2
	strb r1, [r4, #0x14]
	ldrb r1, [r4, #0x17]
	movs r2, #0x1e
	muls r1, r2, r1
	bne _0800A7C2
	movs r1, #0xf0
_0800A7C2:
	strb r1, [r4, #0x17]
_0800A7C4:
	pop {r3, r4}
	bx r3

	thumb_func_start sub_0800A7C8
sub_0800A7C8: @ 0x0800A7C8
	mov r3, lr
	push {r3, r4}
	adds r4, r0, #0
	bl sub_08003828
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	ldr r2, _0800AA4C @ =_0800A51C
	ldr r1, [r2, r1]
	bx r1
_0800A7DC:
	ldrb r1, [r4, #0xb]
	cmp r1, #0
	beq _0800A80A
	ldr r1, _0800AA50 @ =gUnk_03000E20
	ldrh r1, [r1]
	lsrs r1, r1, #1
	blo _0800A7FC
	ldrb r1, [r4, #0x17]
	subs r1, #1
	strb r1, [r4, #0x17]
	bne _0800A7FC
	adds r0, r4, #0
	bl sub_08012540
	pop {r3, r4}
	bx r3
_0800A7FC:
	ldrb r1, [r4, #0x17]
	cmp r1, #0x3c
	bhs _0800A80A
	ldrb r1, [r4, #0x1c]
	movs r2, #1
	eors r1, r2
	strb r1, [r4, #0x1c]
_0800A80A:
	pop {r3, r4}
	bx r3
	.align 2, 0

	thumb_func_start sub_0800A810
sub_0800A810: @ 0x0800A810
	movs r1, #0x29
	ldrb r1, [r4, r1]
	cmp r1, #0x80
	blo sub_0800A830
	adds r0, r4, #0
	movs r1, #0
	bl sub_08003870
	bl sub_0800099C
	movs r1, #0xf0
	ands r0, r1
	adds r0, #1
	movs r1, #0x28
	strb r0, [r4, r1]
	movs r0, r0

	thumb_func_start sub_0800A830
sub_0800A830: @ 0x0800A830
	adds r0, r4, #0
	ldrb r1, [r0, #0x15]
	cmp r1, #0
	bne _0800A876
	ldr r1, _0800AA44 @ =0x00002800
	bl sub_08003F1C
	bne _0800A858
	adds r0, r4, #0
	bl sub_08008DD8
	movs r0, #0x5e
	ldrb r1, [r4, r0]
	movs r2, #0xfc
	ands r1, r2
	adds r1, #1
	strb r1, [r4, r0]
	movs r1, #1
	strb r1, [r4, #0x15]
	b _0800A876
_0800A858:
	cmp r0, #1
	bne _0800A868
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #1
	ldr r1, _0800AA54 @ =_0800A4D8
	ldrh r0, [r1, r0]
	bl sub_08003DFC
_0800A868:
	movs r1, #0x2b
	ldrb r0, [r4, r1]
	cmp r0, #0x80
	bhs _0800A876
	adds r0, r4, #0
	bl sub_08009664
_0800A876:
	adds r0, r4, #0
	bl sub_08003B64
	beq _0800A7DC
	pop {r3, r4}
	bx r3
	.align 2, 0

	thumb_func_start sub_0800A884
sub_0800A884: @ 0x0800A884
	ldrb r1, [r4, #0x18]
	subs r1, #1
	bne _0800A8BA
	bl sub_0800099C
	movs r1, #0x1f
	ands r0, r1
	movs r1, #0x2b
	strb r0, [r4, r1]
	bl sub_0800099C
	movs r1, #1
	ands r0, r1
	ldr r1, _0800AA58 @ =_0800A4D4
	ldrb r0, [r1, r0]
	str r0, [r4, #0xc]
	movs r1, #0x3c
	ldrb r2, [r4, r1]
	movs r3, #0x80
	orrs r2, r3
	strb r2, [r4, r1]
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	bl sub_0804CB38
	movs r1, #0x20
_0800A8BA:
	strb r1, [r4, #0x18]
	adds r0, r4, #0
	bl sub_08009694
	b _0800A7DC

	thumb_func_start sub_0800A8C4
sub_0800A8C4: @ 0x0800A8C4
	mov r3, lr
	push {r3, r4, r5}
	adds r4, r0, #0
	movs r1, #0x58
	ldr r5, [r4, r1]
	ldrb r1, [r5, #9]
	cmp r1, #2
	bne _0800A912
	ldrb r1, [r5, #8]
	cmp r1, #8
	bne _0800A912
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0803D3D0
	ldrh r0, [r4, #0x3a]
	subs r0, #1
	strh r0, [r4, #0x3a]
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #2
	ldr r2, _0800AA5C @ =_08003B54
	ldr r2, [r2, r1]
	ldr r5, [r2]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08000358
	cmp r0, #0
	beq _0800A90E
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0804C448
	movs r0, #4
	strb r0, [r4, #0x14]
	movs r0, #0x58
	str r5, [r4, r0]
_0800A90E:
	pop {r3, r4, r5}
	bx r3
_0800A912:
	bl sub_08012540
	pop {r3, r4, r5}
	bx r3
	.align 2, 0

	thumb_func_start sub_0800A91C
sub_0800A91C: @ 0x0800A91C
	mov r3, lr
	push {r0, r3}
	ldrb r1, [r0, #0xa]
	cmp r1, #7
	bne _0800A92E
	bl sub_08012540
	pop {r0, r3}
	bx r3
_0800A92E:
	movs r1, #5
	strb r1, [r0, #0x14]
	movs r1, #0xe
	strb r1, [r0, #0x17]
	ldr r1, _0800AA60 @ =0x00020000
	str r1, [r0, #0x10]
	ldrb r1, [r0, #0x1c]
	movs r2, #0xfc
	ands r1, r2
	adds r1, #1
	strb r1, [r0, #0x1c]
	movs r1, #0x2e
	movs r2, #0
	strb r2, [r0, r1]
	movs r1, #0x3c
	ldrb r2, [r0, r1]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x19
	strb r2, [r0, r1]
	movs r1, #0x5e
	ldrb r2, [r0, r1]
	movs r3, #0xfc
	ands r2, r3
	adds r2, #3
	strb r2, [r0, r1]
	adds r1, r0, #0
	movs r2, #0x58
	ldr r0, [r1, r2]
	bl sub_0803D3D0
	pop {r0, r3}
	ldrh r1, [r0, #0x3a]
	subs r1, #4
	strh r1, [r0, #0x3a]
	bx r3

	thumb_func_start sub_0800A974
sub_0800A974: @ 0x0800A974
	push {lr}
	ldrb r1, [r0, #0x17]
	subs r1, #1
	strb r1, [r0, #0x17]
	beq _0800A9B4
	movs r1, #0x58
	ldr r1, [r0, r1]
	ldr r2, [r1, #0x30]
	str r2, [r0, #0x30]
	ldr r2, [r1, #0x34]
	str r2, [r0, #0x34]
	ldrb r2, [r0, #0x1d]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1a
	ldrb r3, [r1, #0x1d]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	orrs r2, r3
	strb r2, [r0, #0x1d]
	ldrb r2, [r0, #0x1f]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1a
	ldrb r3, [r1, #0x1f]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	orrs r2, r3
	strb r2, [r0, #0x1f]
	ldr r1, _0800AA44 @ =0x00002800
	bl sub_08003594
	pop {r3}
	bx r3
_0800A9B4:
	bl sub_08012540
	pop {r3}
	bx r3

	thumb_func_start sub_0800A9BC
sub_0800A9BC: @ 0x0800A9BC
	mov r3, lr
	push {r3, r4}
	adds r4, r0, #0
	ldrb r1, [r4, #0x15]
	cmp r1, #0
	bne _0800A9EC
	ldr r1, _0800AA64 @ =0x00001000
	bl sub_08003594
	cmp r0, #0
	bne _0800AA1A
	adds r0, r4, #0
	bl sub_08003B64
	cmp r0, #0
	bne _0800AA1A
	movs r1, #1
	strb r1, [r4, #0x14]
	ldr r1, _0800AA38 @ =0x0001E000
	str r1, [r4, #0x10]
	movs r0, #0x24
	bl sub_08003DFC
	b _0800AA1A
_0800A9EC:
	ldr r1, _0800AA44 @ =0x00002800
	bl sub_08003594
	cmp r0, #0
	bne _0800AA1A
	movs r1, #2
	strb r1, [r4, #0x14]
	movs r1, #0
	strb r1, [r4, #0x15]
	movs r1, #0x5e
	ldrb r2, [r4, r1]
	movs r3, #0xfc
	ands r2, r3
	adds r2, #1
	strb r2, [r4, r1]
	movs r1, #0x3c
	ldrb r2, [r4, r1]
	movs r3, #0x80
	orrs r2, r3
	strb r2, [r4, r1]
	movs r0, #0x24
	bl sub_08003DFC
_0800AA1A:
	pop {r3, r4}
	bx r3
	.align 2, 0
_0800AA20: .4byte sub_08012540
_0800AA24: .4byte _08003B54
_0800AA28: .4byte _0800A500
_0800AA2C: .4byte 0x00000100
_0800AA30: .4byte _0800A4F4
_0800AA34: .4byte 0xFFFFFF80
_0800AA38: .4byte 0x0001E000
_0800AA3C: .4byte 0x0000C000
_0800AA40: .4byte gUnk_0800A49C
_0800AA44: .4byte 0x00002800
_0800AA48: .4byte 0x0000E000
_0800AA4C: .4byte _0800A51C
_0800AA50: .4byte gUnk_03000E20
_0800AA54: .4byte _0800A4D8
_0800AA58: .4byte _0800A4D4
_0800AA5C: .4byte _08003B54
_0800AA60: .4byte 0x00020000
_0800AA64: .4byte 0x00001000
_0800AA68: .4byte sub_0800AFF8
_0800AA6C: .4byte sub_0800AF5C
_0800AA70: .4byte sub_0800AF5C
_0800AA74: .4byte sub_0800AF5C
_0800AA78: .4byte sub_0800AF5C
_0800AA7C: .4byte sub_0800AF5C
_0800AA80: .4byte sub_0800AF5C
_0800AA84: .4byte sub_0800AF50
_0800AA88: .4byte sub_0800AF5C
_0800AA8C: .4byte sub_0800AF5C
_0800AA90: .4byte sub_0800AF5C
_0800AA94: .4byte sub_0800B020
_0800AA98: .4byte sub_0800B020
_0800AA9C: .4byte sub_0800AF5C
_0800AAA0: .4byte sub_0800AF5C
_0800AAA4: .4byte sub_0800AF5C
_0800AAA8: .4byte sub_0800AF5C
_0800AAAC: .4byte sub_0800AF5C
_0800AAB0: .4byte sub_0800AF50
_0800AAB4: .4byte sub_0800AF5C
_0800AAB8: .4byte sub_0800AF50
_0800AABC: .4byte sub_0800AF74
_0800AAC0: .4byte sub_0800AF5C
_0800AAC4: .4byte sub_0800AF5C
_0800AAC8: .4byte sub_0800AF5C
_0800AACC: .4byte sub_0800AF5C
_0800AAD0: .4byte sub_0800AF5C

	.global gUnk_0800AAD4
gUnk_0800AAD4:
	.byte 0x33, 0x00, 0x03, 0x00, 0x2A, 0x00, 0x29, 0x00, 0x6A, 0x00, 0x13, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x8A, 0x00, 0xAC, 0x00, 0x9A, 0x00
	.byte 0x00, 0x00, 0x13, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xAE, 0x00, 0x29, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
_0800AB0C: .4byte sub_0800AF40
_0800AB10: .4byte sub_0800AF40
_0800AB14: .4byte sub_0800AF40
_0800AB18: .4byte sub_0800AF20
_0800AB1C: .4byte sub_0800AF24
_0800AB20: .4byte sub_0800AF28
_0800AB24: .4byte sub_0800AF40
_0800AB28: .4byte sub_0800AF40
_0800AB2C: .4byte sub_0800AF40
_0800AB30: .4byte sub_0800AF40
_0800AB34: .4byte sub_0800AF40
_0800AB38: .4byte sub_0800AF40
_0800AB3C: .4byte sub_0800AF40
_0800AB40: .4byte sub_0800AF40
_0800AB44: .4byte sub_0800AF40
_0800AB48: .4byte sub_0800AF40
_0800AB4C: .4byte sub_0800AF40
_0800AB50: .4byte sub_0800AF40
_0800AB54: .4byte sub_0800AF40
_0800AB58: .4byte sub_0800AF30
_0800AB5C: .4byte sub_0800AF40
_0800AB60: .4byte sub_0800AF40
_0800AB64: .4byte sub_0800AF2C
_0800AB68: .4byte sub_0800AF30
_0800AB6C: .4byte sub_0800AF40
_0800AB70: .4byte sub_0800AF40
_0800AB74: .4byte sub_0800AF40
_0800AB78:
	.byte 0x00, 0x07, 0x00, 0x00, 0x01, 0x07, 0x00, 0x00
	.byte 0x02, 0x07, 0x00, 0x00, 0x03, 0x07, 0x00, 0x00, 0x04, 0xFF, 0x00, 0x80, 0x04, 0x00, 0x00, 0x00
_0800AB90:
	.byte 0x00, 0x04, 0x00, 0x00, 0x01, 0x03, 0x00, 0x01, 0x02, 0x04, 0x00, 0x02, 0x03, 0x03, 0x00, 0x03
	.byte 0x04, 0x03, 0x00, 0x04, 0x05, 0x05, 0x00, 0x05, 0x06, 0x05, 0x00, 0x06, 0x07, 0x05, 0x00, 0x07
	.byte 0x08, 0x06, 0x00, 0x08, 0x09, 0x06, 0x00, 0x09, 0x09, 0xFF, 0x00, 0x89
_0800ABBC:
	.byte 0x00, 0x03, 0x00, 0x00
	.byte 0x01, 0x04, 0x00, 0x00, 0x02, 0x03, 0x00, 0x00, 0x03, 0x03, 0x00, 0x00, 0x04, 0x03, 0x00, 0x00
	.byte 0x05, 0x03, 0x00, 0x00, 0x06, 0x03, 0x00, 0x00, 0x07, 0x03, 0x00, 0x00, 0x07, 0xFF, 0x00, 0x80
_0800ABE0:
	.byte 0x00, 0x07, 0x00, 0x00, 0x01, 0x06, 0x00, 0x00, 0x02, 0x04, 0x00, 0x00, 0x03, 0x03, 0x00, 0x00
	.byte 0x03, 0xFF, 0x00, 0x80
_0800ABF4:
	.byte 0x00, 0x04, 0x00, 0x00, 0x01, 0x04, 0x00, 0x00, 0x02, 0x04, 0x00, 0x00
	.byte 0x03, 0x04, 0x00, 0x00, 0x04, 0x03, 0x00, 0x00, 0x05, 0x03, 0x00, 0x00, 0x05, 0xFF, 0x00, 0x80
_0800AC10:
	.byte 0x00, 0x02, 0x00, 0x00, 0x01, 0x03, 0x00, 0x00, 0x02, 0x03, 0x00, 0x00, 0x03, 0x03, 0x00, 0x00
	.byte 0x04, 0x04, 0x00, 0x00, 0x05, 0x04, 0x00, 0x00, 0x06, 0x04, 0x00, 0x00, 0x07, 0x04, 0x00, 0x00
	.byte 0x07, 0xFF, 0x00, 0x80
_0800AC34:
	.byte 0x00, 0x02, 0x00, 0x00, 0x01, 0x04, 0x00, 0x00, 0x02, 0x03, 0x00, 0x00
	.byte 0x03, 0x03, 0x00, 0x00, 0x04, 0x02, 0x00, 0x00, 0x05, 0x02, 0x00, 0x00, 0x06, 0x02, 0x00, 0x00
	.byte 0x06, 0xFF, 0x00, 0x80, 0x04, 0x00, 0x00, 0x00
_0800AC58:
	.byte 0x00, 0x04, 0x00, 0x00, 0x01, 0x06, 0x00, 0x00
	.byte 0x02, 0x06, 0x00, 0x00, 0x03, 0x04, 0x00, 0x00, 0x03, 0x01, 0x00, 0x80, 0x14, 0x00, 0x00, 0x00
_0800AC70:
	.byte 0x00, 0x01, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00
	.byte 0x02, 0x01, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00, 0x03, 0x01, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00
	.byte 0x03, 0xFF, 0x00, 0x80
_0800AC94:
	.byte 0x08, 0x01, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00, 0x09, 0x01, 0x00, 0x00
	.byte 0xFF, 0x01, 0x00, 0x00, 0x0A, 0x01, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00, 0x0B, 0x01, 0x00, 0x00
	.byte 0xFF, 0x01, 0x00, 0x00, 0x0C, 0x01, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00, 0x0D, 0x01, 0x00, 0x00
	.byte 0xFF, 0x01, 0x00, 0x00, 0x0D, 0xFF, 0x00, 0x80
_0800ACC8:
	.byte 0x10, 0x01, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00
	.byte 0x11, 0x01, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00, 0x12, 0x01, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00
	.byte 0x13, 0x01, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00, 0x14, 0x01, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00
	.byte 0x15, 0x01, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00, 0x16, 0x01, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00
	.byte 0x17, 0x01, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00, 0x17, 0xFF, 0x00, 0x80
_0800AD0C:
	.byte 0x00, 0x05, 0x00, 0x00
	.byte 0x01, 0x05, 0x00, 0x00, 0x02, 0x05, 0x00, 0x00, 0x03, 0x05, 0x00, 0x00, 0x04, 0x05, 0x00, 0x00
	.byte 0x04, 0xFF, 0x00, 0x80
_0800AD24:
	.byte 0x00, 0x04, 0x00, 0x00, 0x01, 0x04, 0x00, 0x00, 0x02, 0x04, 0x00, 0x00
	.byte 0x03, 0x04, 0x00, 0x00, 0x04, 0x04, 0x00, 0x00, 0x05, 0x04, 0x00, 0x00, 0x05, 0xFF, 0x00, 0x80
_0800AD40:
	.byte 0x00, 0x04, 0x00, 0x00, 0x01, 0x04, 0x00, 0x00, 0x02, 0x04, 0x00, 0x00, 0x03, 0x04, 0x00, 0x00
	.byte 0x04, 0x04, 0x00, 0x00, 0x05, 0x04, 0x00, 0x00, 0x05, 0xFF, 0x00, 0x80
_0800AD5C:
	.byte 0x00, 0x08, 0x00, 0x00
	.byte 0x01, 0x04, 0x00, 0x00, 0x01, 0xFF, 0x00, 0x80
_0800AD68:
	.byte 0x00, 0x04, 0x00, 0x00, 0x01, 0x04, 0x00, 0x00
	.byte 0x02, 0x04, 0x00, 0x00, 0x02, 0xFF, 0x00, 0x80
_0800AD78:
	.byte 0x09, 0x04, 0x00, 0x00, 0x0A, 0x06, 0x00, 0x00
	.byte 0x0B, 0x06, 0x00, 0x00, 0x0C, 0x04, 0x00, 0x00, 0x0C, 0xFF, 0x00, 0x80
_0800AD8C:
	.byte 0x00, 0x02, 0x00, 0x00
	.byte 0x01, 0x03, 0x00, 0x00, 0x02, 0x03, 0x00, 0x00, 0x03, 0x02, 0x00, 0x00, 0x03, 0x01, 0x00, 0x80
	.byte 0x14, 0x00, 0x00, 0x00
_0800ADA4:
	.byte 0x00, 0x04, 0x00, 0x00, 0x01, 0x04, 0x00, 0x00, 0x02, 0x04, 0x00, 0x00
	.byte 0x03, 0x04, 0x00, 0x00, 0x04, 0x04, 0x00, 0x00, 0x05, 0x04, 0x00, 0x00, 0x06, 0x08, 0x00, 0x00
	.byte 0x07, 0x08, 0x00, 0x00, 0x08, 0x08, 0x00, 0x00, 0x09, 0x04, 0x00, 0x00, 0x0A, 0x04, 0x00, 0x00
	.byte 0x0B, 0x04, 0x00, 0x00, 0x0C, 0x04, 0x00, 0x00, 0x0D, 0x04, 0x00, 0x00, 0x0E, 0x04, 0x00, 0x00
	.byte 0x0F, 0x04, 0x00, 0x00, 0x10, 0x04, 0x00, 0x00, 0x11, 0x04, 0x00, 0x00, 0x12, 0x04, 0x00, 0x00
	.byte 0x13, 0x04, 0x00, 0x00, 0x14, 0x04, 0x00, 0x00, 0x15, 0x04, 0x00, 0x00, 0x16, 0x08, 0x00, 0x00
	.byte 0x16, 0xFF, 0x00, 0x80
_0800AE04:
	.byte 0x00, 0x06, 0x00, 0x00, 0x01, 0x05, 0x00, 0x00, 0x02, 0x04, 0x00, 0x00
	.byte 0x03, 0x04, 0x00, 0x00, 0x03, 0xFF, 0x00, 0x80
_0800AE18:
	.byte 0x00, 0x30, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x80
_0800AE20:
	.byte 0x0D, 0x01, 0x00, 0x00, 0x0E, 0x02, 0x00, 0x00, 0x0F, 0x02, 0x00, 0x00, 0x10, 0x02, 0x00, 0x80
_0800AE30:
	.byte 0x11, 0x02, 0x00, 0x00, 0x12, 0x02, 0x00, 0x00, 0x13, 0x02, 0x00, 0x00, 0x13, 0x02, 0x00, 0x80
_0800AE40: .4byte _0800AB78
_0800AE44: .4byte _0800AB90
_0800AE48: .4byte _0800ABBC
_0800AE4C: .4byte _0800ABE0
_0800AE50: .4byte _0800ABF4
_0800AE54: .4byte _0800AC10
_0800AE58: .4byte _0800AC34
_0800AE5C: .4byte _0800AC58
_0800AE60: .4byte _0800AC70
_0800AE64: .4byte _0800AC94
_0800AE68: .4byte _0800ACC8
_0800AE6C: .4byte _0800AD0C
_0800AE70: .4byte _0800AD24
_0800AE74: .4byte _0800ABF4
_0800AE78: .4byte _0800AD40
_0800AE7C: .4byte _0800ABF4
_0800AE80: .4byte _0800AD5C
_0800AE84: .4byte _0800AD68
_0800AE88: .4byte _0800AD78
_0800AE8C: .4byte _0800ABE0
_0800AE90: .4byte _0800AD8C
_0800AE94: .4byte _0800ADA4
_0800AE98: .4byte _0800AE04
_0800AE9C: .4byte _0800ABE0
_0800AEA0: .4byte _0800AE18
_0800AEA4: .4byte _0800AE20
_0800AEA8: .4byte _0800AE30

	thumb_func_start sub_0800AEAC
sub_0800AEAC: @ 0x0800AEAC
	mov r3, lr
	push {r3, r4}
	adds r4, r0, #0
	ldrb r1, [r0, #0x14]
	cmp r1, #0
	bne _0800AF44
	movs r1, #1
	strb r1, [r0, #0x14]
	movs r1, #0x40
	str r1, [r0, #0xc]
	ldrb r1, [r0, #0xa]
	cmp r1, #0x15
	beq _0800AED0
	ldrb r1, [r0, #0x1c]
	movs r2, #0xfc
	ands r1, r2
	adds r1, #1
	strb r1, [r0, #0x1c]
_0800AED0:
	movs r1, #0x50
	ldrh r1, [r0, r1]
	lsrs r1, r1, #0xe
	bne _0800AEDC
	bl sub_08008D90
_0800AEDC:
	adds r0, r4, #0
	ldrb r1, [r0, #0xa]
	bl sub_08003870
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	ldr r0, _0800B06C @ =gUnk_0800AAD4
	ldrh r0, [r0, r1]
	cmp r0, #0
	beq _0800AEFC
	ldrb r1, [r4, #0xb]
	movs r2, #0x40
	tst r1, r2
	bne _0800AEFC
	bl sub_08003DFC
_0800AEFC:
	ldrb r1, [r4, #0xb]
	movs r2, #0x20
	tst r1, r2
	beq _0800AF0E
	ldrb r1, [r4, #0x1d]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1a
	adds r1, #0x40
	strb r1, [r4, #0x1d]
_0800AF0E:
	ldrb r1, [r4, #0xb]
	movs r2, #0x80
	tst r1, r2
	beq sub_0800AF40
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	ldr r0, _0800B070 @ =_0800AB0C
	ldr r0, [r0, r1]
	bx r0

	thumb_func_start sub_0800AF20
sub_0800AF20: @ 0x0800AF20
	movs r1, #0
	b _0800AF34

	thumb_func_start sub_0800AF24
sub_0800AF24: @ 0x0800AF24
	movs r1, #2
	b _0800AF34

	thumb_func_start sub_0800AF28
sub_0800AF28: @ 0x0800AF28
	movs r1, #1
	b _0800AF34

	thumb_func_start sub_0800AF2C
sub_0800AF2C: @ 0x0800AF2C
	movs r1, #3
	b _0800AF34

	thumb_func_start sub_0800AF30
sub_0800AF30: @ 0x0800AF30
	movs r1, #4
	b _0800AF34
_0800AF34:
	movs r3, #0x54
	ldr r2, [r4, r3]
	adds r0, r4, #0
	bl sub_080142F4
	b sub_0800AF40

	thumb_func_start sub_0800AF40
sub_0800AF40: @ 0x0800AF40
	pop {r3, r4}
	bx r3
_0800AF44:
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	ldr r2, _0800B074 @ =_0800AA68
	ldr r1, [r2, r1]
	bx r1
	.align 2, 0

	thumb_func_start sub_0800AF50
sub_0800AF50: @ 0x0800AF50
	movs r1, #0x38
	ldr r2, [r0, r1]
	ldr r3, _0800B078 @ =0x00004000
	adds r2, r2, r3
	strh r2, [r0, r1]
	movs r0, r0

	thumb_func_start sub_0800AF5C
sub_0800AF5C: @ 0x0800AF5C
	bl sub_08003828
	movs r1, #0x29
	ldrb r0, [r4, r1]
	cmp r0, #0x80
	blo _0800AF6E
	adds r0, r4, #0
	bl sub_08012540
_0800AF6E:
	pop {r3, r4}
	bx r3
	.align 2, 0

	thumb_func_start sub_0800AF74
sub_0800AF74: @ 0x0800AF74
	ldrb r1, [r4, #0x15]
	cmp r1, #0
	bne _0800AF82
	movs r1, #1
	strb r1, [r4, #0x15]
	movs r2, #0x40
	strb r2, [r4, #0x17]
_0800AF82:
	cmp r1, #1
	bne _0800AFDC
	ldrb r1, [r4, #0x17]
	cmp r1, #0
	beq _0800AFA2
	subs r1, #1
	strb r1, [r4, #0x17]
	bne _0800AFF4
	ldrb r1, [r4, #0x1c]
	movs r2, #0xfc
	ands r1, r2
	adds r1, #1
	strb r1, [r4, #0x1c]
	movs r0, #0x50
	bl sub_08003DFC
_0800AFA2:
	movs r2, #0x54
	ldr r0, [r4, r2]
	adds r1, r4, #0
	bl sub_0803D440
	adds r0, r4, #0
	bl sub_08003828
	movs r1, #0x29
	ldrb r0, [r4, r1]
	cmp r0, #1
	bne _0800AFC8
	push {r0}
	eors r0, r0
	strb r0, [r4, r1]
	movs r0, #9
	bl sub_08003DFC
	pop {r0}
_0800AFC8:
	cmp r0, #0x80
	blo _0800AFF4
	ldrb r1, [r4, #0x1c]
	movs r2, #0xfc
	ands r1, r2
	strb r1, [r4, #0x1c]
	movs r1, #0x2d
	strb r1, [r4, #0x17]
	movs r1, #2
	strb r1, [r4, #0x15]
_0800AFDC:
	ldrb r1, [r0, #0x17]
	subs r1, #1
	beq _0800AFE6
	strb r1, [r0, #0x17]
	b _0800AFF4
_0800AFE6:
	movs r2, #0x54
	ldr r0, [r4, r2]
	bl sub_0802C7A8
	adds r0, r4, #0
	bl sub_08012540
_0800AFF4:
	pop {r3, r4}
	bx r3

	thumb_func_start sub_0800AFF8
sub_0800AFF8: @ 0x0800AFF8
	ldrh r0, [r4, #0x32]
	ldrh r1, [r4, #0x36]
	ldr r3, _0800B07C @ =0x000003F0
	adds r2, r0, #0
	ands r2, r3
	adds r2, #8
	ands r3, r1
	adds r3, #8
	cmp r0, r2
	bne _0800B010
	cmp r1, r3
	beq _0800B01E
_0800B010:
	bl sub_08003F54
	movs r1, #0x2b
	strb r0, [r4, r1]
	adds r0, r4, #0
	bl sub_0803CC20
_0800B01E:
	movs r0, r0

	thumb_func_start sub_0800B020
sub_0800B020: @ 0x0800B020
	adds r0, r4, #0
	bl sub_08003828
	movs r1, #0x29
	ldrb r1, [r4, r1]
	cmp r1, #0x80
	blo _0800AF6E
	ldrb r1, [r4, #0xb]
	movs r2, #1
	tst r1, r2
	beq _0800B062
	movs r1, #0x58
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _0800B062
	movs r1, #0x62
	ldrb r2, [r0, r1]
	subs r2, #1
	strb r2, [r0, r1]
	movs r1, #0x60
	ldr r2, [r4, r1]
	cmp r2, #0
	beq _0800B062
	subs r2, #1
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x19
	ldr r3, _0800B080 @ =gUnk_08137B10
	ldr r2, [r3, r2]
	mvns r2, r2
	movs r1, #0x64
	ldr r3, [r0, r1]
	ands r3, r2
	str r3, [r0, r1]
_0800B062:
	adds r0, r4, #0
	bl sub_08012540
	pop {r3, r4}
	bx r3
	.align 2, 0
_0800B06C: .4byte gUnk_0800AAD4
_0800B070: .4byte _0800AB0C
_0800B074: .4byte _0800AA68
_0800B078: .4byte 0x00004000
_0800B07C: .4byte 0x000003F0
_0800B080: .4byte gUnk_08137B10
