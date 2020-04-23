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
	ldr	r3, .L232
	ldrh	r7, [r3, #48]
	ands	r7, r7, #64
	sub	sp, sp, #20
	bne	.L70
	ldr	r5, .L232+4
	ldr	r3, [r5]
	cmp	r3, #0
	ble	.L214
	ldr	r1, [r5, #16]
	ldr	r2, [r5, #4]
	sub	r3, r3, r1
	add	r1, r2, r3, lsl #8
	ldr	r0, .L232+8
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, #0
	lsl	r3, r3, #8
	beq	.L214
	add	r1, r5, #20
	ldm	r1, {r1, ip}
	add	r2, r2, ip
	sub	r2, r2, r1
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldrh	r3, [r0, r3]
	cmp	r3, #0
	beq	.L214
	ldr	r6, .L232+12
	mov	r8, #16
	ldr	r9, .L232+16
	add	r4, r6, #1020
	b	.L75
.L74:
	add	r6, r6, #60
	cmp	r6, r4
	beq	.L223
.L75:
	ldr	r3, [r6, #24]
	cmp	r3, #0
	beq	.L74
	mov	r3, #16
	ldr	r0, [r5, #16]
	ldr	r2, [r5]
	ldr	r1, [r5, #4]
	sub	r2, r2, r0
	stmib	sp, {r2, r8}
	str	r8, [sp, #12]
	str	r1, [sp]
	mov	r2, r3
	ldr	r1, [r6]
	ldr	r0, [r6, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	movne	r7, #1
	b	.L74
.L70:
	ldrh	r7, [r3, #48]
	ands	r7, r7, #128
	bne	.L81
	ldr	r5, .L232+4
	ldr	r3, [r5]
	ldr	r2, [r5, #28]
	add	r3, r3, r2
	cmp	r3, #255
	bgt	.L216
	ldr	r2, [r5, #4]
	ldr	r0, .L232+8
	add	r1, r2, r3, lsl #8
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, #0
	lsl	r3, r3, #8
	beq	.L216
	add	r1, r5, #20
	ldm	r1, {r1, ip}
	add	r2, r2, ip
	sub	r2, r2, r1
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldrh	r3, [r0, r3]
	cmp	r3, #0
	beq	.L216
	ldr	r6, .L232+12
	mov	r8, #16
	ldr	r9, .L232+16
	add	r4, r6, #1020
	b	.L86
.L85:
	add	r6, r6, #60
	cmp	r6, r4
	beq	.L224
.L86:
	ldr	r3, [r6, #24]
	cmp	r3, #0
	beq	.L85
	mov	r3, #16
	ldr	r0, [r5, #16]
	ldr	r2, [r5]
	ldr	r1, [r5, #4]
	add	r2, r2, r0
	stmib	sp, {r2, r8}
	str	r8, [sp, #12]
	str	r1, [sp]
	mov	r2, r3
	ldr	r1, [r6]
	ldr	r0, [r6, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	movne	r7, #1
	b	.L85
.L81:
	ldrh	r2, [r3, #48]
	ands	r2, r2, #32
	bne	.L89
	ldr	r5, .L232+4
	ldr	r3, [r5, #4]
	cmp	r3, #0
	ble	.L218
	ldr	r0, [r5, #20]
	ldr	r1, [r5]
	sub	r3, r3, r0
	ldr	ip, .L232+8
	add	r0, r3, r1, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [ip, r0]
	cmp	r0, #0
	beq	.L218
	ldr	lr, [r5, #28]
	ldr	r0, [r5, #16]
	add	r1, r1, lr
	sub	r1, r1, r0
	add	r3, r3, r1, lsl #8
	lsl	r3, r3, #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	beq	.L218
	ldr	r6, .L232+12
	mov	r7, r2
	mov	r8, #16
	ldr	r9, .L232+16
	add	r4, r6, #1020
	b	.L94
.L93:
	add	r6, r6, #60
	cmp	r6, r4
	beq	.L225
.L94:
	ldr	r3, [r6, #24]
	cmp	r3, #0
	beq	.L93
	mov	r3, #16
	ldr	r0, [r5, #20]
	ldr	r2, [r5, #4]
	ldr	r1, [r5]
	sub	r2, r2, r0
	str	r2, [sp]
	str	r8, [sp, #12]
	str	r8, [sp, #8]
	str	r1, [sp, #4]
	mov	r2, r3
	ldr	r1, [r6]
	ldr	r0, [r6, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	movne	r7, #1
	b	.L93
.L214:
	ldr	r6, .L232+20
	ldr	r4, .L232+24
	add	r8, r6, #180
.L72:
	ldr	r7, .L232+28
	ldr	r3, [r7]
	cmp	r3, #0
	ble	.L222
	ldr	r2, [r5, #8]
	cmp	r2, #79
	ble	.L198
.L222:
	ldr	r9, .L232+32
.L79:
	ldr	r3, .L232+36
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L104
	ldr	r3, .L232+40
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L226
.L104:
	mov	r1, #0
	ldr	r3, .L232+12
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
	cmp	r3, r4
	bne	.L107
	mov	r1, #0
	ldr	r3, .L232+20
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
	cmp	r8, r3
	bne	.L110
	ldm	r5, {r2, r3}
	ldr	r0, [r7]
	ldr	r1, [r9]
	sub	r2, r2, r0
	sub	r3, r3, r1
	str	r3, [r5, #12]
	str	r2, [r5, #8]
	bl	animatePlayer
	ldr	r3, [r6, #88]
	cmp	r3, #0
	bne	.L111
	ldr	r3, [r6, #108]
	cmp	r3, #200
	moveq	r3, #1
	streq	r3, [r6, #88]
.L111:
	ldr	r3, [r6, #148]
	cmp	r3, #0
	bne	.L69
	ldr	r3, [r6, #168]
	cmp	r3, #200
	moveq	r3, #1
	streq	r3, [r6, #148]
.L69:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L216:
	ldr	r6, .L232+20
	ldr	r4, .L232+24
	add	r8, r6, #180
.L83:
	ldr	r7, .L232+28
	ldr	r3, [r7]
	cmp	r3, #95
	bgt	.L222
	ldr	r2, [r5, #8]
	cmp	r2, #80
	ble	.L222
	add	r3, r3, #1
	str	r3, [r7]
	ldr	r9, .L232+32
	b	.L79
.L198:
	sub	r3, r3, #1
	str	r3, [r7]
	ldr	r9, .L232+32
	b	.L79
.L89:
	ldrh	r3, [r3, #48]
	ands	r7, r3, #16
	beq	.L207
	ldr	r6, .L232+20
	ldr	r5, .L232+4
	ldr	r4, .L232+24
	ldr	r7, .L232+28
	add	r8, r6, #180
	b	.L222
.L218:
	ldr	r6, .L232+20
	ldr	r4, .L232+24
	add	r8, r6, #180
.L91:
	ldr	r9, .L232+32
	ldr	r3, [r9]
	cmp	r3, #0
	ble	.L221
	ldr	r2, [r5, #12]
	cmp	r2, #119
	bgt	.L221
	sub	r3, r3, #1
	str	r3, [r9]
	ldr	r7, .L232+28
	b	.L79
.L207:
	ldr	r5, .L232+4
	ldr	r3, [r5, #4]
	ldr	r2, [r5, #24]
	add	r3, r3, r2
	cmp	r3, #255
	ble	.L97
.L220:
	ldr	r6, .L232+20
	ldr	r4, .L232+24
	add	r8, r6, #180
.L98:
	ldr	r9, .L232+32
	ldr	r3, [r9]
	cmp	r3, #15
	bgt	.L221
	ldr	r2, [r5, #12]
	cmp	r2, #120
	addgt	r3, r3, #1
	strgt	r3, [r9]
.L221:
	ldr	r7, .L232+28
	b	.L79
.L226:
	bl	putBubble
	b	.L104
.L223:
	ldr	r6, .L232+20
	mov	r10, #0
	mov	r9, r6
	mov	fp, #16
	add	r8, r6, #180
.L77:
	ldr	r3, [r9, #28]
	cmp	r3, #0
	bne	.L227
.L76:
	add	r9, r9, #60
	cmp	r8, r9
	bne	.L77
	orrs	r3, r7, r10
	ldreq	r3, [r5]
	ldreq	r2, [r5, #16]
	subeq	r3, r3, r2
	streq	r3, [r5]
	b	.L72
.L227:
	mov	r3, #16
	ldr	r0, [r5, #16]
	ldr	r2, [r5]
	ldr	r1, [r5, #4]
	sub	r2, r2, r0
	stmib	sp, {r2, fp}
	str	fp, [sp, #12]
	str	r1, [sp]
	mov	r2, r3
	ldr	r1, [r9]
	ldr	r0, [r9, #4]
	ldr	ip, .L232+16
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	movne	r10, #1
	b	.L76
.L97:
	ldr	r2, [r5]
	ldr	r0, .L232+8
	add	r1, r3, r2, lsl #8
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, #0
	beq	.L220
	ldr	ip, [r5, #28]
	ldr	r1, [r5, #16]
	add	r2, r2, ip
	sub	r2, r2, r1
	add	r3, r3, r2, lsl #8
	lsl	r3, r3, #1
	ldrh	r3, [r0, r3]
	cmp	r3, #0
	beq	.L220
	ldr	r6, .L232+12
	mov	r8, #16
	ldr	r9, .L232+16
	add	r4, r6, #1020
	b	.L101
.L100:
	add	r6, r6, #60
	cmp	r6, r4
	beq	.L228
.L101:
	ldr	r3, [r6, #24]
	cmp	r3, #0
	beq	.L100
	mov	r3, #16
	ldr	r0, [r5, #20]
	ldr	r2, [r5, #4]
	ldr	r1, [r5]
	add	r2, r2, r0
	str	r2, [sp]
	str	r8, [sp, #12]
	str	r8, [sp, #8]
	str	r1, [sp, #4]
	mov	r2, r3
	ldr	r1, [r6]
	ldr	r0, [r6, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	movne	r7, #1
	b	.L100
.L224:
	ldr	r6, .L232+20
	mov	r10, #0
	mov	r9, r6
	mov	fp, #16
	add	r8, r6, #180
.L88:
	ldr	r3, [r9, #28]
	cmp	r3, #0
	bne	.L229
.L87:
	add	r9, r9, #60
	cmp	r8, r9
	bne	.L88
	orrs	r3, r7, r10
	ldreq	r3, [r5]
	ldreq	r2, [r5, #16]
	addeq	r3, r3, r2
	streq	r3, [r5]
	b	.L83
.L229:
	mov	r3, #16
	ldr	r0, [r5, #16]
	ldr	r2, [r5]
	ldr	r1, [r5, #4]
	add	r2, r2, r0
	stmib	sp, {r2, fp}
	str	fp, [sp, #12]
	str	r1, [sp]
	mov	r2, r3
	ldr	r1, [r9]
	ldr	r0, [r9, #4]
	ldr	ip, .L232+16
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	movne	r10, #1
	b	.L87
.L225:
	ldr	r6, .L232+20
	mov	r10, #0
	mov	r9, r6
	mov	fp, #16
	add	r8, r6, #180
.L96:
	ldr	r3, [r9, #28]
	cmp	r3, #0
	bne	.L230
.L95:
	add	r9, r9, #60
	cmp	r9, r8
	bne	.L96
	orrs	r3, r7, r10
	ldreq	r3, [r5, #4]
	ldreq	r2, [r5, #20]
	subeq	r3, r3, r2
	streq	r3, [r5, #4]
	b	.L91
.L230:
	mov	r3, #16
	ldr	r0, [r5, #20]
	ldr	r2, [r5, #4]
	ldr	r1, [r5]
	sub	r2, r2, r0
	str	r2, [sp]
	str	fp, [sp, #12]
	str	fp, [sp, #8]
	str	r1, [sp, #4]
	mov	r2, r3
	ldr	r1, [r9]
	ldr	r0, [r9, #4]
	ldr	ip, .L232+16
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	movne	r10, #1
	b	.L95
.L228:
	ldr	r6, .L232+20
	mov	r10, #0
	mov	r9, r6
	mov	fp, #16
	add	r8, r6, #180
.L103:
	ldr	r3, [r9, #28]
	cmp	r3, #0
	bne	.L231
.L102:
	add	r9, r9, #60
	cmp	r9, r8
	bne	.L103
	orrs	r3, r7, r10
	ldreq	r3, [r5, #4]
	ldreq	r2, [r5, #20]
	addeq	r3, r3, r2
	streq	r3, [r5, #4]
	b	.L98
.L231:
	mov	r3, #16
	ldr	r0, [r5, #20]
	ldr	r2, [r5, #4]
	ldr	r1, [r5]
	add	r2, r2, r0
	str	r2, [sp]
	str	fp, [sp, #12]
	str	fp, [sp, #8]
	str	r1, [sp, #4]
	mov	r2, r3
	ldr	r1, [r9]
	ldr	r0, [r9, #4]
	ldr	ip, .L232+16
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	movne	r10, #1
	b	.L102
.L233:
	.align	2
.L232:
	.word	67109120
	.word	penguin
	.word	collisionmapBitmap
	.word	bubbles
	.word	collision
	.word	enemies
	.word	bubbles+1020
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
	ldr	r2, .L239
	ldr	r3, .L239+4
	ldr	ip, [r2]
	ldr	r1, [r3]
	ldr	r2, [r0]
	ldr	r3, [r0, #4]
	sub	r2, r2, ip
	sub	r3, r3, r1
	str	r2, [r0, #8]
	str	r3, [r0, #12]
	bx	lr
.L240:
	.align	2
.L239:
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
.L242:
	mov	r2, #512
	ldr	r1, [r0, #56]
	ldr	r3, .L243
	add	r3, r3, r1, lsl #3
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L244:
	.align	2
.L243:
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
	ldr	r9, .L273
	ble	.L246
	mov	r7, #0
	mov	r10, r9
	ldr	r5, .L273+4
	ldr	r6, .L273+8
	ldr	r4, .L273+12
.L254:
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
	bne	.L249
.L250:
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
	beq	.L248
	ldr	r2, [r10, #20]
	add	r2, r0, r2
	add	r1, r1, r2
	lsl	r1, r1, #1
	ldrh	r1, [r6, r1]
	cmp	r1, #0
	beq	.L248
	ldr	r1, [r10, #24]
	add	r3, r3, r1
	add	r0, r0, r3, lsl #8
	lsl	r0, r0, #1
	ldrh	r1, [r6, r0]
	lsl	r3, r3, #8
	add	r3, r2, r3
	cmp	r1, #0
	lsl	r3, r3, #1
	beq	.L248
	ldrh	r3, [r6, r3]
	cmp	r3, #0
	beq	.L248
	mov	r3, #1
	str	r3, [r10, #52]
.L249:
	cmp	r7, #0
	moveq	r3, #6
	streq	r3, [r9, #36]
	beq	.L252
	cmp	r7, #1
	moveq	r3, #7
	movne	r3, #8
	streq	r3, [r9, #96]
	strne	r3, [r9, #156]
.L252:
	add	r7, r7, #1
	cmp	r8, r7
	add	r10, r10, #60
	bne	.L254
.L246:
	mov	r3, #1
	str	r3, [r9, #28]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L248:
	ldr	r3, [r10, #52]
	cmp	r3, #0
	beq	.L250
	b	.L249
.L274:
	.align	2
.L273:
	.word	enemies
	.word	rand
	.word	collisionmapBitmap
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
	cmp	r3, #17
	str	r1, [lr, #16]
	str	r1, [lr, #20]
	str	r2, [lr, #32]
	str	r0, [lr, #36]
	str	r2, [lr, #44]
	str	ip, [lr, #48]
	str	r2, [lr, #24]
	add	lr, lr, #60
	bne	.L276
	mov	r0, #3
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
	ldr	r3, .L284
	ldr	r2, [r3, #88]
	cmp	r2, #0
	bne	.L282
	ldr	r2, [r3, #108]
	cmp	r2, #200
	moveq	r2, #1
	streq	r2, [r3, #88]
.L282:
	ldr	r2, [r3, #148]
	cmp	r2, #0
	bxne	lr
	ldr	r2, [r3, #168]
	cmp	r2, #200
	moveq	r2, #1
	streq	r2, [r3, #148]
	bx	lr
.L285:
	.align	2
.L284:
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
	beq	.L287
	ldr	ip, [r0, #36]
	str	lr, [sp, #-4]!
	ldr	lr, .L297
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
	beq	.L286
	cmp	ip, #7
	moveq	r3, #74
	strheq	r3, [r1, #4]	@ movhi
	bne	.L296
.L286:
	ldr	lr, [sp], #4
	bx	lr
.L287:
	mov	r1, #512
	ldr	r2, .L297
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L296:
	cmp	ip, #8
	moveq	r3, #138
	ldr	lr, [sp], #4
	strheq	r3, [r1, #4]	@ movhi
	bx	lr
.L298:
	.align	2
.L297:
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
	ldr	r3, .L309
	ldr	r3, [r3, #32]
	cmp	r3, #0
	push	{r4, r5, r6, r7, r8, lr}
	beq	.L300
	ldr	r2, .L309+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L301:
	ldr	r3, .L309+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L309+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L309+4
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L309+16
	ldrh	r1, [r2]
	ldr	r2, .L309+20
	ldrh	r2, [r2]
	strh	r1, [r3, #16]	@ movhi
	ldr	r0, .L309+24
	strh	r2, [r3, #18]	@ movhi
	bl	drawEnemy
	ldr	r4, .L309+28
	ldr	r0, .L309+32
	bl	drawEnemy
	ldr	r0, .L309+36
	bl	drawEnemy
	mov	r7, #512
	ldr	r6, .L309+4
	add	r5, r4, #1020
	b	.L304
.L308:
	mov	r0, r4
	add	r4, r4, #60
	bl	drawBubble.part.0
	cmp	r5, r4
	beq	.L307
.L304:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L308
	ldr	r3, [r4, #56]
	add	r4, r4, #60
	add	r3, r6, r3, lsl #3
	cmp	r5, r4
	strh	r7, [r3, #8]	@ movhi
	bne	.L304
.L307:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L300:
	bl	drawPlayer.part.0
	b	.L301
.L310:
	.align	2
.L309:
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
	beq	.L312
	ldr	r2, .L329
	ldr	r3, .L329+4
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r6]
	ldr	r3, [r6, #4]
	sub	r2, r2, r0
	sub	r3, r3, r1
	str	r2, [r6, #8]
	str	r3, [r6, #12]
.L312:
	ldr	r4, .L329+8
	ldr	r7, .L329+12
	ldr	r8, .L329+16
	ldr	r9, .L329+20
	add	r5, r4, #1020
	b	.L316
.L314:
	add	r4, r4, #60
	cmp	r4, r5
	beq	.L328
.L316:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L314
	ldr	r3, [r4, #52]
	cmp	r3, r7
	bne	.L314
	ldr	r3, [r6, #28]
	cmp	r3, #0
	beq	.L314
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
	beq	.L314
	mov	r2, #0
	ldr	r3, [r9]
	str	r2, [r6, #28]
	add	r4, r4, #60
	str	r2, [r4, #-36]
	add	r3, r3, #1
	cmp	r4, r5
	str	r3, [r9]
	bne	.L316
.L328:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L330:
	.align	2
.L329:
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
	ldr	r0, .L339
	bl	updateEnemy
	ldr	r0, .L339+4
	bl	updateEnemy
	ldr	r0, .L339+8
	bl	updateEnemy
	ldr	r1, .L339+12
	ldr	r2, .L339+16
	ldr	r3, .L339+20
	ldr	lr, [r1]
	ldr	ip, [r2]
	add	r0, r3, #1020
.L333:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	ldmne	r3, {r1, r2}
	subne	r1, r1, lr
	subne	r2, r2, ip
	strne	r1, [r3, #8]
	strne	r2, [r3, #12]
	add	r3, r3, #60
	cmp	r0, r3
	bne	.L333
	pop	{r4, lr}
	b	updatePlayer
.L340:
	.align	2
.L339:
	.word	enemies
	.word	enemies+60
	.word	enemies+120
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
	.comm	bubbles,1020,4
	.comm	enemies,180,4
	.comm	penguin,60,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
