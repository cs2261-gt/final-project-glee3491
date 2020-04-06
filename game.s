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
	.file	"game.c"
	.text
	.align	2
	.global	initGame
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	mov	r2, #3
	ldr	r1, .L3
	ldr	r3, .L3+4
	str	r0, [r1]
	str	r2, [r3]
	bx	lr
.L4:
	.align	2
.L3:
	.word	winscore
	.word	losescore
	.size	initGame, .-initGame
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L14
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L6
	ldr	r2, .L14+4
	ldrh	r2, [r2]
	tst	r2, #1
	ldreq	r1, .L14+8
	ldreq	r2, [r1]
	addeq	r2, r2, #1
	streq	r2, [r1]
.L6:
	tst	r3, #2
	bxeq	lr
	ldr	r3, .L14+4
	ldrh	r3, [r3]
	tst	r3, #2
	ldreq	r2, .L14+12
	ldreq	r3, [r2]
	subeq	r3, r3, #1
	streq	r3, [r2]
	bx	lr
.L15:
	.align	2
.L14:
	.word	oldButtons
	.word	buttons
	.word	winscore
	.word	losescore
	.size	updateGame, .-updateGame
	.comm	losescore,4,4
	.comm	winscore,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
