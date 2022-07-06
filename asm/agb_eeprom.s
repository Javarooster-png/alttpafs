	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start IdentifyEeprom
IdentifyEeprom: @ 0x08135BCC
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0
	cmp r0, #4
	bne _08135BE8
	ldr r1, _08135BE0 @ =gUnk_03000020
	ldr r0, _08135BE4 @ =gUnk_084272A4
	str r0, [r1]
	b _08135C04
	.align 2, 0
_08135BE0: .4byte gUnk_03000020
_08135BE4: .4byte gUnk_084272A4
_08135BE8:
	cmp r0, #0x40
	bne _08135BFC
	ldr r1, _08135BF4 @ =gUnk_03000020
	ldr r0, _08135BF8 @ =gUnk_084272B0
	str r0, [r1]
	b _08135C04
	.align 2, 0
_08135BF4: .4byte gUnk_03000020
_08135BF8: .4byte gUnk_084272B0
_08135BFC:
	ldr r1, _08135C0C @ =gUnk_03000020
	ldr r0, _08135C10 @ =gUnk_084272A4
	str r0, [r1]
	movs r2, #1
_08135C04:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_08135C0C: .4byte gUnk_03000020
_08135C10: .4byte gUnk_084272A4

	thumb_func_start EepromTimerIntr
EepromTimerIntr: @ 0x08135C14
	push {lr}
	ldr r1, _08135C34 @ =gUnk_03000012
	ldrh r0, [r1]
	cmp r0, #0
	beq _08135C30
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08135C30
	ldr r1, _08135C38 @ =gUnk_03000014
	movs r0, #1
	strb r0, [r1]
_08135C30:
	pop {r0}
	bx r0
	.align 2, 0
_08135C34: .4byte gUnk_03000012
_08135C38: .4byte gUnk_03000014

	thumb_func_start SetEepromTimerIntr
SetEepromTimerIntr: @ 0x08135C3C
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _08135C70
	ldr r0, _08135C60 @ =gUnk_03000010
	strb r1, [r0]
	ldr r1, _08135C64 @ =gUnk_03000018
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _08135C68 @ =0x04000100
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _08135C6C @ =EepromTimerIntr
	str r0, [r2]
	movs r0, #0
	b _08135C72
	.align 2, 0
_08135C60: .4byte gUnk_03000010
_08135C64: .4byte gUnk_03000018
_08135C68: .4byte 0x04000100
_08135C6C: .4byte EepromTimerIntr
_08135C70:
	movs r0, #1
