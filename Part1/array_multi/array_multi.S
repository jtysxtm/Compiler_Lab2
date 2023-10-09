	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"array_multi.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,4
	.section	.rodata
	.align	2
.LC2:
	.ascii	"Matrix A:\000"
	.align	2
.LC3:
	.ascii	" \000"
	.align	2
.LC4:
	.ascii	"Matrix B:\000"
	.align	2
.LC5:
	.ascii	"Result of matrix multiplication:\000"
	.align	2
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.align	2
.LC1:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.type	main, %function
main:
	.fnstart
.LFB1719:
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.save {r4, r5, r6, r7, lr}
	.pad #124
	sub	sp, sp, #124
	.setfp r7, sp, #0
	add	r7, sp, #0
	ldr	r4, .L22
.LPIC3:
	add	r4, pc
	ldr	r2, .L22+4
.LPIC9:
	add	r2, pc
	ldr	r3, .L22+8
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #116]
	mov	r3, #0
	movs	r3, #2
	str	r3, [r7, #36]
	movs	r3, #3
	str	r3, [r7, #40]
	movs	r3, #3
	str	r3, [r7, #44]
	movs	r3, #2
	str	r3, [r7, #48]
	ldr	r3, .L22+12
.LPIC0:
	add	r3, pc
	add	r5, r7, #68
	mov	r6, r3
	ldmia	r6!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldm	r6, {r0, r1}
	stm	r5, {r0, r1}
	ldr	r3, .L22+16
.LPIC1:
	add	r3, pc
	add	r5, r7, #92
	mov	r6, r3
	ldmia	r6!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldm	r6, {r0, r1}
	stm	r5, {r0, r1}
	movs	r3, #0
	str	r3, [r7]
	b	.L2
.L7:
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L3
.L6:
	ldr	r3, [r7]
	lsls	r2, r3, #1
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #120
	add	r3, r3, r7
	movs	r2, #0
	str	r2, [r3, #-68]
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L4
.L5:
	ldr	r3, [r7]
	lsls	r2, r3, #1
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #120
	add	r3, r3, r7
	ldr	r1, [r3, #-68]
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #120
	add	r3, r3, r7
	ldr	r2, [r3, #-52]
	ldr	r3, [r7, #8]
	lsls	r0, r3, #1
	ldr	r3, [r7, #4]
	add	r3, r3, r0
	lsls	r3, r3, #2
	adds	r3, r3, #120
	add	r3, r3, r7
	ldr	r3, [r3, #-28]
	mul	r3, r2, r3
	adds	r2, r1, r3
	ldr	r3, [r7]
	lsls	r1, r3, #1
	ldr	r3, [r7, #4]
	add	r3, r3, r1
	lsls	r3, r3, #2
	adds	r3, r3, #120
	add	r3, r3, r7
	str	r2, [r3, #-68]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L4:
	ldr	r3, [r7, #8]
	cmp	r3, #2
	ble	.L5
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L3:
	ldr	r3, [r7, #4]
	cmp	r3, #1
	ble	.L6
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7]
.L2:
	ldr	r3, [r7]
	cmp	r3, #1
	ble	.L7
	ldr	r3, .L22+20
.LPIC2:
	add	r3, pc
	mov	r1, r3
	ldr	r3, .L22+24
	ldr	r3, [r4, r3]
	mov	r0, r3
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(PLT)
	mov	r2, r0
	ldr	r3, .L22+28
	ldr	r3, [r4, r3]
	mov	r1, r3
	mov	r0, r2
	bl	_ZNSolsEPFRSoS_E(PLT)
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L8
.L11:
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L9
.L10:
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #120
	add	r3, r3, r7
	ldr	r3, [r3, #-52]
	mov	r1, r3
	ldr	r3, .L22+24
	ldr	r3, [r4, r3]
	mov	r0, r3
	bl	_ZNSolsEi(PLT)
	mov	r2, r0
	ldr	r3, .L22+32
.LPIC4:
	add	r3, pc
	mov	r1, r3
	mov	r0, r2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(PLT)
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L9:
	ldr	r3, [r7, #16]
	cmp	r3, #2
	ble	.L10
	ldr	r3, .L22+28
	ldr	r3, [r4, r3]
	mov	r1, r3
	ldr	r3, .L22+24
	ldr	r3, [r4, r3]
	mov	r0, r3
	bl	_ZNSolsEPFRSoS_E(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L8:
	ldr	r3, [r7, #12]
	cmp	r3, #1
	ble	.L11
	ldr	r3, .L22+36
.LPIC5:
	add	r3, pc
	mov	r1, r3
	ldr	r3, .L22+24
	ldr	r3, [r4, r3]
	mov	r0, r3
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(PLT)
	mov	r2, r0
	ldr	r3, .L22+28
	ldr	r3, [r4, r3]
	mov	r1, r3
	mov	r0, r2
	bl	_ZNSolsEPFRSoS_E(PLT)
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L12
.L15:
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L13
.L14:
	ldr	r3, [r7, #20]
	lsls	r2, r3, #1
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #120
	add	r3, r3, r7
	ldr	r3, [r3, #-28]
	mov	r1, r3
	ldr	r3, .L22+24
	ldr	r3, [r4, r3]
	mov	r0, r3
	bl	_ZNSolsEi(PLT)
	mov	r2, r0
	ldr	r3, .L22+40
.LPIC6:
	add	r3, pc
	mov	r1, r3
	mov	r0, r2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(PLT)
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L13:
	ldr	r3, [r7, #24]
	cmp	r3, #1
	ble	.L14
	ldr	r3, .L22+28
	ldr	r3, [r4, r3]
	mov	r1, r3
	ldr	r3, .L22+24
	ldr	r3, [r4, r3]
	mov	r0, r3
	bl	_ZNSolsEPFRSoS_E(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L12:
	ldr	r3, [r7, #20]
	cmp	r3, #2
	ble	.L15
	ldr	r3, .L22+44
.LPIC7:
	add	r3, pc
	mov	r1, r3
	ldr	r3, .L22+24
	ldr	r3, [r4, r3]
	mov	r0, r3
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(PLT)
	mov	r2, r0
	ldr	r3, .L22+28
	ldr	r3, [r4, r3]
	mov	r1, r3
	mov	r0, r2
	bl	_ZNSolsEPFRSoS_E(PLT)
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L16
.L19:
	movs	r3, #0
	str	r3, [r7, #32]
	b	.L17
.L18:
	ldr	r3, [r7, #28]
	lsls	r2, r3, #1
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #120
	add	r3, r3, r7
	ldr	r3, [r3, #-68]
	mov	r1, r3
	ldr	r3, .L22+24
	ldr	r3, [r4, r3]
	mov	r0, r3
	bl	_ZNSolsEi(PLT)
	mov	r2, r0
	ldr	r3, .L22+48
.LPIC8:
	add	r3, pc
	mov	r1, r3
	mov	r0, r2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(PLT)
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L17:
	ldr	r3, [r7, #32]
	cmp	r3, #1
	ble	.L18
	ldr	r3, .L22+28
	ldr	r3, [r4, r3]
	mov	r1, r3
	ldr	r3, .L22+24
	ldr	r3, [r4, r3]
	mov	r0, r3
	bl	_ZNSolsEPFRSoS_E(PLT)
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L16:
	ldr	r3, [r7, #28]
	cmp	r3, #1
	ble	.L19
	movs	r3, #0
	ldr	r1, .L22+52
.LPIC10:
	add	r1, pc
	ldr	r2, .L22+8
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #116]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L21
	bl	__stack_chk_fail(PLT)
.L21:
	mov	r0, r3
	adds	r7, r7, #124
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L23:
	.align	2
.L22:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC9+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	.LC2-(.LPIC2+4)
	.word	_ZSt4cout(GOT)
	.word	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(GOT)
	.word	.LC3-(.LPIC4+4)
	.word	.LC4-(.LPIC5+4)
	.word	.LC3-(.LPIC6+4)
	.word	.LC5-(.LPIC7+4)
	.word	.LC3-(.LPIC8+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC10+4)
	.fnend
	.size	main, .-main
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
	.fnstart
.LFB2225:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, .L27
.LPIC13:
	add	r4, pc
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bne	.L26
	ldr	r3, [r7]
	movw	r2, #65535
	cmp	r3, r2
	bne	.L26
	ldr	r3, .L27+4
.LPIC11:
	add	r3, pc
	mov	r0, r3
	bl	_ZNSt8ios_base4InitC1Ev(PLT)
	ldr	r3, .L27+8
.LPIC12:
	add	r3, pc
	mov	r2, r3
	ldr	r3, .L27+12
	ldr	r3, [r4, r3]
	mov	r1, r3
	ldr	r3, .L27+16
.LPIC14:
	add	r3, pc
	mov	r0, r3
	bl	__aeabi_atexit(PLT)
.L26:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L28:
	.align	2
.L27:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC13+4)
	.word	_ZStL8__ioinit-(.LPIC11+4)
	.word	__dso_handle-(.LPIC12+4)
	.word	_ZNSt8ios_base4InitD1Ev(GOT)
	.word	_ZStL8__ioinit-(.LPIC14+4)
	.cantunwind
	.fnend
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
	.fnstart
.LFB2226:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movw	r1, #65535
	movs	r0, #1
	bl	_Z41__static_initialization_and_destruction_0ii(PLT)
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw",%init_array
	.align	2
	.word	_GLOBAL__sub_I_main(target1)
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",%progbits
