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
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBubble.part.0, %function
drawBubble.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, [r0, #12]
	ldr	r4, [r0, #40]
	ldr	r2, [r0, #52]
	ldr	r1, [r0, #32]
	ldr	ip, .L7
	lsl	r3, r3, #23
	ldrb	lr, [r0, #8]	@ zero_extendqisi2
	add	r2, r2, #10
	add	r1, r1, r4, lsl #5
	lsr	r3, r3, #23
	add	r0, ip, r2, lsl #3
	orr	r3, r3, #16384
	lsl	r2, r2, #3
	lsl	r1, r1, #1
	strh	lr, [ip, r2]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r0, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	shadowOAM
	.size	drawBubble.part.0, .-drawBubble.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemy.part.0, %function
drawEnemy.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #52]
	ldr	ip, [r0, #36]
	str	lr, [sp, #-4]!
	lsl	r3, r3, #23
	ldr	lr, .L16
	add	r2, r2, #20
	lsr	r3, r3, #23
	orr	r3, r3, #16384
	add	r1, lr, r2, lsl #3
	cmp	ip, #6
	ldrb	r0, [r0, #8]	@ zero_extendqisi2
	strh	r3, [r1, #2]	@ movhi
	moveq	r3, #10
	lsl	r2, r2, #3
	strh	r0, [lr, r2]	@ movhi
	strheq	r3, [r1, #4]	@ movhi
	beq	.L9
	cmp	ip, #7
	moveq	r3, #74
	strheq	r3, [r1, #4]	@ movhi
	bne	.L15
.L9:
	ldr	lr, [sp], #4
	bx	lr
.L15:
	cmp	ip, #8
	moveq	r3, #138
	ldr	lr, [sp], #4
	strheq	r3, [r1, #4]	@ movhi
	bx	lr
.L17:
	.align	2
.L16:
	.word	shadowOAM
	.size	drawEnemy.part.0, .-drawEnemy.part.0
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
	ldr	r3, .L34
	ldr	r3, [r3, #32]
	cmp	r3, #0
	push	{r4, r5, r6, lr}
	beq	.L19
	ldr	r2, .L34+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L20:
	ldr	r3, .L34+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L34+12
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L34+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L34+16
	ldrh	r1, [r2]
	ldr	r2, .L34+20
	ldrh	r2, [r2]
	ldr	r4, .L34+24
	strh	r1, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	add	r5, r4, #448
.L22:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	movne	r0, r4
	blne	drawEnemy.part.0
.L21:
	add	r4, r4, #56
	cmp	r4, r5
	bne	.L22
	ldr	r4, .L34+28
	add	r5, r4, #896
.L24:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	movne	r0, r4
	blne	drawBubble.part.0
.L23:
	add	r4, r4, #56
	cmp	r5, r4
	bne	.L24
	pop	{r4, r5, r6, lr}
	bx	lr
.L19:
	bl	drawPlayer.part.0
	b	.L20
.L35:
	.align	2
.L34:
	.word	penguin
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.word	hOff
	.word	vOff
	.word	enemies
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
	ldr	r3, .L38
	ldr	r1, [r3]
	ldr	r3, .L38+4
	ldr	r2, [r3]
	ldr	r3, .L38+8
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
.L39:
	.align	2
.L38:
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
	mov	r1, #9
	push	{r4, r5, r6, lr}
	ldr	r4, .L53
	ldr	r3, .L53+4
	ldr	r5, [r4, #36]
	smull	r0, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #3
	ldr	r6, [r4, #40]
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #2
	str	r6, [r4, #44]
	str	r1, [r4, #40]
	bne	.L41
	ldr	r0, [r4, #48]
	ldr	r3, .L53+8
	ldr	r1, [r4, #52]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #48]
.L41:
	ldr	r3, .L53+12
	ldrh	r3, [r3, #48]
	tst	r3, #64
	moveq	r3, #1
	streq	r3, [r4, #40]
	ldr	r3, .L53+12
	ldrh	r3, [r3, #48]
	ands	r3, r3, #128
	streq	r3, [r4, #40]
	ldr	r3, .L53+12
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L44
	mov	r2, #3
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r2, [r4, #40]
	bne	.L46
.L47:
	mov	r3, #2
	str	r3, [r4, #40]
.L46:
	add	r5, r5, #1
	str	r5, [r4, #36]
	pop	{r4, r5, r6, lr}
	bx	lr
.L44:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L47
	ldr	r3, [r4, #40]
	cmp	r3, #9
	bne	.L46
	mov	r3, #0
	str	r6, [r4, #40]
	str	r3, [r4, #48]
	str	r3, [r4, #36]
	pop	{r4, r5, r6, lr}
	bx	lr
.L54:
	.align	2
.L53:
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
	ldr	r3, .L59
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L56
	ldr	r2, .L59+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L56:
	b	drawPlayer.part.0
.L60:
	.align	2
.L59:
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
	mov	r2, #0
	str	lr, [sp, #-4]!
	mov	r0, #16
	mov	r1, r2
	mov	lr, #4
	mov	ip, #1
	ldr	r3, .L65
.L62:
	str	r2, [r3, #52]
	add	r2, r2, #1
	cmp	r2, #16
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #28]
	str	lr, [r3, #32]
	str	r1, [r3, #40]
	str	ip, [r3, #44]
	str	r1, [r3, #24]
	add	r3, r3, #56
	bne	.L62
	ldr	lr, [sp], #4
	bx	lr
.L66:
	.align	2
.L65:
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
	ldr	r0, .L83
	mov	r3, #0
	mov	r2, r0
	b	.L74
.L68:
	add	r3, r3, #1
	cmp	r3, #16
	add	r2, r2, #56
	bxeq	lr
.L74:
	ldr	r1, [r2, #24]
	cmp	r1, #0
	bne	.L68
	push	{r4, lr}
	mov	lr, #1
	ldr	r2, .L83+4
	ldr	r1, [r2, #40]
	rsb	r3, r3, r3, lsl #3
	add	ip, r0, r3, lsl #3
	cmp	r1, #0
	str	lr, [ip, #24]
	lsl	r3, r3, #3
	bne	.L69
	ldr	r1, [r2]
	ldr	r4, [r2, #28]
	ldr	lr, [r2, #4]
	add	r2, r1, r4
	str	r2, [r0, r3]
	str	lr, [ip, #4]
.L67:
	pop	{r4, lr}
	bx	lr
.L69:
	cmp	r1, #1
	beq	.L81
	cmp	r1, #3
	beq	.L82
	cmp	r1, #2
	bne	.L67
	ldr	r1, [r2, #4]
	ldr	r4, [r2, #24]
	ldr	lr, [r2]
	add	r2, r1, r4
	str	r2, [ip, #4]
	str	lr, [r0, r3]
	b	.L67
.L81:
	ldr	r1, [r2]
	ldr	r4, [r2, #28]
	ldr	lr, [r2, #4]
	sub	r2, r1, r4
	str	r2, [r0, r3]
	str	lr, [ip, #4]
	b	.L67
.L82:
	ldr	r1, [r2, #4]
	ldr	r4, [r2, #24]
	ldr	lr, [r2]
	sub	r2, r1, r4
	str	r2, [ip, #4]
	str	lr, [r0, r3]
	b	.L67
.L84:
	.align	2
.L83:
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
	ldr	r3, .L136
	ldrh	r3, [r3, #48]
	tst	r3, #64
	push	{r4, r5, r6, lr}
	ldr	r4, .L136+4
	beq	.L86
	ldr	r6, .L136+8
.L87:
	ldr	r3, .L136
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L91
	ldr	r1, [r4]
	ldr	r3, [r4, #28]
	add	r3, r1, r3
	cmp	r3, #255
	ble	.L132
.L92:
	ldr	r3, [r6]
	cmp	r3, #95
	bgt	.L91
	ldr	r2, [r4, #8]
	cmp	r2, #80
	addgt	r3, r3, #1
	strgt	r3, [r6]
.L91:
	ldr	r3, .L136
	ldrh	r3, [r3, #48]
	tst	r3, #32
	beq	.L94
	ldr	r5, .L136+12
.L95:
	ldr	r3, .L136
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L99
	ldr	r1, [r4, #4]
	ldr	r3, [r4, #24]
	add	r3, r1, r3
	cmp	r3, #255
	ble	.L133
.L100:
	ldr	r3, [r5]
	cmp	r3, #15
	bgt	.L99
	ldr	r2, [r4, #12]
	cmp	r2, #120
	addgt	r3, r3, #1
	strgt	r3, [r5]
.L99:
	ldr	r3, .L136+16
	ldrh	r3, [r3]
	tst	r3, #1
	ldr	r3, [r4, #56]
	beq	.L131
	ldr	r2, .L136+20
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L104
.L131:
	add	r3, r3, #1
.L103:
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
.L133:
	ldr	r2, [r4]
	ldr	ip, .L136+24
	add	r0, r3, r2, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [ip, r0]
	cmp	r0, #0
	beq	.L100
	ldr	lr, [r4, #28]
	ldr	r0, [r4, #16]
	add	r2, r2, lr
	sub	r2, r2, r0
	add	r3, r3, r2, lsl #8
	lsl	r3, r3, #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	ldrne	r3, [r4, #20]
	addne	r1, r3, r1
	strne	r1, [r4, #4]
	b	.L100
.L132:
	ldr	r2, [r4, #4]
	ldr	ip, .L136+24
	add	r0, r2, r3, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [ip, r0]
	cmp	r0, #0
	lsl	r3, r3, #8
	beq	.L92
	add	r0, r4, #20
	ldm	r0, {r0, lr}
	add	r2, r2, lr
	sub	r2, r2, r0
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	ldrne	r3, [r4, #16]
	addne	r1, r3, r1
	strne	r1, [r4]
	b	.L92
.L104:
	cmp	r3, #19
	ble	.L131
	bl	putBubble
	mov	r3, #1
	b	.L103
.L86:
	ldr	r2, [r4]
	cmp	r2, #0
	ble	.L88
	ldr	r1, [r4, #16]
	ldr	r3, [r4, #4]
	sub	r2, r2, r1
	ldr	r0, .L136+24
	add	r1, r3, r2, lsl #8
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, #0
	lsl	r1, r2, #8
	bne	.L134
.L88:
	ldr	r6, .L136+8
	ldr	r3, [r6]
	cmp	r3, #0
	ble	.L87
	ldr	r2, [r4, #8]
	cmp	r2, #79
	suble	r3, r3, #1
	strle	r3, [r6]
	b	.L87
.L94:
	ldr	r2, [r4, #4]
	cmp	r2, #0
	ble	.L96
	ldr	r1, [r4, #20]
	ldr	r3, [r4]
	sub	r2, r2, r1
	ldr	r0, .L136+24
	add	r1, r2, r3, lsl #8
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, #0
	bne	.L135
.L96:
	ldr	r5, .L136+12
	ldr	r3, [r5]
	cmp	r3, #0
	ble	.L95
	ldr	r2, [r4, #12]
	cmp	r2, #119
	suble	r3, r3, #1
	strle	r3, [r5]
	b	.L95
.L135:
	ldr	ip, [r4, #28]
	ldr	r1, [r4, #16]
	add	r3, r3, ip
	sub	r3, r3, r1
	add	r3, r2, r3, lsl #8
	lsl	r3, r3, #1
	ldrh	r3, [r0, r3]
	cmp	r3, #0
	strne	r2, [r4, #4]
	b	.L96
.L134:
	add	ip, r4, #20
	ldm	ip, {ip, lr}
	add	r3, r3, lr
	sub	r3, r3, ip
	add	r3, r3, r1
	lsl	r3, r3, #1
	ldrh	r3, [r0, r3]
	cmp	r3, #0
	strne	r2, [r4]
	b	.L88
.L137:
	.align	2
.L136:
	.word	67109120
	.word	penguin
	.word	vOff
	.word	hOff
	.word	oldButtons
	.word	buttons
	.word	collisionmapBitmap
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
	ldr	r1, .L152
	ldr	r2, .L152+4
	ldr	r3, .L152+8
	ldr	ip, [r1]
	ldr	lr, [r2]
	add	r0, r3, #448
.L140:
	ldr	r2, [r3, #28]
	cmp	r2, #0
	ldmne	r3, {r1, r2}
	subne	r1, r1, ip
	subne	r2, r2, lr
	strne	r1, [r3, #8]
	strne	r2, [r3, #12]
	add	r3, r3, #56
	cmp	r3, r0
	bne	.L140
	ldr	r3, .L152+12
	add	r0, r3, #896
.L142:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	ldmne	r3, {r1, r2}
	subne	r1, r1, ip
	subne	r2, r2, lr
	strne	r1, [r3, #8]
	strne	r2, [r3, #12]
	add	r3, r3, #56
	cmp	r3, r0
	bne	.L142
	pop	{r4, lr}
	bx	lr
.L153:
	.align	2
.L152:
	.word	vOff
	.word	hOff
	.word	enemies
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
	ldr	r2, .L159
	ldr	r3, .L159+4
	ldr	ip, [r2]
	ldr	r1, [r3]
	ldr	r2, [r0]
	ldr	r3, [r0, #4]
	sub	r2, r2, ip
	sub	r3, r3, r1
	str	r2, [r0, #8]
	str	r3, [r0, #12]
	bx	lr
.L160:
	.align	2
.L159:
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
	b	drawBubble.part.0
	.size	drawBubble, .-drawBubble
	.align	2
	.global	initEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemy, %function
initEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r8, r0, #0
	ble	.L163
	mov	r6, #0
	mov	r9, #1
	ldr	fp, .L189
	ldr	r5, .L189+4
	ldr	r4, .L189+8
	ldr	r7, .L189+12
	ldr	r10, .L189+16
.L172:
	mov	r3, #16
	ldr	r2, [fp, #28]
	cmp	r2, #0
	str	r3, [fp, #20]
	str	r3, [fp, #24]
	beq	.L168
	b	.L167
.L166:
	ldr	r3, [fp, #28]
	cmp	r3, #0
	bne	.L167
.L168:
	mov	lr, pc
	bx	r5
	smull	r3, r2, r4, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #3
	rsb	r2, r3, r3, lsl #3
	rsb	r3, r3, r2, lsl #3
	sub	r0, r0, r3, lsl #2
	add	r0, r0, #16
	str	r0, [fp]
	mov	lr, pc
	bx	r5
	smull	r3, r2, r4, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #3
	rsb	r2, r3, r3, lsl #3
	rsb	r3, r3, r2, lsl #3
	sub	r0, r0, r3, lsl #2
	ldr	r3, [fp]
	add	r0, r0, #16
	orr	r2, r3, r0
	tst	r2, #15
	str	r0, [fp, #4]
	bne	.L166
	add	r2, r0, r3, lsl #8
	lsl	r2, r2, #1
	ldrh	r2, [r7, r2]
	cmp	r2, #0
	lsl	r1, r3, #8
	beq	.L166
	ldr	r2, [fp, #20]
	add	r2, r0, r2
	add	r1, r1, r2
	lsl	r1, r1, #1
	ldrh	r1, [r7, r1]
	cmp	r1, #0
	beq	.L166
	ldr	r1, [fp, #24]
	add	r3, r3, r1
	add	r0, r0, r3, lsl #8
	lsl	r0, r0, #1
	ldrh	r1, [r7, r0]
	lsl	r3, r3, #8
	add	r3, r2, r3
	cmp	r1, #0
	lsl	r3, r3, #1
	beq	.L166
	ldrh	r3, [r7, r3]
	cmp	r3, #0
	beq	.L166
	str	r9, [fp, #28]
.L167:
	umull	r3, r1, r10, r6
	bic	r3, r1, #1
	add	r3, r3, r1, lsr #1
	subs	r3, r6, r3
	mov	r2, #0
	moveq	r3, #6
	str	r9, [fp, #44]
	str	r6, [fp, #52]
	str	r2, [fp, #32]
	str	r2, [fp, #40]
	streq	r3, [fp, #36]
	beq	.L170
	cmp	r3, #1
	moveq	r3, #7
	movne	r3, #8
	str	r3, [fp, #36]
.L170:
	add	r6, r6, #1
	cmp	r8, r6
	add	fp, fp, #56
	bne	.L172
.L163:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L190:
	.align	2
.L189:
	.word	enemies
	.word	rand
	.word	156180629
	.word	collisionmapBitmap
	.word	-1431655765
	.size	initEnemy, .-initEnemy
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, #0
	mov	r6, #16
	mov	r5, #1
	mov	r7, #3
	mov	fp, #168
	mov	r10, #121
	mov	r9, #20
	ldr	lr, .L195
	mov	r8, #96
	str	r4, [lr]
	ldr	lr, .L195+4
	mov	r3, r4
	str	r4, [lr, #36]
	str	r4, [lr, #48]
	mov	r2, r4
	mov	r4, #9
	mov	r1, r6
	mov	ip, r5
	mov	r0, #4
	str	fp, [lr]
	str	r10, [lr, #4]
	str	r9, [lr, #56]
	str	r6, [lr, #24]
	str	r6, [lr, #28]
	str	r5, [lr, #16]
	str	r5, [lr, #20]
	str	r7, [lr, #52]
	ldr	lr, .L195+8
	str	r7, [lr]
	ldr	lr, .L195+12
	str	r8, [lr]
	ldr	lr, .L195+16
	str	r4, [lr]
	ldr	lr, .L195+20
.L192:
	str	r3, [lr, #52]
	add	r3, r3, #1
	cmp	r3, #16
	str	r1, [lr, #16]
	str	r1, [lr, #20]
	str	r2, [lr, #28]
	str	r0, [lr, #32]
	str	r2, [lr, #40]
	str	ip, [lr, #44]
	str	r2, [lr, #24]
	add	lr, lr, #56
	bne	.L192
	mov	r0, #8
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	initEnemy
.L196:
	.align	2
.L195:
	.word	score
	.word	penguin
	.word	lifeRemaining
	.word	vOff
	.word	hOff
	.word	bubbles
	.size	initGame, .-initGame
	.align	2
	.global	drawEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemy, %function
drawEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #28]
	cmp	r3, #0
	bxeq	lr
	b	drawEnemy.part.0
	.size	drawEnemy, .-drawEnemy
	.align	2
	.global	updateEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemy, %function
updateEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #28]
	cmp	r3, #0
	bxeq	lr
	ldr	r2, .L204
	ldr	r3, .L204+4
	ldr	ip, [r2]
	ldr	r1, [r3]
	ldr	r2, [r0]
	ldr	r3, [r0, #4]
	sub	r2, r2, ip
	sub	r3, r3, r1
	str	r2, [r0, #8]
	str	r3, [r0, #12]
	bx	lr
.L205:
	.align	2
.L204:
	.word	vOff
	.word	hOff
	.size	updateEnemy, .-updateEnemy
	.comm	sec,4,4
	.comm	screenBlock,4,4
	.comm	playerVOff,4,4
	.comm	playerHOff,4,4
	.comm	hOff,4,4
	.comm	vOff,4,4
	.comm	lifeRemaining,4,4
	.comm	score,4,4
	.comm	bubbles,896,4
	.comm	enemies,448,4
	.comm	penguin,60,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
