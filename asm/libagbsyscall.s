	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CpuFastSet
CpuFastSet: @ 0x08135B78
	svc #0xc
	bx lr

	thumb_func_start CpuSet
CpuSet: @ 0x08135B7C
	svc #0xb
	bx lr

	thumb_func_start Div
Div: @ 0x08135B80
	svc #6
	bx lr

	thumb_func_start IntrWait
IntrWait: @ 0x08135B84
	movs r2, #0
	svc #4
	bx lr
	.align 2, 0

	thumb_func_start LZ77UnCompVram
LZ77UnCompVram: @ 0x08135B8C
	svc #0x12
	bx lr

	thumb_func_start LZ77UnCompWram
LZ77UnCompWram: @ 0x08135B90
	svc #0x11
	bx lr

	thumb_func_start ObjAffineSet
ObjAffineSet: @ 0x08135B94
	svc #0xf
	bx lr

	thumb_func_start SoftReset
SoftReset: @ 0x08135B98
	ldr r3, _08135BA8 @ =0x04000208
	movs r2, #0
	strb r2, [r3]
	ldr r1, _08135BAC @ =gUnk_03007F00
	mov sp, r1
	svc #1
	svc #0
	movs r0, r0
	.align 2, 0
_08135BA8: .4byte 0x04000208
_08135BAC: .4byte gUnk_03007F00

	thumb_func_start SoundBiasReset
SoundBiasReset: @ 0x08135BB0
	movs r0, #0
	svc #0x19
	bx lr
	.align 2, 0

	thumb_func_start SoundBiasSet
SoundBiasSet: @ 0x08135BB8
	movs r0, #1
	svc #0x19
	bx lr
	.align 2, 0

	thumb_func_start Sqrt
Sqrt: @ 0x08135BC0
	svc #8
	bx lr

	thumb_func_start VBlankIntrWait
VBlankIntrWait: @ 0x08135BC4
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0