_08135C72:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start StartEepromTimer
StartEepromTimer: @ 0x08135C78
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _08135CE4 @ =gUnk_0300001C
	ldr r1, _08135CE8 @ =0x04000208
	mov sb, r1
	ldrh r1, [r1]
	strh r1, [r2]
	movs r6, #0
	mov r2, sb
	strh r6, [r2]
	ldr r3, _08135CEC @ =gUnk_03000018
	mov r8, r3
	ldr r5, [r3]
	strh r6, [r5, #2]
	ldr r3, _08135CF0 @ =0x04000202
	ldr r4, _08135CF4 @ =gUnk_03000010
	ldrb r1, [r4]
	movs r2, #8
	adds r7, r2, #0
	lsls r7, r1
	adds r1, r7, #0
	strh r1, [r3]
	subs r3, #2
	ldrb r1, [r4]
	lsls r2, r1
	ldrh r1, [r3]
	orrs r1, r2
	strh r1, [r3]
	ldr r1, _08135CF8 @ =gUnk_03000014
	strb r6, [r1]
	ldr r2, _08135CFC @ =gUnk_03000012
	ldrh r1, [r0]
	strh r1, [r2]
	adds r0, #2
	ldrh r1, [r0]
	strh r1, [r5]
	adds r1, r5, #2
	mov r2, r8
	str r1, [r2]
	ldrh r0, [r0, #2]
	strh r0, [r5, #2]
	str r5, [r2]
	movs r0, #1
	mov r3, sb
	strh r0, [r3]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08135CE4: .4byte gUnk_0300001C
_08135CE8: .4byte 0x04000208
_08135CEC: .4byte gUnk_03000018
_08135CF0: .4byte 0x04000202
_08135CF4: .4byte gUnk_03000010
_08135CF8: .4byte gUnk_03000014
_08135CFC: .4byte gUnk_03000012

	thumb_func_start StopEepromTimer
StopEepromTimer: @ 0x08135D00
	ldr r3, _08135D30 @ =0x04000208
	movs r1, #0
	strh r1, [r3]
	ldr r2, _08135D34 @ =gUnk_03000018
	ldr r0, [r2]
	strh r1, [r0]
	adds r0, #2
	str r0, [r2]
	strh r1, [r0]
	subs r0, #2
	str r0, [r2]
	ldr r2, _08135D38 @ =0x04000200
	ldr r0, _08135D3C @ =gUnk_03000010
	ldrb r0, [r0]
	movs r1, #8
	lsls r1, r0
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	ldr r0, _08135D40 @ =gUnk_0300001C
	ldrh r0, [r0]
	strh r0, [r3]
	bx lr
	.align 2, 0
_08135D30: .4byte 0x04000208
_08135D34: .4byte gUnk_03000018
_08135D38: .4byte 0x04000200
_08135D3C: .4byte gUnk_03000010
_08135D40: .4byte gUnk_0300001C

	thumb_func_start Dma3Transmit
Dma3Transmit: @ 0x08135D44
	push {r4, r5, r6, lr}
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, _08135DA4 @ =0x04000208
	ldrh r3, [r4]
	adds r6, r3, #0
	movs r3, #0
	strh r3, [r4]
	ldr r5, _08135DA8 @ =0x04000204
	ldrh r4, [r5]
	ldr r3, _08135DAC @ =0x0000F8FF
	ands r4, r3
	ldr r3, _08135DB0 @ =gUnk_03000020
	ldr r3, [r3]
	ldrh r3, [r3, #6]
	orrs r4, r3
	strh r4, [r5]
	ldr r3, _08135DB4 @ =0x040000D4
	str r0, [r3]
	ldr r0, _08135DB8 @ =0x040000D8
	str r1, [r0]
	ldr r1, _08135DBC @ =0x040000DC
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r1]
	adds r1, #2
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08135D98
	ldr r2, _08135DC0 @ =0x040000DE
	movs r0, #0x80
	lsls r0, r0, #8
	adds r1, r0, #0
_08135D90:
	ldrh r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _08135D90
_08135D98:
	ldr r0, _08135DA4 @ =0x04000208
	strh r6, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08135DA4: .4byte 0x04000208
_08135DA8: .4byte 0x04000204
_08135DAC: .4byte 0x0000F8FF
_08135DB0: .4byte gUnk_03000020
_08135DB4: .4byte 0x040000D4
_08135DB8: .4byte 0x040000D8
_08135DBC: .4byte 0x040000DC
_08135DC0: .4byte 0x040000DE

	thumb_func_start ReadEepromDword
ReadEepromDword: @ 0x08135DC4
	push {r4, r5, r6, lr}
	sub sp, #0x88
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _08135DDC @ =gUnk_03000020
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r3, r0
	blo _08135DE4
	ldr r0, _08135DE0 @ =0x000080FF
	b _08135E66
	.align 2, 0
_08135DDC: .4byte gUnk_03000020
_08135DE0: .4byte 0x000080FF
_08135DE4:
	ldr r0, _08135E70 @ =gUnk_03000020
	adds r6, r0, #0
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	lsls r0, r1, #1
	mov r4, sp
	adds r2, r0, r4
	adds r2, #2
	movs r4, #0
	cmp r4, r1
	bhs _08135E0E
_08135DFA:
	strh r3, [r2]
	subs r2, #2
	lsrs r3, r3, #1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r6]
	ldrb r0, [r0, #8]
	cmp r4, r0
	blo _08135DFA
_08135E0E:
	movs r0, #1
	strh r0, [r2]
	subs r2, #2
	strh r0, [r2]
	movs r4, #0xd0
	lsls r4, r4, #0x14
	ldr r0, _08135E70 @ =gUnk_03000020
	ldr r0, [r0]
	ldrb r2, [r0, #8]
	adds r2, #3
	mov r0, sp
	adds r1, r4, #0
	bl Dma3Transmit
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0x44
	bl Dma3Transmit
	add r2, sp, #8
	adds r5, #6
	movs r4, #0
	movs r6, #1
_08135E3C:
	movs r1, #0
	movs r3, #0
_08135E40:
	lsls r1, r1, #0x11
	ldrh r0, [r2]
	ands r0, r6
	lsrs r1, r1, #0x10
	orrs r1, r0
	adds r2, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bls _08135E40
	strh r1, [r5]
	subs r5, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08135E3C
	movs r0, #0
_08135E66:
	add sp, #0x88
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08135E70: .4byte gUnk_03000020

	thumb_func_start ProgramEepromDword
ProgramEepromDword: @ 0x08135E74
	push {r4, r5, lr}
	sub sp, #0xa4
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08135E8C @ =gUnk_03000020
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r4, r0
	blo _08135E94
	ldr r0, _08135E90 @ =0x000080FF
	b _08135F38
	.align 2, 0
_08135E8C: .4byte gUnk_03000020
_08135E90: .4byte 0x000080FF
_08135E94:
	ldr r0, _08135ED4 @ =gUnk_03000020
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	lsls r0, r0, #1
	mov r1, sp
	adds r3, r0, r1
	adds r3, #0x84
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r1, #0
_08135EAA:
	ldrh r2, [r5]
	adds r5, #2
	movs r0, #0
_08135EB0:
	strh r2, [r3]
	subs r3, #2
	lsrs r2, r2, #1
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _08135EB0
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08135EAA
	movs r1, #0
	ldr r0, _08135ED4 @ =gUnk_03000020
	adds r2, r0, #0
	ldr r0, [r0]
	b _08135EE6
	.align 2, 0
_08135ED4: .4byte gUnk_03000020
_08135ED8:
	strh r4, [r3]
	subs r3, #2
	lsrs r4, r4, #1
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, [r2]
_08135EE6:
	ldrb r0, [r0, #8]
	cmp r1, r0
	blo _08135ED8
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r0, #1
	strh r0, [r3]
	movs r1, #0xd0
	lsls r1, r1, #0x14
	ldr r0, _08135F40 @ =gUnk_03000020
	ldr r0, [r0]
	ldrb r2, [r0, #8]
	adds r2, #0x43
	mov r0, sp
	bl Dma3Transmit
	ldr r0, _08135F44 @ =gUnk_084272BC
	bl StartEepromTimer
	movs r4, #0
	movs r1, #0xd0
	lsls r1, r1, #0x14
	movs r3, #1
	ldr r2, _08135F48 @ =gUnk_03000014
_08135F18:
	ldrh r0, [r1]
	ands r0, r3
	cmp r0, #0
	bne _08135F32
	ldrb r0, [r2]
	cmp r0, #0
	beq _08135F18
	ldrh r0, [r1]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08135F32
	ldr r4, _08135F4C @ =0x0000C001
_08135F32:
	bl StopEepromTimer
	adds r0, r4, #0
_08135F38:
	add sp, #0xa4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08135F40: .4byte gUnk_03000020
_08135F44: .4byte gUnk_084272BC
_08135F48: .4byte gUnk_03000014
_08135F4C: .4byte 0x0000C001

	thumb_func_start VerifyEepromDword
VerifyEepromDword: @ 0x08135F50
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r5, #0
	ldr r0, _08135F6C @ =gUnk_03000020
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r1, r0
	blo _08135F74
	ldr r0, _08135F70 @ =0x000080FF
	b _08135F9E
	.align 2, 0
_08135F6C: .4byte gUnk_03000020
_08135F70: .4byte 0x000080FF
_08135F74:
	adds r0, r1, #0
	mov r1, sp
	bl ReadEepromDword
	mov r2, sp
	movs r3, #0
	b _08135F8C
_08135F82:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bhi _08135F9C
_08135F8C:
	ldrh r1, [r4]
	ldrh r0, [r2]
	adds r2, #2
	adds r4, #2
	cmp r1, r0
	beq _08135F82
	movs r5, #0x80
	lsls r5, r5, #8
_08135F9C:
	adds r0, r5, #0
_08135F9E:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start ProgramEepromDwordEx
ProgramEepromDwordEx: @ 0x08135FA8
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _08135FBA
_08135FB4:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08135FBA:
	cmp r6, #2
	bhi _08135FDE
	adds r0, r4, #0
	adds r1, r5, #0
	bl ProgramEepromDword
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _08135FB4
	adds r0, r4, #0
	adds r1, r5, #0
	bl VerifyEepromDword
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _08135FB4
_08135FDE:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
