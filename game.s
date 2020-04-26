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
	add	r1, r1, #80
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
	cmp	r2, #17
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L67
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r9, [r1]
	ldr	r7, [r1, #28]
	ldr	r5, [r1, #4]
	ldr	r8, [r1, #24]
	sub	r10, r9, r7
	add	fp, r5, r8
	mov	r2, #0
	ldr	r3, .L67+4
	ldr	ip, [r1, #40]
	ldr	r4, .L67+8
	add	r7, r7, r9
	sub	r8, r5, r8
	b	.L50
.L66:
	mov	lr, r5
	str	r7, [r3]
	str	r5, [r3, #4]
.L45:
	ldr	r1, [r3]
	add	r0, lr, r1, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [r4, r0]
	cmp	r0, #0
	lsl	r1, r1, #8
	beq	.L43
	add	r0, lr, #10
	add	r6, r1, r0
	lsl	r6, r6, #1
	ldrh	r6, [r4, r6]
	cmp	r6, #0
	beq	.L43
	add	r1, r1, #2560
	add	lr, r1, lr
	lsl	lr, lr, #1
	ldrh	lr, [r4, lr]
	cmp	lr, #0
	beq	.L43
	add	r1, r0, r1
	lsl	r1, r1, #1
	ldrh	r1, [r4, r1]
	cmp	r1, #0
	bne	.L65
.L43:
	add	r2, r2, #1
	cmp	r2, #17
	add	r3, r3, #60
	beq	.L42
.L50:
	ldr	r1, [r3, #24]
	cmp	r1, #0
	bne	.L43
	cmp	ip, #0
	beq	.L66
	cmp	ip, #1
	moveq	lr, r5
	streq	r10, [r3]
	streq	r5, [r3, #4]
	beq	.L45
	cmp	ip, #3
	moveq	lr, r8
	streq	r9, [r3]
	streq	r8, [r3, #4]
	beq	.L45
	cmp	ip, #2
	moveq	lr, fp
	stmeq	r3, {r9, fp}
	ldrne	lr, [r3, #4]
	b	.L45
.L65:
	mov	r3, #1
	ldr	r1, .L67+4
	rsb	r2, r2, r2, lsl #4
	add	r2, r1, r2, lsl #2
	str	r3, [r2, #24]
.L42:
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L68:
	.align	2
.L67:
	.word	penguin
	.word	bubbles
	.word	collisionmap3Bitmap
	.size	putBubble, .-putBubble
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L244
	ldrh	r4, [r3, #48]
	ands	r4, r4, #64
	sub	sp, sp, #28
	bne	.L70
	ldr	r6, .L244+4
	ldr	r3, [r6]
	cmp	r3, #0
	ble	.L222
	ldr	r1, [r6, #16]
	ldr	r2, [r6, #4]
	sub	r3, r3, r1
	add	r1, r2, r3, lsl #8
	ldr	r0, .L244+8
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, #0
	lsl	r3, r3, #8
	beq	.L222
	add	r1, r6, #20
	ldm	r1, {r1, ip}
	add	r2, r2, ip
	sub	r2, r2, r1
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldrh	r3, [r0, r3]
	cmp	r3, #0
	beq	.L222
	ldr	r7, .L244+12
	mov	r8, #16
	ldr	r9, .L244+16
	add	r5, r7, #1020
	b	.L75
.L74:
	add	r7, r7, #60
	cmp	r5, r7
	beq	.L232
.L75:
	ldr	r3, [r7, #24]
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
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	movne	r4, #1
	b	.L74
.L70:
	ldrh	r4, [r3, #48]
	ands	r4, r4, #128
	bne	.L81
	ldr	r6, .L244+4
	ldr	r3, [r6]
	ldr	r2, [r6, #28]
	add	r3, r3, r2
	cmp	r3, #255
	bgt	.L224
	ldr	r2, [r6, #4]
	ldr	r0, .L244+8
	add	r1, r2, r3, lsl #8
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, #0
	lsl	r3, r3, #8
	beq	.L224
	add	r1, r6, #20
	ldm	r1, {r1, ip}
	add	r2, r2, ip
	sub	r2, r2, r1
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldrh	r3, [r0, r3]
	cmp	r3, #0
	beq	.L224
	ldr	r7, .L244+12
	mov	r8, #16
	ldr	r9, .L244+16
	add	r5, r7, #1020
	b	.L86
.L85:
	add	r7, r7, #60
	cmp	r7, r5
	beq	.L233
.L86:
	ldr	r3, [r7, #24]
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
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	movne	r4, #1
	b	.L85
.L81:
	ldrh	r2, [r3, #48]
	ands	r2, r2, #32
	bne	.L89
	ldr	r6, .L244+4
	ldr	r3, [r6, #4]
	cmp	r3, #0
	ble	.L226
	ldr	r0, [r6, #20]
	ldr	r1, [r6]
	sub	r3, r3, r0
	ldr	ip, .L244+8
	add	r0, r3, r1, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [ip, r0]
	cmp	r0, #0
	beq	.L226
	ldr	lr, [r6, #28]
	ldr	r0, [r6, #16]
	add	r1, r1, lr
	sub	r1, r1, r0
	add	r3, r3, r1, lsl #8
	lsl	r3, r3, #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	beq	.L226
	ldr	r7, .L244+12
	mov	r4, r2
	mov	r8, #16
	ldr	r9, .L244+16
	add	r5, r7, #1020
	b	.L94
.L93:
	add	r7, r7, #60
	cmp	r7, r5
	beq	.L234
.L94:
	ldr	r3, [r7, #24]
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
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	movne	r4, #1
	b	.L93
.L222:
	ldr	fp, .L244+20
	ldr	r5, .L244+24
	add	r9, fp, #180
.L72:
	ldr	r8, .L244+28
	ldr	r3, [r8]
	cmp	r3, #0
	ble	.L230
	ldr	r2, [r6, #8]
	cmp	r2, #79
	ble	.L206
.L230:
	ldr	r3, .L244+32
	str	r3, [sp, #20]
.L79:
	ldr	r3, .L244+36
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L104
	ldr	r3, .L244+40
	ldrh	r2, [r3]
	ands	r2, r2, #1
	beq	.L235
.L104:
	ldm	r6, {r1, r2}
	ldr	r4, .L244+12
	ldr	r7, .L244+44
	ldr	r10, .L244+48
	b	.L109
.L238:
	add	r3, r3, #1
	cmp	r3, #320
	str	r3, [r4, #52]
	beq	.L116
	cmp	r3, r7
	beq	.L236
.L107:
	add	r4, r4, #60
	cmp	r4, r5
	beq	.L237
.L109:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	ldr	r3, [r4, #52]
	bne	.L238
	cmp	r3, #320
	bne	.L107
.L116:
	mov	r3, #0
	add	r4, r4, #60
	str	r3, [r4, #-36]
	str	r3, [r4, #-8]
	cmp	r4, r5
	bne	.L109
.L237:
	mov	ip, #0
	ldr	r3, .L244+20
.L112:
	ldr	r0, [r3, #52]
	cmp	r0, #0
	ldr	r0, [r3, #48]
	addne	r0, r0, #1
	strne	r0, [r3, #48]
	cmp	r0, #1000
	streq	ip, [r3, #28]
	streq	ip, [r3, #48]
	add	r3, r3, #60
	cmp	r9, r3
	bne	.L112
	ldr	r3, [sp, #20]
	ldr	r0, [r8]
	ldr	r3, [r3]
	sub	r1, r1, r0
	sub	r2, r2, r3
	str	r1, [r6, #8]
	str	r2, [r6, #12]
	bl	animatePlayer
	ldr	r3, .L244+52
	ldr	r2, .L244+56
	ldr	r1, .L244+60
	ldr	r3, [r3]
	mla	r3, r1, r3, r2
	ldr	r2, .L244+64
	cmp	r2, r3, ror #3
	bcc	.L69
	ldr	r3, [fp, #28]
	cmp	r3, #0
	beq	.L114
	ldr	r3, [fp, #88]
	cmp	r3, #0
	beq	.L117
	ldr	r3, [fp, #148]
	cmp	r3, #0
	moveq	r3, #2
	beq	.L114
.L69:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L224:
	ldr	fp, .L244+20
	ldr	r5, .L244+24
	add	r9, fp, #180
.L83:
	ldr	r8, .L244+28
	ldr	r3, [r8]
	cmp	r3, #95
	bgt	.L230
	ldr	r2, [r6, #8]
	cmp	r2, #80
	ble	.L230
	add	r3, r3, #1
	str	r3, [r8]
	ldr	r3, .L244+32
	str	r3, [sp, #20]
	b	.L79
.L236:
	mov	r3, #16
	str	r2, [sp]
	str	r3, [sp, #12]
	str	r3, [sp, #8]
	str	r1, [sp, #4]
	mov	r2, r3
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	ip, .L244+16
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	ldrne	r3, [r10]
	subne	r3, r3, #1
	strne	r3, [r10]
	ldm	r6, {r1, r2}
	b	.L107
.L206:
	sub	r3, r3, #1
	str	r3, [r8]
	ldr	r3, .L244+32
	str	r3, [sp, #20]
	b	.L79
.L89:
	ldrh	r3, [r3, #48]
	ands	r4, r3, #16
	beq	.L215
	ldr	fp, .L244+20
	ldr	r6, .L244+4
	ldr	r5, .L244+24
	ldr	r8, .L244+28
	add	r9, fp, #180
	b	.L230
.L226:
	ldr	fp, .L244+20
	ldr	r5, .L244+24
	add	r9, fp, #180
.L91:
	ldr	r3, .L244+32
	str	r3, [sp, #20]
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L229
	ldr	r2, [r6, #12]
	cmp	r2, #119
	bgt	.L229
	ldr	r2, [sp, #20]
	sub	r3, r3, #1
	str	r3, [r2]
	ldr	r8, .L244+28
	b	.L79
.L215:
	ldr	r6, .L244+4
	ldr	r3, [r6, #4]
	ldr	r2, [r6, #24]
	add	r3, r3, r2
	cmp	r3, #255
	ble	.L97
.L228:
	ldr	fp, .L244+20
	ldr	r5, .L244+24
	add	r9, fp, #180
.L98:
	ldr	r3, .L244+32
	str	r3, [sp, #20]
	ldr	r3, [r3]
	cmp	r3, #15
	bgt	.L229
	ldr	r2, [r6, #12]
	cmp	r2, #120
	ldrgt	r2, [sp, #20]
	addgt	r3, r3, #1
	strgt	r3, [r2]
.L229:
	ldr	r8, .L244+28
	b	.L79
.L235:
	ldr	r1, .L244+68
	ldr	r0, .L244+72
	ldr	r3, .L244+76
	mov	lr, pc
	bx	r3
	bl	putBubble
	b	.L104
.L232:
	ldr	fp, .L244+20
	mov	r8, #0
	mov	r7, fp
	mov	r10, #16
	add	r9, fp, #180
.L77:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L239
.L76:
	add	r7, r7, #60
	cmp	r7, r9
	bne	.L77
	orrs	r3, r4, r8
	ldreq	r3, [r6]
	ldreq	r2, [r6, #16]
	subeq	r3, r3, r2
	streq	r3, [r6]
	b	.L72
.L239:
	mov	r3, #16
	ldr	r0, [r6, #16]
	ldr	r2, [r6]
	ldr	r1, [r6, #4]
	sub	r2, r2, r0
	stmib	sp, {r2, r10}
	str	r10, [sp, #12]
	str	r1, [sp]
	mov	r2, r3
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	ip, .L244+16
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	movne	r8, #1
	b	.L76
.L117:
	mov	r3, #1
.L114:
	mov	r2, #1
	rsb	r3, r3, r3, lsl #4
	add	r3, fp, r3, lsl #2
	str	r2, [r3, #28]
	b	.L69
.L97:
	ldr	r2, [r6]
	ldr	r0, .L244+8
	add	r1, r3, r2, lsl #8
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, #0
	beq	.L228
	ldr	ip, [r6, #28]
	ldr	r1, [r6, #16]
	add	r2, r2, ip
	sub	r2, r2, r1
	add	r3, r3, r2, lsl #8
	lsl	r3, r3, #1
	ldrh	r3, [r0, r3]
	cmp	r3, #0
	beq	.L228
	ldr	r7, .L244+12
	mov	r8, #16
	ldr	r9, .L244+16
	add	r5, r7, #1020
	b	.L101
.L100:
	add	r7, r7, #60
	cmp	r7, r5
	beq	.L240
.L101:
	ldr	r3, [r7, #24]
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
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	movne	r4, #1
	b	.L100
.L233:
	ldr	fp, .L244+20
	mov	r8, #0
	mov	r7, fp
	mov	r10, #16
	add	r9, fp, #180
.L88:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L241
.L87:
	add	r7, r7, #60
	cmp	r9, r7
	bne	.L88
	orrs	r3, r4, r8
	ldreq	r3, [r6]
	ldreq	r2, [r6, #16]
	addeq	r3, r3, r2
	streq	r3, [r6]
	b	.L83
.L241:
	mov	r3, #16
	ldr	r0, [r6, #16]
	ldr	r2, [r6]
	ldr	r1, [r6, #4]
	add	r2, r2, r0
	stmib	sp, {r2, r10}
	str	r10, [sp, #12]
	str	r1, [sp]
	mov	r2, r3
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	ip, .L244+16
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	movne	r8, #1
	b	.L87
.L234:
	ldr	fp, .L244+20
	mov	r8, #0
	mov	r7, fp
	mov	r10, #16
	add	r9, fp, #180
.L96:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L242
.L95:
	add	r7, r7, #60
	cmp	r7, r9
	bne	.L96
	orrs	r3, r4, r8
	ldreq	r3, [r6, #4]
	ldreq	r2, [r6, #20]
	subeq	r3, r3, r2
	streq	r3, [r6, #4]
	b	.L91
.L242:
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
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	ip, .L244+16
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	movne	r8, #1
	b	.L95
.L240:
	ldr	fp, .L244+20
	mov	r8, #0
	mov	r7, fp
	mov	r10, #16
	add	r9, fp, #180
.L103:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L243
.L102:
	add	r7, r7, #60
	cmp	r7, r9
	bne	.L103
	orrs	r3, r4, r8
	ldreq	r3, [r6, #4]
	ldreq	r2, [r6, #20]
	addeq	r3, r3, r2
	streq	r3, [r6, #4]
	b	.L98
.L243:
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
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	ip, .L244+16
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	movne	r8, #1
	b	.L102
.L245:
	.align	2
.L244:
	.word	67109120
	.word	penguin
	.word	collisionmap3Bitmap
	.word	bubbles
	.word	collision
	.word	enemies
	.word	bubbles+1020
	.word	vOff
	.word	hOff
	.word	oldButtons
	.word	buttons
	.word	318
	.word	lifeRemaining
	.word	timer
	.word	85899344
	.word	-1030792151
	.word	21474836
	.word	1734
	.word	bubble
	.word	playSoundB
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
	ldr	r2, .L251
	ldr	r3, .L251+4
	ldr	ip, [r2]
	ldr	r1, [r3]
	ldr	r2, [r0]
	ldr	r3, [r0, #4]
	sub	r2, r2, ip
	sub	r3, r3, r1
	str	r2, [r0, #8]
	str	r3, [r0, #12]
	bx	lr
.L252:
	.align	2
.L251:
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
.L254:
	mov	r2, #512
	ldr	r1, [r0, #56]
	ldr	r3, .L255
	add	r3, r3, r1, lsl #3
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L256:
	.align	2
.L255:
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	subs	r8, r0, #0
	ldr	r9, .L286
	ble	.L258
	mov	r7, #0
	mov	r10, r9
	ldr	r5, .L286+4
	ldr	r6, .L286+8
	ldr	r4, .L286+12
.L266:
	mov	r3, #0
	mov	r2, #14
	mov	r1, #1
	ldr	r0, [r10, #52]
	cmp	r0, r3
	str	r7, [r10, #56]
	str	r2, [r10, #20]
	str	r2, [r10, #24]
	str	r3, [r10, #32]
	str	r3, [r10, #40]
	str	r1, [r10, #44]
	bne	.L261
.L262:
	mov	lr, pc
	bx	r5
	smull	r3, r2, r4, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #3
	rsb	r2, r3, r3, lsl #3
	rsb	r3, r3, r2, lsl #3
	sub	r0, r0, r3, lsl #2
	add	r0, r0, #16
	str	r0, [r10]
	mov	lr, pc
	bx	r5
	smull	r3, r2, r4, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #3
	rsb	r2, r3, r3, lsl #3
	rsb	r3, r3, r2, lsl #3
	sub	r0, r0, r3, lsl #2
	ldr	r2, [r10]
	add	r0, r0, #16
	add	r3, r0, r2, lsl #8
	lsl	r3, r3, #1
	ldrh	r3, [r6, r3]
	cmp	r3, #0
	str	r0, [r10, #4]
	lsl	r3, r2, #8
	beq	.L260
	ldr	r1, [r10, #20]
	add	r1, r0, r1
	add	r3, r3, r1
	lsl	r3, r3, #1
	ldrh	r3, [r6, r3]
	cmp	r3, #0
	beq	.L260
	ldr	r3, [r10, #24]
	add	r3, r2, r3
	add	ip, r0, r3, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [r6, ip]
	lsl	r3, r3, #8
	add	r1, r1, r3
	cmp	ip, #0
	lsl	r1, r1, #1
	beq	.L260
	ldrh	r3, [r6, r1]
	cmp	r3, #0
	orr	r0, r2, r0
	beq	.L260
	tst	r0, #15
	beq	.L285
.L260:
	ldr	r3, [r10, #52]
	cmp	r3, #0
	beq	.L262
.L261:
	cmp	r7, #0
	moveq	r3, #6
	streq	r3, [r9, #36]
	beq	.L264
	cmp	r7, #1
	moveq	r3, #7
	movne	r3, #8
	streq	r3, [r9, #96]
	strne	r3, [r9, #156]
.L264:
	add	r7, r7, #1
	cmp	r8, r7
	add	r10, r10, #60
	bne	.L266
.L258:
	mov	r3, #1
	str	r3, [r9, #28]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L285:
	mov	r3, #1
	str	r3, [r10, #52]
	b	.L261
.L287:
	.align	2
.L286:
	.word	enemies
	.word	rand
	.word	collisionmap3Bitmap
	.word	156180629
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
	mov	fp, #176
	mov	r10, #118
	mov	r9, #20
	ldr	lr, .L292
	mov	r8, #96
	str	r4, [lr]
	ldr	lr, .L292+4
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
	ldr	lr, .L292+8
	str	r7, [lr]
	ldr	lr, .L292+12
	str	r8, [lr]
	ldr	lr, .L292+16
	str	r4, [lr]
	ldr	lr, .L292+20
.L289:
	str	r3, [lr, #56]
	add	r3, r3, #1
	cmp	r3, #17
	str	r1, [lr, #16]
	str	r1, [lr, #20]
	str	r2, [lr, #32]
	str	r0, [lr, #36]
	str	r2, [lr, #44]
	str	ip, [lr, #48]
	str	r2, [lr, #24]
	add	lr, lr, #60
	bne	.L289
	mov	r0, #3
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	initEnemy
.L293:
	.align	2
.L292:
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
	ldr	r3, .L302
	ldr	r2, [r3, #28]
	cmp	r2, #0
	beq	.L295
	ldr	r2, [r3, #88]
	cmp	r2, #0
	beq	.L297
	ldr	r2, [r3, #148]
	cmp	r2, #0
	moveq	r2, #2
	bxne	lr
.L295:
	mov	r1, #1
	rsb	r2, r2, r2, lsl #4
	add	r3, r3, r2, lsl #2
	str	r1, [r3, #28]
	bx	lr
.L297:
	mov	r2, #1
	b	.L295
.L303:
	.align	2
.L302:
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
	beq	.L305
	ldr	ip, [r0, #36]
	str	lr, [sp, #-4]!
	ldr	lr, .L315
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
	beq	.L304
	cmp	ip, #7
	moveq	r3, #74
	strheq	r3, [r1, #4]	@ movhi
	bne	.L314
.L304:
	ldr	lr, [sp], #4
	bx	lr
.L305:
	mov	r1, #512
	ldr	r2, .L315
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L314:
	cmp	ip, #8
	moveq	r3, #138
	ldr	lr, [sp], #4
	strheq	r3, [r1, #4]	@ movhi
	bx	lr
.L316:
	.align	2
.L315:
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
	ldr	r3, .L327
	ldr	r3, [r3, #32]
	cmp	r3, #0
	push	{r4, r5, r6, r7, r8, lr}
	beq	.L318
	ldr	r2, .L327+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L319:
	ldr	r3, .L327+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L327+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L327+4
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L327+16
	ldrh	r1, [r2]
	ldr	r2, .L327+20
	ldrh	r2, [r2]
	strh	r1, [r3, #16]	@ movhi
	ldr	r0, .L327+24
	strh	r2, [r3, #18]	@ movhi
	bl	drawEnemy
	ldr	r4, .L327+28
	ldr	r0, .L327+32
	bl	drawEnemy
	ldr	r0, .L327+36
	bl	drawEnemy
	mov	r7, #512
	ldr	r6, .L327+4
	add	r5, r4, #1020
	b	.L322
.L326:
	mov	r0, r4
	add	r4, r4, #60
	bl	drawBubble.part.0
	cmp	r5, r4
	beq	.L325
.L322:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L326
	ldr	r3, [r4, #56]
	add	r4, r4, #60
	add	r3, r6, r3, lsl #3
	cmp	r5, r4
	strh	r7, [r3, #8]	@ movhi
	bne	.L322
.L325:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L318:
	bl	drawPlayer.part.0
	b	.L319
.L328:
	.align	2
.L327:
	.word	penguin
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.word	hOff
	.word	vOff
	.word	enemies
	.word	bubbles
	.word	enemies+60
	.word	enemies+120
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
	beq	.L330
	ldr	r2, .L344
	ldr	r3, .L344+4
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r6]
	ldr	r3, [r6, #4]
	sub	r2, r2, r0
	sub	r3, r3, r1
	str	r2, [r6, #8]
	str	r3, [r6, #12]
.L330:
	ldr	r4, .L344+8
	ldr	r7, .L344+12
	ldr	r8, .L344+16
	ldr	r9, .L344+20
	add	r5, r4, #1020
	b	.L334
.L332:
	add	r4, r4, #60
	cmp	r4, r5
	beq	.L343
.L334:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L332
	ldr	r3, [r4, #52]
	cmp	r3, r7
	bne	.L332
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
	bx	r8
	cmp	r0, #0
	beq	.L332
	mov	r2, #0
	ldr	r3, [r9]
	str	r2, [r6, #28]
	add	r4, r4, #60
	str	r2, [r4, #-36]
	add	r3, r3, #1
	cmp	r4, r5
	str	r3, [r9]
	bne	.L334
.L343:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L345:
	.align	2
.L344:
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
	push	{r4, lr}
	ldr	r0, .L354
	bl	updateEnemy
	ldr	r0, .L354+4
	bl	updateEnemy
	ldr	r0, .L354+8
	bl	updateEnemy
	ldr	r1, .L354+12
	ldr	r2, .L354+16
	ldr	r3, .L354+20
	ldr	lr, [r1]
	ldr	ip, [r2]
	add	r0, r3, #1020
.L348:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	ldmne	r3, {r1, r2}
	subne	r1, r1, lr
	subne	r2, r2, ip
	strne	r1, [r3, #8]
	strne	r2, [r3, #12]
	add	r3, r3, #60
	cmp	r0, r3
	bne	.L348
	pop	{r4, lr}
	b	updatePlayer
.L355:
	.align	2
.L354:
	.word	enemies
	.word	enemies+60
	.word	enemies+120
	.word	vOff
	.word	hOff
	.word	bubbles
	.size	updateGame, .-updateGame
	.comm	soundb,32,4
	.comm	timer,4,4
	.comm	screenBlock,4,4
	.comm	playerVOff,4,4
	.comm	playerHOff,4,4
	.comm	hOff,4,4
	.comm	vOff,4,4
	.comm	lifeRemaining,4,4
	.comm	score,4,4
	.comm	bubbles,1020,4
	.comm	enemies,180,4
	.comm	penguin,60,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
