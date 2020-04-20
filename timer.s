	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"timer.c"
	.text
	.align	2
	.global	initBubbleTimer
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBubbleTimer, %function
initBubbleTimer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	mvn	r1, #163
	mov	r2, #135
	ldr	r3, .L3
	strh	r0, [r3, #10]	@ movhi
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	67109120
	.size	initBubbleTimer, .-initBubbleTimer
	.align	2
	.global	updateBubbleTimer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBubbleTimer, %function
updateBubbleTimer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r2, #0
	ldr	r3, .L6
	str	r2, [r3]
	bx	lr
.L7:
	.align	2
.L6:
	.word	bubbleSec
	.size	updateBubbleTimer, .-updateBubbleTimer
	.comm	enemySec,4,4
	.comm	bubbleSec,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
