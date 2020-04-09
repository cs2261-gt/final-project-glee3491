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
	@ link register save eliminated.
	ldr	r3, [r0, #12]
	ldr	ip, [r0, #40]
	ldr	r2, [r0, #32]
	lsl	r3, r3, #23
	ldrb	r0, [r0, #8]	@ zero_extendqisi2
	ldr	r1, .L6
	lsr	r3, r3, #23
	add	r2, r2, ip, lsl #5
	orr	r3, r3, #16384
	lsl	r2, r2, #1
	strh	r3, [r1, #82]	@ movhi
	strh	r0, [r1, #80]	@ movhi
	strh	r2, [r1, #84]	@ movhi
	bx	lr
.L7:
	.align	2
.L6:
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
	@ link register save eliminated.
	ldr	r3, [r0, #12]
	add	r2, r0, #32
	ldm	r2, {r2, ip}
	lsl	r3, r3, #23
	ldrb	r0, [r0, #8]	@ zero_extendqisi2
	ldr	r1, .L9
	lsr	r3, r3, #23
	add	r2, r2, ip, lsl #5
	orr	r3, r3, #16384
	lsl	r2, r2, #1
	strh	r3, [r1, #162]	@ movhi
	strh	r0, [r1, #160]	@ movhi
	strh	r2, [r1, #164]	@ movhi
	bx	lr
.L10:
	.align	2
.L9:
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
	ldr	r3, .L30
	ldr	r3, [r3, #32]
	cmp	r3, #0
	push	{r4, r5, r6, lr}
	beq	.L12
	ldr	r2, .L30+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L13:
	ldr	r3, .L30+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L30+12
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L30+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L30+16
	ldrh	r1, [r2]
	ldr	r2, .L30+20
	ldrh	r2, [r2]
	ldr	r4, .L30+24
	strh	r1, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	add	r5, r4, #240
.L15:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	movne	r0, r4
	blne	drawEnemy.part.0
.L14:
	add	r4, r4, #48
	cmp	r4, r5
	bne	.L15
	ldr	r4, .L30+28
	ldr	r3, [r4, #24]
	cmp	r3, #0
	movne	r0, r4
	blne	drawBubble.part.0
.L16:
	ldr	r3, [r4, #76]
	cmp	r3, #0
	ldrne	r0, .L30+32
	blne	drawBubble.part.0
.L17:
	ldr	r3, [r4, #128]
	cmp	r3, #0
	ldrne	r0, .L30+36
	popne	{r4, r5, r6, lr}
	bne	drawBubble.part.0
.L11:
	pop	{r4, r5, r6, lr}
	bx	lr
.L12:
	bl	drawPlayer.part.0
	b	.L13
.L31:
	.align	2
.L30:
	.word	penguin
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.word	hOff
	.word	vOff
	.word	enemies
	.word	bubbles
	.word	bubbles+52
	.word	bubbles+104
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
	ldr	r3, .L34
	ldr	r1, [r3]
	ldr	r3, .L34+4
	ldr	r2, [r3]
	ldr	r3, .L34+8
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
.L35:
	.align	2
.L34:
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
	ldr	r4, .L49
	ldr	r3, .L49+4
	ldr	r5, [r4, #36]
	smull	r0, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #3
	ldr	r6, [r4, #40]
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #2
	str	r6, [r4, #44]
	str	r1, [r4, #40]
	bne	.L37
	ldr	r0, [r4, #48]
	ldr	r3, .L49+8
	ldr	r1, [r4, #52]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #48]
.L37:
	ldr	r3, .L49+12
	ldrh	r3, [r3, #48]
	tst	r3, #64
	moveq	r3, #1
	streq	r3, [r4, #40]
	ldr	r3, .L49+12
	ldrh	r3, [r3, #48]
	ands	r3, r3, #128
	streq	r3, [r4, #40]
	ldr	r3, .L49+12
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L40
	mov	r2, #3
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r2, [r4, #40]
	bne	.L42
.L43:
	mov	r3, #2
	str	r3, [r4, #40]
.L42:
	add	r5, r5, #1
	str	r5, [r4, #36]
	pop	{r4, r5, r6, lr}
	bx	lr
.L40:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L43
	ldr	r3, [r4, #40]
	cmp	r3, #9
	bne	.L42
	mov	r3, #0
	str	r6, [r4, #40]
	str	r3, [r4, #48]
	str	r3, [r4, #36]
	pop	{r4, r5, r6, lr}
	bx	lr
.L50:
	.align	2
.L49:
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
	ldr	r3, .L55
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L52
	ldr	r2, .L55+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L52:
	b	drawPlayer.part.0
.L56:
	.align	2
.L55:
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
	ldr	r3, .L61
	add	r0, r3, #156
.L58:
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #28]
	str	lr, [r3, #32]
	str	r2, [r3, #40]
	str	ip, [r3, #44]
	str	r2, [r3, #24]
	add	r3, r3, #52
	cmp	r3, r0
	bne	.L58
	ldr	lr, [sp], #4
	bx	lr
.L62:
	.align	2
.L61:
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
	ldr	r3, .L80
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L64
	ldr	r2, [r3, #76]
	cmp	r2, #0
	beq	.L70
	ldr	r2, [r3, #128]
	cmp	r2, #0
	bxne	lr
	mov	r2, #2
.L64:
	push	{r4, lr}
	mov	lr, #1
	ldr	r1, .L80+4
	add	ip, r2, r2, lsl lr
	ldr	r0, [r1, #40]
	add	r2, r2, ip, lsl #2
	add	ip, r3, r2, lsl #2
	cmp	r0, #0
	str	lr, [ip, #24]
	lsl	r2, r2, #2
	bne	.L66
	ldr	r0, [r1]
	ldr	r4, [r1, #28]
	ldr	lr, [r1, #4]
	add	r1, r0, r4
	str	r1, [r3, r2]
	str	lr, [ip, #4]
.L63:
	pop	{r4, lr}
	bx	lr
.L66:
	cmp	r0, #1
	beq	.L78
	cmp	r0, #3
	beq	.L79
	cmp	r0, #2
	bne	.L63
	ldr	r0, [r1, #4]
	ldr	r4, [r1, #24]
	ldr	lr, [r1]
	add	r1, r0, r4
	str	r1, [ip, #4]
	str	lr, [r3, r2]
	b	.L63
.L70:
	mov	r2, #1
	b	.L64
.L78:
	ldr	r0, [r1]
	ldr	r4, [r1, #28]
	ldr	lr, [r1, #4]
	sub	r1, r0, r4
	str	r1, [r3, r2]
	str	lr, [ip, #4]
	b	.L63
.L79:
	ldr	r0, [r1, #4]
	ldr	r4, [r1, #24]
	ldr	lr, [r1]
	sub	r1, r0, r4
	str	r1, [ip, #4]
	str	lr, [r3, r2]
	b	.L63
.L81:
	.align	2
.L80:
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
	ldr	r3, .L108
	ldrh	r3, [r3, #48]
	tst	r3, #64
	push	{r4, r5, r6, lr}
	ldr	r4, .L108+4
	beq	.L83
	ldr	r6, .L108+8
.L84:
	ldr	r3, .L108
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L88
	ldr	r2, [r4]
	ldr	r3, [r4, #28]
	add	r3, r2, r3
	cmp	r3, #255
	ldrle	r3, [r4, #16]
	addle	r2, r3, r2
	ldr	r3, [r6]
	strle	r2, [r4]
	cmp	r3, #95
	ble	.L105
.L88:
	ldr	r3, .L108
	ldrh	r3, [r3, #48]
	tst	r3, #32
	beq	.L91
.L107:
	ldr	r5, .L108+12
.L92:
	ldr	r3, .L108
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L96
	ldr	r2, [r4, #4]
	ldr	r3, [r4, #24]
	add	r3, r2, r3
	cmp	r3, #255
	ldrle	r3, [r4, #20]
	addle	r2, r3, r2
	ldr	r3, [r5]
	strle	r2, [r4, #4]
	cmp	r3, #15
	ble	.L106
.L96:
	ldr	r3, .L108+16
	ldrh	r3, [r3]
	tst	r3, #1
	ldr	r3, [r4, #56]
	beq	.L104
	ldr	r2, .L108+20
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L101
.L104:
	add	r3, r3, #1
.L100:
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
.L101:
	cmp	r3, #19
	ble	.L104
	bl	putBubble
	mov	r3, #1
	b	.L100
.L106:
	ldr	r2, [r4, #12]
	cmp	r2, #120
	addgt	r3, r3, #1
	strgt	r3, [r5]
	b	.L96
.L105:
	ldr	r2, [r4, #8]
	cmp	r2, #80
	addgt	r3, r3, #1
	strgt	r3, [r6]
	ldr	r3, .L108
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L107
.L91:
	ldr	r3, [r4, #4]
	cmp	r3, #0
	ldrgt	r2, [r4, #20]
	ldr	r5, .L108+12
	subgt	r3, r3, r2
	strgt	r3, [r4, #4]
	ldr	r3, [r5]
	cmp	r3, #0
	ble	.L92
	ldr	r2, [r4, #12]
	cmp	r2, #119
	suble	r3, r3, #1
	strle	r3, [r5]
	b	.L92
.L83:
	ldr	r3, [r4]
	cmp	r3, #0
	ldrgt	r2, [r4, #16]
	ldr	r6, .L108+8
	subgt	r3, r3, r2
	strgt	r3, [r4]
	ldr	r3, [r6]
	cmp	r3, #0
	ble	.L84
	ldr	r2, [r4, #8]
	cmp	r2, #79
	suble	r3, r3, #1
	strle	r3, [r6]
	b	.L84
.L109:
	.align	2
.L108:
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
	ldr	r1, .L118
	ldr	r2, .L118+4
	ldr	r3, .L118+8
	ldr	lr, [r1]
	ldr	ip, [r2]
	add	r0, r3, #156
.L112:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	ldmne	r3, {r1, r2}
	subne	r1, r1, lr
	subne	r2, r2, ip
	strne	r1, [r3, #8]
	strne	r2, [r3, #12]
	add	r3, r3, #52
	cmp	r3, r0
	bne	.L112
	pop	{r4, lr}
	bx	lr
.L119:
	.align	2
.L118:
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
	ldr	r2, .L125
	ldr	r3, .L125+4
	ldr	ip, [r2]
	ldr	r1, [r3]
	ldr	r2, [r0]
	ldr	r3, [r0, #4]
	sub	r2, r2, ip
	sub	r3, r3, r1
	str	r2, [r0, #8]
	str	r3, [r0, #12]
	bx	lr
.L126:
	.align	2
.L125:
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r7, .L137
	mov	r8, #0
	mov	r4, r7
	mov	r10, #16
	mov	r9, #1
	ldr	r6, .L137+4
	ldr	r5, .L137+8
.L135:
	str	r10, [r4, #16]
	str	r10, [r4, #20]
	mov	lr, pc
	bx	r6
	smull	r3, r2, r5, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #3
	add	r0, r0, #16
	str	r0, [r4]
	mov	lr, pc
	bx	r6
	smull	r3, r1, r5, r0
	asr	r3, r0, #31
	rsb	r3, r3, r1, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	bics	r1, r8, #4
	mov	r2, #0
	sub	r0, r0, r3, lsl #3
	bic	r3, r8, #2
	moveq	r3, #6
	add	r0, r0, #16
	str	r9, [r4, #24]
	str	r9, [r4, #40]
	str	r0, [r4, #4]
	str	r2, [r4, #28]
	str	r2, [r4, #36]
	streq	r3, [r4, #32]
	beq	.L131
	cmp	r3, #1
	movne	r3, #8
	strne	r3, [r7, #128]
	bne	.L131
	mov	r3, #7
	add	r8, r8, #1
	str	r3, [r4, #32]
	add	r4, r4, #48
	b	.L135
.L131:
	add	r8, r8, #1
	cmp	r8, #5
	add	r4, r4, #48
	bne	.L135
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L138:
	.align	2
.L137:
	.word	enemies
	.word	rand
	.word	1374389535
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
	mov	ip, #1
	mov	lr, #16
	mov	r0, #0
	mov	r6, #3
	mov	fp, #168
	mov	r10, #121
	mov	r9, #20
	mov	r8, #96
	mov	r7, #9
	mov	r1, lr
	mov	r5, ip
	mov	r4, #4
	ldr	r3, .L143
	str	r0, [r3]
	ldr	r3, .L143+4
	str	fp, [r3]
	str	r0, [r3, #36]
	str	r0, [r3, #48]
	str	r10, [r3, #4]
	str	r9, [r3, #56]
	str	lr, [r3, #24]
	str	lr, [r3, #28]
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r6, [r3, #52]
	ldr	r3, .L143+8
	str	r6, [r3]
	ldr	r3, .L143+12
	mov	r2, r0
	str	r8, [r3]
	ldr	r0, .L143+16
	ldr	r3, .L143+20
	str	r7, [r0]
	add	r0, r3, #156
.L140:
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #28]
	str	r4, [r3, #32]
	str	r2, [r3, #40]
	str	r5, [r3, #44]
	str	r2, [r3, #24]
	add	r3, r3, #52
	cmp	r3, r0
	bne	.L140
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	initEnemy
.L144:
	.align	2
.L143:
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
	ldr	r3, [r0, #24]
	cmp	r3, #0
	bxeq	lr
	b	drawEnemy.part.0
	.size	drawEnemy, .-drawEnemy
	.comm	hOff,4,4
	.comm	vOff,4,4
	.comm	lifeRemaining,4,4
	.comm	score,4,4
	.comm	bubbles,156,4
	.comm	enemies,240,4
	.comm	penguin,60,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
