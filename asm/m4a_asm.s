	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_081339C4
sub_081339C4: @ 0x081339C4
	add r2, pc, #0x0 @ =sub_081339C8
	bx r2

	arm_func_start sub_081339C8
sub_081339C8: @ 0x081339C8
	umull r2, r3, r0, r1
	add r0, r3, #0
	bx lr

	thumb_func_start SoundMain
SoundMain: @ 0x081339D4
	ldr r0, _08133A40 @ =0x03007FF0
	ldr r0, [r0]
	ldr r2, _08133A44 @ =0x68736D53
	ldr r3, [r0]
	cmp r2, r3
	beq _081339E2
	bx lr
_081339E2:
	adds r3, #1
	str r3, [r0]
	push {r4, r5, r6, r7, lr}
	mov r1, r8
	mov r2, sb
	mov r3, sl
	mov r4, fp
	push {r0, r1, r2, r3, r4}
	sub sp, #0x18
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _08133A06
	ldr r2, _08133A4C @ =0x04000006
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _08133A04
	adds r2, #0xe4
_08133A04:
	adds r1, r1, r2
_08133A06:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _08133A16
	ldr r0, [r0, #0x24]
	bl sub_08133DF6
	ldr r0, [sp, #0x18]
_08133A16:
	ldr r3, [r0, #0x28]
	bl sub_08133DF6
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _08133A50 @ =0x00000350
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _08133A36
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_08133A36:
	str r5, [sp, #8]
	ldr r6, _08133A54 @ =0x00000630
	ldr r3, _08133A48 @ =gUnk_03006D19
	bx r3
	.align 2, 0
_08133A40: .4byte 0x03007FF0
_08133A44: .4byte 0x68736D53
_08133A48: .4byte gUnk_03006D19
_08133A4C: .4byte 0x04000006
_08133A50: .4byte 0x00000350
_08133A54: .4byte 0x00000630

	thumb_func_start SoundMainRAM
SoundMainRAM: @ 0x08133A58
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq sub_08133AB8
	add r1, pc, #0x4 @ =sub_08133A64
	bx r1
	.align 2, 0

	arm_func_start sub_08133A64
sub_08133A64: @ 0x08133A64
	cmp r4, #2
	addeq r7, r0, #0x350
	addne r7, r5, r8
	mov r4, r8
_08133A74:
	ldrsb r0, [r5, r6]
	ldrsb r1, [r5]
	add r0, r0, r1
	ldrsb r1, [r7, r6]
	add r0, r0, r1
	ldrsb r1, [r7], #1
	add r0, r0, r1
	mul r1, r0, r3
	asr r0, r1, #9
	tst r0, #0x80
	addne r0, r0, #1
	strb r0, [r5, r6]
	strb r0, [r5], #1
	subs r4, r4, #1
	bgt _08133A74
	add r0, pc, #0x2F @ =sub_08133AE6
	bx r0

	thumb_func_start sub_08133AB8
sub_08133AB8: @ 0x08133AB8
	movs r0, #0
	mov r1, r8
	adds r6, r6, r5
	lsrs r1, r1, #3
	blo _08133AC6
	stm r5!, {r0}
	stm r6!, {r0}
_08133AC6:
	lsrs r1, r1, #1
	blo _08133AD2
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
_08133AD2:
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	subs r1, #1
	bgt _08133AD2

	non_word_aligned_thumb_func_start sub_08133AE6
sub_08133AE6: @ 0x08133AE6
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50
_08133AF0:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _08133B10
	ldr r1, _08133B0C @ =0x04000006
	ldrb r1, [r1]
	cmp r1, #0xa0
	bhs _08133B04
	adds r1, #0xe4
_08133B04:
	cmp r1, r0
	blo _08133B10
	b _08133DE2
	.align 2, 0
_08133B0C: .4byte 0x04000006
_08133B10:
	ldrb r6, [r4]
	movs r0, #0xc7
	tst r0, r6
	bne _08133B1A
	b sub_08133DD8
_08133B1A:
	movs r0, #0x80
	tst r0, r6
	beq _08133B4A
	movs r0, #0x40
	tst r0, r6
	bne _08133B5A
	movs r6, #3
	strb r6, [r4]
	adds r0, r3, #0
	adds r0, #0x10
	str r0, [r4, #0x28]
	ldr r0, [r3, #0xc]
	str r0, [r4, #0x18]
	movs r5, #0
	strb r5, [r4, #9]
	str r5, [r4, #0x1c]
	ldrb r2, [r3, #3]
	movs r0, #0xc0
	tst r0, r2
	beq _08133BA2
	movs r0, #0x10
	orrs r6, r0
	strb r6, [r4]
	b _08133BA2
_08133B4A:
	ldrb r5, [r4, #9]
	movs r0, #4
	tst r0, r6
	beq _08133B60
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	bhi _08133BB0
_08133B5A:
	movs r0, #0
	strb r0, [r4]
	b sub_08133DD8
_08133B60:
	movs r0, #0x40
	tst r0, r6
	beq _08133B80
	ldrb r0, [r4, #7]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	bhi _08133BB0
_08133B72:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _08133B5A
	movs r0, #4
	orrs r6, r0
	strb r6, [r4]
	b _08133BB0
_08133B80:
	movs r2, #3
	ands r2, r6
	cmp r2, #2
	bne _08133B9E
	ldrb r0, [r4, #5]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #6]
	cmp r5, r0
	bhi _08133BB0
	adds r5, r0, #0
	beq _08133B72
	subs r6, #1
	strb r6, [r4]
	b _08133BB0
_08133B9E:
	cmp r2, #3
	bne _08133BB0
_08133BA2:
	ldrb r0, [r4, #4]
	adds r5, r5, r0
	cmp r5, #0xff
	blo _08133BB0
	movs r5, #0xff
	subs r6, #1
	strb r6, [r4]
_08133BB0:
	strb r5, [r4, #9]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #7]
	adds r0, #1
	muls r0, r5, r0
	lsrs r5, r0, #4
	ldrb r0, [r4, #2]
	muls r0, r5, r0
	lsrs r0, r0, #8
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #3]
	muls r0, r5, r0
	lsrs r0, r0, #8
	strb r0, [r4, #0xb]
	movs r0, #0x10
	ands r0, r6
	str r0, [sp, #0x10]
	beq _08133BE4
	adds r0, r3, #0
	adds r0, #0x10
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
_08133BE4:
	ldr r5, [sp, #8]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x28]
	add r0, pc, #0x4 @ =sub_08133BF0
	bx r0
	.align 2, 0

	arm_func_start sub_08133BF0
sub_08133BF0: @ 0x08133BF0
	str r8, [sp]
	ldrb sl, [r4, #0xa]
	ldrb fp, [r4, #0xb]
	lsl sl, sl, #0x10
	lsl fp, fp, #0x10
	ldrb r0, [r4, #1]
	tst r0, #8
	beq _08133D30
_08133C10:
	cmp r2, #4
	ble _08133C80
	subs r2, r2, r8
	movgt lr, #0
	bgt _08133C3C
	mov lr, r8
	add r2, r2, r8
	sub r8, r2, #4
	sub lr, lr, r8
	ands r2, r2, #3
	moveq r2, #4
_08133C3C:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_08133C44:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	adds r5, r5, #0x40000000
	blo _08133C44
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08133C3C
	adds r8, r8, lr
	beq _08133DC4
_08133C80:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_08133C88:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	subs r2, r2, #1
	beq _08133CF8
_08133CAC:
	adds r5, r5, #0x40000000
	blo _08133C88
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08133C10
	b _08133DC4
_08133CC8:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _08133CEC
	ldr r3, [sp, #0x14]
	rsb sb, r2, #0
_08133CDC:
	adds r2, r0, r2
	bgt _08133D94
	sub sb, sb, r0
	b _08133CDC
_08133CEC:
	pop {r4, ip}
	mov r2, #0
	b _08133D08
_08133CF8:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ldrne r3, [sp, #0xc]
	bne _08133CAC
_08133D08:
	strb r2, [r4]
	lsr r0, r5, #0x1e
	bic r5, r5, #0xc0000000
	rsb r0, r0, #3
	lsl r0, r0, #3
	ror r6, r6, r0
	ror r7, r7, r0
	str r7, [r5, #0x630]
	str r6, [r5], #4
	b _08133DCC
_08133D30:
	push {r4, ip}
	ldr lr, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mul r4, ip, r1
	ldrsb r0, [r3]
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_08133D4C:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_08133D54:
	mul sb, lr, r1
	add sb, r0, sb, asr #23
	mul ip, sl, sb
	bic ip, ip, #0xff0000
	add r6, ip, r6, ror #8
	mul ip, fp, sb
	bic ip, ip, #0xff0000
	add r7, ip, r7, ror #8
	add lr, lr, r4
	lsrs sb, lr, #0x17
	beq _08133DA0
	bic lr, lr, #0x3f800000
	subs r2, r2, sb
	ble _08133CC8
	subs sb, sb, #1
	addeq r0, r0, r1
_08133D94:
	ldrsbne r0, [r3, sb]!
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_08133DA0:
	adds r5, r5, #0x40000000
	blo _08133D54
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08133D4C
	sub r3, r3, #1
	pop {r4, ip}
	str lr, [r4, #0x1c]
_08133DC4:
	str r2, [r4, #0x18]
	str r3, [r4, #0x28]
_08133DCC:
	ldr r8, [sp]
	add r0, pc, #0x1 @ =sub_08133DD8
	bx r0

	thumb_func_start sub_08133DD8
sub_08133DD8: @ 0x08133DD8
	ldr r0, [sp, #4]
	subs r0, #1
	ble _08133DE2
	adds r4, #0x40
	b _08133AF0
_08133DE2:
	ldr r0, [sp, #0x18]
	ldr r3, _08133DF8 @ =0x68736D53
	str r3, [r0]
	add sp, #0x1c
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	non_word_aligned_thumb_func_start sub_08133DF6
sub_08133DF6: @ 0x08133DF6
	bx r3
	.align 2, 0
_08133DF8: .4byte 0x68736D53

	thumb_func_start SoundMainBTM
SoundMainBTM: @ 0x08133DFC
	mov ip, r4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	movs r4, #0
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	mov r4, ip
	bx lr
	.align 2, 0

	thumb_func_start ClearChain
ClearChain: @ 0x08133E14
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _08133E32
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _08133E26
	str r1, [r2, #0x34]
	b _08133E28
_08133E26:
	str r1, [r3, #0x20]
_08133E28:
	cmp r1, #0
	beq _08133E2E
	str r2, [r1, #0x30]
_08133E2E:
	movs r1, #0
	str r1, [r0, #0x2c]
_08133E32:
	bx lr
_08133E34:
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08133E58
_08133E3E:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08133E4C
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_08133E4C:
	adds r0, r4, #0
	bl ClearChain
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08133E3E
_08133E58:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start MPlyJmpTblCopy
MPlyJmpTblCopy: @ 0x08133E64
	mov ip, lr
	movs r1, #0x24
	ldr r2, _08133E94 @ =gUnk_083C2654
_08133E6A:
	ldr r3, [r2]
	bl _08133E7E
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _08133E6A
	bx ip
	.align 2, 0

	thumb_func_start ldrb_r3_r2
ldrb_r3_r2: @ 0x08133E7C
	ldrb r3, [r2]
_08133E7E:
	push {r0}
	lsrs r0, r2, #0x19
	bne _08133E90
	ldr r0, _08133E94 @ =gUnk_083C2654
	cmp r2, r0
	blo _08133E8E
	lsrs r0, r2, #0xe
	beq _08133E90
_08133E8E:
	movs r3, #0
_08133E90:
	pop {r0}
	bx lr
	.align 2, 0
_08133E94: .4byte gUnk_083C2654

	thumb_func_start ld_r3_tp_adr_i
ld_r3_tp_adr_i: @ 0x08133E98
	ldr r2, [r1, #0x40]

	non_word_aligned_thumb_func_start sub_08133E9A
sub_08133E9A: @ 0x08133E9A
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b _08133E7E
	.align 2, 0
_08133EA4:
	push {lr}
_08133EA6:
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl ldrb_r3_r2
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0

	thumb_func_start ply_patt
ply_patt: @ 0x08133EC4
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _08133EDC
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b _08133EA4
_08133EDC:
	b _08133E34
	.align 2, 0

	thumb_func_start ply_pend
ply_pend: @ 0x08133EE0
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _08133EF2
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_08133EF2:
	bx lr

	thumb_func_start ply_rept
ply_rept: @ 0x08133EF4
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _08133F04
	adds r2, #1
	str r2, [r1, #0x40]
	b _08133EA6
_08133F04:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl ld_r3_tp_adr_i
	cmp ip, r3
	bhs _08133F16
	b _08133EA6
_08133F16:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start ply_prio
ply_prio: @ 0x08133F24
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1d]
	bx ip
	.align 2, 0

	thumb_func_start ply_tempo
ply_tempo: @ 0x08133F30
	mov ip, lr
	bl ld_r3_tp_adr_i
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip

	thumb_func_start ply_keysh
ply_keysh: @ 0x08133F44
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_voice
ply_voice: @ 0x08133F58
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #2
	ldr r3, [r0, #0x30]
	adds r2, r2, r3
	ldr r3, [r2]
	bl _08133E7E
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl _08133E7E
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl _08133E7E
	str r3, [r1, #0x2c]
	bx ip
	.align 2, 0

	thumb_func_start ply_vol
ply_vol: @ 0x08133F88
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_pan
ply_pan: @ 0x08133F9C
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_bend
ply_bend: @ 0x08133FB0
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_bendr
ply_bendr: @ 0x08133FC4
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_lfodl
ply_lfodl: @ 0x08133FD8
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1b]
	bx ip
	.align 2, 0

	thumb_func_start ply_modt
ply_modt: @ 0x08133FE4
	mov ip, lr
	bl ld_r3_tp_adr_i
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _08133FFA
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_08133FFA:
	bx ip

	thumb_func_start ply_tune
ply_tune: @ 0x08133FFC
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_port
ply_port: @ 0x08134010
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _08134024 @ =0x04000060
	adds r0, r0, r3
	bl sub_08133E9A

	thumb_func_start sub_08134020
sub_08134020: @ 0x08134020
	strb r3, [r0]
	bx ip
	.align 2, 0
_08134024: .4byte 0x04000060

	thumb_func_start SoundVSync_rev01
SoundVSync_rev01: @ 0x08134028
	ldr r0, _081342D4 @ =0x03007FF0
	ldr r0, [r0]
	ldr r2, _081342D8 @ =0x68736D53
	ldr r3, [r0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _08134068
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _08134068
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	ldr r2, _0813406C @ =0x040000BC
	ldr r1, [r2, #8]
	lsls r1, r1, #7
	blo _0813404E
	ldr r1, _08134070 @ =0x84400004
	str r1, [r2, #8]
_0813404E:
	ldr r1, [r2, #0x14]
	lsls r1, r1, #7
	blo _08134058
	ldr r1, _08134070 @ =0x84400004
	str r1, [r2, #0x14]
_08134058:
	movs r1, #4
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
	movs r1, #0xb6
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
_08134068:
	bx lr
	.align 2, 0
_0813406C: .4byte 0x040000BC
_08134070: .4byte 0x84400004

	thumb_func_start MPlayMain_rev01
MPlayMain_rev01: @ 0x08134074
	ldr r2, _081342D8 @ =0x68736D53
	ldr r3, [r0, #0x34]
	cmp r2, r3
	beq _0813407E
	bx lr
_0813407E:
	adds r3, #1
	str r3, [r0, #0x34]
	push {r0, lr}
	ldr r3, [r0, #0x38]
	cmp r3, #0
	beq _08134090
	ldr r0, [r0, #0x3c]
	bl sub_081342CC
_08134090:
	pop {r0}
	push {r4, r5, r6, r7}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _081340A8
	b _081342BC
_081340A8:
	ldr r0, _081342D4 @ =0x03007FF0
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl FadeOutBody_rev01
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _081340BC
	b _081342BC
_081340BC:
	ldrh r0, [r7, #0x22]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	b _0813420C
_081340C4:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #0x2c]
	movs r3, #1
	movs r4, #0
_081340CC:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	bne _081340D6
	b _081341E8
_081340D6:
	mov sl, r3
	orrs r4, r3
	mov fp, r4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0813410A
_081340E2:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _081340FE
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _08134104
	subs r0, #1
	strb r0, [r4, #0x10]
	bne _08134104
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
	b _08134104
_081340FE:
	adds r0, r4, #0
	bl ClearChain_rev
_08134104:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _081340E2
_0813410A:
	ldrb r3, [r5]
	movs r0, #0x40
	tst r0, r3
	beq _08134188
	adds r0, r5, #0
	bl Clear64byte_rev
	movs r0, #0x80
	strb r0, [r5]
	movs r0, #2
	strb r0, [r5, #0xf]
	movs r0, #0x40
	strb r0, [r5, #0x13]
	movs r0, #0x16
	strb r0, [r5, #0x19]
	movs r0, #1
	adds r1, r5, #6
	strb r0, [r1, #0x1e]
	b _08134188
_08134130:
	ldr r2, [r5, #0x40]
	ldrb r1, [r2]
	cmp r1, #0x80
	bhs _0813413C
	ldrb r1, [r5, #7]
	b _08134146
_0813413C:
	adds r2, #1
	str r2, [r5, #0x40]
	cmp r1, #0xbd
	blo _08134146
	strb r1, [r5, #7]
_08134146:
	cmp r1, #0xcf
	blo _0813415C
	mov r0, r8
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	subs r0, #0xcf
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_081342CC
	b _08134188
_0813415C:
	cmp r1, #0xb0
	bls _0813417E
	adds r0, r1, #0
	subs r0, #0xb1
	strb r0, [r7, #0xa]
	mov r3, r8
	ldr r3, [r3, #0x34]
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_081342CC
	ldrb r0, [r5]
	cmp r0, #0
	beq _081341E4
	b _08134188
_0813417E:
	ldr r0, _081342D0 @ =gUnk_083C28C8
	subs r1, #0x80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
_08134188:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _08134130
	subs r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	beq _081341E4
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _081341E4
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _081341AA
	subs r0, #1
	strb r0, [r5, #0x1c]
	b _081341E4
_081341AA:
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
	adds r1, r0, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	bpl _081341BE
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	b _081341C2
_081341BE:
	movs r0, #0x80
	subs r2, r0, r1
_081341C2:
	ldrb r0, [r5, #0x17]
	muls r0, r2, r0
	asrs r2, r0, #6
	ldrb r0, [r5, #0x16]
	eors r0, r2
	lsls r0, r0, #0x18
	beq _081341E4
	strb r2, [r5, #0x16]
	ldrb r0, [r5]
	ldrb r1, [r5, #0x18]
	cmp r1, #0
	bne _081341DE
	movs r1, #0xc
	b _081341E0
_081341DE:
	movs r1, #3
_081341E0:
	orrs r0, r1
	strb r0, [r5]
_081341E4:
	mov r3, sl
	mov r4, fp
_081341E8:
	subs r6, #1
	ble _081341F4
	movs r0, #0x50
	adds r5, r5, r0
	lsls r3, r3, #1
	b _081340CC
_081341F4:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r4, #0
	bne _08134206
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	b _081342BC
_08134206:
	str r4, [r7, #4]
	ldrh r0, [r7, #0x22]
	subs r0, #0x96
_0813420C:
	strh r0, [r7, #0x22]
	cmp r0, #0x96
	blo _08134214
	b _081340C4
_08134214:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #0x2c]
_08134218:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	beq _081342B2
	movs r1, #0xf
	tst r1, r0
	beq _081342B2
	mov sb, r2
	adds r0, r7, #0
	adds r1, r5, #0
	bl TrkVolPitSet_rev01
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _081342A8
_08134236:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	bne _08134246
	adds r0, r4, #0
	bl ClearChain_rev
	b _081342A2
_08134246:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5]
	movs r0, #3
	tst r0, r3
	beq _08134264
	bl ChnVolSetAsm
	cmp r6, #0
	beq _08134264
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_08134264:
	ldrb r3, [r5]
	movs r0, #0xc
	tst r0, r3
	beq _081342A2
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r2, r1, r0
	bpl _08134278
	movs r2, #0
_08134278:
	cmp r6, #0
	beq _08134296
	mov r0, r8
	ldr r3, [r0, #0x30]
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	adds r0, r6, #0
	bl sub_081342CC
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x1d]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x1d]
	b _081342A2
_08134296:
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #0x24]
	bl MidiKey2fr
	str r0, [r4, #0x20]
_081342A2:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08134236
_081342A8:
	ldrb r0, [r5]
	movs r1, #0xf0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
_081342B2:
	subs r2, #1
	ble _081342BC
	movs r0, #0x50
	adds r5, r5, r0
	bgt _08134218
_081342BC:
	ldr r0, _081342D8 @ =0x68736D53
	str r0, [r7, #0x34]
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	thumb_func_start sub_081342CC
sub_081342CC: @ 0x081342CC
	bx r3
	.align 2, 0
_081342D0: .4byte gUnk_083C28C8
_081342D4: .4byte 0x03007FF0
_081342D8: .4byte 0x68736D53

	thumb_func_start TrackStop_rev01
TrackStop_rev01: @ 0x081342DC
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _08134314
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08134312
	movs r6, #0
_081342F0:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0813430A
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _08134308
	ldr r3, _0813431C @ =0x03007FF0
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl sub_081342CC
_08134308:
	strb r6, [r4]
_0813430A:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _081342F0
_08134312:
	str r4, [r5, #0x20]
_08134314:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0813431C: .4byte 0x03007FF0

	thumb_func_start ChnVolSetAsm
ChnVolSetAsm: @ 0x08134320
	ldrb r1, [r4, #0x12]
	movs r0, #0x14
	ldrsb r2, [r4, r0]
	movs r3, #0x80
	adds r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x10]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _08134338
	movs r0, #0xff
_08134338:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _0813434C
	movs r0, #0xff
_0813434C:
	strb r0, [r4, #3]
	bx lr

	thumb_func_start ply_note_rev01
ply_note_rev01: @ 0x08134350
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _08134548 @ =0x03007FF0
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _0813454C @ =gUnk_083C28C8
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08134396
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08134394
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08134394
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_08134394:
	str r3, [r5, #0x40]
_08134396:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _081343E8
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _081343B6
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _081343B8
_081343B6:
	adds r0, r3, #0
_081343B8:
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r5, #0x28]
	adds r1, r1, r0
	mov sb, r1
	mov r6, sb
	ldrb r1, [r6]
	movs r0, #0xc0
	tst r0, r1
	beq _081343D0
	b _08134536
_081343D0:
	movs r0, #0x80
	tst r0, r2
	beq _081343EC
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _081343E4
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_081343E4:
	ldrb r3, [r6, #1]
	b _081343EC
_081343E8:
	mov sb, r4
	ldrb r3, [r5, #5]
_081343EC:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _081343FC
	movs r0, #0xff
_081343FC:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _0813443C
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _08134414
	b _08134536
_08134414:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08134490
	movs r0, #0x40
	tst r0, r1
	bne _08134490
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _08134490
	beq _08134434
	b _08134536
_08134434:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _08134490
	b _08134536
_0813443C:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_0813444A:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08134490
	movs r0, #0x40
	tst r0, r1
	beq _08134464
	cmp r2, #0
	bne _08134468
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _08134482
_08134464:
	cmp r2, #0
	bne _08134484
_08134468:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _08134474
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _08134482
_08134474:
	bhi _08134484
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _08134480
	adds r7, r0, #0
	b _08134482
_08134480:
	blo _08134484
_08134482:
	mov r8, r4
_08134484:
	adds r4, #0x40
	subs r3, #1
	bgt _0813444A
	mov r4, r8
	cmp r4, #0
	beq _08134536
_08134490:
	adds r0, r4, #0
	bl ClearChain_rev
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _081344A4
	str r4, [r3, #0x30]
_081344A4:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _081344B6
	adds r1, r5, #0
	bl clear_modM
_081344B6:
	ldr r0, [sp]
	adds r1, r5, #0
	bl TrkVolPitSet_rev01
	ldr r0, [r5, #4]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x10]
	strb r0, [r4, #0x13]
	ldr r0, [sp, #8]
	strb r0, [r4, #8]
	ldr r0, [sp, #0x14]
	strb r0, [r4, #0x14]
	mov r6, sb
	ldrb r0, [r6]
	strb r0, [r4, #1]
	ldr r7, [r6, #4]
	str r7, [r4, #0x24]
	ldr r0, [r6, #8]
	str r0, [r4, #4]
	ldrh r0, [r5, #0x1e]
	strh r0, [r4, #0xc]
	bl ChnVolSetAsm
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	bpl _081344F0
	movs r3, #0
_081344F0:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _0813451E
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _0813450A
	movs r0, #0x70
	tst r0, r1
	bne _0813450C
_0813450A:
	movs r1, #8
_0813450C:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl sub_081342CC
	b _08134528
_0813451E:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl MidiKey2fr
_08134528:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_08134536:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_08134548: .4byte 0x03007FF0
_0813454C: .4byte gUnk_083C28C8

	thumb_func_start ply_endtie_rev01
ply_endtie_rev01: @ 0x08134550
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _08134562
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _08134564
_08134562:
	ldrb r3, [r1, #5]
_08134564:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _0813458C
	movs r4, #0x83
	movs r5, #0x40
_0813456E:
	ldrb r2, [r1]
	tst r2, r4
	beq _08134586
	tst r2, r5
	bne _08134586
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _08134586
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _0813458C
_08134586:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _0813456E
_0813458C:
	pop {r4, r5}
	bx lr

	thumb_func_start clear_modM
clear_modM: @ 0x08134590
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _081345A0
	movs r2, #0xc
	b _081345A2
_081345A0:
	movs r2, #3
_081345A2:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.align 2, 0

	thumb_func_start ld_r3_tp_adr_i_rev
ld_r3_tp_adr_i_rev: @ 0x081345AC
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.align 2, 0

	thumb_func_start ply_lfos_rev01
ply_lfos_rev01: @ 0x081345B8
	mov ip, lr
	bl ld_r3_tp_adr_i_rev
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _081345C8
	bl clear_modM
_081345C8:
	bx ip
	.align 2, 0

	thumb_func_start ply_mod_rev01
ply_mod_rev01: @ 0x081345CC
	mov ip, lr
	bl ld_r3_tp_adr_i_rev
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _081345DC
	bl clear_modM
_081345DC:
	bx ip
	.align 2, 0
