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
	.file	"main.c"
	.text
	.align	2
	.global	goToSplash
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToSplash, %function
goToSplash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L4+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L4+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	mov	r3, #32
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L4+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L4+24
	mov	r0, #3
	ldr	r1, .L4+28
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L4+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	splashscreenPal
	.word	splashscreenTiles
	.word	100720640
	.word	splashscreenMap
	.word	state
	.size	goToSplash, .-goToSplash
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	mov	r4, #67108864
	mov	r2, #7168
	ldr	r3, .L8+4
	strh	r2, [r4, #8]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r1, #4352
	ldr	r2, .L8+8
	ldr	r3, .L8+12
	ldrh	r2, [r2, #48]
	strh	r1, [r4]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3]	@ movhi
	b	goToSplash
.L9:
	.align	2
.L8:
	.word	initGame
	.word	hideSprites
	.word	67109120
	.word	buttons
	.size	initialize, .-initialize
	.align	2
	.global	goToInstruction
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstruction, %function
goToInstruction:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L12
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L12+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L12+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L12+16
	mov	lr, pc
	bx	r4
	mov	r3, #32
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L12+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L12+24
	mov	r0, #3
	ldr	r1, .L12+28
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L12+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	instructionscreenPal
	.word	instructionscreenTiles
	.word	100720640
	.word	instructionscreenMap
	.word	state
	.size	goToInstruction, .-goToInstruction
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L16
	mov	lr, pc
	bx	r3
	ldr	r3, .L16+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L16+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L16+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L16+16
	mov	lr, pc
	bx	r4
	mov	r3, #48
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L16+20
	mov	lr, pc
	bx	r4
	mov	r3, #1056
	ldr	r2, .L16+24
	mov	r0, #3
	ldr	r1, .L16+28
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L16+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	gamescreenPal
	.word	gamescreenTiles
	.word	100720640
	.word	gamescreenMap
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	splash
	.syntax unified
	.arm
	.fpu softvfp
	.type	splash, %function
splash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L30
	ldr	r3, .L30+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L19
	ldr	r2, .L30+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L28
.L19:
	tst	r3, #4
	beq	.L18
	ldr	r3, .L30+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L29
.L18:
	pop	{r4, lr}
	bx	lr
.L29:
	pop	{r4, lr}
	b	goToInstruction
.L28:
	bl	goToGame
	ldrh	r3, [r4]
	b	.L19
.L31:
	.align	2
.L30:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.size	splash, .-splash
	.align	2
	.global	instruction
	.syntax unified
	.arm
	.fpu softvfp
	.type	instruction, %function
instruction:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L44
	ldr	r3, .L44+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L33
	ldr	r2, .L44+8
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L42
.L33:
	tst	r3, #8
	beq	.L32
	ldr	r3, .L44+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L43
.L32:
	pop	{r4, lr}
	bx	lr
.L43:
	pop	{r4, lr}
	b	goToGame
.L42:
	bl	goToSplash
	ldrh	r3, [r4]
	b	.L33
.L45:
	.align	2
.L44:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.size	instruction, .-instruction
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L48
	mov	lr, pc
	bx	r3
	ldr	r3, .L48+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L48+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L48+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L48+16
	mov	lr, pc
	bx	r4
	mov	r3, #32
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L48+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L48+24
	mov	r0, #3
	ldr	r1, .L48+28
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L48+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L49:
	.align	2
.L48:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	pausescreenPal
	.word	pausescreenTiles
	.word	100720640
	.word	pausescreenMap
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L52
	mov	lr, pc
	bx	r3
	ldr	r3, .L52+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L52+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L52+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L52+16
	mov	lr, pc
	bx	r4
	mov	r3, #32
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L52+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L52+24
	mov	r0, #3
	ldr	r1, .L52+28
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L52+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L53:
	.align	2
.L52:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	winscreenPal
	.word	winscreenTiles
	.word	100720640
	.word	winscreenMap
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L56
	mov	lr, pc
	bx	r3
	ldr	r3, .L56+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L56+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L56+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L56+16
	mov	lr, pc
	bx	r4
	mov	r3, #32
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L56+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L56+24
	mov	r0, #3
	ldr	r1, .L56+28
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L56+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L57:
	.align	2
.L56:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	losescreenPal
	.word	losescreenTiles
	.word	100720640
	.word	losescreenMap
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L69
	ldr	r4, .L69+4
	mov	lr, pc
	bx	r4
	ldr	r3, .L69+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L69+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L59
	ldr	r3, .L69+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L66
.L59:
	ldr	r3, .L69+20
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L67
.L60:
	ldr	r3, .L69+24
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L68
	pop	{r4, lr}
	bx	lr
.L68:
	pop	{r4, lr}
	b	goToLose
.L67:
	bl	goToWin
	b	.L60
.L66:
	bl	goToPause
	b	.L59
.L70:
	.align	2
.L69:
	.word	shadowOAM
	.word	DMANow
	.word	updateGame
	.word	oldButtons
	.word	buttons
	.word	winscore
	.word	losescore
	.size	game, .-game
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L83
	mov	lr, pc
	bx	r3
	ldr	r3, .L83+4
	mov	lr, pc
	bx	r3
	ldr	r6, .L83+8
	ldr	r8, .L83+12
	ldr	r5, .L83+16
	ldr	fp, .L83+20
	ldr	r10, .L83+24
	ldr	r9, .L83+28
	ldr	r7, .L83+32
	ldr	r4, .L83+36
.L72:
	ldr	r2, [r6]
	ldrh	r3, [r8]
.L73:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L73
.L75:
	.word	.L79
	.word	.L78
	.word	.L77
	.word	.L76
	.word	.L74
	.word	.L74
.L74:
	mov	lr, pc
	bx	r7
	b	.L72
.L76:
	ldr	r3, .L83+40
	mov	lr, pc
	bx	r3
	b	.L72
.L77:
	mov	lr, pc
	bx	r9
	b	.L72
.L78:
	mov	lr, pc
	bx	r10
	b	.L72
.L79:
	mov	lr, pc
	bx	fp
	b	.L72
.L84:
	.align	2
.L83:
	.word	hideSprites
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	splash
	.word	instruction
	.word	game
	.word	win
	.word	67109120
	.word	pause
	.size	main, .-main
	.text
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L97
	ldr	r3, .L97+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L86
	ldr	r2, .L97+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L95
.L86:
	tst	r3, #4
	beq	.L85
	ldr	r3, .L97+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L96
.L85:
	pop	{r4, lr}
	bx	lr
.L96:
	ldr	r3, .L97+12
	mov	lr, pc
	bx	r3
.L95:
	bl	goToGame
	ldrh	r3, [r4]
	b	.L86
.L98:
	.align	2
.L97:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	main
	.size	pause, .-pause
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L106
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L106+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L99
	ldr	r3, .L106+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L105
.L99:
	pop	{r4, lr}
	bx	lr
.L105:
	ldr	r3, .L106+12
	mov	lr, pc
	bx	r3
.L107:
	.align	2
.L106:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	main
	.size	win, .-win
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.comm	state,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"