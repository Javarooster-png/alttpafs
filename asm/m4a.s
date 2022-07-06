	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start MidiKey2fr
MidiKey2fr: @ 0x081345E0
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r7, r2, #0x18
	cmp r6, #0xb2
	bls _081345F4
	movs r6, #0xb2
	movs r7, #0xff
	lsls r7, r7, #0x18
_081345F4:
	ldr r3, _0813463C @ =gUnk_083C26E4
	adds r0, r6, r3
	ldrb r5, [r0]
	ldr r4, _08134640 @ =gUnk_083C2798
	movs r2, #0xf
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r5, #4
	ldr r5, [r0]
	lsrs r5, r1
	adds r0, r6, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r1, #4
	ldr r0, [r0]
	lsrs r0, r1
	mov r1, ip
	ldr r4, [r1, #4]
	subs r0, r0, r5
	adds r1, r7, #0
	bl sub_081339C4
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl sub_081339C4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0813463C: .4byte gUnk_083C26E4
_08134640: .4byte gUnk_083C2798

	thumb_func_start DummyFunc
DummyFunc: @ 0x08134644
	bx lr
	.align 2, 0

	thumb_func_start MPlayContinue
MPlayContinue: @ 0x08134648
	adds r2, r0, #0
	ldr r3, [r2, #0x34]
	ldr r0, _0813465C @ =0x68736D53
	cmp r3, r0
	bne _0813465A
	ldr r0, [r2, #4]
	ldr r1, _08134660 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_0813465A:
	bx lr
	.align 2, 0
_0813465C: .4byte 0x68736D53
_08134660: .4byte 0x7FFFFFFF

	thumb_func_start MPlayFadeOut
MPlayFadeOut: @ 0x08134664
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08134680 @ =0x68736D53
	cmp r3, r0
	bne _0813467C
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
_0813467C:
	bx lr
	.align 2, 0
_08134680: .4byte 0x68736D53

	thumb_func_start m4aSoundInit
m4aSoundInit: @ 0x08134684
	push {r4, r5, r6, lr}
	ldr r0, _081346D8 @ =SoundMainRAM
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _081346DC @ =gUnk_03006D18
	ldr r2, _081346E0 @ =0x04000100
	bl CpuSet
	ldr r0, _081346E4 @ =gUnk_02030A80
	bl SoundInit_rev01
	ldr r0, _081346E8 @ =gUnk_02031AC0
	bl MPlayExtender
	ldr r0, _081346EC @ =0x0093F800
	bl SoundMode_rev01
	ldr r0, _081346F0 @ =0x00000020
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _081346D2
	ldr r5, _081346F4 @ =gUnk_083C3A3C
	adds r6, r0, #0
_081346B6:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl MPlayOpen_rev01
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, _081346F8 @ =gUnk_020322C0
	str r0, [r4, #0x18]
	adds r5, #0xc
	subs r6, #1
	cmp r6, #0
	bne _081346B6
_081346D2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081346D8: .4byte SoundMainRAM
_081346DC: .4byte gUnk_03006D18
_081346E0: .4byte 0x04000100
_081346E4: .4byte gUnk_02030A80
_081346E8: .4byte gUnk_02031AC0
_081346EC: .4byte 0x0093F800
_081346F0: .4byte 0x00000020
_081346F4: .4byte gUnk_083C3A3C
_081346F8: .4byte gUnk_020322C0

	thumb_func_start m4aSoundMain
m4aSoundMain: @ 0x081346FC
	push {lr}
	bl SoundMain
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aSongNumStart
m4aSongNumStart: @ 0x08134708
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _0813472C @ =gUnk_083C3A3C
	ldr r1, _08134730 @ =gUnk_083C3BBC
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r0]
	adds r0, r2, #0
	bl MPlayStart_rev01
	pop {r0}
	bx r0
	.align 2, 0
_0813472C: .4byte gUnk_083C3A3C
_08134730: .4byte gUnk_083C3BBC

	thumb_func_start m4aSongNumStartOrChange
m4aSongNumStartOrChange: @ 0x08134734
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08134760 @ =gUnk_083C3A3C
	ldr r1, _08134764 @ =gUnk_083C3BBC
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _08134768
	adds r0, r1, #0
	adds r1, r2, #0
	bl MPlayStart_rev01
	b _0813477C
	.align 2, 0
_08134760: .4byte gUnk_083C3A3C
_08134764: .4byte gUnk_083C3BBC
_08134768:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08134774
	cmp r2, #0
	bge _0813477C
_08134774:
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart_rev01
_0813477C:
	pop {r0}
	bx r0

	thumb_func_start m4aSongNumStartOrContinue
m4aSongNumStartOrContinue: @ 0x08134780
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _081347AC @ =gUnk_083C3A3C
	ldr r1, _081347B0 @ =gUnk_083C3BBC
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _081347B4
	adds r0, r1, #0
	adds r1, r2, #0
	bl MPlayStart_rev01
	b _081347D0
	.align 2, 0
_081347AC: .4byte gUnk_083C3A3C
_081347B0: .4byte gUnk_083C3BBC
_081347B4:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _081347C6
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart_rev01
	b _081347D0
_081347C6:
	cmp r2, #0
	bge _081347D0
	adds r0, r1, #0
	bl MPlayContinue
_081347D0:
	pop {r0}
	bx r0

	thumb_func_start m4aSongNumStop
m4aSongNumStop: @ 0x081347D4
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08134800 @ =gUnk_083C3A3C
	ldr r1, _08134804 @ =gUnk_083C3BBC
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _081347FA
	adds r0, r2, #0
	bl MPlayStop_rev01
_081347FA:
	pop {r0}
	bx r0
	.align 2, 0
_08134800: .4byte gUnk_083C3A3C
_08134804: .4byte gUnk_083C3BBC

	thumb_func_start m4aSongNumContinue
m4aSongNumContinue: @ 0x08134808
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08134834 @ =gUnk_083C3A3C
	ldr r1, _08134838 @ =gUnk_083C3BBC
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _0813482E
	adds r0, r2, #0
	bl MPlayContinue
_0813482E:
	pop {r0}
	bx r0
	.align 2, 0
_08134834: .4byte gUnk_083C3A3C
_08134838: .4byte gUnk_083C3BBC

	thumb_func_start m4aMPlayAllStop
m4aMPlayAllStop: @ 0x0813483C
	push {r4, r5, lr}
	ldr r0, _08134860 @ =0x00000020
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0813485A
	ldr r5, _08134864 @ =gUnk_083C3A3C
	adds r4, r0, #0
_0813484C:
	ldr r0, [r5]
	bl MPlayStop_rev01
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _0813484C
_0813485A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08134860: .4byte 0x00000020
_08134864: .4byte gUnk_083C3A3C

	thumb_func_start m4aMPlayContinue
m4aMPlayContinue: @ 0x08134868
	push {lr}
	bl MPlayContinue
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayAllContinue
m4aMPlayAllContinue: @ 0x08134874
	push {r4, r5, lr}
	ldr r0, _08134898 @ =0x00000020
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08134892
	ldr r5, _0813489C @ =gUnk_083C3A3C
	adds r4, r0, #0
_08134884:
	ldr r0, [r5]
	bl MPlayContinue
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _08134884
_08134892:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08134898: .4byte 0x00000020
_0813489C: .4byte gUnk_083C3A3C

	thumb_func_start m4aMPlayFadeOut
m4aMPlayFadeOut: @ 0x081348A0
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl MPlayFadeOut
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayFadeOutPause
m4aMPlayFadeOutPause: @ 0x081348B0
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _081348C8 @ =0x68736D53
	cmp r3, r0
	bne _081348C6
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	ldr r0, _081348CC @ =0x00000101
	strh r0, [r2, #0x28]
_081348C6:
	bx lr
	.align 2, 0
_081348C8: .4byte 0x68736D53
_081348CC: .4byte 0x00000101

	thumb_func_start m4aMPlayFadeInContinue
m4aMPlayFadeInContinue: @ 0x081348D0
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _081348F0 @ =0x68736D53
	cmp r3, r0
	bne _081348EE
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #2
	strh r0, [r2, #0x28]
	ldr r0, [r2, #4]
	ldr r1, _081348F4 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_081348EE:
	bx lr
	.align 2, 0
_081348F0: .4byte 0x68736D53
_081348F4: .4byte 0x7FFFFFFF

	thumb_func_start m4aMPlayImmInit
m4aMPlayImmInit: @ 0x081348F8
	push {r4, r5, r6, r7, lr}
	ldrb r5, [r0, #8]
	ldr r4, [r0, #0x2c]
	cmp r5, #0
	ble _0813493A
	movs r7, #0x80
_08134904:
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08134932
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08134932
	adds r0, r4, #0
	bl Clear64byte_rev
	strb r7, [r4]
	movs r0, #2
	strb r0, [r4, #0xf]
	strb r6, [r4, #0x13]
	movs r0, #0x16
	strb r0, [r4, #0x19]
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #1
	strb r0, [r1]
_08134932:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08134904
_0813493A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start MPlayExtender
MPlayExtender: @ 0x08134940
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08134A08 @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	ldr r3, _08134A0C @ =0x04000080
	movs r2, #0
	strh r2, [r3]
	ldr r0, _08134A10 @ =0x04000063
	movs r1, #8
	strb r1, [r0]
	adds r0, #6
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0x14
	movs r1, #0x80
	strb r1, [r0]
	adds r0, #8
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0xd
	strb r2, [r0]
	movs r0, #0x77
	strb r0, [r3]
	ldr r0, _08134A14 @ =0x03007FF0
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _08134A18 @ =0x68736D53
	cmp r6, r0
	bne _08134A00
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _08134A1C @ =gUnk_02031A30
	ldr r0, _08134A20 @ =ply_memacc
	str r0, [r1, #0x20]
	ldr r0, _08134A24 @ =ply_lfos_rev01
	str r0, [r1, #0x44]
	ldr r0, _08134A28 @ =ply_mod_rev01
	str r0, [r1, #0x4c]
	ldr r0, _08134A2C @ =ply_xcmd
	str r0, [r1, #0x70]
	ldr r0, _08134A30 @ =ply_endtie_rev01
	str r0, [r1, #0x74]
	ldr r0, _08134A34 @ =SampFreqSet_rev01
	str r0, [r1, #0x78]
	ldr r0, _08134A38 @ =TrackStop_rev01
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _08134A3C @ =FadeOutBody_rev01
	str r0, [r2]
	adds r1, #0x84
	ldr r0, _08134A40 @ =TrkVolPitSet_rev01
	str r0, [r1]
	str r5, [r4, #0x1c]
	ldr r0, _08134A44 @ =CgbSound
	str r0, [r4, #0x28]
	ldr r0, _08134A48 @ =CgbOscOff
	str r0, [r4, #0x2c]
	ldr r0, _08134A4C @ =MidiKey2CgbFr
	str r0, [r4, #0x30]
	ldr r0, _08134A50 @ =0x00000000
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp]
	ldr r2, _08134A54 @ =0x05000040
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #1
	strb r0, [r5, #1]
	movs r0, #0x11
	strb r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #2
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x22
	strb r0, [r1]
	adds r1, #0x25
	movs r0, #3
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x44
	strb r0, [r1]
	adds r1, #0x24
	movs r0, #4
	strb r0, [r1, #1]
	movs r0, #0x88
	strb r0, [r1, #0x1c]
	str r6, [r4]
_08134A00:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08134A08: .4byte 0x04000084
_08134A0C: .4byte 0x04000080
_08134A10: .4byte 0x04000063
_08134A14: .4byte 0x03007FF0
_08134A18: .4byte 0x68736D53
_08134A1C: .4byte gUnk_02031A30
_08134A20: .4byte ply_memacc
_08134A24: .4byte ply_lfos_rev01
_08134A28: .4byte ply_mod_rev01
_08134A2C: .4byte ply_xcmd
_08134A30: .4byte ply_endtie_rev01
_08134A34: .4byte SampFreqSet_rev01
_08134A38: .4byte TrackStop_rev01
_08134A3C: .4byte FadeOutBody_rev01
_08134A40: .4byte TrkVolPitSet_rev01
_08134A44: .4byte CgbSound
_08134A48: .4byte CgbOscOff
_08134A4C: .4byte MidiKey2CgbFr
_08134A50: .4byte 0x00000000
_08134A54: .4byte 0x05000040

	thumb_func_start MusicPlayerJumpTableCopy
MusicPlayerJumpTableCopy: @ 0x08134A58
	svc #0x2a
	bx lr

	thumb_func_start ClearChain_rev
ClearChain_rev: @ 0x08134A5C
	push {lr}
	ldr r1, _08134A6C @ =gUnk_02031AB8
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08134A6C: .4byte gUnk_02031AB8

	thumb_func_start Clear64byte_rev
Clear64byte_rev: @ 0x08134A70
	push {lr}
	ldr r1, _08134A80 @ =gUnk_02031ABC
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08134A80: .4byte gUnk_02031ABC

	thumb_func_start SoundInit_rev01
SoundInit_rev01: @ 0x08134A84
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5]
	ldr r1, _08134B3C @ =0x040000C4
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ands r0, r2
	cmp r0, #0
	beq _08134AA0
	ldr r0, _08134B40 @ =0x84400004
	str r0, [r1]
_08134AA0:
	ldr r1, _08134B44 @ =0x040000D0
	ldr r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08134AAE
	ldr r0, _08134B40 @ =0x84400004
	str r0, [r1]
_08134AAE:
	ldr r0, _08134B48 @ =0x040000C6
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldr r1, _08134B4C @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	subs r1, #2
	ldr r2, _08134B50 @ =0x0000A90E
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08134B54 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08134B58 @ =0x040000BC
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _08134B5C @ =0x040000A0
	str r0, [r1]
	adds r1, #8
	movs r2, #0x98
	lsls r2, r2, #4
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _08134B60 @ =0x040000A4
	str r0, [r1]
	ldr r0, _08134B64 @ =0x03007FF0
	str r5, [r0]
	str r3, [sp]
	ldr r2, _08134B68 @ =0x050003EC
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _08134B6C @ =ply_note_rev01
	str r0, [r5, #0x38]
	ldr r0, _08134B70 @ =DummyFunc_rev
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _08134B74 @ =gUnk_02031A30
	adds r0, r4, #0
	bl MPlyJmpTblCopy
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl SampFreqSet_rev01
	ldr r0, _08134B78 @ =0x68736D53
	str r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08134B3C: .4byte 0x040000C4
_08134B40: .4byte 0x84400004
_08134B44: .4byte 0x040000D0
_08134B48: .4byte 0x040000C6
_08134B4C: .4byte 0x04000084
_08134B50: .4byte 0x0000A90E
_08134B54: .4byte 0x04000089
_08134B58: .4byte 0x040000BC
_08134B5C: .4byte 0x040000A0
_08134B60: .4byte 0x040000A4
_08134B64: .4byte 0x03007FF0
_08134B68: .4byte 0x050003EC
_08134B6C: .4byte ply_note_rev01
_08134B70: .4byte DummyFunc_rev
_08134B74: .4byte gUnk_02031A30
_08134B78: .4byte 0x68736D53

	thumb_func_start SampFreqSet_rev01
SampFreqSet_rev01: @ 0x08134B7C
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _08134BFC @ =0x03007FF0
	ldr r4, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r2
	lsrs r2, r0, #0x10
	movs r6, #0
	strb r2, [r4, #8]
	ldr r1, _08134C00 @ =gUnk_083C27C8
	subs r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	str r5, [r4, #0x10]
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r1, r5, #0
	bl __divsi3
	strb r0, [r4, #0xb]
	ldr r0, _08134C04 @ =0x00091D1B
	muls r0, r5, r0
	ldr r1, _08134C08 @ =0x00001388
	adds r0, r0, r1
	ldr r1, _08134C0C @ =0x00002710
	bl __divsi3
	adds r1, r0, #0
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl __divsi3
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
	ldr r0, _08134C10 @ =0x04000102
	strh r6, [r0]
	ldr r4, _08134C14 @ =0x04000100
	ldr r0, _08134C18 @ =0x00044940
	adds r1, r5, #0
	bl __divsi3
	rsbs r0, r0, #0
	strh r0, [r4]
	bl SoundVSyncOn_rev01
	ldr r1, _08134C1C @ =0x04000006
_08134BE0:
	ldrb r0, [r1]
	cmp r0, #0x9f
	beq _08134BE0
	ldr r1, _08134C1C @ =0x04000006
_08134BE8:
	ldrb r0, [r1]
	cmp r0, #0x9f
	bne _08134BE8
	ldr r1, _08134C10 @ =0x04000102
	movs r0, #0x80
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08134BFC: .4byte 0x03007FF0
_08134C00: .4byte gUnk_083C27C8
_08134C04: .4byte 0x00091D1B
_08134C08: .4byte 0x00001388
_08134C0C: .4byte 0x00002710
_08134C10: .4byte 0x04000102
_08134C14: .4byte 0x04000100
_08134C18: .4byte 0x00044940
_08134C1C: .4byte 0x04000006

	thumb_func_start SoundMode_rev01
SoundMode_rev01: @ 0x08134C20
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _08134CAC @ =0x03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _08134CB0 @ =0x68736D53
	cmp r1, r0
	bne _08134CA6
	adds r0, r1, #1
	str r0, [r5]
	movs r4, #0xff
	ands r4, r3
	cmp r4, #0
	beq _08134C42
	movs r0, #0x7f
	ands r4, r0
	strb r4, [r5, #5]
_08134C42:
	movs r4, #0xf0
	lsls r4, r4, #4
	ands r4, r3
	cmp r4, #0
	beq _08134C62
	lsrs r0, r4, #8
	strb r0, [r5, #6]
	movs r4, #0xc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
_08134C58:
	strb r1, [r0]
	subs r4, #1
	adds r0, #0x40
	cmp r4, #0
	bne _08134C58
_08134C62:
	movs r4, #0xf0
	lsls r4, r4, #8
	ands r4, r3
	cmp r4, #0
	beq _08134C70
	lsrs r0, r4, #0xc
	strb r0, [r5, #7]
_08134C70:
	movs r4, #0xb0
	lsls r4, r4, #0x10
	ands r4, r3
	cmp r4, #0
	beq _08134C8E
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r4
	lsrs r4, r0, #0xe
	ldr r2, _08134CB4 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
_08134C8E:
	movs r4, #0xf0
	lsls r4, r4, #0xc
	ands r4, r3
	cmp r4, #0
	beq _08134CA2
	bl SoundVSyncOff_rev01
	adds r0, r4, #0
	bl SampFreqSet_rev01
_08134CA2:
	ldr r0, _08134CB0 @ =0x68736D53
	str r0, [r5]
_08134CA6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08134CAC: .4byte 0x03007FF0
_08134CB0: .4byte 0x68736D53
_08134CB4: .4byte 0x04000089

	thumb_func_start SoundClear_rev01
SoundClear_rev01: @ 0x08134CB8
	push {r4, r5, r6, r7, lr}
	ldr r0, _08134D04 @ =0x03007FF0
	ldr r6, [r0]
	ldr r1, [r6]
	ldr r0, _08134D08 @ =0x68736D53
	cmp r1, r0
	bne _08134CFE
	adds r0, r1, #1
	str r0, [r6]
	movs r5, #0xc
	adds r4, r6, #0
	adds r4, #0x50
	movs r0, #0
_08134CD2:
	strb r0, [r4]
	subs r5, #1
	adds r4, #0x40
	cmp r5, #0
	bgt _08134CD2
	ldr r4, [r6, #0x1c]
	cmp r4, #0
	beq _08134CFA
	movs r5, #1
	movs r7, #0
_08134CE6:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r6, #0x2c]
	bl _call_via_r1
	strb r7, [r4]
	adds r5, #1
	adds r4, #0x40
	cmp r5, #4
	ble _08134CE6
_08134CFA:
	ldr r0, _08134D08 @ =0x68736D53
	str r0, [r6]
_08134CFE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08134D04: .4byte 0x03007FF0
_08134D08: .4byte 0x68736D53

	thumb_func_start SoundVSyncOff_rev01
SoundVSyncOff_rev01: @ 0x08134D0C
	push {lr}
	sub sp, #4
	ldr r0, _08134D6C @ =0x03007FF0
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _08134D70 @ =0x978C92AD
	adds r0, r1, r3
	cmp r0, #1
	bhi _08134D64
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r1, _08134D74 @ =0x040000C4
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #0x12
	ands r0, r3
	cmp r0, #0
	beq _08134D36
	ldr r0, _08134D78 @ =0x84400004
	str r0, [r1]
_08134D36:
	ldr r1, _08134D7C @ =0x040000D0
	ldr r0, [r1]
	ands r0, r3
	cmp r0, #0
	beq _08134D44
	ldr r0, _08134D78 @ =0x84400004
	str r0, [r1]
_08134D44:
	ldr r0, _08134D80 @ =0x040000C6
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	movs r0, #0
	str r0, [sp]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r2, _08134D84 @ =0x05000318
	mov r0, sp
	bl CpuSet
_08134D64:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08134D6C: .4byte 0x03007FF0
_08134D70: .4byte 0x978C92AD
_08134D74: .4byte 0x040000C4
_08134D78: .4byte 0x84400004
_08134D7C: .4byte 0x040000D0
_08134D80: .4byte 0x040000C6
_08134D84: .4byte 0x05000318

	thumb_func_start SoundVSyncOn_rev01
SoundVSyncOn_rev01: @ 0x08134D88
	push {r4, lr}
	ldr r0, _08134DB8 @ =0x03007FF0
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _08134DBC @ =0x68736D53
	cmp r3, r0
	beq _08134DB0
	ldr r0, _08134DC0 @ =0x040000C6
	movs r4, #0xb6
	lsls r4, r4, #8
	adds r1, r4, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldrb r0, [r2, #4]
	movs r0, #0
	strb r0, [r2, #4]
	adds r0, r3, #0
	subs r0, #0xa
	str r0, [r2]
_08134DB0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08134DB8: .4byte 0x03007FF0
_08134DBC: .4byte 0x68736D53
_08134DC0: .4byte 0x040000C6

	thumb_func_start MPlayOpen_rev01
MPlayOpen_rev01: @ 0x08134DC4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #0
	beq _08134E28
	cmp r4, #0x10
	bls _08134DD8
	movs r4, #0x10
_08134DD8:
	ldr r0, _08134E30 @ =0x03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _08134E34 @ =0x68736D53
	cmp r1, r0
	bne _08134E28
	adds r0, r1, #1
	str r0, [r5]
	adds r0, r7, #0
	bl Clear64byte_rev
	str r6, [r7, #0x2c]
	strb r4, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	cmp r4, #0
	beq _08134E0C
	movs r1, #0
_08134DFE:
	strb r1, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #0x50
	cmp r4, #0
	bne _08134DFE
_08134E0C:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _08134E1C
	str r0, [r7, #0x38]
	ldr r0, [r5, #0x24]
	str r0, [r7, #0x3c]
	movs r0, #0
	str r0, [r5, #0x20]
_08134E1C:
	str r7, [r5, #0x24]
	ldr r0, _08134E38 @ =MPlayMain_rev01
	str r0, [r5, #0x20]
	ldr r0, _08134E34 @ =0x68736D53
	str r0, [r5]
	str r0, [r7, #0x34]
_08134E28:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08134E30: .4byte 0x03007FF0
_08134E34: .4byte 0x68736D53
_08134E38: .4byte MPlayMain_rev01

	thumb_func_start MPlayStart_rev01
MPlayStart_rev01: @ 0x08134E3C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _08134F1C @ =0x68736D53
	cmp r1, r0
	bne _08134F12
	ldrb r0, [r5, #0xb]
	ldrb r2, [r7, #2]
	cmp r0, #0
	beq _08134E7E
	ldr r0, [r5]
	cmp r0, #0
	beq _08134E68
	ldr r1, [r5, #0x2c]
	movs r0, #0x40
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08134E74
_08134E68:
	ldr r1, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _08134E7E
	cmp r1, #0
	blt _08134E7E
_08134E74:
	ldrb r0, [r7, #2]
	adds r2, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, r2
	bhi _08134F12
_08134E7E:
	ldr r0, [r5, #0x34]
	adds r0, #1
	str r0, [r5, #0x34]
	movs r1, #0
	str r1, [r5, #4]
	str r7, [r5]
	ldr r0, [r7, #4]
	str r0, [r5, #0x30]
	strb r2, [r5, #9]
	str r1, [r5, #0xc]
	movs r0, #0x96
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x20]
	adds r0, #0x6a
	strh r0, [r5, #0x1e]
	strh r1, [r5, #0x22]
	strh r1, [r5, #0x24]
	movs r6, #0
	ldr r4, [r5, #0x2c]
	ldrb r1, [r7]
	cmp r6, r1
	bge _08134EDE
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _08134EFE
	mov r8, r6
_08134EB2:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop_rev01
	movs r0, #0xc0
	strb r0, [r4]
	mov r1, r8
	str r1, [r4, #0x20]
	lsls r1, r6, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x40]
	adds r6, #1
	adds r4, #0x50
	ldrb r0, [r7]
	cmp r6, r0
	bge _08134EDE
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _08134EB2
_08134EDE:
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _08134EFE
	movs r1, #0
	mov r8, r1
_08134EE8:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop_rev01
	mov r0, r8
	strb r0, [r4]
	adds r6, #1
	adds r4, #0x50
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _08134EE8
_08134EFE:
	movs r0, #0x80
	ldrb r1, [r7, #3]
	ands r0, r1
	cmp r0, #0
	beq _08134F0E
	ldrb r0, [r7, #3]
	bl SoundMode_rev01
_08134F0E:
	ldr r0, _08134F1C @ =0x68736D53
	str r0, [r5, #0x34]
_08134F12:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08134F1C: .4byte 0x68736D53

	thumb_func_start MPlayStop_rev01
MPlayStop_rev01: @ 0x08134F20
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x34]
	ldr r0, _08134F5C @ =0x68736D53
	cmp r1, r0
	bne _08134F56
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r6, #4]
	ldrb r4, [r6, #8]
	ldr r5, [r6, #0x2c]
	cmp r4, #0
	ble _08134F52
_08134F42:
	adds r0, r6, #0
	adds r1, r5, #0
	bl TrackStop_rev01
	subs r4, #1
	adds r5, #0x50
	cmp r4, #0
	bgt _08134F42
_08134F52:
	ldr r0, _08134F5C @ =0x68736D53
	str r0, [r6, #0x34]
_08134F56:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08134F5C: .4byte 0x68736D53

	thumb_func_start FadeOutBody_rev01
FadeOutBody_rev01: @ 0x08134F60
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r1, [r6, #0x24]
	cmp r1, #0
	beq _08135022
	ldrh r0, [r6, #0x26]
	subs r0, #1
	strh r0, [r6, #0x26]
	ldr r3, _08134FA0 @ =0x0000FFFF
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08135022
	strh r1, [r6, #0x26]
	ldrh r1, [r6, #0x28]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08134FA4
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	cmp r0, #0xff
	bls _08134FF6
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	strh r3, [r6, #0x24]
	b _08134FF6
	.align 2, 0
_08134FA0: .4byte 0x0000FFFF
_08134FA4:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08134FF6
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _08134FD6
_08134FBA:
	adds r0, r6, #0
	adds r1, r4, #0
	bl TrackStop_rev01
	movs r0, #1
	ldrh r7, [r6, #0x28]
	ands r0, r7
	cmp r0, #0
	bne _08134FCE
	strb r0, [r4]
_08134FCE:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08134FBA
_08134FD6:
	movs r0, #1
	ldrh r1, [r6, #0x28]
	ands r0, r1
	cmp r0, #0
	beq _08134FEA
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	b _08134FEE
_08134FEA:
	movs r0, #0x80
	lsls r0, r0, #0x18
_08134FEE:
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6, #0x24]
	b _08135022
_08134FF6:
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _08135022
	movs r3, #0x80
	movs r7, #0
	movs r2, #3
_08135004:
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0813501A
	ldrh r7, [r6, #0x28]
	lsrs r0, r7, #2
	strb r0, [r4, #0x13]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4]
_0813501A:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08135004
_08135022:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TrkVolPitSet_rev01
TrkVolPitSet_rev01: @ 0x08135028
	push {r4, lr}
	adds r2, r1, #0
	movs r0, #1
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0813508C
	ldrb r3, [r2, #0x13]
	ldrb r1, [r2, #0x12]
	adds r0, r3, #0
	muls r0, r1, r0
	lsrs r3, r0, #5
	ldrb r4, [r2, #0x18]
	cmp r4, #1
	bne _08135050
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r3, r0, #7
_08135050:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	cmp r4, #2
	bne _08135066
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
_08135066:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08135072
	adds r1, r0, #0
	b _08135078
_08135072:
	cmp r1, #0x7f
	ble _08135078
	movs r1, #0x7f
_08135078:
	adds r0, r1, #0
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x10]
	movs r0, #0x7f
	subs r0, r0, r1
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x11]
_0813508C:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _081350D0
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	ldrb r1, [r2, #0xf]
	muls r0, r1, r0
	movs r1, #0xc
	ldrsb r1, [r2, r1]
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0xa
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #0xb
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	adds r1, r0, r1
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _081350CA
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	adds r1, r1, r0
_081350CA:
	asrs r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_081350D0:
	movs r0, #0xfa
	ands r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start MidiKey2CgbFr
MidiKey2CgbFr: @ 0x081350DC
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	cmp r0, #4
	bne _08135114
	cmp r5, #0x14
	bhi _081350F8
	movs r5, #0
	b _08135106
_081350F8:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _08135106
	movs r5, #0x3b
_08135106:
	ldr r0, _08135110 @ =gUnk_083C287C
	adds r0, r5, r0
	ldrb r0, [r0]
	b _08135176
	.align 2, 0
_08135110: .4byte gUnk_083C287C
_08135114:
	cmp r5, #0x23
	bhi _08135120
	movs r0, #0
	mov ip, r0
	movs r5, #0
	b _08135132
_08135120:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x82
	bls _08135132
	movs r5, #0x82
	movs r1, #0xff
	mov ip, r1
_08135132:
	ldr r3, _0813517C @ =gUnk_083C27E0
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _08135180 @ =gUnk_083C2864
	movs r2, #0xf
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r7, #0
	ldrsh r1, [r0, r7]
	asrs r0, r6, #4
	adds r6, r1, #0
	asrs r6, r0
	adds r0, r5, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r1, r1, #4
	asrs r0, r1
	subs r0, r0, r6
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #8
	adds r0, r6, r0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
_08135176:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0813517C: .4byte gUnk_083C27E0
_08135180: .4byte gUnk_083C2864

	thumb_func_start CgbOscOff
CgbOscOff: @ 0x08135184
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _081351AC
	cmp r0, #2
	bgt _08135198
	cmp r0, #1
	beq _0813519E
	b _081351C0
_08135198:
	cmp r1, #3
	beq _081351B4
	b _081351C0
_0813519E:
	ldr r1, _081351A8 @ =0x04000063
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	b _081351C8
	.align 2, 0
_081351A8: .4byte 0x04000063
_081351AC:
	ldr r1, _081351B0 @ =0x04000069
	b _081351C2
	.align 2, 0
_081351B0: .4byte 0x04000069
_081351B4:
	ldr r1, _081351BC @ =0x04000070
	movs r0, #0
	b _081351CA
	.align 2, 0
_081351BC: .4byte 0x04000070
_081351C0:
	ldr r1, _081351D0 @ =0x04000079
_081351C2:
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
_081351C8:
	movs r0, #0x80
_081351CA:
	strb r0, [r1]
	bx lr
	.align 2, 0
_081351D0: .4byte 0x04000079

	thumb_func_start CgbModVol
CgbModVol: @ 0x081351D4
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	lsls r2, r0, #0x18
	lsrs r4, r2, #0x18
	ldrb r3, [r1, #3]
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r4, r3
	blo _081351F4
	lsrs r0, r2, #0x19
	cmp r0, r3
	blo _08135200
	movs r0, #0xf
	strb r0, [r1, #0x1b]
	b _0813520E
_081351F4:
	lsrs r0, r0, #0x19
	cmp r0, r4
	blo _08135200
	movs r0, #0xf0
	strb r0, [r1, #0x1b]
	b _0813520E
_08135200:
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	b _0813521E
_0813520E:
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	strb r0, [r1, #0xa]
	cmp r0, #0xf
	bls _08135220
	movs r0, #0xf
_0813521E:
	strb r0, [r1, #0xa]
_08135220:
	ldrb r2, [r1, #6]
	ldrb r3, [r1, #0xa]
	adds r0, r2, #0
	muls r0, r3, r0
	adds r0, #0xf
	asrs r0, r0, #4
	strb r0, [r1, #0x19]
	ldrb r0, [r1, #0x1c]
	ldrb r2, [r1, #0x1b]
	ands r0, r2
	strb r0, [r1, #0x1b]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start CgbSound
CgbSound: @ 0x0813523C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _0813525C @ =0x03007FF0
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _08135260
	subs r0, #1
	ldr r1, [sp, #4]
	strb r0, [r1, #0xa]
	b _08135266
	.align 2, 0
_0813525C: .4byte 0x03007FF0
_08135260:
	movs r0, #0xe
	ldr r2, [sp, #4]
	strb r0, [r2, #0xa]
_08135266:
	movs r6, #1
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
_0813526C:
	ldrb r1, [r4]
	movs r0, #0xc7
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	bne _08135282
	b _0813566C
_08135282:
	cmp r6, #2
	beq _081352B4
	cmp r6, #2
	bgt _08135290
	cmp r6, #1
	beq _08135296
	b _081352EC
_08135290:
	cmp r6, #3
	beq _081352CC
	b _081352EC
_08135296:
	ldr r0, _081352A8 @ =0x04000060
	str r0, [sp, #8]
	ldr r7, _081352AC @ =0x04000062
	ldr r2, _081352B0 @ =0x04000063
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _081352FC
	.align 2, 0
_081352A8: .4byte 0x04000060
_081352AC: .4byte 0x04000062
_081352B0: .4byte 0x04000063
_081352B4:
	ldr r0, _081352C0 @ =0x04000061
	str r0, [sp, #8]
	ldr r7, _081352C4 @ =0x04000068
	ldr r2, _081352C8 @ =0x04000069
	b _081352F4
	.align 2, 0
_081352C0: .4byte 0x04000061
_081352C4: .4byte 0x04000068
_081352C8: .4byte 0x04000069
_081352CC:
	ldr r0, _081352E0 @ =0x04000070
	str r0, [sp, #8]
	ldr r7, _081352E4 @ =0x04000072
	ldr r2, _081352E8 @ =0x04000073
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _081352FC
	.align 2, 0
_081352E0: .4byte 0x04000070
_081352E4: .4byte 0x04000072
_081352E8: .4byte 0x04000073
_081352EC:
	ldr r0, _0813534C @ =0x04000071
	str r0, [sp, #8]
	ldr r7, _08135350 @ =0x04000078
	ldr r2, _08135354 @ =0x04000079
_081352F4:
	str r2, [sp, #0xc]
	adds r0, #0xb
	str r0, [sp, #0x10]
	adds r2, #4
_081352FC:
	str r2, [sp, #0x14]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	mov r8, r0
	adds r2, r1, #0
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _081353F2
	movs r3, #0x40
	adds r0, r3, #0
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	mov sl, r0
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r5, #0
	bne _08135416
	movs r0, #3
	strb r0, [r4]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x18]
	bl CgbModVol
	ldr r3, [sp, #0x18]
	cmp r6, #2
	beq _08135364
	cmp r6, #2
	bgt _08135358
	cmp r6, #1
	beq _0813535E
	b _081353B8
	.align 2, 0
_0813534C: .4byte 0x04000071
_08135350: .4byte 0x04000078
_08135354: .4byte 0x04000079
_08135358:
	cmp r6, #3
	beq _08135370
	b _081353B8
_0813535E:
	ldrb r0, [r4, #0x1f]
	ldr r2, [sp, #8]
	strb r0, [r2]
_08135364:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1e]
	adds r0, r1, r0
	strb r0, [r7]
	b _081353C4
_08135370:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _08135398
	ldr r2, [sp, #8]
	strb r3, [r2]
	ldr r1, _081353AC @ =0x04000090
	ldr r2, [r4, #0x24]
	ldr r0, [r2]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #4]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #8]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #0xc]
	str r0, [r1]
	str r2, [r4, #0x28]
_08135398:
	ldr r0, [sp, #8]
	strb r5, [r0]
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _081353B0
	movs r0, #0xc0
	b _081353D2
	.align 2, 0
_081353AC: .4byte 0x04000090
_081353B0:
	movs r1, #0x80
	rsbs r1, r1, #0
	strb r1, [r4, #0x1a]
	b _081353D4
_081353B8:
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r2, [sp, #0x10]
	strb r0, [r2]
_081353C4:
	ldrb r0, [r4, #4]
	adds r0, #8
	mov r8, r0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _081353D2
	movs r0, #0x40
_081353D2:
	strb r0, [r4, #0x1a]
_081353D4:
	ldrb r1, [r4, #4]
	movs r2, #0
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	adds r1, r6, #1
	mov sl, r1
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	bne _081353EE
	b _0813552A
_081353EE:
	strb r2, [r4, #9]
	b _08135558
_081353F2:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08135424
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	movs r2, #0xff
	ands r0, r2
	lsls r0, r0, #0x18
	adds r1, r6, #1
	mov sl, r1
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	ble _08135416
	b _0813556A
_08135416:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl CgbOscOff
	movs r0, #0
	strb r0, [r4]
	b _08135668
_08135424:
	movs r0, #0x40
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	beq _08135464
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08135464
	movs r0, #0xfc
	ands r0, r1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _08135496
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08135558
	ldrb r2, [r4, #7]
	mov r8, r2
	b _08135558
_08135464:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08135558
	cmp r6, #3
	bne _08135476
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
_08135476:
	adds r0, r4, #0
	bl CgbModVol
	movs r0, #3
	ldrb r2, [r4]
	ands r0, r2
	cmp r0, #0
	bne _081354CA
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _081354C6
_08135496:
	ldrb r2, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	adds r0, r2, #0
	muls r0, r1, r0
	adds r0, #0xff
	asrs r0, r0, #8
	movs r1, #0
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08135416
	movs r0, #4
	ldrb r2, [r4]
	orrs r0, r2
	strb r0, [r4]
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _0813556A
	movs r2, #8
	mov r8, r2
	b _0813556A
_081354C6:
	ldrb r0, [r4, #7]
	b _08135556
_081354CA:
	cmp r0, #1
	bne _081354D6
_081354CE:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _08135556
_081354D6:
	cmp r0, #2
	bne _0813551A
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	ldrb r2, [r4, #0x19]
	lsls r1, r2, #0x18
	cmp r0, r1
	bgt _08135516
_081354EE:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _081354FE
	movs r0, #0xfc
	ldrb r1, [r4]
	ands r0, r1
	strb r0, [r4]
	b _08135496
_081354FE:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	orrs r0, r2
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _081354CE
	movs r0, #8
	mov r8, r0
	b _081354CE
_08135516:
	ldrb r0, [r4, #5]
	b _08135556
_0813551A:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r2, [r4, #0xa]
	cmp r0, r2
	blo _08135554
_0813552A:
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _081354EE
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _08135558
	ldrb r2, [r4, #5]
	mov r8, r2
	b _08135558
_08135554:
	ldrb r0, [r4, #4]
_08135556:
	strb r0, [r4, #0xb]
_08135558:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	bne _0813556A
	subs r0, #1
	str r0, [sp]
	b _08135464
_0813556A:
	movs r0, #2
	ldrb r1, [r4, #0x1d]
	ands r0, r1
	cmp r0, #0
	beq _081355E2
	cmp r6, #3
	bgt _081355AA
	movs r0, #8
	ldrb r2, [r4, #1]
	ands r0, r2
	cmp r0, #0
	beq _081355AA
	ldr r0, _08135594 @ =0x04000089
	ldrb r0, [r0]
	cmp r0, #0x3f
	bgt _0813559C
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _08135598 @ =0x000007FC
	b _081355A6
	.align 2, 0
_08135594: .4byte 0x04000089
_08135598: .4byte 0x000007FC
_0813559C:
	cmp r0, #0x7f
	bgt _081355AA
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _081355B8 @ =0x000007FE
_081355A6:
	ands r0, r1
	str r0, [r4, #0x20]
_081355AA:
	cmp r6, #4
	beq _081355BC
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	b _081355CA
	.align 2, 0
_081355B8: .4byte 0x000007FE
_081355BC:
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
	strb r0, [r2]
_081355CA:
	movs r0, #0xc0
	ldrb r1, [r4, #0x1a]
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x21
	ldrb r1, [r1]
	adds r0, r1, r0
	strb r0, [r4, #0x1a]
	movs r2, #0xff
	ands r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_081355E2:
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	ands r0, r2
	cmp r0, #0
	beq _08135668
	ldr r1, _0813562C @ =0x04000081
	ldrb r0, [r1]
	ldrb r2, [r4, #0x1c]
	bics r0, r2
	ldrb r2, [r4, #0x1b]
	orrs r0, r2
	strb r0, [r1]
	cmp r6, #3
	bne _08135634
	ldr r0, _08135630 @ =gUnk_083C28B8
	ldrb r1, [r4, #9]
	adds r0, r1, r0
	ldrb r0, [r0]
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	movs r1, #0x80
	adds r0, r1, #0
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	cmp r0, #0
	beq _08135668
	ldr r0, [sp, #8]
	strb r1, [r0]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	movs r0, #0x7f
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	strb r0, [r4, #0x1a]
	b _08135668
	.align 2, 0
_0813562C: .4byte 0x04000081
_08135630: .4byte gUnk_083C28B8
_08135634:
	movs r0, #0xf
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldrb r2, [r4, #9]
	lsls r0, r2, #4
	add r0, r8
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	movs r2, #0x80
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	cmp r6, #1
	bne _08135668
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08135668
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_08135668:
	movs r0, #0
	strb r0, [r4, #0x1d]
_0813566C:
	mov r6, sl
	mov r4, sb
	cmp r6, #4
	bgt _08135676
	b _0813526C
_08135676:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start MPlayTempoControl
MPlayTempoControl: @ 0x08135688
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _081356AC @ =0x68736D53
	cmp r3, r0
	bne _081356A4
	strh r1, [r2, #0x1e]
	ldrh r4, [r2, #0x1c]
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r2, #0x20]
_081356A4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081356AC: .4byte 0x68736D53

	thumb_func_start MPlayVolumeControl
MPlayVolumeControl: @ 0x081356B0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _08135714 @ =0x68736D53
	cmp r3, r0
	bne _08135708
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08135704
	movs r0, #0x80
	mov r8, r0
	lsrs r6, r6, #0x12
	movs r0, #3
	mov ip, r0
_081356E0:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _081356FA
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _081356FA
	strb r6, [r1, #0x13]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_081356FA:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _081356E0
_08135704:
	ldr r0, _08135714 @ =0x68736D53
	str r0, [r4, #0x34]
_08135708:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08135714: .4byte 0x68736D53

	thumb_func_start MPlayPitchControl
MPlayPitchControl: @ 0x08135718
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _08135788 @ =0x68736D53
	cmp r3, r0
	bne _0813577A
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r3, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08135776
	movs r0, #0x80
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r7, r0, #0x18
	movs r0, #0xc
	mov r8, r0
_08135750:
	mov r0, ip
	ands r0, r5
	cmp r0, #0
	beq _0813576C
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _0813576C
	strb r7, [r3, #0xb]
	strb r6, [r3, #0xd]
	mov r0, r8
	orrs r0, r1
	strb r0, [r3]
_0813576C:
	subs r2, #1
	adds r3, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08135750
_08135776:
	ldr r0, _08135788 @ =0x68736D53
	str r0, [r4, #0x34]
_0813577A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08135788: .4byte 0x68736D53

	thumb_func_start MPlayPanpotControl
MPlayPanpotControl: @ 0x0813578C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r3, [r4, #0x34]
	ldr r0, _081357F0 @ =0x68736D53
	cmp r3, r0
	bne _081357E4
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _081357E0
	movs r0, #0x80
	mov r8, r0
	movs r0, #3
	mov ip, r0
_081357BC:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _081357D6
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _081357D6
	strb r6, [r1, #0x15]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_081357D6:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _081357BC
_081357E0:
	ldr r0, _081357F0 @ =0x68736D53
	str r0, [r4, #0x34]
_081357E4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081357F0: .4byte 0x68736D53

	thumb_func_start MP_clear_modM
MP_clear_modM: @ 0x081357F4
	adds r1, r0, #0
	movs r2, #0
	movs r0, #0
	strb r0, [r1, #0x1a]
	strb r0, [r1, #0x16]
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _08135808
	movs r0, #0xc
	b _0813580A
_08135808:
	movs r0, #3
_0813580A:
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0

	thumb_func_start MPlayModDepthSet
MPlayModDepthSet: @ 0x08135814
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _08135884 @ =0x68736D53
	cmp r1, r0
	bne _08135874
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _08135870
	mov sb, r8
_08135844:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _08135866
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _08135866
	mov r0, r8
	strb r0, [r4, #0x17]
	mov r1, sb
	cmp r1, #0
	bne _08135866
	adds r0, r4, #0
	bl MP_clear_modM
_08135866:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _08135844
_08135870:
	ldr r0, _08135884 @ =0x68736D53
	str r0, [r6, #0x34]
_08135874:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08135884: .4byte 0x68736D53

	thumb_func_start MPlayLFOSpeedSet
MPlayLFOSpeedSet: @ 0x08135888
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _081358F8 @ =0x68736D53
	cmp r1, r0
	bne _081358E8
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _081358E4
	mov sb, r8
_081358B8:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _081358DA
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _081358DA
	mov r0, r8
	strb r0, [r4, #0x19]
	mov r1, sb
	cmp r1, #0
	bne _081358DA
	adds r0, r4, #0
	bl MP_clear_modM
_081358DA:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _081358B8
_081358E4:
	ldr r0, _081358F8 @ =0x68736D53
	str r0, [r6, #0x34]
_081358E8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081358F8: .4byte 0x68736D53

	thumb_func_start ply_memacc
ply_memacc: @ 0x081358FC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, [r6, #0x40]
	ldrb r5, [r1]
	adds r2, r1, #1
	str r2, [r6, #0x40]
	ldr r0, [r4, #0x18]
	ldrb r1, [r1, #1]
	adds r3, r1, r0
	adds r0, r2, #1
	str r0, [r6, #0x40]
	ldrb r2, [r2, #1]
	adds r0, #1
	str r0, [r6, #0x40]
	cmp r5, #0x11
	bls _08135920
	b _08135A4E
_08135920:
	lsls r0, r5, #2
	ldr r1, _0813592C @ =_08135930
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0813592C: .4byte _08135930
_08135930: @ jump table
	.4byte _08135978 @ case 0
	.4byte _0813597C @ case 1
	.4byte _08135984 @ case 2
	.4byte _0813598C @ case 3
	.4byte _08135996 @ case 4
	.4byte _081359A4 @ case 5
	.4byte _081359B2 @ case 6
	.4byte _081359BA @ case 7
	.4byte _081359C2 @ case 8
	.4byte _081359CA @ case 9
	.4byte _081359D2 @ case 10
	.4byte _081359DA @ case 11
	.4byte _081359E2 @ case 12
	.4byte _081359F0 @ case 13
	.4byte _081359FE @ case 14
	.4byte _08135A0C @ case 15
	.4byte _08135A1A @ case 16
	.4byte _08135A28 @ case 17
_08135978:
	strb r2, [r3]
	b _08135A4E
_0813597C:
	ldrb r1, [r3]
	adds r0, r1, r2
	strb r0, [r3]
	b _08135A4E
_08135984:
	ldrb r1, [r3]
	subs r0, r1, r2
	strb r0, [r3]
	b _08135A4E
_0813598C:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	b _08135A4E
_08135996:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	adds r0, r1, r0
	strb r0, [r3]
	b _08135A4E
_081359A4:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	subs r0, r1, r0
	strb r0, [r3]
	b _08135A4E
_081359B2:
	ldrb r3, [r3]
	cmp r3, r2
	beq _08135A34
	b _08135A48
_081359BA:
	ldrb r3, [r3]
	cmp r3, r2
	bne _08135A34
	b _08135A48
_081359C2:
	ldrb r3, [r3]
	cmp r3, r2
	bhi _08135A34
	b _08135A48
_081359CA:
	ldrb r3, [r3]
	cmp r3, r2
	bhs _08135A34
	b _08135A48
_081359D2:
	ldrb r3, [r3]
	cmp r3, r2
	bls _08135A34
	b _08135A48
_081359DA:
	ldrb r3, [r3]
	cmp r3, r2
	blo _08135A34
	b _08135A48
_081359E2:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	beq _08135A34
	b _08135A48
_081359F0:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bne _08135A34
	b _08135A48
_081359FE:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhi _08135A34
	b _08135A48
_08135A0C:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08135A34
	b _08135A48
_08135A1A:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bls _08135A34
	b _08135A48
_08135A28:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08135A48
_08135A34:
	ldr r0, _08135A44 @ =gUnk_02031A34
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl _call_via_r2
	b _08135A4E
	.align 2, 0
_08135A44: .4byte gUnk_02031A34
_08135A48:
	ldr r0, [r6, #0x40]
	adds r0, #4
	str r0, [r6, #0x40]
_08135A4E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start ply_xcmd
ply_xcmd: @ 0x08135A54
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _08135A70 @ =gUnk_083C28FC
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_08135A70: .4byte gUnk_083C28FC

	thumb_func_start ply_xxx
ply_xxx: @ 0x08135A74
	push {lr}
	ldr r2, _08135A84 @ =gUnk_02031A30
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_08135A84: .4byte gUnk_02031A30

	thumb_func_start ply_xwave
ply_xwave: @ 0x08135A88
	push {r4, lr}
	ldr r2, [r1, #0x40]
	ldr r0, _08135AC0 @ =0xFFFFFF00
	ands r4, r0
	ldrb r0, [r2]
	orrs r4, r0
	ldrb r0, [r2, #1]
	lsls r3, r0, #8
	ldr r0, _08135AC4 @ =0xFFFF00FF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #2]
	lsls r3, r0, #0x10
	ldr r0, _08135AC8 @ =0xFF00FFFF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #3]
	lsls r3, r0, #0x18
	ldr r0, _08135ACC @ =0x00FFFFFF
	ands r4, r0
	orrs r4, r3
	str r4, [r1, #0x28]
	adds r2, #4
	str r2, [r1, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08135AC0: .4byte 0xFFFFFF00
_08135AC4: .4byte 0xFFFF00FF
_08135AC8: .4byte 0xFF00FFFF
_08135ACC: .4byte 0x00FFFFFF

	thumb_func_start ply_xtype
ply_xtype: @ 0x08135AD0
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x24
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xatta
ply_xatta: @ 0x08135AE4
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x2c
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xdeca
ply_xdeca: @ 0x08135AF8
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2d
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xsust
ply_xsust: @ 0x08135B0C
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2e
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xrele
ply_xrele: @ 0x08135B20
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2f
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xiecv
ply_xiecv: @ 0x08135B34
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1e]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start ply_xiecl
ply_xiecl: @ 0x08135B40
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1f]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start ply_xleng
ply_xleng: @ 0x08135B4C
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x26
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xswee
ply_xswee: @ 0x08135B60
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x27
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start DummyFunc_rev
DummyFunc_rev: @ 0x08135B74
	bx lr
	.align 2, 0
