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
	.word	313
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
	cmp	r2, #5
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
	ldr	r0, .L62
	mov	r2, r0
	ldr	r1, [r2, #24]
	cmp	r1, #0
	mov	r3, #0
	beq	.L59
.L43:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #60
	bxeq	lr
	ldr	r1, [r2, #24]
	cmp	r1, #0
	bne	.L43
.L59:
	ldr	r2, .L62+4
	ldr	r1, [r2, #40]
	cmp	r1, #0
	push	{r4, lr}
	bne	.L44
	ldr	r1, [r2]
	ldr	r4, [r2, #28]
	ldr	lr, [r2, #4]
	rsb	ip, r3, r3, lsl #4
	add	r2, r1, r4
	add	r1, r0, ip, lsl #2
	str	lr, [r1, #4]
	str	r2, [r0, ip, lsl #2]
	lsl	r2, r3, #4
.L45:
	mov	r1, #1
	sub	r3, r2, r3
	add	r0, r0, r3, lsl #2
	str	r1, [r0, #24]
	pop	{r4, lr}
	bx	lr
.L44:
	cmp	r1, #1
	beq	.L60
	cmp	r1, #3
	beq	.L61
	cmp	r1, #2
	ldreq	ip, [r2, #24]
	ldreq	r1, [r2, #4]
	ldreq	lr, [r2]
	rsbeq	r2, r3, r3, lsl #4
	addeq	r1, r1, ip
	addeq	ip, r0, r2, lsl #2
	streq	lr, [r0, r2, lsl #2]
	streq	r1, [ip, #4]
	lsl	r2, r3, #4
	b	.L45
.L61:
	ldr	ip, [r2, #24]
	ldr	r1, [r2, #4]
	ldr	lr, [r2]
	rsb	r2, r3, r3, lsl #4
	sub	r1, r1, ip
	add	ip, r0, r2, lsl #2
	str	lr, [r0, r2, lsl #2]
	str	r1, [ip, #4]
	lsl	r2, r3, #4
	b	.L45
.L60:
	ldr	r1, [r2]
	ldr	r4, [r2, #28]
	ldr	lr, [r2, #4]
	rsb	ip, r3, r3, lsl #4
	sub	r2, r1, r4
	add	r1, r0, ip, lsl #2
	str	r2, [r0, ip, lsl #2]
	str	lr, [r1, #4]
	lsl	r2, r3, #4
	b	.L45
.L63:
	.align	2
.L62:
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L233
	ldrh	r4, [r3, #48]
	ands	r4, r4, #64
	mov	r10, r0
	sub	sp, sp, #28
	bne	.L65
	ldr	r6, .L233+4
	ldr	r3, [r6]
	cmp	r3, #0
	ble	.L213
	ldr	r1, [r6, #16]
	ldr	r2, [r6, #4]
	sub	r3, r3, r1
	add	r1, r2, r3, lsl #8
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, #0
	lsl	r3, r3, #8
	beq	.L213
	ldr	r0, [r6, #24]
	ldr	r1, [r6, #20]
	add	r2, r2, r0
	sub	r2, r2, r1
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldrh	r3, [r10, r3]
	cmp	r3, #0
	beq	.L213
	mov	r8, #16
	ldr	r5, .L233+8
	ldr	r9, .L233+12
	add	r7, r5, #300
.L70:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	bne	.L223
.L69:
	add	r5, r5, #60
	cmp	r5, r7
	bne	.L70
	ldr	r8, .L233+16
	mov	r9, #0
	mov	fp, #16
	add	r5, r8, #720
	b	.L72
.L71:
	add	r8, r8, #60
	cmp	r8, r5
	beq	.L224
.L72:
	ldr	r3, [r8, #28]
	cmp	r3, #0
	beq	.L71
	mov	r3, #16
	ldr	r0, [r6, #16]
	ldr	r2, [r6]
	ldr	r1, [r6, #4]
	sub	r2, r2, r0
	stmib	sp, {r2, fp}
	str	fp, [sp, #12]
	str	r1, [sp]
	mov	r2, r3
	ldr	r1, [r8]
	ldr	r0, [r8, #4]
	ldr	ip, .L233+12
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	movne	r9, #1
	b	.L71
.L65:
	ldrh	r4, [r3, #48]
	ands	r4, r4, #128
	bne	.L76
	ldr	r6, .L233+4
	ldr	r3, [r6]
	ldr	r2, [r6, #28]
	add	r3, r3, r2
	cmp	r3, #255
	bgt	.L215
	ldr	r2, [r6, #4]
	add	r1, r2, r3, lsl #8
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, #0
	lsl	r3, r3, #8
	beq	.L215
	ldr	r0, [r6, #24]
	ldr	r1, [r6, #20]
	add	r2, r2, r0
	sub	r2, r2, r1
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldrh	r3, [r10, r3]
	cmp	r3, #0
	beq	.L215
	mov	r8, #16
	ldr	r5, .L233+8
	ldr	r9, .L233+12
	add	r7, r5, #300
.L81:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	bne	.L225
.L80:
	add	r5, r5, #60
	cmp	r5, r7
	bne	.L81
	ldr	r8, .L233+16
	mov	r9, #0
	mov	fp, #16
	add	r5, r8, #720
	b	.L83
.L82:
	add	r8, r8, #60
	cmp	r8, r5
	beq	.L226
.L83:
	ldr	r3, [r8, #28]
	cmp	r3, #0
	beq	.L82
	mov	r3, #16
	ldr	r0, [r6, #16]
	ldr	r2, [r6]
	ldr	r1, [r6, #4]
	add	r2, r2, r0
	stmib	sp, {r2, fp}
	str	fp, [sp, #12]
	str	r1, [sp]
	mov	r2, r3
	ldr	r1, [r8]
	ldr	r0, [r8, #4]
	ldr	ip, .L233+12
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	movne	r9, #1
	b	.L82
.L76:
	ldrh	r2, [r3, #48]
	ands	r2, r2, #32
	bne	.L84
	ldr	r6, .L233+4
	ldr	r3, [r6, #4]
	cmp	r3, #0
	ble	.L217
	ldr	r0, [r6, #20]
	ldr	r1, [r6]
	sub	r3, r3, r0
	add	r0, r3, r1, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [r10, r0]
	cmp	r0, #0
	beq	.L217
	ldr	ip, [r6, #28]
	ldr	r0, [r6, #16]
	add	r1, r1, ip
	sub	r1, r1, r0
	add	r3, r3, r1, lsl #8
	lsl	r3, r3, #1
	ldrh	r3, [r10, r3]
	cmp	r3, #0
	beq	.L217
	mov	r5, #16
	mov	r9, r2
	ldr	r4, .L233+8
	ldr	r8, .L233+12
	add	r7, r4, #300
.L89:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L227
.L88:
	add	r4, r4, #60
	cmp	r4, r7
	bne	.L89
	ldr	r4, .L233+16
	str	r9, [sp, #20]
	mov	r8, #0
	mov	r9, #16
	ldr	fp, .L233+12
	add	r5, r4, #720
	b	.L91
.L90:
	add	r4, r4, #60
	cmp	r4, r5
	beq	.L228
.L91:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	beq	.L90
	mov	r3, #16
	ldr	r0, [r6, #20]
	ldr	r2, [r6, #4]
	ldr	r1, [r6]
	sub	r2, r2, r0
	str	r2, [sp]
	str	r9, [sp, #12]
	str	r9, [sp, #8]
	str	r1, [sp, #4]
	mov	r2, r3
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	movne	r8, #1
	b	.L90
.L213:
	ldr	r7, .L233+20
	ldr	r5, .L233+24
.L67:
	ldr	r8, .L233+28
	ldr	r3, [r8]
	cmp	r3, #0
	ble	.L221
	ldr	r2, [r6, #8]
	cmp	r2, #79
	ble	.L197
.L221:
	ldr	r9, .L233+32
.L74:
	ldr	r3, .L233+36
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L99
	ldr	r3, .L233+40
	ldrh	r2, [r3]
	ands	r2, r2, #1
	beq	.L229
.L99:
	mov	r10, #0
	ldm	r6, {r0, ip}
	ldr	r4, .L233+8
	ldr	fp, .L233+44
.L105:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L100
	ldr	r3, [r4, #52]
.L101:
	cmp	r3, #320
	streq	r10, [r4, #24]
	ldr	r3, [r4, #24]
	streq	r10, [r4, #52]
	cmp	r3, #0
	beq	.L103
	ldr	r3, [r4, #52]
	cmp	r3, #316
	bge	.L230
.L103:
	add	r4, r4, #60
	cmp	r4, r7
	bne	.L105
	ldr	r4, .L233+16
	mov	r1, #0
	mov	r3, r4
.L108:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	ldr	r2, [r3, #48]
	addne	r2, r2, #1
	strne	r2, [r3, #48]
	cmp	r2, #800
	streq	r1, [r3, #28]
	streq	r1, [r3, #48]
	add	r3, r3, #60
	cmp	r3, r5
	bne	.L108
	ldr	r2, [r8]
	ldr	r3, [r9]
	sub	r0, r0, r2
	sub	ip, ip, r3
	str	r0, [r6, #8]
	str	ip, [r6, #12]
	bl	animatePlayer
	mov	r1, #1
	ldr	r2, .L233+48
.L110:
	ldr	r3, [r4, #88]
	cmp	r3, #0
	bne	.L109
	ldr	r3, [r4, #108]
	cmp	r3, #200
	streq	r1, [r4, #88]
.L109:
	add	r4, r4, #60
	cmp	r4, r2
	bne	.L110
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L215:
	ldr	r7, .L233+20
	ldr	r5, .L233+24
.L78:
	ldr	r8, .L233+28
	ldr	r3, [r8]
	cmp	r3, #95
	bgt	.L221
	ldr	r2, [r6, #8]
	cmp	r2, #80
	ble	.L221
	add	r3, r3, #1
	str	r3, [r8]
	ldr	r9, .L233+32
	b	.L74
.L100:
	ldr	r3, [r8]
	ldr	r1, [r4]
	ldr	r2, [r4, #4]
	sub	r1, r1, r3
	ldr	r3, [r9]
	sub	r2, r2, r3
	ldr	r3, [r4, #52]
	add	r3, r3, #1
	str	r1, [r4, #8]
	str	r2, [r4, #12]
	str	r3, [r4, #52]
	b	.L101
.L230:
	mov	r3, #20
	mov	r2, #16
	ldr	r1, [r4]
	str	r0, [sp, #4]
	ldr	r0, [r4, #4]
	add	r1, r1, #4
	str	ip, [sp]
	str	r2, [sp, #12]
	str	r2, [sp, #8]
	ldr	ip, .L233+12
	mov	r2, r3
	add	r0, r0, #4
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	ldrne	r3, [fp]
	subne	r3, r3, #1
	strne	r3, [fp]
	ldm	r6, {r0, ip}
	b	.L103
.L197:
	sub	r3, r3, #1
	str	r3, [r8]
	ldr	r9, .L233+32
	b	.L74
.L84:
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	ldr	r6, .L233+4
	beq	.L206
	ldr	r7, .L233+20
	ldr	r5, .L233+24
	ldr	r8, .L233+28
	b	.L221
.L217:
	ldr	r7, .L233+20
	ldr	r5, .L233+24
.L86:
	ldr	r9, .L233+32
	ldr	r3, [r9]
	cmp	r3, #0
	ble	.L220
	ldr	r2, [r6, #12]
	cmp	r2, #119
	bgt	.L220
	sub	r3, r3, #1
	str	r3, [r9]
	ldr	r8, .L233+28
	b	.L74
.L206:
	ldr	r2, [r6, #4]
	ldr	r1, [r6, #24]
	add	r2, r2, r1
	cmp	r2, #255
	ble	.L92
.L219:
	ldr	r7, .L233+20
	ldr	r5, .L233+24
.L93:
	ldr	r9, .L233+32
	ldr	r3, [r9]
	cmp	r3, #15
	bgt	.L220
	ldr	r2, [r6, #12]
	cmp	r2, #120
	addgt	r3, r3, #1
	strgt	r3, [r9]
.L220:
	ldr	r8, .L233+28
	b	.L74
.L229:
	ldr	r1, .L233+52
	ldr	r0, .L233+56
	ldr	r3, .L233+60
	mov	lr, pc
	bx	r3
	mov	r0, r10
	bl	putBubble
	b	.L99
.L223:
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
	movne	r4, #1
	b	.L69
.L224:
	orrs	r3, r4, r9
	ldreq	r3, [r6]
	ldreq	r2, [r6, #16]
	subeq	r3, r3, r2
	streq	r3, [r6]
	b	.L67
.L92:
	ldr	r1, [r6]
	add	r0, r2, r1, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [r10, r0]
	cmp	r0, #0
	beq	.L219
	ldr	ip, [r6, #28]
	ldr	r0, [r6, #16]
	add	r1, r1, ip
	sub	r1, r1, r0
	add	r2, r2, r1, lsl #8
	lsl	r2, r2, #1
	ldrh	r2, [r10, r2]
	cmp	r2, #0
	beq	.L219
	mov	r4, r3
	mov	r8, #16
	ldr	r5, .L233+8
	ldr	r9, .L233+12
	add	r7, r5, #300
.L96:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	bne	.L231
.L95:
	add	r5, r5, #60
	cmp	r5, r7
	bne	.L96
	ldr	r8, .L233+16
	mov	r9, #0
	mov	fp, #16
	add	r5, r8, #720
	b	.L98
.L97:
	add	r8, r8, #60
	cmp	r8, r5
	beq	.L232
.L98:
	ldr	r3, [r8, #28]
	cmp	r3, #0
	beq	.L97
	mov	r3, #16
	ldr	r0, [r6, #20]
	ldr	r2, [r6, #4]
	ldr	r1, [r6]
	add	r2, r2, r0
	str	r2, [sp]
	str	fp, [sp, #12]
	str	fp, [sp, #8]
	str	r1, [sp, #4]
	mov	r2, r3
	ldr	r1, [r8]
	ldr	r0, [r8, #4]
	ldr	ip, .L233+12
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	movne	r9, #1
	b	.L97
.L225:
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
	movne	r4, #1
	b	.L80
.L226:
	orrs	r3, r4, r9
	ldreq	r3, [r6]
	ldreq	r2, [r6, #16]
	addeq	r3, r3, r2
	streq	r3, [r6]
	b	.L78
.L227:
	mov	r3, #16
	ldr	r0, [r6, #20]
	ldr	r2, [r6, #4]
	ldr	r1, [r6]
	sub	r2, r2, r0
	str	r2, [sp]
	str	r5, [sp, #12]
	str	r5, [sp, #8]
	str	r1, [sp, #4]
	mov	r2, r3
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	movne	r9, #1
	b	.L88
.L228:
	ldr	r3, [sp, #20]
	orrs	r3, r3, r8
	ldreq	r3, [r6, #4]
	ldreq	r2, [r6, #20]
	subeq	r3, r3, r2
	streq	r3, [r6, #4]
	b	.L86
.L231:
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
	movne	r4, #1
	b	.L95
.L232:
	orrs	r3, r4, r9
	ldreq	r3, [r6, #4]
	ldreq	r2, [r6, #20]
	addeq	r3, r3, r2
	streq	r3, [r6, #4]
	b	.L93
.L234:
	.align	2
.L233:
	.word	67109120
	.word	penguin
	.word	bubbles
	.word	collision
	.word	enemies
	.word	bubbles+300
	.word	enemies+720
	.word	vOff
	.word	hOff
	.word	oldButtons
	.word	buttons
	.word	lifeRemaining
	.word	enemies+660
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
	ldr	r3, [r0, #24]
	cmp	r3, #0
	ldr	r3, [r0, #52]
	beq	.L242
	add	r3, r3, #1
	cmp	r3, #320
	str	r3, [r0, #52]
	moveq	r3, #0
	ldr	r1, .L247
	ldr	r2, .L247+4
	str	lr, [sp, #-4]!
	ldr	ip, [r2]
	ldr	lr, [r1]
	ldr	r2, [r0, #4]
	ldr	r1, [r0]
	sub	r2, r2, ip
	sub	r1, r1, lr
	str	r1, [r0, #8]
	str	r2, [r0, #12]
	streq	r3, [r0, #24]
	streq	r3, [r0, #52]
	ldr	lr, [sp], #4
	bx	lr
.L242:
	cmp	r3, #320
	moveq	r3, #0
	streq	r3, [r0, #24]
	streq	r3, [r0, #52]
	bx	lr
.L248:
	.align	2
.L247:
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
.L250:
	mov	r2, #512
	ldr	r1, [r0, #56]
	ldr	r3, .L251
	add	r3, r3, r1, lsl #3
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L252:
	.align	2
.L251:
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
	ldr	r9, .L280
	mov	r6, r0
	mov	r10, r9
	mov	r7, #0
	ldr	r5, .L280+4
	ldr	r4, .L280+8
	ldr	r8, .L280+12
	b	.L261
.L279:
	ldr	r2, [r10, #20]
	add	r2, r0, r2
	add	r1, r1, r2
	lsl	r1, r1, #1
	ldrh	r1, [r6, r1]
	cmp	r1, #0
	beq	.L255
	ldr	r1, [r10, #24]
	add	r3, r3, r1
	add	r0, r0, r3, lsl #8
	lsl	r0, r0, #1
	ldrh	r1, [r6, r0]
	lsl	r3, r3, #8
	add	r3, r2, r3
	cmp	r1, #0
	lsl	r3, r3, #1
	beq	.L255
	ldrh	r3, [r6, r3]
	cmp	r3, #0
	beq	.L255
	mov	r3, #1
	str	r3, [r10, #52]
.L256:
	umull	r3, r2, r8, r7
	bic	r3, r2, #1
	add	r3, r3, r2, lsr #1
	subs	r3, r7, r3
	moveq	r3, #6
	streq	r3, [r10, #36]
	beq	.L259
	cmp	r3, #1
	moveq	r3, #7
	movne	r3, #8
	str	r3, [r10, #36]
.L259:
	add	r7, r7, #1
	cmp	r7, #12
	add	r10, r10, #60
	beq	.L278
.L261:
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
	bne	.L256
.L257:
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
	ldr	r3, [r10]
	add	r0, r0, #16
	add	r2, r0, r3, lsl #8
	lsl	r2, r2, #1
	ldrh	r2, [r6, r2]
	cmp	r2, #0
	str	r0, [r10, #4]
	lsl	r1, r3, #8
	bne	.L279
.L255:
	ldr	r3, [r10, #52]
	cmp	r3, #0
	beq	.L257
	b	.L256
.L278:
	mov	r3, #1
	str	r3, [r9, #28]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L281:
	.align	2
.L280:
	.word	enemies
	.word	rand
	.word	156180629
	.word	-1431655765
	.size	initEnemy, .-initEnemy
	.align	2
	.global	initGame1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame1, %function
initGame1:
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
	ldr	r0, .L286
	mov	r8, #96
	str	r4, [r0]
	ldr	r0, .L286+4
	mov	r3, r4
	str	r4, [r0, #36]
	str	r4, [r0, #48]
	mov	r2, r4
	mov	r4, #6
	mov	r1, r6
	mov	lr, r5
	mov	ip, #4
	str	fp, [r0]
	str	r10, [r0, #4]
	str	r9, [r0, #56]
	str	r6, [r0, #24]
	str	r6, [r0, #28]
	str	r5, [r0, #16]
	str	r5, [r0, #20]
	str	r7, [r0, #52]
	ldr	r0, .L286+8
	str	r7, [r0]
	ldr	r0, .L286+12
	str	r8, [r0]
	ldr	r0, .L286+16
	str	r4, [r0]
	ldr	r0, .L286+20
.L283:
	str	r3, [r0, #56]
	add	r3, r3, #1
	cmp	r3, #5
	str	r1, [r0, #16]
	str	r1, [r0, #20]
	str	r2, [r0, #32]
	str	ip, [r0, #36]
	str	r2, [r0, #44]
	str	lr, [r0, #48]
	str	r2, [r0, #24]
	add	r0, r0, #60
	bne	.L283
	ldr	r0, .L286+24
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	initEnemy
.L287:
	.align	2
.L286:
	.word	score
	.word	penguin
	.word	lifeRemaining
	.word	vOff
	.word	hOff
	.word	bubbles
	.word	collisionmap1Bitmap
	.size	initGame1, .-initGame1
	.align	2
	.global	initGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame2, %function
initGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r0, #6
	mov	r6, #0
	mov	r5, #16
	mov	r4, #1
	mov	lr, #96
	ldr	r2, .L293
	ldr	r3, [r2]
	ldr	ip, .L293+4
	cmp	r3, #2
	ldr	r1, .L293+8
	mov	r10, #176
	mov	r9, #118
	mov	r8, #3
	mov	r7, #20
	addle	r3, r3, #1
	str	lr, [ip]
	str	r0, [r1]
	strle	r3, [r2]
	mov	r1, r6
	mov	r2, r6
	mov	r0, r5
	mov	lr, r4
	mov	ip, #4
	ldr	r3, .L293+12
	str	r6, [r3, #36]
	str	r6, [r3, #48]
	str	r10, [r3]
	str	r9, [r3, #4]
	str	r8, [r3, #52]
	str	r7, [r3, #56]
	str	r5, [r3, #24]
	str	r5, [r3, #28]
	str	r4, [r3, #16]
	str	r4, [r3, #20]
	ldr	r3, .L293+16
.L290:
	str	r2, [r3, #56]
	add	r2, r2, #1
	cmp	r2, #5
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #32]
	str	ip, [r3, #36]
	str	r1, [r3, #44]
	str	lr, [r3, #48]
	str	r1, [r3, #24]
	add	r3, r3, #60
	bne	.L290
	ldr	r0, .L293+20
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	initEnemy
.L294:
	.align	2
.L293:
	.word	lifeRemaining
	.word	vOff
	.word	hOff
	.word	penguin
	.word	bubbles
	.word	collisionmap2Bitmap
	.size	initGame2, .-initGame2
	.align	2
	.global	initGame3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame3, %function
initGame3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	lr, #1
	mov	r4, #16
	ldr	r7, .L299
	ldr	r6, [r7]
	lsl	r6, r6, lr
	str	r6, [r7]
	ldr	r6, .L299+4
	mov	r1, r4
	str	r4, [r6, #24]
	str	r4, [r6, #28]
	mov	r4, #96
	mov	r5, #0
	mov	ip, lr
	str	lr, [r6, #16]
	str	lr, [r6, #20]
	ldr	lr, .L299+8
	mov	fp, #176
	str	r4, [lr]
	mov	r10, #118
	mov	r9, #3
	mov	r8, #20
	mov	r4, #6
	mov	r3, r5
	mov	r2, r5
	mov	r0, #4
	ldr	lr, .L299+12
	str	r5, [r6, #36]
	str	r4, [lr]
	str	r5, [r6, #48]
	str	fp, [r6]
	str	r10, [r6, #4]
	str	r9, [r6, #52]
	str	r8, [r6, #56]
	ldr	lr, .L299+16
.L296:
	str	r3, [lr, #56]
	add	r3, r3, #1
	cmp	r3, #5
	str	r1, [lr, #16]
	str	r1, [lr, #20]
	str	r2, [lr, #32]
	str	r0, [lr, #36]
	str	r2, [lr, #44]
	str	ip, [lr, #48]
	str	r2, [lr, #24]
	add	lr, lr, #60
	bne	.L296
	ldr	r0, .L299+20
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	initEnemy
.L300:
	.align	2
.L299:
	.word	lifeRemaining
	.word	penguin
	.word	vOff
	.word	hOff
	.word	bubbles
	.word	collisionmap3Bitmap
	.size	initGame3, .-initGame3
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
	ldr	r3, .L306
	add	r1, r3, #660
.L303:
	ldr	r2, [r3, #88]
	cmp	r2, #0
	bne	.L302
	ldr	r2, [r3, #108]
	cmp	r2, #200
	streq	r0, [r3, #88]
.L302:
	add	r3, r3, #60
	cmp	r3, r1
	bne	.L303
	bx	lr
.L307:
	.align	2
.L306:
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
	beq	.L309
	ldr	ip, [r0, #36]
	str	lr, [sp, #-4]!
	ldr	lr, .L319
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
	beq	.L308
	cmp	ip, #7
	moveq	r3, #74
	strheq	r3, [r1, #4]	@ movhi
	bne	.L318
.L308:
	ldr	lr, [sp], #4
	bx	lr
.L309:
	mov	r1, #512
	ldr	r2, .L319
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L318:
	cmp	ip, #8
	moveq	r3, #138
	ldr	lr, [sp], #4
	strheq	r3, [r1, #4]	@ movhi
	bx	lr
.L320:
	.align	2
.L319:
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
	ldr	r3, .L331
	ldr	r3, [r3, #32]
	cmp	r3, #0
	push	{r4, r5, r6, r7, r8, lr}
	beq	.L322
	ldr	r2, .L331+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L323:
	ldr	r3, .L331+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L331+12
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L331+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L331+16
	ldrh	r1, [r2]
	ldr	r2, .L331+20
	ldrh	r2, [r2]
	ldr	r4, .L331+24
	strh	r1, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	add	r5, r4, #720
.L324:
	mov	r0, r4
	add	r4, r4, #60
	bl	drawEnemy
	cmp	r4, r5
	bne	.L324
	mov	r7, #512
	ldr	r4, .L331+28
	ldr	r6, .L331+4
	add	r5, r4, #300
.L327:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L325
	mov	r0, r4
	bl	drawBubble.part.0
.L326:
	add	r4, r4, #60
	cmp	r5, r4
	bne	.L327
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L325:
	ldr	r3, [r4, #56]
	add	r3, r6, r3, lsl #3
	strh	r7, [r3, #8]	@ movhi
	b	.L326
.L322:
	bl	drawPlayer.part.0
	b	.L323
.L332:
	.align	2
.L331:
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
	mov	r5, r0
	sub	sp, sp, #20
	beq	.L334
	ldr	r2, .L348
	ldr	r3, .L348+4
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r5]
	ldr	r3, [r5, #4]
	sub	r2, r2, r0
	sub	r3, r3, r1
	str	r2, [r5, #8]
	str	r3, [r5, #12]
.L334:
	ldr	r4, .L348+8
	ldr	r7, .L348+12
	ldr	r8, .L348+16
	ldr	r9, .L348+20
	add	r6, r4, #300
.L338:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L336
	ldr	r3, [r4, #52]
	cmp	r3, r7
	bgt	.L347
.L336:
	add	r4, r4, #60
	cmp	r4, r6
	bne	.L338
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L347:
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
	beq	.L336
	mov	r2, #0
	ldr	r3, [r9]
	add	r3, r3, #1
	str	r2, [r5, #28]
	str	r3, [r9]
	str	r2, [r4, #24]
	b	.L336
.L349:
	.align	2
.L348:
	.word	vOff
	.word	hOff
	.word	bubbles
	.word	318
	.word	collision
	.word	score
	.size	updateEnemy, .-updateEnemy
	.align	2
	.global	updateGame1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame1, %function
updateGame1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L359
	add	r5, r4, #720
.L351:
	mov	r0, r4
	add	r4, r4, #60
	bl	updateEnemy
	cmp	r4, r5
	bne	.L351
	mov	lr, #0
	ldr	r1, .L359+4
	ldr	r2, .L359+8
	ldr	r3, .L359+12
	ldr	r5, [r1]
	ldr	r4, [r2]
	add	ip, r3, #300
.L355:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	ldmne	r3, {r0, r1}
	ldrne	r2, [r3, #52]
	ldreq	r2, [r3, #52]
	subne	r0, r0, r5
	subne	r1, r1, r4
	addne	r2, r2, #1
	strne	r0, [r3, #8]
	strne	r1, [r3, #12]
	strne	r2, [r3, #52]
	cmp	r2, #320
	streq	lr, [r3, #24]
	streq	lr, [r3, #52]
	add	r3, r3, #60
	cmp	r3, ip
	bne	.L355
	ldr	r0, .L359+16
	pop	{r4, r5, r6, lr}
	b	updatePlayer
.L360:
	.align	2
.L359:
	.word	enemies
	.word	vOff
	.word	hOff
	.word	bubbles
	.word	collisionmap1Bitmap
	.size	updateGame1, .-updateGame1
	.align	2
	.global	updateGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame2, %function
updateGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L370
	add	r5, r4, #720
.L362:
	mov	r0, r4
	add	r4, r4, #60
	bl	updateEnemy
	cmp	r4, r5
	bne	.L362
	mov	lr, #0
	ldr	r1, .L370+4
	ldr	r2, .L370+8
	ldr	r3, .L370+12
	ldr	r5, [r1]
	ldr	r4, [r2]
	add	ip, r3, #300
.L366:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	ldmne	r3, {r0, r1}
	ldrne	r2, [r3, #52]
	ldreq	r2, [r3, #52]
	subne	r0, r0, r5
	subne	r1, r1, r4
	addne	r2, r2, #1
	strne	r0, [r3, #8]
	strne	r1, [r3, #12]
	strne	r2, [r3, #52]
	cmp	r2, #320
	streq	lr, [r3, #24]
	streq	lr, [r3, #52]
	add	r3, r3, #60
	cmp	r3, ip
	bne	.L366
	ldr	r0, .L370+16
	pop	{r4, r5, r6, lr}
	b	updatePlayer
.L371:
	.align	2
.L370:
	.word	enemies
	.word	vOff
	.word	hOff
	.word	bubbles
	.word	collisionmap2Bitmap
	.size	updateGame2, .-updateGame2
	.align	2
	.global	updateGame3
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame3, %function
updateGame3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L381
	add	r5, r4, #720
.L373:
	mov	r0, r4
	add	r4, r4, #60
	bl	updateEnemy
	cmp	r4, r5
	bne	.L373
	mov	lr, #0
	ldr	r1, .L381+4
	ldr	r2, .L381+8
	ldr	r3, .L381+12
	ldr	r5, [r1]
	ldr	r4, [r2]
	add	ip, r3, #300
.L377:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	ldmne	r3, {r0, r1}
	ldrne	r2, [r3, #52]
	ldreq	r2, [r3, #52]
	subne	r0, r0, r5
	subne	r1, r1, r4
	addne	r2, r2, #1
	strne	r0, [r3, #8]
	strne	r1, [r3, #12]
	strne	r2, [r3, #52]
	cmp	r2, #320
	streq	lr, [r3, #24]
	streq	lr, [r3, #52]
	add	r3, r3, #60
	cmp	r3, ip
	bne	.L377
	ldr	r0, .L381+16
	pop	{r4, r5, r6, lr}
	b	updatePlayer
.L382:
	.align	2
.L381:
	.word	enemies
	.word	vOff
	.word	hOff
	.word	bubbles
	.word	collisionmap3Bitmap
	.size	updateGame3, .-updateGame3
	.comm	soundb,32,4
	.comm	screenBlock,4,4
	.comm	playerVOff,4,4
	.comm	playerHOff,4,4
	.comm	hOff,4,4
	.comm	vOff,4,4
	.comm	lifeRemaining,4,4
	.comm	score,4,4
	.comm	bubbles,300,4
	.comm	enemies,720,4
	.comm	penguin,60,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
