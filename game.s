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
	ldr	r4, [r0, #44]
	ldr	r2, [r0, #56]
	ldr	r1, [r0, #36]
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
	ldr	r2, [r0, #56]
	ldr	ip, [r0, #40]
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
	add	r5, r4, #480
.L22:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	movne	r0, r4
	blne	drawEnemy.part.0
.L21:
	add	r4, r4, #60
	cmp	r4, r5
	bne	.L22
	ldr	r4, .L34+28
	add	r5, r4, #960
.L24:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	movne	r0, r4
	blne	drawBubble.part.0
.L23:
	add	r4, r4, #60
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
	str	r2, [r3, #56]
	add	r2, r2, #1
	cmp	r2, #16
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #32]
	str	lr, [r3, #36]
	str	r1, [r3, #44]
	str	ip, [r3, #48]
	str	r1, [r3, #24]
	add	r3, r3, #60
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
	ldr	r1, .L92
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r9, [r1]
	ldr	r7, [r1, #28]
	ldr	r5, [r1, #4]
	ldr	r8, [r1, #24]
	sub	r10, r9, r7
	add	fp, r5, r8
	mov	r2, #0
	ldr	r3, .L92+4
	ldr	ip, [r1, #40]
	ldr	lr, .L92+8
	add	r7, r7, r9
	sub	r8, r5, r8
	b	.L75
.L91:
	mov	r4, r5
	str	r7, [r3]
	str	r5, [r3, #4]
.L70:
	ldr	r1, [r3]
	add	r0, r4, r1, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [lr, r0]
	cmp	r0, #0
	lsl	r1, r1, #8
	beq	.L68
	add	r0, r4, #10
	add	r6, r1, r0
	lsl	r6, r6, #1
	ldrh	r6, [lr, r6]
	cmp	r6, #0
	beq	.L68
	add	r1, r1, #2560
	add	r4, r1, r4
	lsl	r4, r4, #1
	ldrh	r4, [lr, r4]
	cmp	r4, #0
	beq	.L68
	add	r1, r0, r1
	lsl	r1, r1, #1
	ldrh	r1, [lr, r1]
	cmp	r1, #0
	bne	.L90
.L68:
	add	r2, r2, #1
	cmp	r2, #16
	add	r3, r3, #60
	beq	.L67
.L75:
	ldr	r1, [r3, #24]
	cmp	r1, #0
	bne	.L68
	cmp	ip, #0
	beq	.L91
	cmp	ip, #1
	moveq	r4, r5
	streq	r10, [r3]
	streq	r5, [r3, #4]
	beq	.L70
	cmp	ip, #3
	moveq	r4, r8
	streq	r9, [r3]
	streq	r8, [r3, #4]
	beq	.L70
	cmp	ip, #2
	moveq	r4, fp
	stmeq	r3, {r9, fp}
	ldrne	r4, [r3, #4]
	b	.L70
.L90:
	mov	r3, #1
	ldr	r1, .L92+4
	rsb	r2, r2, r2, lsl #4
	add	r2, r1, r2, lsl #2
	str	r3, [r2, #24]
.L67:
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L93:
	.align	2
.L92:
	.word	penguin
	.word	bubbles
	.word	collisionmapBitmap
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, .L209
	ldrh	r5, [r3, #48]
	ands	r5, r5, #64
	sub	sp, sp, #16
	bne	.L95
	ldr	r4, .L209+4
	ldr	r2, [r4]
	cmp	r2, #0
	ble	.L97
	ldr	r0, [r4, #16]
	ldr	r1, [r4, #4]
	sub	r2, r2, r0
	add	r3, r1, r2, lsl #8
	ldr	r0, .L209+8
	lsl	r3, r3, #1
	ldrh	r3, [r0, r3]
	cmp	r3, #0
	lsl	ip, r2, #8
	beq	.L97
	ldr	r3, [r4, #24]
	ldr	lr, [r4, #20]
	add	r3, r1, r3
	sub	r3, r3, lr
	add	r3, r3, ip
	lsl	r3, r3, #1
	ldrh	r3, [r0, r3]
	cmp	r3, #0
	beq	.L97
	ldr	r7, .L209+12
	mov	r8, #16
	ldr	r6, .L209+16
	add	r9, r7, #960
	b	.L100
.L203:
	sub	r2, r2, r0
.L100:
	mov	r3, #16
	stm	sp, {r1, r2, r8}
	str	r8, [sp, #12]
	mov	r2, r3
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	mov	lr, pc
	bx	r6
	add	r7, r7, #60
	cmp	r0, #0
	movne	r5, #1
	cmp	r9, r7
	ldr	r1, [r4, #4]
	ldr	r2, [r4]
	ldr	r0, [r4, #16]
	bne	.L203
	ldr	r7, .L209+20
	mov	r8, #0
	mov	r9, #16
	add	r10, r7, #480
	b	.L103
.L204:
	ldr	r1, [r4, #4]
	ldr	r2, [r4]
	ldr	r0, [r4, #16]
.L103:
	mov	r3, #16
	sub	r2, r2, r0
	str	r2, [sp, #4]
	str	r9, [sp, #12]
	str	r9, [sp, #8]
	str	r1, [sp]
	mov	r2, r3
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	mov	lr, pc
	bx	r6
	add	r7, r7, #60
	cmp	r0, #0
	movne	r8, #1
	cmp	r7, r10
	bne	.L204
	orrs	r3, r5, r8
	ldreq	r3, [r4]
	ldreq	r2, [r4, #16]
	subeq	r3, r3, r2
	streq	r3, [r4]
.L97:
	ldr	r5, .L209+24
	ldr	r3, [r5]
	cmp	r3, #0
	ble	.L201
	ldr	r2, [r4, #8]
	cmp	r2, #79
	ble	.L190
.L201:
	ldr	r6, .L209+28
.L105:
	ldr	r3, .L209+32
	ldrh	r3, [r3]
	tst	r3, #1
	ldr	r3, [r4, #56]
	beq	.L202
	ldr	r2, .L209+36
	ldrh	r2, [r2]
	tst	r2, #1
	bne	.L202
	cmp	r3, #19
	bgt	.L136
.L202:
	add	r3, r3, #1
.L134:
	ldm	r4, {r1, r2}
	ldr	ip, [r5]
	ldr	r0, [r6]
	sub	r1, r1, ip
	sub	r2, r2, r0
	str	r3, [r4, #56]
	str	r1, [r4, #8]
	str	r2, [r4, #12]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	animatePlayer
.L95:
	ldrh	r2, [r3, #48]
	ands	r2, r2, #128
	bne	.L107
	ldr	r4, .L209+4
	ldr	r1, [r4]
	ldr	r3, [r4, #28]
	add	r3, r1, r3
	cmp	r3, #255
	bgt	.L109
	ldr	r0, [r4, #4]
	ldr	lr, .L209+8
	add	ip, r0, r3, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [lr, ip]
	cmp	ip, #0
	lsl	r3, r3, #8
	beq	.L109
	add	r5, r4, #20
	ldm	r5, {r5, ip}
	add	ip, r0, ip
	sub	ip, ip, r5
	add	r3, ip, r3
	lsl	r3, r3, #1
	ldrh	r3, [lr, r3]
	cmp	r3, #0
	beq	.L109
	mov	r5, r2
	mov	r8, #16
	ldr	r7, .L209+12
	ldr	r6, .L209+16
	add	r9, r7, #960
.L112:
	mov	r3, #16
	ldr	r2, [r4, #16]
	add	r2, r1, r2
	stm	sp, {r0, r2, r8}
	str	r8, [sp, #12]
	mov	r2, r3
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	mov	lr, pc
	bx	r6
	add	r7, r7, #60
	cmp	r0, #0
	movne	r5, #1
	cmp	r7, r9
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
	bne	.L112
	ldr	r7, .L209+20
	mov	r8, #0
	mov	r9, #16
	add	r10, r7, #480
	b	.L115
.L205:
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
.L115:
	mov	r3, #16
	ldr	r2, [r4, #16]
	add	r2, r1, r2
	stm	sp, {r0, r2, r9}
	str	r9, [sp, #12]
	mov	r2, r3
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	mov	lr, pc
	bx	r6
	add	r7, r7, #60
	cmp	r0, #0
	movne	r8, #1
	cmp	r7, r10
	bne	.L205
	orrs	r3, r5, r8
	ldreq	r3, [r4]
	ldreq	r2, [r4, #16]
	addeq	r3, r3, r2
	streq	r3, [r4]
.L109:
	ldr	r5, .L209+24
	ldr	r3, [r5]
	cmp	r3, #95
	bgt	.L201
	ldr	r2, [r4, #8]
	cmp	r2, #80
	ble	.L201
	add	r3, r3, #1
	str	r3, [r5]
	ldr	r6, .L209+28
	b	.L105
.L107:
	ldrh	r5, [r3, #48]
	ands	r5, r5, #32
	bne	.L116
	ldr	r4, .L209+4
	ldr	r2, [r4, #4]
	cmp	r2, #0
	ble	.L118
	ldr	r0, [r4, #20]
	ldr	r1, [r4]
	sub	r2, r2, r0
	add	r3, r2, r1, lsl #8
	ldr	r0, .L209+8
	lsl	r3, r3, #1
	ldrh	r3, [r0, r3]
	cmp	r3, #0
	beq	.L118
	ldr	r3, [r4, #28]
	ldr	ip, [r4, #16]
	add	r3, r1, r3
	sub	r3, r3, ip
	add	r3, r2, r3, lsl #8
	lsl	r3, r3, #1
	ldrh	r3, [r0, r3]
	cmp	r3, #0
	beq	.L118
	ldr	r7, .L209+12
	mov	r8, #16
	ldr	r6, .L209+16
	add	r9, r7, #960
	b	.L121
.L206:
	sub	r2, r2, r0
.L121:
	mov	r3, #16
	stmib	sp, {r1, r8}
	str	r2, [sp]
	str	r8, [sp, #12]
	mov	r2, r3
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	mov	lr, pc
	bx	r6
	add	r7, r7, #60
	cmp	r0, #0
	movne	r5, #1
	cmp	r9, r7
	ldr	r2, [r4, #4]
	ldr	r0, [r4, #20]
	ldr	r1, [r4]
	bne	.L206
	ldr	r7, .L209+20
	mov	r8, #0
	mov	r9, #16
	add	r10, r7, #480
	b	.L124
.L207:
	ldr	r2, [r4, #4]
	ldr	r0, [r4, #20]
	ldr	r1, [r4]
.L124:
	mov	r3, #16
	stmib	sp, {r1, r9}
	sub	r2, r2, r0
	str	r2, [sp]
	str	r9, [sp, #12]
	mov	r2, r3
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	mov	lr, pc
	bx	r6
	add	r7, r7, #60
	cmp	r0, #0
	movne	r8, #1
	cmp	r10, r7
	bne	.L207
	orrs	r3, r5, r8
	ldreq	r3, [r4, #4]
	ldreq	r2, [r4, #20]
	subeq	r3, r3, r2
	streq	r3, [r4, #4]
.L118:
	ldr	r6, .L209+28
	ldr	r3, [r6]
	cmp	r3, #0
	ble	.L200
	ldr	r2, [r4, #12]
	cmp	r2, #119
	bgt	.L200
	sub	r3, r3, #1
	str	r3, [r6]
	ldr	r5, .L209+24
	b	.L105
.L190:
	sub	r3, r3, #1
	str	r3, [r5]
	ldr	r6, .L209+28
	b	.L105
.L116:
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	ldr	r4, .L209+4
	beq	.L196
	ldr	r5, .L209+24
	b	.L201
.L136:
	bl	putBubble
	mov	r3, #1
	b	.L134
.L196:
	ldr	r1, [r4, #4]
	ldr	r2, [r4, #24]
	add	r2, r1, r2
	cmp	r2, #255
	bgt	.L126
	ldr	r0, [r4]
	ldr	lr, .L209+8
	add	ip, r2, r0, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [lr, ip]
	cmp	ip, #0
	beq	.L126
	ldr	ip, [r4, #28]
	ldr	r5, [r4, #16]
	add	ip, r0, ip
	sub	ip, ip, r5
	add	r2, r2, ip, lsl #8
	lsl	r2, r2, #1
	ldrh	r2, [lr, r2]
	cmp	r2, #0
	beq	.L126
	mov	r5, r3
	mov	r8, #16
	ldr	r7, .L209+12
	ldr	r6, .L209+16
	add	r9, r7, #960
.L129:
	mov	r3, #16
	ldr	r2, [r4, #20]
	stmib	sp, {r0, r8}
	add	r2, r1, r2
	str	r2, [sp]
	str	r8, [sp, #12]
	mov	r2, r3
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	mov	lr, pc
	bx	r6
	add	r7, r7, #60
	cmp	r0, #0
	movne	r5, #1
	cmp	r7, r9
	ldm	r4, {r0, r1}
	bne	.L129
	ldr	r7, .L209+20
	mov	r8, #0
	mov	r9, #16
	add	r10, r7, #480
	b	.L132
.L208:
	ldm	r4, {r0, r1}
.L132:
	mov	r3, #16
	ldr	r2, [r4, #20]
	stmib	sp, {r0, r9}
	add	r2, r1, r2
	str	r2, [sp]
	str	r9, [sp, #12]
	mov	r2, r3
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	mov	lr, pc
	bx	r6
	add	r7, r7, #60
	cmp	r0, #0
	movne	r8, #1
	cmp	r10, r7
	bne	.L208
	orrs	r3, r5, r8
	ldreq	r3, [r4, #4]
	ldreq	r2, [r4, #20]
	addeq	r3, r3, r2
	streq	r3, [r4, #4]
.L126:
	ldr	r6, .L209+28
	ldr	r3, [r6]
	cmp	r3, #15
	bgt	.L200
	ldr	r2, [r4, #12]
	cmp	r2, #120
	addgt	r3, r3, #1
	strgt	r3, [r6]
.L200:
	ldr	r5, .L209+24
	b	.L105
.L210:
	.align	2
.L209:
	.word	67109120
	.word	penguin
	.word	collisionmapBitmap
	.word	bubbles
	.word	collision
	.word	enemies
	.word	vOff
	.word	hOff
	.word	oldButtons
	.word	buttons
	.size	updatePlayer, .-updatePlayer
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
	ldr	r2, .L216
	ldr	r3, .L216+4
	ldr	ip, [r2]
	ldr	r1, [r3]
	ldr	r2, [r0]
	ldr	r3, [r0, #4]
	sub	r2, r2, ip
	sub	r3, r3, r1
	str	r2, [r0, #8]
	str	r3, [r0, #12]
	bx	lr
.L217:
	.align	2
.L216:
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
	ble	.L220
	mov	r6, #0
	mov	r9, #1
	ldr	fp, .L246
	ldr	r5, .L246+4
	ldr	r4, .L246+8
	ldr	r7, .L246+12
	ldr	r10, .L246+16
.L229:
	mov	r3, #16
	ldr	r2, [fp, #28]
	cmp	r2, #0
	str	r3, [fp, #20]
	str	r3, [fp, #24]
	beq	.L225
	b	.L224
.L223:
	ldr	r3, [fp, #28]
	cmp	r3, #0
	bne	.L224
.L225:
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
	bne	.L223
	add	r2, r0, r3, lsl #8
	lsl	r2, r2, #1
	ldrh	r2, [r7, r2]
	cmp	r2, #0
	lsl	r1, r3, #8
	beq	.L223
	ldr	r2, [fp, #20]
	add	r2, r0, r2
	add	r1, r1, r2
	lsl	r1, r1, #1
	ldrh	r1, [r7, r1]
	cmp	r1, #0
	beq	.L223
	ldr	r1, [fp, #24]
	add	r3, r3, r1
	add	r0, r0, r3, lsl #8
	lsl	r0, r0, #1
	ldrh	r1, [r7, r0]
	lsl	r3, r3, #8
	add	r3, r2, r3
	cmp	r1, #0
	lsl	r3, r3, #1
	beq	.L223
	ldrh	r3, [r7, r3]
	cmp	r3, #0
	beq	.L223
	str	r9, [fp, #28]
.L224:
	umull	r3, r1, r10, r6
	bic	r3, r1, #1
	add	r3, r3, r1, lsr #1
	subs	r3, r6, r3
	mov	r2, #0
	moveq	r3, #6
	str	r9, [fp, #48]
	str	r6, [fp, #56]
	str	r2, [fp, #36]
	str	r2, [fp, #44]
	streq	r3, [fp, #40]
	beq	.L227
	cmp	r3, #1
	moveq	r3, #7
	movne	r3, #8
	str	r3, [fp, #40]
.L227:
	mov	r3, #0
	add	r6, r6, #1
	cmp	r8, r6
	str	r3, [fp, #32]
	add	fp, fp, #60
	bne	.L229
.L220:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L247:
	.align	2
.L246:
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
	mov	r10, #118
	mov	r9, #20
	ldr	lr, .L252
	mov	r8, #96
	str	r4, [lr]
	ldr	lr, .L252+4
	mov	r3, r4
	str	r4, [lr, #36]
	str	r4, [lr, #48]
	mov	r2, r4
	mov	r4, #6
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
	ldr	lr, .L252+8
	str	r7, [lr]
	ldr	lr, .L252+12
	str	r8, [lr]
	ldr	lr, .L252+16
	str	r4, [lr]
	ldr	lr, .L252+20
.L249:
	str	r3, [lr, #56]
	add	r3, r3, #1
	cmp	r3, #16
	str	r1, [lr, #16]
	str	r1, [lr, #20]
	str	r2, [lr, #32]
	str	r0, [lr, #36]
	str	r2, [lr, #44]
	str	ip, [lr, #48]
	str	r2, [lr, #24]
	add	lr, lr, #60
	bne	.L249
	mov	r0, #8
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	initEnemy
.L253:
	.align	2
.L252:
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r3, [r0, #28]
	cmp	r3, #0
	mov	r5, r0
	sub	sp, sp, #20
	beq	.L257
	ldr	r2, .L271
	ldr	r3, .L271+4
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r5]
	ldr	r3, [r5, #4]
	sub	r2, r2, r0
	sub	r3, r3, r1
	str	r2, [r5, #8]
	str	r3, [r5, #12]
.L257:
	ldr	r4, .L271+8
	mov	r9, #0
	ldr	r8, .L271+12
	ldr	r7, .L271+16
	add	r6, r4, #960
	b	.L261
.L259:
	add	r4, r4, #60
	cmp	r4, r6
	beq	.L270
.L261:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L259
	ldm	r5, {r2, r3}
	ldr	r0, [r5, #24]
	ldr	r1, [r5, #20]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	ldrne	r3, [r7]
	strne	r9, [r5, #28]
	addne	r3, r3, #1
	strne	r9, [r4, #24]
	add	r4, r4, #60
	strne	r3, [r7]
	cmp	r4, r6
	bne	.L261
.L270:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L272:
	.align	2
.L271:
	.word	vOff
	.word	hOff
	.word	bubbles
	.word	collision
	.word	score
	.size	updateEnemy, .-updateEnemy
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L283
	add	r5, r4, #480
.L274:
	mov	r0, r4
	add	r4, r4, #60
	bl	updateEnemy
	cmp	r4, r5
	bne	.L274
	ldr	r1, .L283+4
	ldr	r2, .L283+8
	ldr	r3, .L283+12
	ldr	lr, [r1]
	ldr	ip, [r2]
	add	r0, r3, #960
.L276:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	ldmne	r3, {r1, r2}
	subne	r1, r1, lr
	subne	r2, r2, ip
	strne	r1, [r3, #8]
	strne	r2, [r3, #12]
	add	r3, r3, #60
	cmp	r3, r0
	bne	.L276
	pop	{r4, r5, r6, lr}
	b	updatePlayer
.L284:
	.align	2
.L283:
	.word	enemies
	.word	vOff
	.word	hOff
	.word	bubbles
	.size	updateGame, .-updateGame
	.comm	screenBlock,4,4
	.comm	playerVOff,4,4
	.comm	playerHOff,4,4
	.comm	hOff,4,4
	.comm	vOff,4,4
	.comm	lifeRemaining,4,4
	.comm	score,4,4
	.comm	bubbles,960,4
	.comm	enemies,480,4
	.comm	penguin,60,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
