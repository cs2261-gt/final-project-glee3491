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
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer.part.0, %function
drawPlayer.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L3
	ldr	r3, [r1, #12]
	ldr	ip, [r1, #48]
	ldr	r2, [r1, #40]
	lsl	r3, r3, #23
	ldr	r0, .L3+4
	ldrb	r1, [r1, #8]	@ zero_extendqisi2
	lsr	r3, r3, #23
	add	r2, r2, ip, lsl #5
	orr	r3, r3, #16384
	lsl	r2, r2, #1
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	penguin
	.word	shadowOAM
	.size	drawPlayer.part.0, .-drawPlayer.part.0
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r7, #96
	mov	r6, #9
	mov	r2, #0
	mov	r5, #168
	mov	r4, #121
	mov	lr, #20
	mov	ip, #16
	mov	r0, #1
	mov	r1, #3
	ldr	r3, .L7
	str	r7, [r3]
	ldr	r3, .L7+4
	str	r6, [r3]
	ldr	r3, .L7+8
	str	r2, [r3]
	ldr	r3, .L7+12
	str	r2, [r3, #36]
	str	r2, [r3, #48]
	ldr	r2, .L7+16
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #56]
	str	ip, [r3, #24]
	str	ip, [r3, #28]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #52]
	str	r1, [r2]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	vOff
	.word	hOff
	.word	score
	.word	penguin
	.word	lifeRemaining
	.size	initGame, .-initGame
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L23
	ldr	r3, [r3, #32]
	cmp	r3, #0
	push	{r4, r5, r6, lr}
	beq	.L10
	ldr	r4, .L23+4
	ldrh	r3, [r4]
	orr	r3, r3, #512
	strh	r3, [r4]	@ movhi
.L11:
	ldr	r3, .L23+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L23+12
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L23+4
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #67108864
	mov	lr, #0
	ldr	r2, .L23+16
	ldrh	r1, [r2]
	ldr	r2, .L23+20
	ldrh	r2, [r2]
	strh	r1, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	ldr	r3, .L23+24
	ldrh	r5, [r4, #80]
	ldrh	r1, [r4, #82]
	ldrh	r2, [r4, #84]
	add	ip, r3, #144
.L13:
	ldr	r0, [r3, #24]
	cmp	r0, #0
	beq	.L12
	mov	lr, #1
	ldr	r0, [r3, #36]
	ldr	r2, [r3, #32]
	ldrh	r1, [r3, #12]
	add	r2, r2, r0, lsl #5
	lsl	r2, r2, #17
	ldrh	r5, [r3, #8]
	lsr	r2, r2, #16
	orr	r1, r1, #16384
.L12:
	add	r3, r3, #48
	cmp	r3, ip
	bne	.L13
	cmp	lr, #0
	strhne	r5, [r4, #80]	@ movhi
	strhne	r1, [r4, #82]	@ movhi
	strhne	r2, [r4, #84]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L10:
	bl	drawPlayer.part.0
	ldr	r4, .L23+4
	b	.L11
.L24:
	.align	2
.L23:
	.word	penguin
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.word	hOff
	.word	vOff
	.word	bubbles
	.size	drawGame, .-drawGame
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	ip, #1
	mov	lr, #16
	mov	r5, #3
	mov	r4, #20
	mov	r0, #0
	ldr	r3, .L27
	ldr	r1, [r3]
	ldr	r3, .L27+4
	ldr	r2, [r3]
	ldr	r3, .L27+8
	add	r1, r1, #72
	add	r2, r2, #112
	str	r5, [r3, #52]
	str	r4, [r3, #56]
	str	lr, [r3, #24]
	str	lr, [r3, #28]
	stm	r3, {r1, r2}
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #36]
	str	r0, [r3, #48]
	pop	{r4, r5, lr}
	bx	lr
.L28:
	.align	2
.L27:
	.word	vOff
	.word	hOff
	.word	penguin
	.size	initPlayer, .-initPlayer
	.global	__aeabi_idivmod
	.align	2
	.global	animatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	animatePlayer, %function
animatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #7
	push	{r4, r5, r6, lr}
	ldr	r4, .L42
	ldr	r3, .L42+4
	ldr	r5, [r4, #36]
	smull	r0, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #3
	ldr	r6, [r4, #40]
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #2
	str	r6, [r4, #44]
	str	r1, [r4, #40]
	bne	.L30
	ldr	r0, [r4, #48]
	ldr	r3, .L42+8
	ldr	r1, [r4, #52]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #48]
.L30:
	ldr	r3, .L42+12
	ldrh	r3, [r3, #48]
	tst	r3, #64
	moveq	r3, #1
	streq	r3, [r4, #40]
	ldr	r3, .L42+12
	ldrh	r3, [r3, #48]
	ands	r3, r3, #128
	streq	r3, [r4, #40]
	ldr	r3, .L42+12
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L33
	mov	r2, #3
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r2, [r4, #40]
	bne	.L35
.L36:
	mov	r3, #2
	str	r3, [r4, #40]
.L35:
	add	r5, r5, #1
	str	r5, [r4, #36]
	pop	{r4, r5, r6, lr}
	bx	lr
.L33:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L36
	ldr	r3, [r4, #40]
	cmp	r3, #7
	bne	.L35
	mov	r3, #0
	str	r6, [r4, #40]
	str	r3, [r4, #48]
	str	r3, [r4, #36]
	pop	{r4, r5, r6, lr}
	bx	lr
.L43:
	.align	2
.L42:
	.word	penguin
	.word	1717986919
	.word	__aeabi_idivmod
	.word	67109120
	.size	animatePlayer, .-animatePlayer
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L48
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L45
	ldr	r2, .L48+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L45:
	b	drawPlayer.part.0
.L49:
	.align	2
.L48:
	.word	penguin
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	initBubble
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBubble, %function
initBubble:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #16
	mov	r2, #0
	mov	lr, #4
	mov	ip, #1
	ldr	r3, .L54
	add	r0, r3, #144
.L51:
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #28]
	str	lr, [r3, #32]
	str	r2, [r3, #36]
	str	ip, [r3, #40]
	str	r2, [r3, #24]
	add	r3, r3, #48
	cmp	r3, r0
	bne	.L51
	ldr	lr, [sp], #4
	bx	lr
.L55:
	.align	2
.L54:
	.word	bubbles
	.size	initBubble, .-initBubble
	.align	2
	.global	putBubble
	.syntax unified
	.arm
	.fpu softvfp
	.type	putBubble, %function
putBubble:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L73
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L57
	ldr	r2, [r3, #72]
	cmp	r2, #0
	beq	.L63
	ldr	r2, [r3, #120]
	cmp	r2, #0
	bxne	lr
	mov	r2, #2
.L57:
	push	{r4, lr}
	mov	lr, #1
	ldr	r1, .L73+4
	ldr	r0, [r1, #40]
	add	r2, r2, r2, lsl lr
	add	ip, r3, r2, lsl #4
	cmp	r0, #0
	str	lr, [ip, #24]
	lsl	r2, r2, #4
	bne	.L59
	ldr	r0, [r1]
	ldr	r4, [r1, #28]
	ldr	lr, [r1, #4]
	add	r1, r0, r4
	str	r1, [r3, r2]
	str	lr, [ip, #4]
.L56:
	pop	{r4, lr}
	bx	lr
.L59:
	cmp	r0, #1
	beq	.L71
	cmp	r0, #3
	beq	.L72
	cmp	r0, #2
	bne	.L56
	ldr	r0, [r1, #4]
	ldr	r4, [r1, #24]
	ldr	lr, [r1]
	add	r1, r0, r4
	str	r1, [ip, #4]
	str	lr, [r3, r2]
	b	.L56
.L63:
	mov	r2, #1
	b	.L57
.L71:
	ldr	r0, [r1]
	ldr	r4, [r1, #28]
	ldr	lr, [r1, #4]
	sub	r1, r0, r4
	str	r1, [r3, r2]
	str	lr, [ip, #4]
	b	.L56
.L72:
	ldr	r0, [r1, #4]
	ldr	r4, [r1, #24]
	ldr	lr, [r1]
	sub	r1, r0, r4
	str	r1, [ip, #4]
	str	lr, [r3, r2]
	b	.L56
.L74:
	.align	2
.L73:
	.word	bubbles
	.word	penguin
	.size	putBubble, .-putBubble
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L101
	ldrh	r3, [r3, #48]
	tst	r3, #64
	push	{r4, r5, r6, lr}
	ldr	r4, .L101+4
	beq	.L76
	ldr	r6, .L101+8
.L77:
	ldr	r3, .L101
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L81
	ldr	r2, [r4]
	ldr	r3, [r4, #28]
	add	r3, r2, r3
	cmp	r3, #255
	ldrle	r3, [r4, #16]
	addle	r2, r3, r2
	ldr	r3, [r6]
	strle	r2, [r4]
	cmp	r3, #95
	ble	.L98
.L81:
	ldr	r3, .L101
	ldrh	r3, [r3, #48]
	tst	r3, #32
	beq	.L84
.L100:
	ldr	r5, .L101+12
.L85:
	ldr	r3, .L101
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L89
	ldr	r2, [r4, #4]
	ldr	r3, [r4, #24]
	add	r3, r2, r3
	cmp	r3, #255
	ldrle	r3, [r4, #20]
	addle	r2, r3, r2
	ldr	r3, [r5]
	strle	r2, [r4, #4]
	cmp	r3, #15
	ble	.L99
.L89:
	ldr	r3, .L101+16
	ldrh	r3, [r3]
	tst	r3, #1
	ldr	r3, [r4, #56]
	beq	.L97
	ldr	r2, .L101+20
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L94
.L97:
	add	r3, r3, #1
.L93:
	ldm	r4, {r1, r2}
	ldr	ip, [r6]
	ldr	r0, [r5]
	sub	r1, r1, ip
	sub	r2, r2, r0
	str	r3, [r4, #56]
	str	r1, [r4, #8]
	str	r2, [r4, #12]
	pop	{r4, r5, r6, lr}
	b	animatePlayer
.L94:
	cmp	r3, #19
	ble	.L97
	bl	putBubble
	mov	r3, #1
	b	.L93
.L99:
	ldr	r2, [r4, #12]
	cmp	r2, #120
	addgt	r3, r3, #1
	strgt	r3, [r5]
	b	.L89
.L98:
	ldr	r2, [r4, #8]
	cmp	r2, #80
	addgt	r3, r3, #1
	strgt	r3, [r6]
	ldr	r3, .L101
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L100
.L84:
	ldr	r3, [r4, #4]
	cmp	r3, #0
	ldrgt	r2, [r4, #20]
	ldr	r5, .L101+12
	subgt	r3, r3, r2
	strgt	r3, [r4, #4]
	ldr	r3, [r5]
	cmp	r3, #0
	ble	.L85
	ldr	r2, [r4, #12]
	cmp	r2, #119
	suble	r3, r3, #1
	strle	r3, [r5]
	b	.L85
.L76:
	ldr	r3, [r4]
	cmp	r3, #0
	ldrgt	r2, [r4, #16]
	ldr	r6, .L101+8
	subgt	r3, r3, r2
	strgt	r3, [r4]
	ldr	r3, [r6]
	cmp	r3, #0
	ble	.L77
	ldr	r2, [r4, #8]
	cmp	r2, #79
	suble	r3, r3, #1
	strle	r3, [r6]
	b	.L77
.L102:
	.align	2
.L101:
	.word	67109120
	.word	penguin
	.word	vOff
	.word	hOff
	.word	oldButtons
	.word	buttons
	.size	updatePlayer, .-updatePlayer
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
	push	{r4, lr}
	bl	updatePlayer
	ldr	r1, .L111
	ldr	r2, .L111+4
	ldr	r3, .L111+8
	ldr	lr, [r1]
	ldr	ip, [r2]
	add	r0, r3, #144
.L105:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	ldmne	r3, {r1, r2}
	subne	r1, r1, lr
	subne	r2, r2, ip
	strne	r1, [r3, #8]
	strne	r2, [r3, #12]
	add	r3, r3, #48
	cmp	r3, r0
	bne	.L105
	pop	{r4, lr}
	bx	lr
.L112:
	.align	2
.L111:
	.word	vOff
	.word	hOff
	.word	bubbles
	.size	updateGame, .-updateGame
	.align	2
	.global	updateBubble
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBubble, %function
updateBubble:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	cmp	r3, #0
	bxeq	lr
	ldr	r2, .L118
	ldr	r3, .L118+4
	ldr	ip, [r2]
	ldr	r1, [r3]
	ldr	r2, [r0]
	ldr	r3, [r0, #4]
	sub	r2, r2, ip
	sub	r3, r3, r1
	str	r2, [r0, #8]
	str	r3, [r0, #12]
	bx	lr
.L119:
	.align	2
.L118:
	.word	vOff
	.word	hOff
	.size	updateBubble, .-updateBubble
	.align	2
	.global	drawBubble
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBubble, %function
drawBubble:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	cmp	r3, #0
	bxeq	lr
	ldr	r2, [r0, #36]
	ldr	r3, [r0, #32]
	ldr	r1, [r0, #12]
	add	r3, r3, r2, lsl #5
	ldr	r0, [r0, #8]
	ldr	r2, .L125
	lsl	r3, r3, #1
	orr	r1, r1, #16384
	strh	r3, [r2, #84]	@ movhi
	strh	r1, [r2, #82]	@ movhi
	strh	r0, [r2, #80]	@ movhi
	bx	lr
.L126:
	.align	2
.L125:
	.word	shadowOAM
	.size	drawBubble, .-drawBubble
	.comm	hOff,4,4
	.comm	vOff,4,4
	.comm	lifeRemaining,4,4
	.comm	score,4,4
	.comm	bubbles,144,4
	.comm	enemies,200,4
	.comm	penguin,60,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
