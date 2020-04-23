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
	mov	r0, #3
	ldr	r2, .L4+24
	ldr	r1, .L4+28
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L4+32
	ldr	r1, .L4+36
	ldr	r0, .L4+40
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L4+44
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
	.word	playSoundA
	.word	1965888
	.word	huffnpuff
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
	push	{r4, r5, r6, lr}
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	mov	r4, #67108864
	mov	r5, #4352
	mov	r3, #7168
	strh	r5, [r4]	@ movhi
	strh	r3, [r4, #8]	@ movhi
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+12
	mov	lr, pc
	bx	r3
	ldr	r2, .L8+16
	ldr	r3, .L8+20
	ldrh	r2, [r2, #48]
	strh	r5, [r4]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r2, [r3]	@ movhi
	b	goToSplash
.L9:
	.align	2
.L8:
	.word	initGame
	.word	hideSprites
	.word	setupSounds
	.word	setupInterrupts
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
	ldr	r4, .L16+4
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L16+8
	mov	lr, pc
	bx	r4
	mov	r3, #32
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L16+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L16+16
	ldr	r1, .L16+20
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L16+24
	ldrh	r1, [r3]
	ldr	r3, .L16+28
	strh	r1, [r2, #18]	@ movhi
	ldrh	r1, [r3]
	mov	r0, #3
	strh	r1, [r2, #16]	@ movhi
	mov	r3, #16384
	ldr	r2, .L16+32
	ldr	r1, .L16+36
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L16+40
	ldr	r1, .L16+44
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L16+48
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L16+52
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2
	ldr	r1, .L16+56
	ldr	r2, .L16+60
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	waitForVBlank
	.word	DMANow
	.word	bg1Pal
	.word	bg1Tiles
	.word	100720640
	.word	bg1Map
	.word	vOff
	.word	hOff
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.word	gameState
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L30
	ldr	r3, [r4]
	ldr	r5, .L30+4
	add	r3, r3, #1
	ldr	r2, .L30+8
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L19
	ldr	r2, .L30+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L28
.L19:
	tst	r3, #4
	beq	.L18
	ldr	r3, .L30+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L29
.L18:
	pop	{r4, r5, r6, lr}
	bx	lr
.L29:
	pop	{r4, r5, r6, lr}
	b	goToInstruction
.L28:
	ldr	r3, .L30+16
	ldr	r0, [r4]
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r5]
	b	.L19
.L31:
	.align	2
.L30:
	.word	seed
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	srand
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L44
	ldr	r3, [r4]
	ldr	r5, .L44+4
	add	r3, r3, #1
	ldr	r2, .L44+8
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldrh	r3, [r5]
	tst	r3, #4
	beq	.L33
	ldr	r2, .L44+12
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L42
.L33:
	tst	r3, #8
	beq	.L32
	ldr	r3, .L44+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L43
.L32:
	pop	{r4, r5, r6, lr}
	bx	lr
.L43:
	ldr	r0, [r4]
	ldr	r3, .L44+16
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToGame
.L42:
	bl	goToSplash
	ldrh	r3, [r5]
	b	.L33
.L45:
	.align	2
.L44:
	.word	seed
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	srand
	.size	instruction, .-instruction
	.align	2
	.global	goToGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame2, %function
goToGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L48
	ldr	r4, .L48+4
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L48+8
	mov	lr, pc
	bx	r4
	mov	r3, #896
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L48+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L48+16
	ldr	r1, .L48+20
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L48+24
	ldrh	r1, [r3]
	ldr	r3, .L48+28
	strh	r1, [r2, #18]	@ movhi
	ldrh	r1, [r3]
	mov	r0, #3
	strh	r1, [r2, #16]	@ movhi
	mov	r3, #16384
	ldr	r2, .L48+32
	ldr	r1, .L48+36
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L48+40
	ldr	r1, .L48+44
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L48+48
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L48+52
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #3
	ldr	r1, .L48+56
	ldr	r2, .L48+60
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L49:
	.align	2
.L48:
	.word	waitForVBlank
	.word	DMANow
	.word	housePal
	.word	houseTiles
	.word	100720640
	.word	houseMap
	.word	vOff
	.word	hOff
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.word	gameState
	.size	goToGame2, .-goToGame2
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
	ldr	r3, .L60
	mov	lr, pc
	bx	r3
	ldr	r3, .L60+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L60+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L60+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L60+16
	mov	lr, pc
	bx	r4
	mov	r3, #32
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L60+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L60+24
	mov	r0, #3
	ldr	r1, .L60+28
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L60+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L61:
	.align	2
.L60:
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
	ldr	r3, .L73
	mov	lr, pc
	bx	r3
	ldr	r3, .L73+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L73+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L63
	ldr	r3, .L73+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L70
.L63:
	ldr	r3, .L73+16
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L71
.L64:
	ldr	r3, .L73+20
	ldr	r3, [r3]
	cmp	r3, #7
	bgt	.L72
	pop	{r4, lr}
	bx	lr
.L72:
	ldr	r3, .L73+24
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToWin
.L71:
	ldr	r3, .L73+24
	mov	lr, pc
	bx	r3
	bl	goToLose
	b	.L64
.L70:
	ldr	r3, .L73+24
	mov	lr, pc
	bx	r3
	bl	goToPause
	b	.L63
.L74:
	.align	2
.L73:
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	lifeRemaining
	.word	score
	.word	pauseSound
	.size	game, .-game
	.align	2
	.global	game2
	.syntax unified
	.arm
	.fpu softvfp
	.type	game2, %function
game2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L86
	mov	lr, pc
	bx	r3
	ldr	r3, .L86+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L86+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L76
	ldr	r3, .L86+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L83
.L76:
	ldr	r3, .L86+16
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L84
.L77:
	ldr	r3, .L86+20
	ldr	r3, [r3]
	cmp	r3, #7
	bgt	.L85
	pop	{r4, lr}
	bx	lr
.L85:
	pop	{r4, lr}
	b	goToWin
.L84:
	bl	goToLose
	b	.L77
.L83:
	bl	goToPause
	b	.L76
.L87:
	.align	2
.L86:
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	lifeRemaining
	.word	score
	.size	game2, .-game2
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
	ldr	r3, .L101
	mov	lr, pc
	bx	r3
	ldr	r3, .L101+4
	mov	lr, pc
	bx	r3
	ldr	r6, .L101+8
	ldr	r8, .L101+12
	ldr	r5, .L101+16
	ldr	fp, .L101+20
	ldr	r10, .L101+24
	ldr	r9, .L101+28
	ldr	r7, .L101+32
	ldr	r4, .L101+36
.L89:
	ldr	r2, [r6]
	ldrh	r3, [r8]
.L90:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L90
.L92:
	.word	.L97
	.word	.L96
	.word	.L95
	.word	.L94
	.word	.L93
	.word	.L91
	.word	.L91
.L91:
	mov	lr, pc
	bx	r7
	b	.L89
.L93:
	ldr	r3, .L101+40
	mov	lr, pc
	bx	r3
	b	.L89
.L94:
	ldr	r3, .L101+44
	mov	lr, pc
	bx	r3
	b	.L89
.L95:
	mov	lr, pc
	bx	r9
	b	.L89
.L96:
	mov	lr, pc
	bx	r10
	b	.L89
.L97:
	mov	lr, pc
	bx	fp
	b	.L89
.L102:
	.align	2
.L101:
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
	.word	game2
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L119
	ldr	r3, .L119+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L104
	ldr	r2, .L119+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L116
.L104:
	tst	r3, #4
	beq	.L103
	ldr	r3, .L119+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L117
.L103:
	pop	{r4, r5, r6, lr}
	bx	lr
.L116:
	ldr	r5, .L119+12
	ldr	r3, [r5]
	cmp	r3, #2
	beq	.L118
.L105:
	cmp	r3, #3
	beq	.L106
.L115:
	ldrh	r3, [r4]
	b	.L104
.L117:
	ldr	r3, .L119+16
	mov	lr, pc
	bx	r3
.L106:
	bl	goToGame2
	b	.L115
.L118:
	ldr	r3, .L119+20
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, [r5]
	b	.L105
.L120:
	.align	2
.L119:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	gameState
	.word	main
	.word	unpauseSound
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
	ldr	r3, .L128
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L128+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L121
	ldr	r3, .L128+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L127
.L121:
	pop	{r4, lr}
	bx	lr
.L127:
	ldr	r3, .L128+12
	mov	lr, pc
	bx	r3
.L129:
	.align	2
.L128:
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
	.comm	gameState,4,4
	.comm	state,4,4
	.comm	seed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
