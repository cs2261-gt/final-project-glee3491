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
	ldr	r1, [r0, #52]
	ldr	r3, .L9
	cmp	r1, r3
	movle	r1, #8
	movgt	r1, #72
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #56]
	ldr	ip, .L9+4
	lsl	r3, r3, #23
	str	lr, [sp, #-4]!
	add	r2, r2, #1
	ldrb	lr, [r0, #8]	@ zero_extendqisi2
	lsr	r3, r3, #23
	add	r0, ip, r2, lsl #3
	orr	r3, r3, #16384
	lsl	r2, r2, #3
	strh	lr, [ip, r2]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r0, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L10:
	.align	2
.L9:
	.word	309
	.word	shadowOAM
	.size	drawBubble.part.0, .-drawBubble.part.0
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
	ldr	r3, .L13
	ldr	r1, [r3]
	ldr	r3, .L13+4
	ldr	r2, [r3]
	ldr	r3, .L13+8
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
.L14:
	.align	2
.L13:
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
	ldr	r4, .L28
	ldr	r3, .L28+4
	ldr	r5, [r4, #36]
	smull	r0, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #3
	ldr	r6, [r4, #40]
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #2
	str	r6, [r4, #44]
	str	r1, [r4, #40]
	bne	.L16
	ldr	r0, [r4, #48]
	ldr	r3, .L28+8
	ldr	r1, [r4, #52]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #48]
.L16:
	ldr	r3, .L28+12
	ldrh	r3, [r3, #48]
	tst	r3, #64
	moveq	r3, #1
	streq	r3, [r4, #40]
	ldr	r3, .L28+12
	ldrh	r3, [r3, #48]
	ands	r3, r3, #128
	streq	r3, [r4, #40]
	ldr	r3, .L28+12
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L19
	mov	r2, #3
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r2, [r4, #40]
	bne	.L21
.L22:
	mov	r3, #2
	str	r3, [r4, #40]
.L21:
	add	r5, r5, #1
	str	r5, [r4, #36]
	pop	{r4, r5, r6, lr}
	bx	lr
.L19:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L22
	ldr	r3, [r4, #40]
	cmp	r3, #9
	bne	.L21
	mov	r3, #0
	str	r6, [r4, #40]
	str	r3, [r4, #48]
	str	r3, [r4, #36]
	pop	{r4, r5, r6, lr}
	bx	lr
.L29:
	.align	2
.L28:
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
	ldr	r3, .L34
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L31
	ldr	r2, .L34+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L31:
	b	drawPlayer.part.0
.L35:
	.align	2
.L34:
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
	ldr	r3, .L40
.L37:
	str	r2, [r3, #56]
	add	r2, r2, #1
	cmp	r2, #10
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #32]
	str	lr, [r3, #36]
	str	r1, [r3, #44]
	str	ip, [r3, #48]
	str	r1, [r3, #24]
	add	r3, r3, #60
	bne	.L37
	ldr	lr, [sp], #4
	bx	lr
.L41:
	.align	2
.L40:
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r1, .L67
	ldr	r5, [r1, #4]
	ldr	r8, [r1, #24]
	ldr	r9, [r1]
	ldr	r7, [r1, #28]
	ldr	r10, .L67+4
	ldr	ip, [r1, #40]
	sub	sp, sp, #12
	add	r1, r5, r8
	sub	fp, r9, r7
	mov	r2, #0
	mov	r3, r10
	ldr	lr, .L67+8
	str	r1, [sp, #4]
	add	r7, r7, r9
	sub	r8, r5, r8
	b	.L50
.L66:
	mov	r4, r5
	str	r7, [r3]
	str	r5, [r3, #4]
.L45:
	ldr	r1, [r3]
	add	r0, r4, r1, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [lr, r0]
	cmp	r0, #0
	lsl	r1, r1, #8
	beq	.L43
	add	r0, r4, #10
	add	r6, r1, r0
	lsl	r6, r6, #1
	ldrh	r6, [lr, r6]
	cmp	r6, #0
	beq	.L43
	add	r1, r1, #2560
	add	r4, r1, r4
	lsl	r4, r4, #1
	ldrh	r4, [lr, r4]
	cmp	r4, #0
	beq	.L43
	add	r1, r0, r1
	lsl	r1, r1, #1
	ldrh	r1, [lr, r1]
	cmp	r1, #0
	bne	.L65
.L43:
	add	r2, r2, #1
	cmp	r2, #10
	add	r3, r3, #60
	beq	.L42
.L50:
	ldr	r1, [r3, #24]
	cmp	r1, #0
	bne	.L43
	cmp	ip, #0
	beq	.L66
	cmp	ip, #1
	moveq	r4, r5
	streq	fp, [r3]
	streq	r5, [r3, #4]
	beq	.L45
	cmp	ip, #3
	moveq	r4, r8
	streq	r9, [r3]
	streq	r8, [r3, #4]
	beq	.L45
	cmp	ip, #2
	ldreq	r1, [sp, #4]
	ldrne	r4, [r3, #4]
	moveq	r4, r1
	streq	r9, [r3]
	streq	r1, [r3, #4]
	b	.L45
.L65:
	mov	r3, #1
	rsb	r2, r2, r2, lsl #4
	add	r2, r10, r2, lsl #2
	str	r3, [r2, #24]
.L42:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L68:
	.align	2
.L67:
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r2, .L233
	ldrh	r3, [r2, #48]
	ands	r3, r3, #64
	sub	sp, sp, #20
	bne	.L70
	ldr	r6, .L233+4
	ldr	r2, [r6]
	cmp	r2, #0
	ble	.L215
	ldr	r0, [r6, #16]
	ldr	r1, [r6, #4]
	sub	r2, r2, r0
	add	r0, r1, r2, lsl #8
	ldr	ip, .L233+8
	lsl	r0, r0, #1
	ldrh	r0, [ip, r0]
	cmp	r0, #0
	lsl	r2, r2, #8
	beq	.L215
	add	r0, r6, #20
	ldm	r0, {r0, lr}
	add	r1, r1, lr
	sub	r1, r1, r0
	add	r2, r1, r2
	lsl	r2, r2, #1
	ldrh	r2, [ip, r2]
	cmp	r2, #0
	beq	.L215
	ldr	r5, .L233+12
	mov	r7, r3
	mov	r8, #16
	ldr	r9, .L233+16
	add	r4, r5, #600
	b	.L75
.L74:
	add	r5, r5, #60
	cmp	r5, r4
	beq	.L224
.L75:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	beq	.L74
	mov	r3, #16
	ldr	r0, [r6, #16]
	ldr	r2, [r6]
	ldr	r1, [r6, #4]
	sub	r2, r2, r0
	stmib	sp, {r2, r8}
	str	r8, [sp, #12]
	str	r1, [sp]
	mov	r2, r3
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	movne	r7, #1
	b	.L74
.L70:
	ldrh	r3, [r2, #48]
	ands	r3, r3, #128
	bne	.L81
	ldr	r6, .L233+4
	ldr	r2, [r6]
	ldr	r1, [r6, #28]
	add	r2, r2, r1
	cmp	r2, #255
	bgt	.L217
	ldr	r1, [r6, #4]
	ldr	ip, .L233+8
	add	r0, r1, r2, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [ip, r0]
	cmp	r0, #0
	lsl	r2, r2, #8
	beq	.L217
	add	r0, r6, #20
	ldm	r0, {r0, lr}
	add	r1, r1, lr
	sub	r1, r1, r0
	add	r2, r1, r2
	lsl	r2, r2, #1
	ldrh	r2, [ip, r2]
	cmp	r2, #0
	beq	.L217
	ldr	r5, .L233+12
	mov	r7, r3
	mov	r8, #16
	ldr	r9, .L233+16
	add	r4, r5, #600
	b	.L86
.L85:
	add	r5, r5, #60
	cmp	r5, r4
	beq	.L225
.L86:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	beq	.L85
	mov	r3, #16
	ldr	r0, [r6, #16]
	ldr	r2, [r6]
	ldr	r1, [r6, #4]
	add	r2, r2, r0
	stmib	sp, {r2, r8}
	str	r8, [sp, #12]
	str	r1, [sp]
	mov	r2, r3
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	movne	r7, #1
	b	.L85
.L81:
	ldrh	r3, [r2, #48]
	ands	r3, r3, #32
	bne	.L89
	ldr	r6, .L233+4
	ldr	r2, [r6, #4]
	cmp	r2, #0
	ble	.L219
	ldr	r0, [r6, #20]
	ldr	r1, [r6]
	sub	r2, r2, r0
	ldr	ip, .L233+8
	add	r0, r2, r1, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [ip, r0]
	cmp	r0, #0
	beq	.L219
	ldr	lr, [r6, #28]
	ldr	r0, [r6, #16]
	add	r1, r1, lr
	sub	r1, r1, r0
	add	r2, r2, r1, lsl #8
	lsl	r2, r2, #1
	ldrh	r2, [ip, r2]
	cmp	r2, #0
	beq	.L219
	ldr	r5, .L233+12
	mov	r7, r3
	mov	r8, #16
	ldr	r9, .L233+16
	add	r4, r5, #600
	b	.L94
.L93:
	add	r5, r5, #60
	cmp	r5, r4
	beq	.L226
.L94:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	beq	.L93
	mov	r3, #16
	ldr	r0, [r6, #20]
	ldr	r2, [r6, #4]
	ldr	r1, [r6]
	sub	r2, r2, r0
	str	r2, [sp]
	str	r8, [sp, #12]
	str	r8, [sp, #8]
	str	r1, [sp, #4]
	mov	r2, r3
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	movne	r7, #1
	b	.L93
.L215:
	ldr	r4, .L233+20
	ldr	r5, .L233+24
.L72:
	ldr	r7, .L233+28
	ldr	r3, [r7]
	cmp	r3, #0
	ble	.L223
	ldr	r2, [r6, #8]
	cmp	r2, #79
	ble	.L199
.L223:
	ldr	r8, .L233+32
.L79:
	ldr	r3, .L233+36
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L104
	ldr	r3, .L233+40
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L227
.L104:
	mov	r1, #0
	ldr	r3, .L233+12
.L107:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	ldr	r2, [r3, #52]
	addne	r2, r2, #1
	strne	r2, [r3, #52]
	cmp	r2, #320
	streq	r1, [r3, #24]
	streq	r1, [r3, #52]
	add	r3, r3, #60
	cmp	r4, r3
	bne	.L107
	ldr	r4, .L233+44
	mov	r1, #0
	mov	r3, r4
.L110:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	ldr	r2, [r3, #48]
	addne	r2, r2, #1
	strne	r2, [r3, #48]
	cmp	r2, #1000
	streq	r1, [r3, #28]
	streq	r1, [r3, #48]
	add	r3, r3, #60
	cmp	r5, r3
	bne	.L110
	ldm	r6, {r2, r3}
	ldr	r0, [r7]
	ldr	r1, [r8]
	sub	r2, r2, r0
	sub	r3, r3, r1
	str	r2, [r6, #8]
	str	r3, [r6, #12]
	bl	animatePlayer
	mov	r2, #1
.L112:
	ldr	r3, [r4, #48]
	cmp	r3, #200
	streq	r2, [r4, #28]
	add	r4, r4, #60
	cmp	r5, r4
	bne	.L112
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L217:
	ldr	r4, .L233+20
	ldr	r5, .L233+24
.L83:
	ldr	r7, .L233+28
	ldr	r3, [r7]
	cmp	r3, #95
	bgt	.L223
	ldr	r2, [r6, #8]
	cmp	r2, #80
	ble	.L223
	add	r3, r3, #1
	str	r3, [r7]
	ldr	r8, .L233+32
	b	.L79
.L199:
	sub	r3, r3, #1
	str	r3, [r7]
	ldr	r8, .L233+32
	b	.L79
.L89:
	ldrh	r3, [r2, #48]
	ands	r3, r3, #16
	ldr	r6, .L233+4
	beq	.L208
	ldr	r4, .L233+20
	ldr	r5, .L233+24
	ldr	r7, .L233+28
	b	.L223
.L219:
	ldr	r4, .L233+20
	ldr	r5, .L233+24
.L91:
	ldr	r8, .L233+32
	ldr	r3, [r8]
	cmp	r3, #0
	ble	.L222
	ldr	r2, [r6, #12]
	cmp	r2, #119
	bgt	.L222
	sub	r3, r3, #1
	str	r3, [r8]
	ldr	r7, .L233+28
	b	.L79
.L208:
	ldr	r2, [r6, #4]
	ldr	r1, [r6, #24]
	add	r2, r2, r1
	cmp	r2, #255
	ble	.L97
.L221:
	ldr	r4, .L233+20
	ldr	r5, .L233+24
.L98:
	ldr	r8, .L233+32
	ldr	r3, [r8]
	cmp	r3, #15
	bgt	.L222
	ldr	r2, [r6, #12]
	cmp	r2, #120
	addgt	r3, r3, #1
	strgt	r3, [r8]
.L222:
	ldr	r7, .L233+28
	b	.L79
.L227:
	bl	putBubble
	b	.L104
.L224:
	ldr	r8, .L233+44
	mov	r9, #0
	mov	r10, #16
	ldr	fp, .L233+16
	add	r5, r8, #480
	b	.L77
.L76:
	add	r8, r8, #60
	cmp	r8, r5
	beq	.L228
.L77:
	ldr	r3, [r8, #28]
	cmp	r3, #0
	beq	.L76
	mov	r3, #16
	ldr	r0, [r6, #16]
	ldr	r2, [r6]
	ldr	r1, [r6, #4]
	sub	r2, r2, r0
	stmib	sp, {r2, r10}
	str	r10, [sp, #12]
	str	r1, [sp]
	mov	r2, r3
	ldr	r1, [r8]
	ldr	r0, [r8, #4]
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	movne	r9, #1
	b	.L76
.L228:
	orrs	r3, r7, r9
	ldreq	r3, [r6]
	ldreq	r2, [r6, #16]
	subeq	r3, r3, r2
	streq	r3, [r6]
	b	.L72
.L97:
	ldr	r1, [r6]
	ldr	ip, .L233+8
	add	r0, r2, r1, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [ip, r0]
	cmp	r0, #0
	beq	.L221
	ldr	lr, [r6, #28]
	ldr	r0, [r6, #16]
	add	r1, r1, lr
	sub	r1, r1, r0
	add	r2, r2, r1, lsl #8
	lsl	r2, r2, #1
	ldrh	r2, [ip, r2]
	cmp	r2, #0
	beq	.L221
	ldr	r5, .L233+12
	mov	r7, r3
	mov	r8, #16
	ldr	r9, .L233+16
	add	r4, r5, #600
	b	.L101
.L100:
	add	r5, r5, #60
	cmp	r5, r4
	beq	.L229
.L101:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	beq	.L100
	mov	r3, #16
	ldr	r0, [r6, #20]
	ldr	r2, [r6, #4]
	ldr	r1, [r6]
	add	r2, r2, r0
	str	r2, [sp]
	str	r8, [sp, #12]
	str	r8, [sp, #8]
	str	r1, [sp, #4]
	mov	r2, r3
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	movne	r7, #1
	b	.L100
.L225:
	ldr	r8, .L233+44
	mov	r9, #0
	mov	r10, #16
	ldr	fp, .L233+16
	add	r5, r8, #480
	b	.L88
.L87:
	add	r8, r8, #60
	cmp	r8, r5
	beq	.L230
.L88:
	ldr	r3, [r8, #28]
	cmp	r3, #0
	beq	.L87
	mov	r3, #16
	ldr	r0, [r6, #16]
	ldr	r2, [r6]
	ldr	r1, [r6, #4]
	add	r2, r2, r0
	stmib	sp, {r2, r10}
	str	r10, [sp, #12]
	str	r1, [sp]
	mov	r2, r3
	ldr	r1, [r8]
	ldr	r0, [r8, #4]
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	movne	r9, #1
	b	.L87
.L230:
	orrs	r3, r7, r9
	ldreq	r3, [r6]
	ldreq	r2, [r6, #16]
	addeq	r3, r3, r2
	streq	r3, [r6]
	b	.L83
.L226:
	ldr	r8, .L233+44
	mov	r9, #0
	mov	r10, #16
	ldr	fp, .L233+16
	add	r5, r8, #480
	b	.L96
.L95:
	add	r8, r8, #60
	cmp	r8, r5
	beq	.L231
.L96:
	ldr	r3, [r8, #28]
	cmp	r3, #0
	beq	.L95
	mov	r3, #16
	ldr	r0, [r6, #20]
	ldr	r2, [r6, #4]
	ldr	r1, [r6]
	sub	r2, r2, r0
	str	r2, [sp]
	str	r10, [sp, #12]
	str	r10, [sp, #8]
	str	r1, [sp, #4]
	mov	r2, r3
	ldr	r1, [r8]
	ldr	r0, [r8, #4]
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	movne	r9, #1
	b	.L95
.L231:
	orrs	r3, r7, r9
	ldreq	r3, [r6, #4]
	ldreq	r2, [r6, #20]
	subeq	r3, r3, r2
	streq	r3, [r6, #4]
	b	.L91
.L229:
	ldr	r8, .L233+44
	mov	r9, #0
	mov	r10, #16
	ldr	fp, .L233+16
	add	r5, r8, #480
	b	.L103
.L102:
	add	r8, r8, #60
	cmp	r8, r5
	beq	.L232
.L103:
	ldr	r3, [r8, #28]
	cmp	r3, #0
	beq	.L102
	mov	r3, #16
	ldr	r0, [r6, #20]
	ldr	r2, [r6, #4]
	ldr	r1, [r6]
	add	r2, r2, r0
	str	r2, [sp]
	str	r10, [sp, #12]
	str	r10, [sp, #8]
	str	r1, [sp, #4]
	mov	r2, r3
	ldr	r1, [r8]
	ldr	r0, [r8, #4]
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	movne	r9, #1
	b	.L102
.L232:
	orrs	r3, r7, r9
	ldreq	r3, [r6, #4]
	ldreq	r2, [r6, #20]
	addeq	r3, r3, r2
	streq	r3, [r6, #4]
	b	.L98
.L234:
	.align	2
.L233:
	.word	67109120
	.word	penguin
	.word	collisionmapBitmap
	.word	bubbles
	.word	collision
	.word	bubbles+600
	.word	enemies+480
	.word	vOff
	.word	hOff
	.word	oldButtons
	.word	buttons
	.word	enemies
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
	ldr	r2, .L240
	ldr	r3, .L240+4
	ldr	ip, [r2]
	ldr	r1, [r3]
	ldr	r2, [r0]
	ldr	r3, [r0, #4]
	sub	r2, r2, ip
	sub	r3, r3, r1
	str	r2, [r0, #8]
	str	r3, [r0, #12]
	bx	lr
.L241:
	.align	2
.L240:
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
	ldr	r2, [r0, #24]
	cmp	r2, #0
	bne	drawBubble.part.0
.L243:
	mov	r2, #512
	ldr	r1, [r0, #56]
	ldr	r3, .L244
	add	r3, r3, r1, lsl #3
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L245:
	.align	2
.L244:
	.word	shadowOAM
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
	subs	r10, r0, #0
	ble	.L246
	mov	r7, #0
	mov	r8, #14
	mov	r9, #1
	ldr	fp, .L273
	ldr	r5, .L273+4
	ldr	r6, .L273+8
	ldr	r4, .L273+12
	b	.L255
.L272:
	ldr	r1, [fp, #20]
	add	r1, r3, r1
	add	ip, ip, r1
	lsl	ip, ip, #1
	ldrh	ip, [r6, ip]
	cmp	ip, #0
	beq	.L249
	ldr	ip, [fp, #24]
	add	r0, r0, ip
	add	r3, r3, r0, lsl #8
	lsl	r3, r3, #1
	ldrh	r3, [r6, r3]
	lsl	r0, r0, #8
	add	r1, r1, r0
	cmp	r3, #0
	lsl	r1, r1, #1
	beq	.L249
	ldrh	r3, [r6, r1]
	cmp	r3, #0
	beq	.L249
	str	r9, [fp, #52]
.L250:
	ldr	r0, .L273+16
	umull	r3, r0, r7, r0
	bic	r3, r0, #1
	add	r3, r3, r0, lsr #1
	subs	r3, r7, r3
	mov	r1, #0
	moveq	r3, #6
	str	r9, [fp, #44]
	str	r7, [fp, #56]
	str	r1, [fp, #32]
	str	r1, [fp, #40]
	streq	r3, [fp, #36]
	beq	.L253
	cmp	r3, #1
	moveq	r3, #7
	movne	r3, #8
	str	r3, [fp, #36]
.L253:
	add	r7, r7, #1
	cmp	r10, r7
	add	fp, fp, #60
	beq	.L246
.L255:
	ldr	r3, [fp, #52]
	cmp	r3, #0
	str	r8, [fp, #20]
	str	r8, [fp, #24]
	bne	.L250
.L251:
	mov	lr, pc
	bx	r5
	smull	r3, r1, r4, r0
	asr	r3, r0, #31
	rsb	r3, r3, r1, asr #3
	rsb	r1, r3, r3, lsl #3
	rsb	r3, r3, r1, lsl #3
	sub	r0, r0, r3, lsl #2
	add	r0, r0, #16
	str	r0, [fp]
	mov	lr, pc
	bx	r5
	smull	r3, r1, r4, r0
	asr	r3, r0, #31
	rsb	r3, r3, r1, asr #3
	rsb	r1, r3, r3, lsl #3
	rsb	r3, r3, r1, lsl #3
	sub	r3, r0, r3, lsl #2
	ldr	r0, [fp]
	add	r3, r3, #16
	add	r1, r3, r0, lsl #8
	lsl	r1, r1, #1
	ldrh	r1, [r6, r1]
	cmp	r1, #0
	str	r3, [fp, #4]
	lsl	ip, r0, #8
	bne	.L272
.L249:
	ldr	r3, [fp, #52]
	cmp	r3, #0
	beq	.L251
	b	.L250
.L246:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L274:
	.align	2
.L273:
	.word	enemies
	.word	rand
	.word	collisionmapBitmap
	.word	156180629
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
	ldr	lr, .L279
	mov	r8, #96
	str	r4, [lr]
	ldr	lr, .L279+4
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
	ldr	lr, .L279+8
	str	r7, [lr]
	ldr	lr, .L279+12
	str	r8, [lr]
	ldr	lr, .L279+16
	str	r4, [lr]
	ldr	lr, .L279+20
.L276:
	str	r3, [lr, #56]
	add	r3, r3, #1
	cmp	r3, #10
	str	r1, [lr, #16]
	str	r1, [lr, #20]
	str	r2, [lr, #32]
	str	r0, [lr, #36]
	str	r2, [lr, #44]
	str	ip, [lr, #48]
	str	r2, [lr, #24]
	add	lr, lr, #60
	bne	.L276
	mov	r0, #8
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	initEnemy
.L280:
	.align	2
.L279:
	.word	score
	.word	penguin
	.word	lifeRemaining
	.word	vOff
	.word	hOff
	.word	bubbles
	.size	initGame, .-initGame
	.align	2
	.global	activateEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	activateEnemy, %function
activateEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #1
	ldr	r3, .L286
	add	r1, r3, #480
.L283:
	ldr	r2, [r3, #48]
	cmp	r2, #200
	streq	r0, [r3, #28]
	add	r3, r3, #60
	cmp	r3, r1
	bne	.L283
	bx	lr
.L287:
	.align	2
.L286:
	.word	enemies
	.size	activateEnemy, .-activateEnemy
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
	ldr	r2, [r0, #28]
	ldr	r3, [r0, #56]
	cmp	r2, #0
	add	r3, r3, #20
	beq	.L289
	ldr	ip, [r0, #36]
	str	lr, [sp, #-4]!
	ldr	lr, .L299
	ldr	r2, [r0, #12]
	ldrb	r0, [r0, #8]	@ zero_extendqisi2
	add	r1, lr, r3, lsl #3
	cmp	ip, #6
	lsl	r3, r3, #3
	strh	r0, [lr, r3]	@ movhi
	moveq	r3, #10
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	orr	r2, r2, #16384
	strh	r2, [r1, #2]	@ movhi
	strheq	r3, [r1, #4]	@ movhi
	beq	.L288
	cmp	ip, #7
	moveq	r3, #74
	strheq	r3, [r1, #4]	@ movhi
	bne	.L298
.L288:
	ldr	lr, [sp], #4
	bx	lr
.L289:
	mov	r1, #512
	ldr	r2, .L299
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L298:
	cmp	ip, #8
	moveq	r3, #138
	ldr	lr, [sp], #4
	strheq	r3, [r1, #4]	@ movhi
	bx	lr
.L300:
	.align	2
.L299:
	.word	shadowOAM
	.size	drawEnemy, .-drawEnemy
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
	ldr	r3, .L313
	ldr	r3, [r3, #32]
	cmp	r3, #0
	push	{r4, r5, r6, r7, r8, lr}
	beq	.L302
	ldr	r2, .L313+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L303:
	ldr	r3, .L313+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L313+12
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L313+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L313+16
	ldrh	r1, [r2]
	ldr	r2, .L313+20
	ldrh	r2, [r2]
	ldr	r4, .L313+24
	strh	r1, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	add	r5, r4, #480
.L304:
	mov	r0, r4
	add	r4, r4, #60
	bl	drawEnemy
	cmp	r4, r5
	bne	.L304
	ldr	r4, .L313+28
	mov	r7, #512
	ldr	r6, .L313+4
	add	r5, r4, #600
	b	.L307
.L312:
	mov	r0, r4
	add	r4, r4, #60
	bl	drawBubble.part.0
	cmp	r5, r4
	beq	.L311
.L307:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L312
	ldr	r3, [r4, #56]
	add	r4, r4, #60
	add	r3, r6, r3, lsl #3
	cmp	r5, r4
	strh	r7, [r3, #8]	@ movhi
	bne	.L307
.L311:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L302:
	bl	drawPlayer.part.0
	b	.L303
.L314:
	.align	2
.L313:
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
	mov	r6, r0
	sub	sp, sp, #20
	beq	.L316
	ldr	r2, .L330
	ldr	r3, .L330+4
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r6]
	ldr	r3, [r6, #4]
	sub	r2, r2, r0
	sub	r3, r3, r1
	str	r2, [r6, #8]
	str	r3, [r6, #12]
.L316:
	ldr	r4, .L330+8
	ldr	r7, .L330+12
	ldr	r9, .L330+16
	ldr	r8, .L330+20
	add	r5, r4, #600
	b	.L320
.L318:
	add	r4, r4, #60
	cmp	r4, r5
	beq	.L329
.L320:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L318
	ldr	r3, [r4, #52]
	cmp	r3, r7
	bne	.L318
	ldm	r6, {r2, r3}
	ldr	r0, [r6, #24]
	ldr	r1, [r6, #20]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L318
	mov	r2, #0
	ldr	r3, [r8]
	str	r2, [r6, #28]
	add	r4, r4, #60
	str	r2, [r4, #-36]
	add	r3, r3, #1
	cmp	r4, r5
	str	r3, [r8]
	bne	.L320
.L329:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L331:
	.align	2
.L330:
	.word	vOff
	.word	hOff
	.word	bubbles
	.word	318
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
	ldr	r4, .L342
	add	r5, r4, #480
.L333:
	mov	r0, r4
	add	r4, r4, #60
	bl	updateEnemy
	cmp	r4, r5
	bne	.L333
	ldr	r1, .L342+4
	ldr	r2, .L342+8
	ldr	r3, .L342+12
	ldr	lr, [r1]
	ldr	ip, [r2]
	add	r0, r3, #600
.L335:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	ldmne	r3, {r1, r2}
	subne	r1, r1, lr
	subne	r2, r2, ip
	strne	r1, [r3, #8]
	strne	r2, [r3, #12]
	add	r3, r3, #60
	cmp	r3, r0
	bne	.L335
	pop	{r4, r5, r6, lr}
	b	updatePlayer
.L343:
	.align	2
.L342:
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
	.comm	bubbles,600,4
	.comm	enemies,480,4
	.comm	penguin,60,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
