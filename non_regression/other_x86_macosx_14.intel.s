	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.intel_syntax noprefix
	.globl	_deflateInit_
	.p2align	4, 0x90
_deflateInit_:                          ## @deflateInit_
## BB#0:
	push	ebp
	mov	ebp, esp
	sub	esp, 8
	push	dword ptr [ebp + 20]
	push	dword ptr [ebp + 16]
	push	0
	push	8
	push	15
	push	8
	push	dword ptr [ebp + 12]
	push	dword ptr [ebp + 8]
	call	_deflateInit2_
	add	esp, 40
	pop	ebp
	ret

	.globl	_deflateInit2_
	.p2align	4, 0x90
_deflateInit2_:                         ## @deflateInit2_
## BB#0:
	push	ebp
	mov	ebp, esp
	push	ebx
	push	edi
	push	esi
	sub	esp, 28
	call	L1$pb
L1$pb:
	pop	ecx
	mov	eax, dword ptr [ebp + 32]
	mov	edi, -6
	test	eax, eax
	je	LBB1_36
## BB#1:
	cmp	dword ptr [ebp + 36], 56
	jne	LBB1_36
## BB#2:
	cmp	byte ptr [eax], 49
	jne	LBB1_36
## BB#3:
	mov	esi, dword ptr [ebp + 8]
	mov	edi, -2
	test	esi, esi
	je	LBB1_36
## BB#4:
	mov	dword ptr [ebp - 16], ecx ## 4-byte Spill
	mov	eax, dword ptr [ebp + 28]
	mov	dword ptr [ebp - 28], eax ## 4-byte Spill
	mov	eax, dword ptr [ebp + 24]
	mov	dword ptr [ebp - 20], eax ## 4-byte Spill
	mov	eax, dword ptr [ebp + 20]
	mov	edx, dword ptr [ebp + 16]
	mov	edi, dword ptr [ebp + 12]
	mov	dword ptr [esi + 24], 0
	mov	ecx, dword ptr [esi + 32]
	test	ecx, ecx
	jne	LBB1_6
## BB#5:
	mov	ecx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	ecx, dword ptr [ecx + L_zcalloc$non_lazy_ptr-L1$pb]
	mov	dword ptr [esi + 32], ecx
	mov	dword ptr [esi + 40], 0
LBB1_6:
	cmp	dword ptr [esi + 36], 0
	jne	LBB1_8
## BB#7:
	mov	ebx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	ebx, dword ptr [ebx + L_zcfree$non_lazy_ptr-L1$pb]
	mov	dword ptr [esi + 36], ebx
LBB1_8:
	cmp	edi, -1
	mov	ebx, 6
	cmovne	ebx, edi
	mov	dword ptr [ebp - 24], ebx ## 4-byte Spill
	test	eax, eax
	js	LBB1_10
## BB#9:
	lea	edi, [eax - 16]
	xor	ebx, ebx
	cmp	eax, 15
	setg	bl
	cmovg	eax, edi
	inc	ebx
	jmp	LBB1_11
LBB1_10:
	neg	eax
	xor	ebx, ebx
LBB1_11:
	mov	edi, -2
	cmp	dword ptr [ebp - 28], 4 ## 4-byte Folded Reload
	ja	LBB1_36
## BB#12:
	cmp	dword ptr [ebp - 24], 9 ## 4-byte Folded Reload
	ja	LBB1_36
## BB#13:
	cmp	edx, 8
	jne	LBB1_36
## BB#14:
	mov	edx, dword ptr [ebp - 20] ## 4-byte Reload
	dec	edx
	cmp	edx, 8
	ja	LBB1_36
## BB#15:
	mov	edx, eax
	and	edx, -8
	cmp	edx, 8
	jne	LBB1_36
## BB#16:
	cmp	eax, 8
	mov	edx, 9
	cmovne	edx, eax
	mov	dword ptr [ebp - 32], edx ## 4-byte Spill
	sub	esp, 4
	push	5828
	push	1
	push	dword ptr [esi + 40]
	call	ecx
	add	esp, 16
	mov	edi, eax
	test	edi, edi
	je	LBB1_35
## BB#17:
	mov	dword ptr [esi + 28], edi
	mov	dword ptr [edi], esi
	mov	dword ptr [edi + 24], ebx
	mov	dword ptr [edi + 28], 0
	mov	ecx, dword ptr [ebp - 32] ## 4-byte Reload
	mov	dword ptr [edi + 48], ecx
	mov	ebx, 1
                                        ## kill: %CL<def> %CL<kill> %ECX<kill>
	shl	ebx, cl
	mov	dword ptr [edi + 44], ebx
	lea	eax, [ebx - 1]
	mov	dword ptr [edi + 52], eax
	mov	eax, dword ptr [ebp - 20] ## 4-byte Reload
	lea	ecx, [eax + 7]
	mov	edx, eax
	mov	dword ptr [edi + 80], ecx
	mov	eax, 1
                                        ## kill: %CL<def> %CL<kill> %ECX<kill>
	shl	eax, cl
	mov	dword ptr [edi + 76], eax
	dec	eax
	mov	dword ptr [edi + 84], eax
	lea	eax, [edx + 9]
	mov	ecx, -1431655765
	mul	ecx
	shr	edx
	mov	dword ptr [edi + 88], edx
	sub	esp, 4
	push	2
	push	ebx
	push	dword ptr [esi + 40]
	call	dword ptr [esi + 32]
	add	esp, 16
	mov	dword ptr [edi + 56], eax
	sub	esp, 4
	push	2
	push	dword ptr [edi + 44]
	push	dword ptr [esi + 40]
	call	dword ptr [esi + 32]
	add	esp, 16
	mov	dword ptr [edi + 64], eax
	sub	esp, 4
	push	2
	push	dword ptr [edi + 76]
	push	dword ptr [esi + 40]
	call	dword ptr [esi + 32]
	add	esp, 16
	mov	dword ptr [edi + 68], eax
	mov	dword ptr [edi + 5824], 0
	mov	ecx, dword ptr [ebp - 20] ## 4-byte Reload
	add	ecx, 6
                                        ## kill: %CL<def> %CL<kill> %ECX<kill>
	mov	eax, 1
	shl	eax, cl
	mov	dword ptr [edi + 5788], eax
	sub	esp, 4
	push	4
	push	eax
	push	dword ptr [esi + 40]
	call	dword ptr [esi + 32]
	add	esp, 16
	mov	dword ptr [edi + 8], eax
	mov	ecx, dword ptr [edi + 5788]
	lea	edx, [4*ecx]
	mov	dword ptr [edi + 12], edx
	cmp	dword ptr [edi + 56], 0
	je	LBB1_22
## BB#18:
	cmp	dword ptr [edi + 64], 0
	je	LBB1_22
## BB#19:
	cmp	dword ptr [edi + 68], 0
	je	LBB1_22
## BB#20:
	test	eax, eax
	je	LBB1_22
## BB#21:
	mov	edx, ecx
	and	edx, -2
	add	edx, eax
	mov	dword ptr [edi + 5796], edx
	lea	ecx, [ecx + 2*ecx]
	add	ecx, eax
	mov	dword ptr [edi + 5784], ecx
	mov	eax, dword ptr [ebp - 24] ## 4-byte Reload
	mov	dword ptr [edi + 132], eax
	mov	eax, dword ptr [ebp - 28] ## 4-byte Reload
	mov	dword ptr [edi + 136], eax
	mov	byte ptr [edi + 36], 8
	add	esp, 28
	pop	esi
	pop	edi
	pop	ebx
	pop	ebp
	jmp	_deflateReset           ## TAILCALL
LBB1_22:
	mov	dword ptr [edi + 4], 666
	mov	eax, dword ptr [ebp - 16] ## 4-byte Reload
	mov	eax, dword ptr [eax + L_z_errmsg$non_lazy_ptr-L1$pb]
	mov	eax, dword ptr [eax + 24]
	mov	dword ptr [esi + 24], eax
	mov	eax, dword ptr [esi + 28]
	test	eax, eax
	je	LBB1_35
## BB#23:
	mov	ecx, dword ptr [eax + 4]
	lea	edx, [ecx - 69]
	cmp	edx, 44
	mov	edi, -4
	ja	LBB1_37
## BB#24:
	mov	ecx, dword ptr [ebp - 16] ## 4-byte Reload
Ltmp0 = LJTI1_0-L1$pb
	add	ecx, dword ptr [ecx + 4*edx + Ltmp0]
	jmp	ecx
LBB1_25:
	mov	ecx, dword ptr [eax + 8]
	test	ecx, ecx
	je	LBB1_27
## BB#26:
	sub	esp, 8
	push	ecx
	push	dword ptr [esi + 40]
	call	dword ptr [esi + 36]
	add	esp, 16
	mov	eax, dword ptr [esi + 28]
LBB1_27:
	mov	ecx, dword ptr [eax + 68]
	test	ecx, ecx
	je	LBB1_29
## BB#28:
	sub	esp, 8
	push	ecx
	push	dword ptr [esi + 40]
	call	dword ptr [esi + 36]
	add	esp, 16
	mov	eax, dword ptr [esi + 28]
LBB1_29:
	mov	ecx, dword ptr [eax + 64]
	test	ecx, ecx
	je	LBB1_31
## BB#30:
	sub	esp, 8
	push	ecx
	push	dword ptr [esi + 40]
	call	dword ptr [esi + 36]
	add	esp, 16
	mov	eax, dword ptr [esi + 28]
LBB1_31:
	mov	ecx, dword ptr [eax + 56]
	test	ecx, ecx
	je	LBB1_33
## BB#32:
	sub	esp, 8
	push	ecx
	push	dword ptr [esi + 40]
	call	dword ptr [esi + 36]
	add	esp, 16
	mov	eax, dword ptr [esi + 28]
LBB1_33:
	sub	esp, 8
	push	eax
	push	dword ptr [esi + 40]
	call	dword ptr [esi + 36]
	add	esp, 16
	mov	dword ptr [esi + 28], 0
	jmp	LBB1_36
LBB1_35:
	mov	edi, -4
LBB1_36:
	mov	eax, edi
	add	esp, 28
	pop	esi
	pop	edi
	pop	ebx
	pop	ebp
	ret
LBB1_37:
	cmp	ecx, 666
	je	LBB1_25
## BB#38:
	cmp	ecx, 42
	je	LBB1_25
	jmp	LBB1_36
	.p2align	2, 0x90
	.data_region jt32
L1_0_set_25 = LBB1_25-L1$pb
L1_0_set_36 = LBB1_36-L1$pb
LJTI1_0:
	.long	L1_0_set_25
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_25
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_25
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_25
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_36
	.long	L1_0_set_25
	.end_data_region

	.globl	_deflateEnd
	.p2align	4, 0x90
_deflateEnd:                            ## @deflateEnd
## BB#0:
	push	ebp
	mov	ebp, esp
	push	ebx
	push	edi
	push	esi
	sub	esp, 12
	call	L2$pb
L2$pb:
	pop	edx
	mov	esi, dword ptr [ebp + 8]
	mov	eax, -2
	test	esi, esi
	je	LBB2_14
## BB#1:
	mov	ecx, dword ptr [esi + 28]
	test	ecx, ecx
	je	LBB2_14
## BB#2:
	mov	edi, dword ptr [ecx + 4]
	lea	ebx, [edi - 69]
	cmp	ebx, 44
	ja	LBB2_3
## BB#15:
Ltmp1 = LJTI2_0-L2$pb
	add	edx, dword ptr [edx + 4*ebx + Ltmp1]
	jmp	edx
LBB2_5:
	mov	eax, dword ptr [ecx + 8]
	test	eax, eax
	je	LBB2_7
## BB#6:
	sub	esp, 8
	push	eax
	push	dword ptr [esi + 40]
	call	dword ptr [esi + 36]
	add	esp, 16
	mov	ecx, dword ptr [esi + 28]
LBB2_7:
	mov	eax, dword ptr [ecx + 68]
	test	eax, eax
	je	LBB2_9
## BB#8:
	sub	esp, 8
	push	eax
	push	dword ptr [esi + 40]
	call	dword ptr [esi + 36]
	add	esp, 16
	mov	ecx, dword ptr [esi + 28]
LBB2_9:
	mov	eax, dword ptr [ecx + 64]
	test	eax, eax
	je	LBB2_11
## BB#10:
	sub	esp, 8
	push	eax
	push	dword ptr [esi + 40]
	call	dword ptr [esi + 36]
	add	esp, 16
	mov	ecx, dword ptr [esi + 28]
LBB2_11:
	mov	eax, dword ptr [ecx + 56]
	test	eax, eax
	je	LBB2_13
## BB#12:
	sub	esp, 8
	push	eax
	push	dword ptr [esi + 40]
	call	dword ptr [esi + 36]
	add	esp, 16
	mov	ecx, dword ptr [esi + 28]
LBB2_13:
	sub	esp, 8
	push	ecx
	push	dword ptr [esi + 40]
	call	dword ptr [esi + 36]
	add	esp, 16
	mov	dword ptr [esi + 28], 0
	xor	ecx, ecx
	cmp	edi, 113
	mov	eax, -3
	cmovne	eax, ecx
LBB2_14:
	add	esp, 12
	pop	esi
	pop	edi
	pop	ebx
	pop	ebp
	ret
LBB2_3:
	cmp	edi, 666
	je	LBB2_5
## BB#4:
	cmp	edi, 42
	je	LBB2_5
	jmp	LBB2_14
	.p2align	2, 0x90
	.data_region jt32
L2_0_set_5 = LBB2_5-L2$pb
L2_0_set_14 = LBB2_14-L2$pb
LJTI2_0:
	.long	L2_0_set_5
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_5
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_5
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_5
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_14
	.long	L2_0_set_5
	.end_data_region

	.globl	_deflateReset
	.p2align	4, 0x90
_deflateReset:                          ## @deflateReset
## BB#0:
	push	ebp
	mov	ebp, esp
	push	ebx
	push	edi
	push	esi
	sub	esp, 12
	call	L3$pb
L3$pb:
	pop	esi
	mov	edi, dword ptr [ebp + 8]
	mov	eax, -2
	test	edi, edi
	je	LBB3_10
## BB#1:
	mov	ebx, dword ptr [edi + 28]
	test	ebx, ebx
	je	LBB3_10
## BB#2:
	cmp	dword ptr [edi + 32], 0
	je	LBB3_10
## BB#3:
	cmp	dword ptr [edi + 36], 0
	je	LBB3_10
## BB#4:
	mov	dword ptr [edi + 20], 0
	mov	dword ptr [edi + 8], 0
	mov	dword ptr [edi + 24], 0
	mov	dword ptr [edi + 44], 2
	mov	dword ptr [ebx + 20], 0
	mov	eax, dword ptr [ebx + 8]
	mov	dword ptr [ebx + 16], eax
	mov	eax, dword ptr [ebx + 24]
	test	eax, eax
	jns	LBB3_6
## BB#5:
	neg	eax
	mov	dword ptr [ebx + 24], eax
LBB3_6:
	test	eax, eax
	mov	ecx, 42
	mov	edx, 113
	cmovne	edx, ecx
	mov	dword ptr [ebx + 4], edx
	sub	esp, 4
	cmp	eax, 2
	jne	LBB3_8
## BB#7:
	push	0
	push	0
	push	0
	call	_crc32
	jmp	LBB3_9
LBB3_8:
	push	0
	push	0
	push	0
	call	_adler32
LBB3_9:
	add	esp, 16
	mov	dword ptr [edi + 48], eax
	mov	dword ptr [ebx + 40], 0
	sub	esp, 12
	push	ebx
	call	__tr_init
	add	esp, 16
	mov	edi, dword ptr [edi + 28]
	mov	eax, dword ptr [edi + 44]
	add	eax, eax
	mov	dword ptr [edi + 60], eax
	mov	eax, dword ptr [edi + 68]
	mov	ecx, dword ptr [edi + 76]
	mov	word ptr [eax + 2*ecx - 2], 0
	lea	ecx, [ecx + ecx - 2]
	sub	esp, 8
	push	ecx
	push	eax
	call	___bzero
	add	esp, 16
	mov	eax, dword ptr [edi + 132]
	lea	eax, [eax + 2*eax]
	movzx	ecx, word ptr [esi + 4*eax + (_configuration_table-L3$pb)+2]
	mov	dword ptr [edi + 128], ecx
	movzx	ecx, word ptr [esi + 4*eax + _configuration_table-L3$pb]
	mov	dword ptr [edi + 140], ecx
	movzx	ecx, word ptr [esi + 4*eax + (_configuration_table-L3$pb)+4]
	mov	dword ptr [edi + 144], ecx
	movzx	eax, word ptr [esi + 4*eax + (_configuration_table-L3$pb)+6]
	mov	dword ptr [edi + 124], eax
	mov	dword ptr [edi + 108], 0
	mov	dword ptr [edi + 92], 0
	mov	dword ptr [edi + 116], 0
	mov	dword ptr [edi + 5812], 0
	mov	dword ptr [edi + 120], 2
	mov	dword ptr [edi + 96], 2
	mov	dword ptr [edi + 104], 0
	mov	dword ptr [edi + 72], 0
	xor	eax, eax
LBB3_10:
	add	esp, 12
	pop	esi
	pop	edi
	pop	ebx
	pop	ebp
	ret

	.globl	_deflateSetDictionary
	.p2align	4, 0x90
_deflateSetDictionary:                  ## @deflateSetDictionary
## BB#0:
	push	ebp
	mov	ebp, esp
	push	ebx
	push	edi
	push	esi
	sub	esp, 60
	mov	ebx, dword ptr [ebp + 8]
	mov	eax, -2
	test	ebx, ebx
	je	LBB4_21
## BB#1:
	mov	esi, dword ptr [ebp + 12]
	test	esi, esi
	je	LBB4_21
## BB#2:
	mov	ecx, dword ptr [ebx + 28]
	test	ecx, ecx
	je	LBB4_21
## BB#3:
	mov	edx, dword ptr [ecx + 24]
	cmp	edx, 2
	je	LBB4_21
## BB#4:
	cmp	edx, 1
	jne	LBB4_6
## BB#5:
	cmp	dword ptr [ecx + 4], 42
	jne	LBB4_21
LBB4_6:
	cmp	dword ptr [ecx + 116], 0
	jne	LBB4_21
## BB#7:
	mov	edi, dword ptr [ebp + 16]
	cmp	edx, 1
	mov	dword ptr [ebp - 16], ecx ## 4-byte Spill
	mov	dword ptr [ebp - 48], edx ## 4-byte Spill
	jne	LBB4_9
## BB#8:
	sub	esp, 4
	push	edi
	push	esi
	push	dword ptr [ebx + 48]
	call	_adler32
	mov	edx, dword ptr [ebp - 48] ## 4-byte Reload
	mov	ecx, dword ptr [ebp - 16] ## 4-byte Reload
	add	esp, 16
	mov	dword ptr [ebx + 48], eax
LBB4_9:
	mov	dword ptr [ecx + 24], 0
	mov	eax, dword ptr [ecx + 44]
	cmp	eax, edi
	ja	LBB4_13
## BB#10:
	test	edx, edx
	jne	LBB4_12
## BB#11:
	mov	eax, dword ptr [ecx + 68]
	mov	ecx, dword ptr [ecx + 76]
	mov	word ptr [eax + 2*ecx - 2], 0
	lea	ecx, [ecx + ecx - 2]
	sub	esp, 8
	push	ecx
	push	eax
	call	___bzero
	mov	ecx, dword ptr [ebp - 16] ## 4-byte Reload
	add	esp, 16
	mov	dword ptr [ecx + 108], 0
	mov	dword ptr [ecx + 92], 0
	mov	dword ptr [ecx + 5812], 0
	mov	eax, dword ptr [ecx + 44]
LBB4_12:
	sub	edi, eax
	add	esi, edi
	mov	edi, eax
LBB4_13:
	mov	eax, dword ptr [ebx]
	mov	dword ptr [ebp - 60], eax ## 4-byte Spill
	mov	eax, dword ptr [ebx + 4]
	mov	dword ptr [ebp - 64], eax ## 4-byte Spill
	mov	dword ptr [ebx + 4], edi
	mov	dword ptr [ebx], esi
	call	_fill_window
	mov	edx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	eax, dword ptr [edx + 108]
	mov	ecx, dword ptr [edx + 116]
	cmp	ecx, 3
	jb	LBB4_20
	.p2align	4, 0x90
LBB4_14:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB4_18 Depth 2
	mov	dword ptr [ebp - 20], ecx ## 4-byte Spill
	lea	ebx, [ecx - 2]
	mov	edi, dword ptr [edx + 72]
	mov	ecx, dword ptr [edx + 88]
	mov	esi, dword ptr [edx + 52]
	mov	dword ptr [ebp - 32], esi ## 4-byte Spill
	mov	esi, dword ptr [edx + 56]
	mov	dword ptr [ebp - 40], esi ## 4-byte Spill
	mov	dword ptr [ebp - 52], ebx ## 4-byte Spill
	test	bl, 1
	mov	esi, dword ptr [edx + 84]
	mov	dword ptr [ebp - 36], esi ## 4-byte Spill
	mov	esi, dword ptr [edx + 68]
	mov	ebx, dword ptr [edx + 64]
	mov	dword ptr [ebp - 28], ebx ## 4-byte Spill
	mov	dword ptr [ebp - 24], esi ## 4-byte Spill
	mov	dword ptr [ebp - 68], eax ## 4-byte Spill
	mov	dword ptr [ebp - 56], ecx ## 4-byte Spill
	jne	LBB4_16
## BB#15:                               ##   in Loop: Header=BB4_14 Depth=1
	mov	ebx, eax
	mov	edx, dword ptr [ebp - 52] ## 4-byte Reload
	mov	eax, dword ptr [ebp - 20] ## 4-byte Reload
	jmp	LBB4_17
	.p2align	4, 0x90
LBB4_16:                                ##   in Loop: Header=BB4_14 Depth=1
                                        ## kill: %CL<def> %CL<kill> %ECX<kill>
	shl	edi, cl
	mov	ecx, dword ptr [ebp - 40] ## 4-byte Reload
	movzx	ebx, byte ptr [ecx + eax + 2]
	xor	ebx, edi
	and	ebx, dword ptr [ebp - 36] ## 4-byte Folded Reload
	mov	dword ptr [edx + 72], ebx
	movzx	edx, word ptr [esi + 2*ebx]
	mov	edi, dword ptr [ebp - 32] ## 4-byte Reload
	and	edi, eax
	mov	ecx, dword ptr [ebp - 28] ## 4-byte Reload
	mov	word ptr [ecx + 2*edi], dx
	mov	word ptr [esi + 2*ebx], ax
	mov	edi, ebx
	lea	ebx, [eax + 1]
	mov	eax, dword ptr [ebp - 20] ## 4-byte Reload
	lea	edx, [eax - 3]
LBB4_17:                                ##   in Loop: Header=BB4_14 Depth=1
	cmp	eax, 3
	mov	eax, dword ptr [ebp - 24] ## 4-byte Reload
	je	LBB4_19
	.p2align	4, 0x90
LBB4_18:                                ##   Parent Loop BB4_14 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	dword ptr [ebp - 20], edx ## 4-byte Spill
	mov	ecx, dword ptr [ebp - 56] ## 4-byte Reload
                                        ## kill: %CL<def> %CL<kill> %ECX<kill>
	shl	edi, cl
	mov	ecx, dword ptr [ebp - 40] ## 4-byte Reload
	movzx	esi, byte ptr [ecx + ebx + 2]
	xor	esi, edi
	and	esi, dword ptr [ebp - 36] ## 4-byte Folded Reload
	mov	edx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	dword ptr [edx + 72], esi
	movzx	edi, word ptr [eax + 2*esi]
	mov	eax, dword ptr [ebp - 32] ## 4-byte Reload
	and	eax, ebx
	mov	ecx, dword ptr [ebp - 28] ## 4-byte Reload
	mov	word ptr [ecx + 2*eax], di
	mov	eax, dword ptr [ebp - 24] ## 4-byte Reload
	mov	word ptr [eax + 2*esi], bx
	mov	ecx, dword ptr [ebp - 56] ## 4-byte Reload
                                        ## kill: %CL<def> %CL<kill> %ECX<kill>
	shl	esi, cl
	mov	eax, dword ptr [ebp - 40] ## 4-byte Reload
	movzx	edi, byte ptr [eax + ebx + 3]
	xor	edi, esi
	and	edi, dword ptr [ebp - 36] ## 4-byte Folded Reload
	mov	dword ptr [edx + 72], edi
	mov	edx, dword ptr [ebp - 20] ## 4-byte Reload
	mov	eax, dword ptr [ebp - 24] ## 4-byte Reload
	movzx	eax, word ptr [eax + 2*edi]
	mov	word ptr [ebp - 42], ax ## 2-byte Spill
	lea	ecx, [ebx + 1]
	mov	dword ptr [ebp - 72], ecx ## 4-byte Spill
	mov	eax, dword ptr [ebp - 32] ## 4-byte Reload
	and	eax, ecx
	mov	ecx, dword ptr [ebp - 28] ## 4-byte Reload
	movzx	esi, word ptr [ebp - 42] ## 2-byte Folded Reload
	mov	word ptr [ecx + 2*eax], si
	mov	eax, dword ptr [ebp - 24] ## 4-byte Reload
	mov	esi, dword ptr [ebp - 72] ## 4-byte Reload
	mov	word ptr [eax + 2*edi], si
	add	ebx, 2
	add	edx, -2
	jne	LBB4_18
LBB4_19:                                ##   in Loop: Header=BB4_14 Depth=1
	mov	eax, dword ptr [ebp - 52] ## 4-byte Reload
	add	eax, dword ptr [ebp - 68] ## 4-byte Folded Reload
	mov	edi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	dword ptr [edi + 108], eax
	mov	dword ptr [edi + 116], 2
	mov	ecx, edi
	call	_fill_window
	mov	eax, dword ptr [edi + 108]
	mov	ecx, dword ptr [edi + 116]
	cmp	ecx, 2
	mov	edx, edi
	ja	LBB4_14
LBB4_20:
	add	eax, ecx
	mov	dword ptr [edx + 108], eax
	mov	dword ptr [edx + 92], eax
	mov	dword ptr [edx + 5812], ecx
	mov	dword ptr [edx + 116], 0
	mov	dword ptr [edx + 120], 2
	mov	dword ptr [edx + 96], 2
	mov	dword ptr [edx + 104], 0
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, dword ptr [ebp - 60] ## 4-byte Reload
	mov	dword ptr [eax], ecx
	mov	ecx, dword ptr [ebp - 64] ## 4-byte Reload
	mov	dword ptr [eax + 4], ecx
	mov	eax, dword ptr [ebp - 48] ## 4-byte Reload
	mov	dword ptr [edx + 24], eax
	xor	eax, eax
LBB4_21:
	add	esp, 60
	pop	esi
	pop	edi
	pop	ebx
	pop	ebp
	ret

	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI5_0:
	.byte	14                      ## 0xe
	.byte	15                      ## 0xf
	.byte	12                      ## 0xc
	.byte	13                      ## 0xd
	.byte	10                      ## 0xa
	.byte	11                      ## 0xb
	.byte	8                       ## 0x8
	.byte	9                       ## 0x9
	.byte	6                       ## 0x6
	.byte	7                       ## 0x7
	.byte	4                       ## 0x4
	.byte	5                       ## 0x5
	.byte	2                       ## 0x2
	.byte	3                       ## 0x3
	.byte	0                       ## 0x0
	.byte	1                       ## 0x1
LCPI5_1:
	.long	2147483648              ## 0x80000000
	.long	2147483648              ## 0x80000000
	.long	2147483648              ## 0x80000000
	.long	2147483648              ## 0x80000000
LCPI5_2:
	.byte	0                       ## 0x0
	.byte	1                       ## 0x1
	.byte	4                       ## 0x4
	.byte	5                       ## 0x5
	.byte	8                       ## 0x8
	.byte	9                       ## 0x9
	.byte	12                      ## 0xc
	.byte	13                      ## 0xd
	.byte	8                       ## 0x8
	.byte	9                       ## 0x9
	.byte	12                      ## 0xc
	.byte	13                      ## 0xd
	.byte	12                      ## 0xc
	.byte	13                      ## 0xd
	.byte	14                      ## 0xe
	.byte	15                      ## 0xf
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90
_fill_window:                           ## @fill_window
## BB#0:
	push	ebp
	mov	ebp, esp
	push	ebx
	push	edi
	push	esi
	sub	esp, 156
	mov	esi, ecx
	call	L5$pb
L5$pb:
	pop	eax
	mov	edi, dword ptr [esi + 44]
	mov	ecx, edi
	and	ecx, 7
	mov	edx, edi
	sub	edx, ecx
	mov	dword ptr [ebp - 52], edx ## 4-byte Spill
	movaps	xmm0, xmmword ptr [eax + LCPI5_0-L5$pb] ## xmm0 = [14,15,12,13,10,11,8,9,6,7,4,5,2,3,0,1]
	movaps	xmmword ptr [ebp - 104], xmm0 ## 16-byte Spill
	movdqa	xmm1, xmmword ptr [eax + LCPI5_1-L5$pb] ## xmm1 = [2147483648,2147483648,2147483648,2147483648]
	movdqa	xmmword ptr [ebp - 168], xmm1 ## 16-byte Spill
	movaps	xmm0, xmmword ptr [eax + LCPI5_2-L5$pb] ## xmm0 = [0,1,4,5,8,9,12,13,8,9,12,13,12,13,14,15]
	movaps	xmmword ptr [ebp - 120], xmm0 ## 16-byte Spill
	mov	dword ptr [ebp - 48], ecx ## 4-byte Spill
	sub	ecx, edi
	mov	dword ptr [ebp - 44], ecx ## 4-byte Spill
	movd	xmm0, edi
	pshufd	xmm0, xmm0, 0           ## xmm0 = xmm0[0,0,0,0]
	movdqa	xmmword ptr [ebp - 152], xmm0 ## 16-byte Spill
	pxor	xmm0, xmm1
	movdqa	xmmword ptr [ebp - 136], xmm0 ## 16-byte Spill
	mov	ecx, dword ptr [esi + 116]
	lea	eax, [edi - 262]
	mov	dword ptr [ebp - 56], eax ## 4-byte Spill
	lea	eax, [edi - 8]
	mov	dword ptr [ebp - 40], eax ## 4-byte Spill
	mov	eax, edi
	mov	dword ptr [ebp - 28], esi ## 4-byte Spill
	mov	dword ptr [ebp - 20], edi ## 4-byte Spill
	jmp	LBB5_4
	.p2align	4, 0x90
LBB5_1:                                 ##   in Loop: Header=BB5_4 Depth=1
	mov	ecx, dword ptr [ebp - 36] ## 4-byte Reload
	cmp	ecx, 261
	ja	LBB5_38
## BB#2:                                ##   in Loop: Header=BB5_4 Depth=1
	mov	eax, dword ptr [esi]
	cmp	dword ptr [eax + 4], 0
	je	LBB5_38
## BB#3:                                ##   in Loop: Header=BB5_4 Depth=1
	mov	eax, dword ptr [esi + 44]
	mov	edi, dword ptr [ebp - 20] ## 4-byte Reload
LBB5_4:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_9 Depth 2
                                        ##     Child Loop BB5_14 Depth 2
                                        ##     Child Loop BB5_19 Depth 2
                                        ##     Child Loop BB5_23 Depth 2
                                        ##     Child Loop BB5_36 Depth 2
	mov	ebx, dword ptr [esi + 60]
	sub	ebx, ecx
	mov	ecx, dword ptr [esi + 108]
	sub	ebx, ecx
	add	eax, dword ptr [ebp - 56] ## 4-byte Folded Reload
	cmp	ecx, eax
	jb	LBB5_25
## BB#5:                                ##   in Loop: Header=BB5_4 Depth=1
	mov	eax, dword ptr [esi + 56]
	lea	ecx, [eax + edi]
	sub	esp, 4
	push	edi
	push	ecx
	push	eax
	call	_memcpy
	add	esp, 16
	sub	dword ptr [esi + 112], edi
	mov	ecx, dword ptr [esi + 108]
	sub	ecx, edi
	mov	dword ptr [esi + 108], ecx
	sub	dword ptr [esi + 92], edi
	mov	edx, dword ptr [esi + 68]
	mov	edi, dword ptr [esi + 76]
	lea	eax, [edx + 2*edi]
	cmp	edi, 8
	mov	dword ptr [ebp - 16], ecx ## 4-byte Spill
	jae	LBB5_7
## BB#6:                                ##   in Loop: Header=BB5_4 Depth=1
	mov	esi, edi
	mov	edi, dword ptr [ebp - 20] ## 4-byte Reload
	movdqa	xmm0, xmmword ptr [ebp - 104] ## 16-byte Reload
	movdqa	xmm6, xmmword ptr [ebp - 120] ## 16-byte Reload
	pxor	xmm3, xmm3
	jmp	LBB5_12
	.p2align	4, 0x90
LBB5_7:                                 ##   in Loop: Header=BB5_4 Depth=1
	mov	dword ptr [ebp - 24], edx ## 4-byte Spill
	mov	esi, edi
	and	esi, 7
	mov	edx, edi
	sub	edx, esi
	movdqa	xmm0, xmmword ptr [ebp - 104] ## 16-byte Reload
	movdqa	xmm6, xmmword ptr [ebp - 120] ## 16-byte Reload
	pxor	xmm3, xmm3
	je	LBB5_11
## BB#8:                                ##   in Loop: Header=BB5_4 Depth=1
	mov	ecx, esi
	sub	ecx, edi
	lea	eax, [eax + 2*ecx]
	mov	ecx, dword ptr [ebp - 24] ## 4-byte Reload
	lea	edi, [ecx + 2*edi - 16]
	.p2align	4, 0x90
LBB5_9:                                 ##   Parent Loop BB5_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movdqu	xmm2, xmmword ptr [edi]
	pshufb	xmm2, xmm0
	pmovzxwd	xmm1, xmm2      ## xmm1 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero
	punpckhwd	xmm2, xmm3      ## xmm2 = xmm2[4],xmm3[4],xmm2[5],xmm3[5],xmm2[6],xmm3[6],xmm2[7],xmm3[7]
	movdqa	xmm0, xmm2
	movdqa	xmm5, xmmword ptr [ebp - 168] ## 16-byte Reload
	pxor	xmm0, xmm5
	movdqa	xmm7, xmmword ptr [ebp - 136] ## 16-byte Reload
	movdqa	xmm3, xmm7
	pcmpgtd	xmm3, xmm0
	movdqa	xmm4, xmm1
	pxor	xmm4, xmm5
	pcmpgtd	xmm7, xmm4
	pshufb	xmm3, xmm6
	pshufb	xmm7, xmm6
	punpcklqdq	xmm7, xmm3      ## xmm7 = xmm7[0],xmm3[0]
	movdqa	xmm3, xmmword ptr [ebp - 152] ## 16-byte Reload
	psubd	xmm1, xmm3
	psubd	xmm2, xmm3
	pxor	xmm3, xmm3
	pshufb	xmm2, xmm6
	pshufb	xmm1, xmm6
	punpcklqdq	xmm1, xmm2      ## xmm1 = xmm1[0],xmm2[0]
	psllw	xmm7, 15
	psraw	xmm7, 15
	movdqa	xmm0, xmm7
	pblendvb	xmm1, xmm3
	movdqa	xmm0, xmmword ptr [ebp - 104] ## 16-byte Reload
	pshufb	xmm1, xmm0
	movdqu	xmmword ptr [edi], xmm1
	add	edi, -16
	add	edx, -8
	jne	LBB5_9
## BB#10:                               ##   in Loop: Header=BB5_4 Depth=1
	test	esi, esi
	mov	edi, dword ptr [ebp - 20] ## 4-byte Reload
	mov	edx, 0
	jne	LBB5_13
	jmp	LBB5_15
LBB5_11:                                ##   in Loop: Header=BB5_4 Depth=1
	mov	esi, edi
	mov	edi, dword ptr [ebp - 20] ## 4-byte Reload
LBB5_12:                                ##   in Loop: Header=BB5_4 Depth=1
	xor	edx, edx
LBB5_13:                                ##   in Loop: Header=BB5_4 Depth=1
	add	eax, -2
	.p2align	4, 0x90
LBB5_14:                                ##   Parent Loop BB5_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzx	ecx, word ptr [eax]
	sub	ecx, edi
	cmovb	cx, dx
	mov	word ptr [eax], cx
	add	eax, -2
	dec	esi
	jne	LBB5_14
LBB5_15:                                ##   in Loop: Header=BB5_4 Depth=1
	cmp	edi, 8
	mov	eax, dword ptr [ebp - 28] ## 4-byte Reload
	mov	ecx, dword ptr [eax + 64]
	lea	eax, [ecx + 2*edi]
	jb	LBB5_21
## BB#17:                               ##   in Loop: Header=BB5_4 Depth=1
	mov	edx, dword ptr [ebp - 52] ## 4-byte Reload
	test	edx, edx
	je	LBB5_21
## BB#18:                               ##   in Loop: Header=BB5_4 Depth=1
	mov	esi, dword ptr [ebp - 44] ## 4-byte Reload
	lea	eax, [eax + 2*esi]
	mov	esi, dword ptr [ebp - 40] ## 4-byte Reload
	lea	ecx, [ecx + 2*esi]
	.p2align	4, 0x90
LBB5_19:                                ##   Parent Loop BB5_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movdqu	xmm2, xmmword ptr [ecx]
	pshufb	xmm2, xmm0
	pmovzxwd	xmm1, xmm2      ## xmm1 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero
	punpckhwd	xmm2, xmm3      ## xmm2 = xmm2[4],xmm3[4],xmm2[5],xmm3[5],xmm2[6],xmm3[6],xmm2[7],xmm3[7]
	movdqa	xmm0, xmm2
	movdqa	xmm7, xmm6
	movdqa	xmm6, xmmword ptr [ebp - 168] ## 16-byte Reload
	pxor	xmm0, xmm6
	movdqa	xmm5, xmmword ptr [ebp - 136] ## 16-byte Reload
	movdqa	xmm3, xmm5
	pcmpgtd	xmm3, xmm0
	movdqa	xmm4, xmm1
	pxor	xmm4, xmm6
	movdqa	xmm6, xmm7
	pcmpgtd	xmm5, xmm4
	pshufb	xmm3, xmm6
	pshufb	xmm5, xmm6
	punpcklqdq	xmm5, xmm3      ## xmm5 = xmm5[0],xmm3[0]
	movdqa	xmm3, xmmword ptr [ebp - 152] ## 16-byte Reload
	psubd	xmm1, xmm3
	psubd	xmm2, xmm3
	pxor	xmm3, xmm3
	pshufb	xmm2, xmm6
	pshufb	xmm1, xmm6
	punpcklqdq	xmm1, xmm2      ## xmm1 = xmm1[0],xmm2[0]
	psllw	xmm5, 15
	psraw	xmm5, 15
	movdqa	xmm0, xmm5
	pblendvb	xmm1, xmm3
	movdqa	xmm0, xmmword ptr [ebp - 104] ## 16-byte Reload
	pshufb	xmm1, xmm0
	movdqu	xmmword ptr [ecx], xmm1
	add	ecx, -16
	add	edx, -8
	jne	LBB5_19
## BB#20:                               ##   in Loop: Header=BB5_4 Depth=1
	mov	ecx, dword ptr [ebp - 48] ## 4-byte Reload
	test	ecx, ecx
	jne	LBB5_22
	jmp	LBB5_24
	.p2align	4, 0x90
LBB5_21:                                ##   in Loop: Header=BB5_4 Depth=1
	mov	ecx, edi
LBB5_22:                                ##   in Loop: Header=BB5_4 Depth=1
	add	eax, -2
	.p2align	4, 0x90
LBB5_23:                                ##   Parent Loop BB5_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzx	edx, word ptr [eax]
	sub	edx, edi
	mov	esi, 0
	cmovae	si, dx
	mov	word ptr [eax], si
	add	eax, -2
	dec	ecx
	jne	LBB5_23
LBB5_24:                                ##   in Loop: Header=BB5_4 Depth=1
	add	ebx, edi
	mov	esi, dword ptr [ebp - 28] ## 4-byte Reload
	mov	ecx, dword ptr [ebp - 16] ## 4-byte Reload
LBB5_25:                                ##   in Loop: Header=BB5_4 Depth=1
	mov	edi, dword ptr [esi]
	mov	eax, dword ptr [edi + 4]
	test	eax, eax
	je	LBB5_38
## BB#26:                               ##   in Loop: Header=BB5_4 Depth=1
	mov	edx, dword ptr [esi + 116]
	cmp	eax, ebx
	cmovbe	ebx, eax
	test	ebx, ebx
	je	LBB5_30
## BB#27:                               ##   in Loop: Header=BB5_4 Depth=1
	add	ecx, dword ptr [esi + 56]
	add	ecx, edx
	sub	eax, ebx
	mov	dword ptr [edi + 4], eax
	sub	esp, 4
	push	ebx
	push	dword ptr [edi]
	mov	dword ptr [ebp - 16], ecx ## 4-byte Spill
	push	ecx
	call	_memcpy
	add	esp, 16
	mov	eax, dword ptr [edi + 28]
	mov	eax, dword ptr [eax + 24]
	cmp	eax, 2
	je	LBB5_31
## BB#28:                               ##   in Loop: Header=BB5_4 Depth=1
	cmp	eax, 1
	jne	LBB5_33
## BB#29:                               ##   in Loop: Header=BB5_4 Depth=1
	sub	esp, 4
	push	ebx
	push	dword ptr [ebp - 16]    ## 4-byte Folded Reload
	push	dword ptr [edi + 48]
	call	_adler32
	jmp	LBB5_32
	.p2align	4, 0x90
LBB5_30:                                ##   in Loop: Header=BB5_4 Depth=1
	xor	ebx, ebx
	jmp	LBB5_34
	.p2align	4, 0x90
LBB5_31:                                ##   in Loop: Header=BB5_4 Depth=1
	sub	esp, 4
	push	ebx
	push	dword ptr [ebp - 16]    ## 4-byte Folded Reload
	push	dword ptr [edi + 48]
	call	_crc32
LBB5_32:                                ##   in Loop: Header=BB5_4 Depth=1
	add	esp, 16
	mov	dword ptr [edi + 48], eax
LBB5_33:                                ##   in Loop: Header=BB5_4 Depth=1
	add	dword ptr [edi], ebx
	add	dword ptr [edi + 8], ebx
	mov	edx, dword ptr [esi + 116]
LBB5_34:                                ##   in Loop: Header=BB5_4 Depth=1
	add	edx, ebx
	mov	dword ptr [esi + 116], edx
	mov	eax, dword ptr [esi + 5812]
	mov	dword ptr [ebp - 36], edx ## 4-byte Spill
	mov	dword ptr [ebp - 32], eax ## 4-byte Spill
	lea	eax, [eax + edx]
	cmp	eax, 3
	jb	LBB5_1
## BB#35:                               ##   in Loop: Header=BB5_4 Depth=1
	mov	ebx, dword ptr [esi + 56]
	mov	edx, dword ptr [esi + 108]
	mov	edi, dword ptr [ebp - 32] ## 4-byte Reload
	sub	edx, edi
	movzx	eax, byte ptr [ebx + edx]
	mov	dword ptr [esi + 72], eax
	mov	ecx, dword ptr [esi + 88]
	mov	dword ptr [ebp - 64], ecx ## 4-byte Spill
                                        ## kill: %CL<def> %CL<kill> %ECX<kill>
	shl	eax, cl
	mov	dword ptr [ebp - 24], edx ## 4-byte Spill
	movzx	edx, byte ptr [ebx + edx + 1]
	xor	edx, eax
	mov	eax, dword ptr [esi + 84]
	mov	dword ptr [ebp - 60], eax ## 4-byte Spill
	and	edx, eax
	mov	dword ptr [esi + 72], edx
	add	ebx, 2
	mov	dword ptr [ebp - 68], ebx ## 4-byte Spill
	xor	ebx, ebx
	mov	eax, edi
	.p2align	4, 0x90
LBB5_36:                                ##   Parent Loop BB5_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [ebp - 32], ebx ## 4-byte Folded Reload
	je	LBB5_1
## BB#37:                               ##   in Loop: Header=BB5_36 Depth=2
	mov	ecx, dword ptr [ebp - 24] ## 4-byte Reload
	lea	ecx, [ecx + ebx]
	mov	dword ptr [ebp - 16], ecx ## 4-byte Spill
	mov	ecx, dword ptr [ebp - 64] ## 4-byte Reload
                                        ## kill: %CL<def> %CL<kill> %ECX<kill>
	shl	edx, cl
	mov	dword ptr [ebp - 76], eax ## 4-byte Spill
	mov	eax, dword ptr [ebp - 68] ## 4-byte Reload
	lea	edi, [eax + ebx]
	mov	eax, dword ptr [ebp - 24] ## 4-byte Reload
	movzx	edi, byte ptr [eax + edi]
	xor	edi, edx
	and	edi, dword ptr [ebp - 60] ## 4-byte Folded Reload
	mov	dword ptr [esi + 72], edi
	mov	eax, dword ptr [esi + 64]
	mov	dword ptr [ebp - 72], eax ## 4-byte Spill
	mov	eax, dword ptr [esi + 52]
	and	eax, dword ptr [ebp - 16] ## 4-byte Folded Reload
	mov	edx, dword ptr [ebp - 28] ## 4-byte Reload
	mov	esi, dword ptr [edx + 68]
	movzx	edx, word ptr [esi + 2*edi]
	mov	ecx, dword ptr [ebp - 72] ## 4-byte Reload
	mov	word ptr [ecx + 2*eax], dx
	mov	eax, dword ptr [ebp - 16] ## 4-byte Reload
	mov	word ptr [esi + 2*edi], ax
	mov	esi, dword ptr [ebp - 28] ## 4-byte Reload
	mov	eax, dword ptr [ebp - 36] ## 4-byte Reload
	mov	ecx, dword ptr [ebp - 76] ## 4-byte Reload
	lea	eax, [eax + ecx - 1]
	inc	ebx
	cmp	eax, 2
	lea	eax, [ecx - 1]
	mov	dword ptr [esi + 5812], eax
	mov	edx, edi
	ja	LBB5_36
	jmp	LBB5_1
LBB5_38:
	mov	eax, dword ptr [esi + 5824]
	mov	edx, dword ptr [esi + 60]
	mov	ecx, edx
	sub	ecx, eax
	mov	ebx, esi
	jbe	LBB5_43
## BB#39:
	mov	esi, dword ptr [ebx + 116]
	add	esi, dword ptr [ebx + 108]
	cmp	eax, esi
	jae	LBB5_41
## BB#40:
	sub	edx, esi
	cmp	edx, 258
	mov	edi, 258
	cmovb	edi, edx
	mov	eax, dword ptr [ebx + 56]
	add	eax, esi
	sub	esp, 8
	push	edi
	push	eax
	call	___bzero
	add	esp, 16
	add	edi, esi
	mov	dword ptr [ebx + 5824], edi
	jmp	LBB5_43
LBB5_41:
	add	esi, 258
	sub	esi, eax
	jbe	LBB5_43
## BB#42:
	cmp	esi, ecx
	cmova	esi, ecx
	add	eax, dword ptr [ebx + 56]
	sub	esp, 8
	push	esi
	push	eax
	call	___bzero
	add	esp, 16
	add	dword ptr [ebx + 5824], esi
LBB5_43:
	add	esp, 156
	pop	esi
	pop	edi
	pop	ebx
	pop	ebp
	ret

	.globl	_deflateResetKeep
	.p2align	4, 0x90
_deflateResetKeep:                      ## @deflateResetKeep
## BB#0:
	push	ebp
	mov	ebp, esp
	push	edi
	push	esi
	mov	esi, dword ptr [ebp + 8]
	mov	eax, -2
	test	esi, esi
	je	LBB6_10
## BB#1:
	mov	edi, dword ptr [esi + 28]
	test	edi, edi
	je	LBB6_10
## BB#2:
	cmp	dword ptr [esi + 32], 0
	je	LBB6_10
## BB#3:
	cmp	dword ptr [esi + 36], 0
	je	LBB6_10
## BB#4:
	mov	dword ptr [esi + 20], 0
	mov	dword ptr [esi + 8], 0
	mov	dword ptr [esi + 24], 0
	mov	dword ptr [esi + 44], 2
	mov	dword ptr [edi + 20], 0
	mov	eax, dword ptr [edi + 8]
	mov	dword ptr [edi + 16], eax
	mov	eax, dword ptr [edi + 24]
	test	eax, eax
	jns	LBB6_6
## BB#5:
	neg	eax
	mov	dword ptr [edi + 24], eax
LBB6_6:
	test	eax, eax
	mov	ecx, 42
	mov	edx, 113
	cmovne	edx, ecx
	mov	dword ptr [edi + 4], edx
	sub	esp, 4
	cmp	eax, 2
	jne	LBB6_8
## BB#7:
	push	0
	push	0
	push	0
	call	_crc32
	jmp	LBB6_9
LBB6_8:
	push	0
	push	0
	push	0
	call	_adler32
LBB6_9:
	add	esp, 16
	mov	dword ptr [esi + 48], eax
	mov	dword ptr [edi + 40], 0
	sub	esp, 12
	push	edi
	call	__tr_init
	add	esp, 16
	xor	eax, eax
LBB6_10:
	pop	esi
	pop	edi
	pop	ebp
	ret

	.globl	_deflateSetHeader
	.p2align	4, 0x90
_deflateSetHeader:                      ## @deflateSetHeader
## BB#0:
	push	ebp
	mov	ebp, esp
	mov	ecx, dword ptr [ebp + 8]
	mov	eax, -2
	test	ecx, ecx
	je	LBB7_4
## BB#1:
	mov	ecx, dword ptr [ecx + 28]
	test	ecx, ecx
	je	LBB7_4
## BB#2:
	cmp	dword ptr [ecx + 24], 2
	jne	LBB7_4
## BB#3:
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ecx + 28], eax
	xor	eax, eax
LBB7_4:
	pop	ebp
	ret

	.globl	_deflatePending
	.p2align	4, 0x90
_deflatePending:                        ## @deflatePending
## BB#0:
	push	ebp
	mov	ebp, esp
	push	esi
	mov	ecx, dword ptr [ebp + 8]
	mov	eax, -2
	test	ecx, ecx
	je	LBB8_6
## BB#1:
	mov	ecx, dword ptr [ecx + 28]
	test	ecx, ecx
	je	LBB8_6
## BB#2:
	mov	edx, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	test	eax, eax
	je	LBB8_4
## BB#3:
	mov	esi, dword ptr [ecx + 20]
	mov	dword ptr [eax], esi
LBB8_4:
	xor	eax, eax
	test	edx, edx
	je	LBB8_6
## BB#5:
	mov	ecx, dword ptr [ecx + 5820]
	mov	dword ptr [edx], ecx
LBB8_6:
	pop	esi
	pop	ebp
	ret

	.globl	_deflatePrime
	.p2align	4, 0x90
_deflatePrime:                          ## @deflatePrime
## BB#0:
	push	ebp
	mov	ebp, esp
	push	ebx
	push	edi
	push	esi
	sub	esp, 12
	mov	ecx, dword ptr [ebp + 8]
	mov	eax, -2
	test	ecx, ecx
	je	LBB9_6
## BB#1:
	mov	edx, dword ptr [ecx + 28]
	test	edx, edx
	je	LBB9_6
## BB#2:
	mov	ecx, dword ptr [edx + 16]
	add	ecx, 2
	mov	eax, -5
	cmp	dword ptr [edx + 5796], ecx
	jb	LBB9_6
## BB#3:
	mov	eax, dword ptr [ebp + 16]
	mov	dword ptr [ebp - 16], eax ## 4-byte Spill
	mov	dword ptr [ebp - 20], edx ## 4-byte Spill
	mov	esi, dword ptr [ebp + 12]
	mov	edi, dword ptr [ebp - 20] ## 4-byte Reload
	.p2align	4, 0x90
LBB9_4:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [edi + 5820]
	mov	ebx, 16
	sub	ebx, eax
	cmp	ebx, esi
	cmovg	ebx, esi
	mov	edx, 1
	mov	ecx, ebx
	shl	edx, cl
	dec	edx
	and	edx, dword ptr [ebp - 16] ## 4-byte Folded Reload
	mov	ecx, eax
	shl	edx, cl
	or	edx, dword ptr [edi + 5816]
	mov	word ptr [edi + 5816], dx
	add	eax, ebx
	mov	dword ptr [edi + 5820], eax
	mov	dword ptr [esp], edi
	call	__tr_flush_bits
	mov	ecx, ebx
	sar	dword ptr [ebp - 16], cl ## 4-byte Folded Spill
	sub	esi, ebx
	jne	LBB9_4
## BB#5:
	xor	eax, eax
LBB9_6:
	add	esp, 12
	pop	esi
	pop	edi
	pop	ebx
	pop	ebp
	ret

	.globl	_deflateParams
	.p2align	4, 0x90
_deflateParams:                         ## @deflateParams
## BB#0:
	push	ebp
	mov	ebp, esp
	push	ebx
	push	edi
	push	esi
	sub	esp, 12
	call	L10$pb
L10$pb:
	pop	esi
	mov	ecx, dword ptr [ebp + 8]
	mov	eax, -2
	test	ecx, ecx
	je	LBB10_14
## BB#1:
	mov	edi, dword ptr [ecx + 28]
	test	edi, edi
	je	LBB10_14
## BB#2:
	mov	edx, dword ptr [ebp + 12]
	cmp	edx, -1
	mov	ebx, 6
	cmovne	ebx, edx
	cmp	dword ptr [ebp + 16], 4
	ja	LBB10_14
## BB#3:
	cmp	ebx, 9
	ja	LBB10_14
## BB#4:
	mov	eax, dword ptr [ebp + 16]
	cmp	dword ptr [edi + 136], eax
	jne	LBB10_7
## BB#5:
	mov	eax, dword ptr [edi + 132]
	lea	eax, [eax + 2*eax]
	mov	eax, dword ptr [esi + 4*eax + (_configuration_table-L10$pb)+8]
	lea	edx, [ebx + 2*ebx]
	cmp	eax, dword ptr [esi + 4*edx + (_configuration_table-L10$pb)+8]
	je	LBB10_6
LBB10_7:
	cmp	dword ptr [ecx + 8], 0
	je	LBB10_8
## BB#9:
	sub	esp, 8
	push	5
	push	ecx
	call	_deflate
	add	esp, 16
	cmp	eax, -5
	jne	LBB10_11
## BB#10:
	mov	ecx, dword ptr [edi + 20]
	test	ecx, ecx
	mov	eax, -5
	cmove	eax, ecx
	cmp	dword ptr [edi + 132], ebx
	jne	LBB10_12
	jmp	LBB10_13
LBB10_8:
	xor	eax, eax
	cmp	dword ptr [edi + 132], ebx
	jne	LBB10_12
	jmp	LBB10_13
LBB10_6:
	xor	eax, eax
LBB10_11:
	cmp	dword ptr [edi + 132], ebx
	je	LBB10_13
LBB10_12:
	mov	dword ptr [edi + 132], ebx
	lea	ecx, [ebx + 2*ebx]
	movzx	edx, word ptr [esi + 4*ecx + (_configuration_table-L10$pb)+2]
	mov	dword ptr [edi + 128], edx
	movzx	edx, word ptr [esi + 4*ecx + _configuration_table-L10$pb]
	mov	dword ptr [edi + 140], edx
	movzx	edx, word ptr [esi + 4*ecx + (_configuration_table-L10$pb)+4]
	mov	dword ptr [edi + 144], edx
	movzx	ecx, word ptr [esi + 4*ecx + (_configuration_table-L10$pb)+6]
	mov	dword ptr [edi + 124], ecx
LBB10_13:
	mov	ecx, dword ptr [ebp + 16]
	mov	dword ptr [edi + 136], ecx
LBB10_14:
	add	esp, 12
	pop	esi
	pop	edi
	pop	ebx
	pop	ebp
	ret

	.globl	_deflate
	.p2align	4, 0x90
_deflate:                               ## @deflate
## BB#0:
	push	ebp
	mov	ebp, esp
	push	ebx
	push	edi
	push	esi
	sub	esp, 28
	call	L11$pb
L11$pb:
	pop	ecx
	mov	ebx, dword ptr [ebp + 8]
	mov	eax, -2
	test	ebx, ebx
	je	LBB11_21
## BB#1:
	cmp	dword ptr [ebp + 12], 5
	ja	LBB11_21
## BB#2:
	mov	esi, dword ptr [ebx + 28]
	test	esi, esi
	je	LBB11_21
## BB#3:
	mov	dword ptr [ebp - 28], ecx ## 4-byte Spill
	cmp	dword ptr [ebx + 12], 0
	je	LBB11_20
## BB#4:
	cmp	dword ptr [ebx], 0
	je	LBB11_19
LBB11_5:
	mov	ecx, dword ptr [esi + 4]
	cmp	dword ptr [ebp + 12], 4
	je	LBB11_7
## BB#6:
	cmp	ecx, 666
	je	LBB11_20
LBB11_7:
	cmp	dword ptr [ebx + 16], 0
	je	LBB11_184
## BB#8:
	mov	dword ptr [esi], ebx
	mov	eax, dword ptr [esi + 40]
	mov	dword ptr [ebp - 24], eax ## 4-byte Spill
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [esi + 40], eax
	cmp	ecx, 42
	mov	dword ptr [ebp - 16], esi ## 4-byte Spill
	jne	LBB11_29
## BB#9:
	cmp	dword ptr [esi + 24], 2
	jne	LBB11_22
## BB#10:
	sub	esp, 4
	push	0
	push	0
	push	0
	call	_crc32
	add	esp, 16
	mov	dword ptr [ebx + 48], eax
	mov	eax, dword ptr [esi + 8]
	mov	ecx, dword ptr [esi + 20]
	lea	edx, [ecx + 1]
	mov	dword ptr [esi + 20], edx
	mov	byte ptr [eax + ecx], 31
	mov	eax, dword ptr [esi + 8]
	mov	ecx, dword ptr [esi + 20]
	lea	edx, [ecx + 1]
	mov	dword ptr [esi + 20], edx
	mov	byte ptr [eax + ecx], -117
	mov	eax, dword ptr [esi + 8]
	mov	ecx, dword ptr [esi + 20]
	lea	edx, [ecx + 1]
	mov	dword ptr [esi + 20], edx
	mov	byte ptr [eax + ecx], 8
	mov	eax, dword ptr [esi + 28]
	test	eax, eax
	je	LBB11_107
## BB#11:
	cmp	dword ptr [eax], 0
	setne	cl
	cmp	dword ptr [eax + 44], 0
	setne	dl
	add	dl, dl
	or	dl, cl
	cmp	dword ptr [eax + 16], 0
	setne	cl
	shl	cl, 2
	cmp	dword ptr [eax + 28], 0
	setne	ch
	shl	ch, 3
	or	ch, cl
	or	ch, dl
	cmp	dword ptr [eax + 36], 0
	setne	al
	shl	al, 4
	or	al, ch
	mov	ecx, dword ptr [esi + 8]
	mov	edx, dword ptr [esi + 20]
	lea	esi, [edx + 1]
	mov	edi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	dword ptr [edi + 20], esi
	mov	byte ptr [ecx + edx], al
	mov	eax, dword ptr [ebp - 16] ## 4-byte Reload
	mov	eax, dword ptr [eax + 28]
	mov	al, byte ptr [eax + 4]
	mov	ecx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	ecx, dword ptr [ecx + 8]
	mov	edx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	edx, dword ptr [edx + 20]
	lea	esi, [edx + 1]
	mov	edi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	dword ptr [edi + 20], esi
	mov	byte ptr [ecx + edx], al
	mov	eax, dword ptr [ebp - 16] ## 4-byte Reload
	mov	eax, dword ptr [eax + 28]
	mov	al, byte ptr [eax + 5]
	mov	ecx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	ecx, dword ptr [ecx + 8]
	mov	edx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	edx, dword ptr [edx + 20]
	lea	esi, [edx + 1]
	mov	edi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	dword ptr [edi + 20], esi
	mov	byte ptr [ecx + edx], al
	mov	eax, dword ptr [ebp - 16] ## 4-byte Reload
	mov	eax, dword ptr [eax + 28]
	mov	al, byte ptr [eax + 6]
	mov	ecx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	ecx, dword ptr [ecx + 8]
	mov	edx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	edx, dword ptr [edx + 20]
	lea	esi, [edx + 1]
	mov	edi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	dword ptr [edi + 20], esi
	mov	byte ptr [ecx + edx], al
	mov	eax, dword ptr [ebp - 16] ## 4-byte Reload
	mov	eax, dword ptr [eax + 28]
	mov	al, byte ptr [eax + 7]
	mov	ecx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	ecx, dword ptr [ecx + 8]
	mov	edx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	edx, dword ptr [edx + 20]
	lea	esi, [edx + 1]
	mov	edi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	dword ptr [edi + 20], esi
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	byte ptr [ecx + edx], al
	mov	ecx, dword ptr [esi + 132]
	mov	al, 2
	cmp	ecx, 9
	je	LBB11_14
## BB#12:
	cmp	dword ptr [esi + 136], 1
	setg	dl
	cmp	ecx, 2
	mov	al, 4
	jl	LBB11_14
## BB#13:
	shl	dl, 2
	mov	eax, edx
LBB11_14:
	mov	ecx, dword ptr [esi + 8]
	mov	edx, dword ptr [esi + 20]
	lea	esi, [edx + 1]
	mov	edi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	dword ptr [edi + 20], esi
	mov	byte ptr [ecx + edx], al
	mov	eax, dword ptr [ebp - 16] ## 4-byte Reload
	mov	eax, dword ptr [eax + 28]
	mov	al, byte ptr [eax + 12]
	mov	ecx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	ecx, dword ptr [ecx + 8]
	mov	edx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	edx, dword ptr [edx + 20]
	lea	esi, [edx + 1]
	mov	edi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	dword ptr [edi + 20], esi
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	byte ptr [ecx + edx], al
	mov	eax, dword ptr [esi + 28]
	cmp	dword ptr [eax + 16], 0
	je	LBB11_16
## BB#15:
	mov	al, byte ptr [eax + 20]
	mov	ecx, dword ptr [esi + 8]
	mov	edx, dword ptr [esi + 20]
	lea	esi, [edx + 1]
	mov	edi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	dword ptr [edi + 20], esi
	mov	byte ptr [ecx + edx], al
	mov	eax, dword ptr [ebp - 16] ## 4-byte Reload
	mov	eax, dword ptr [eax + 28]
	mov	al, byte ptr [eax + 21]
	mov	ecx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	ecx, dword ptr [ecx + 8]
	mov	edx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	edx, dword ptr [edx + 20]
	lea	esi, [edx + 1]
	mov	edi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	dword ptr [edi + 20], esi
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	byte ptr [ecx + edx], al
	mov	eax, dword ptr [esi + 28]
LBB11_16:
	cmp	dword ptr [eax + 44], 0
	je	LBB11_18
## BB#17:
	sub	esp, 4
	push	dword ptr [esi + 20]
	push	dword ptr [esi + 8]
	push	dword ptr [ebx + 48]
	call	_crc32
	add	esp, 16
	mov	dword ptr [ebx + 48], eax
LBB11_18:
	lea	ecx, [esi + 28]
	mov	dword ptr [esi + 32], 0
	mov	dword ptr [esi + 4], 69
	jmp	LBB11_31
LBB11_19:
	cmp	dword ptr [ebx + 4], 0
	je	LBB11_5
LBB11_20:
	mov	ecx, dword ptr [ebp - 28] ## 4-byte Reload
	mov	ecx, dword ptr [ecx + L_z_errmsg$non_lazy_ptr-L11$pb]
	mov	ecx, dword ptr [ecx + 16]
	mov	dword ptr [ebx + 24], ecx
LBB11_21:
	add	esp, 28
	pop	esi
	pop	edi
	pop	ebx
	pop	ebp
	ret
LBB11_22:
	mov	eax, dword ptr [esi + 48]
	shl	eax, 12
	add	eax, -30720
	xor	edx, edx
	cmp	dword ptr [esi + 136], 1
	jg	LBB11_26
## BB#23:
	mov	ecx, dword ptr [esi + 132]
	cmp	ecx, 2
	jl	LBB11_26
## BB#24:
	mov	edx, 64
	cmp	ecx, 6
	jl	LBB11_26
## BB#25:
	mov	ecx, 128
	mov	edx, 192
	cmove	edx, ecx
LBB11_26:
	or	edx, eax
	mov	ecx, edx
	or	ecx, 32
	cmp	dword ptr [esi + 108], 0
	cmove	ecx, edx
	mov	edx, 138547333
	mov	eax, ecx
	mul	edx
	mov	eax, ecx
	sub	eax, edx
	shr	eax
	add	eax, edx
	shr	eax, 4
	mov	edx, eax
	shl	edx, 5
	sub	edx, eax
	mov	eax, ecx
	sub	eax, edx
	mov	dword ptr [esi + 4], 113
	mov	edx, dword ptr [esi + 8]
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	esi, dword ptr [esi + 20]
	lea	edi, [esi + 1]
	mov	ebx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	dword ptr [ebx + 20], edi
	or	eax, ecx
	mov	byte ptr [edx + esi], ch
	mov	ecx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	ecx, dword ptr [ecx + 8]
	mov	edx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	edx, dword ptr [edx + 20]
	lea	esi, [edx + 1]
	mov	edi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	dword ptr [edi + 20], esi
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
	xor	al, 31
	mov	byte ptr [ecx + edx], al
	cmp	dword ptr [esi + 108], 0
	mov	ebx, dword ptr [ebp + 8]
	je	LBB11_28
## BB#27:
	mov	eax, dword ptr [ebx + 48]
	mov	ecx, dword ptr [esi + 8]
	mov	edx, dword ptr [esi + 20]
	lea	esi, [edx + 1]
	mov	edi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	dword ptr [edi + 20], esi
	mov	ebx, eax
	shr	ebx, 16
	shr	eax, 24
	mov	byte ptr [ecx + edx], al
	mov	eax, dword ptr [ebp - 16] ## 4-byte Reload
	mov	eax, dword ptr [eax + 8]
	mov	ecx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	ecx, dword ptr [ecx + 20]
	lea	edx, [ecx + 1]
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	dword ptr [esi + 20], edx
	mov	byte ptr [eax + ecx], bl
	mov	ebx, dword ptr [ebp + 8]
	mov	eax, dword ptr [ebx + 48]
	mov	ecx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	ecx, dword ptr [ecx + 8]
	mov	edx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	edx, dword ptr [edx + 20]
	lea	esi, [edx + 1]
	mov	edi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	dword ptr [edi + 20], esi
	mov	byte ptr [ecx + edx], ah
	mov	ecx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	ecx, dword ptr [ecx + 8]
	mov	edx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	edx, dword ptr [edx + 20]
	lea	esi, [edx + 1]
	mov	edi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	dword ptr [edi + 20], esi
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	byte ptr [ecx + edx], al
LBB11_28:
	sub	esp, 4
	push	0
	push	0
	push	0
	call	_adler32
	add	esp, 16
	mov	dword ptr [ebx + 48], eax
	mov	ecx, dword ptr [esi + 4]
LBB11_29:
	cmp	ecx, 69
	jne	LBB11_52
## BB#30:
	lea	ecx, [esi + 28]
LBB11_31:
	mov	eax, dword ptr [ecx]
	cmp	dword ptr [eax + 16], 0
	je	LBB11_66
## BB#32:
	mov	dword ptr [ebp - 20], ecx ## 4-byte Spill
	mov	ecx, dword ptr [esi + 20]
	mov	edi, dword ptr [esi + 32]
	movzx	edx, word ptr [eax + 20]
	cmp	edi, edx
	jae	LBB11_46
## BB#33:
	mov	edx, ecx
	cmp	ecx, dword ptr [esi + 12]
	jne	LBB11_43
LBB11_35:
	sub	ecx, edx
	jbe	LBB11_38
## BB#36:
	mov	eax, dword ptr [eax + 44]
	test	eax, eax
	je	LBB11_38
## BB#37:
	add	edx, dword ptr [esi + 8]
	sub	esp, 4
	push	ecx
	push	edx
	push	dword ptr [ebx + 48]
	call	_crc32
	add	esp, 16
	mov	dword ptr [ebx + 48], eax
LBB11_38:
	mov	edi, dword ptr [ebx + 28]
	sub	esp, 12
	push	edi
	call	__tr_flush_bits
	add	esp, 16
	mov	eax, ebx
	mov	ebx, dword ptr [edi + 20]
	mov	eax, dword ptr [eax + 16]
	cmp	ebx, eax
	cmova	ebx, eax
	test	ebx, ebx
	je	LBB11_41
## BB#39:
	sub	esp, 4
	push	ebx
	push	dword ptr [edi + 16]
	mov	eax, dword ptr [ebp + 8]
	push	dword ptr [eax + 12]
	call	_memcpy
	add	esp, 16
	mov	eax, dword ptr [ebp + 8]
	add	dword ptr [eax + 12], ebx
	add	dword ptr [edi + 16], ebx
	add	dword ptr [eax + 20], ebx
	sub	dword ptr [eax + 16], ebx
	mov	eax, dword ptr [edi + 20]
	sub	eax, ebx
	mov	dword ptr [edi + 20], eax
	jne	LBB11_41
## BB#40:
	mov	eax, dword ptr [edi + 8]
	mov	dword ptr [edi + 16], eax
LBB11_41:
	mov	ecx, dword ptr [esi + 20]
	mov	eax, dword ptr [esi + 28]
	cmp	ecx, dword ptr [esi + 12]
	je	LBB11_45
## BB#42:
	mov	edi, dword ptr [esi + 32]
	mov	edx, ecx
	jmp	LBB11_43
LBB11_34:                               ##   in Loop: Header=BB11_43 Depth=1
	mov	ecx, dword ptr [esi + 20]
	mov	ebx, dword ptr [ebp + 8]
	cmp	ecx, dword ptr [esi + 12]
	je	LBB11_35
LBB11_43:                               ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [eax + 16]
	movzx	eax, byte ptr [eax + edi]
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	esi, dword ptr [esi + 8]
	lea	edi, [ecx + 1]
	mov	ebx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	dword ptr [ebx + 20], edi
	mov	byte ptr [esi + ecx], al
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	edi, dword ptr [esi + 32]
	inc	edi
	mov	dword ptr [esi + 32], edi
	mov	eax, dword ptr [esi + 28]
	movzx	ecx, word ptr [eax + 20]
	cmp	edi, ecx
	jb	LBB11_34
## BB#44:
	mov	ecx, edx
LBB11_45:
	mov	ebx, dword ptr [ebp + 8]
LBB11_46:
	cmp	dword ptr [eax + 44], 0
	je	LBB11_49
## BB#47:
	mov	edx, dword ptr [esi + 20]
	sub	edx, ecx
	jbe	LBB11_49
## BB#48:
	add	ecx, dword ptr [esi + 8]
	sub	esp, 4
	push	edx
	push	ecx
	push	dword ptr [ebx + 48]
	call	_crc32
	add	esp, 16
	mov	dword ptr [ebx + 48], eax
	mov	eax, dword ptr [esi + 28]
LBB11_49:
	mov	ecx, dword ptr [esi + 32]
	cmp	ecx, dword ptr [eax + 20]
	jne	LBB11_51
## BB#50:
	mov	dword ptr [esi + 32], 0
	mov	dword ptr [esi + 4], 73
	mov	ecx, dword ptr [ebp - 20] ## 4-byte Reload
	cmp	dword ptr [eax + 28], 0
	jne	LBB11_54
	jmp	LBB11_67
LBB11_66:
	mov	dword ptr [esi + 4], 73
	cmp	dword ptr [eax + 28], 0
	jne	LBB11_54
	jmp	LBB11_67
LBB11_51:
	mov	ecx, dword ptr [esi + 4]
LBB11_52:
	cmp	ecx, 73
	jne	LBB11_74
## BB#53:
	lea	ecx, [esi + 28]
	mov	eax, dword ptr [esi + 28]
	cmp	dword ptr [eax + 28], 0
	je	LBB11_67
LBB11_54:
	mov	dword ptr [ebp - 20], ecx ## 4-byte Spill
	mov	eax, dword ptr [esi + 20]
	mov	ecx, eax
	cmp	eax, dword ptr [esi + 12]
	jne	LBB11_64
	.p2align	4, 0x90
LBB11_56:
	sub	eax, ecx
	jbe	LBB11_59
## BB#57:
	mov	edx, dword ptr [ebp - 20] ## 4-byte Reload
	mov	edx, dword ptr [edx]
	mov	edx, dword ptr [edx + 44]
	test	edx, edx
	je	LBB11_59
## BB#58:
	add	ecx, dword ptr [esi + 8]
	sub	esp, 4
	push	eax
	push	ecx
	push	dword ptr [ebx + 48]
	call	_crc32
	add	esp, 16
	mov	dword ptr [ebx + 48], eax
LBB11_59:
	mov	edi, dword ptr [ebx + 28]
	sub	esp, 12
	push	edi
	call	__tr_flush_bits
	add	esp, 16
	mov	eax, ebx
	mov	ebx, dword ptr [edi + 20]
	mov	eax, dword ptr [eax + 16]
	cmp	ebx, eax
	cmova	ebx, eax
	test	ebx, ebx
	je	LBB11_62
## BB#60:
	sub	esp, 4
	push	ebx
	push	dword ptr [edi + 16]
	mov	eax, dword ptr [ebp + 8]
	mov	esi, eax
	push	dword ptr [esi + 12]
	call	_memcpy
	add	esp, 16
	add	dword ptr [esi + 12], ebx
	add	dword ptr [edi + 16], ebx
	add	dword ptr [esi + 20], ebx
	sub	dword ptr [esi + 16], ebx
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	eax, dword ptr [edi + 20]
	sub	eax, ebx
	mov	dword ptr [edi + 20], eax
	jne	LBB11_62
## BB#61:
	mov	eax, dword ptr [edi + 8]
	mov	dword ptr [edi + 16], eax
LBB11_62:
	mov	eax, dword ptr [esi + 20]
	cmp	eax, dword ptr [esi + 12]
	je	LBB11_68
## BB#63:
	mov	ecx, eax
	jmp	LBB11_64
	.p2align	4, 0x90
LBB11_55:                               ##   in Loop: Header=BB11_64 Depth=1
	mov	eax, dword ptr [esi + 20]
	mov	ebx, dword ptr [ebp + 8]
	cmp	eax, dword ptr [esi + 12]
	je	LBB11_56
LBB11_64:                               ## =>This Inner Loop Header: Depth=1
	mov	edx, dword ptr [ebp - 20] ## 4-byte Reload
	mov	edx, dword ptr [edx]
	mov	edx, dword ptr [edx + 28]
	mov	ebx, dword ptr [esi + 32]
	lea	edi, [ebx + 1]
	mov	dword ptr [esi + 32], edi
	movzx	ebx, byte ptr [edx + ebx]
	lea	edx, [eax + 1]
	mov	edi, dword ptr [esi + 8]
	mov	dword ptr [esi + 20], edx
	mov	byte ptr [edi + eax], bl
	test	ebx, ebx
	jne	LBB11_55
## BB#65:
	mov	eax, ecx
	jmp	LBB11_69
LBB11_67:
	mov	dword ptr [esi + 4], 91
	jmp	LBB11_77
LBB11_68:
	mov	ebx, 1
LBB11_69:
	mov	ecx, dword ptr [ebp - 20] ## 4-byte Reload
	mov	ecx, dword ptr [ecx]
	cmp	dword ptr [ecx + 44], 0
	je	LBB11_72
## BB#70:
	mov	ecx, dword ptr [esi + 20]
	sub	ecx, eax
	jbe	LBB11_72
## BB#71:
	add	eax, dword ptr [esi + 8]
	sub	esp, 4
	push	ecx
	push	eax
	mov	eax, dword ptr [ebp + 8]
	mov	edi, esi
	mov	esi, eax
	push	dword ptr [esi + 48]
	call	_crc32
	add	esp, 16
	mov	dword ptr [esi + 48], eax
	mov	esi, edi
LBB11_72:
	test	ebx, ebx
	je	LBB11_76
## BB#73:
	mov	ecx, dword ptr [esi + 4]
	mov	ebx, dword ptr [ebp + 8]
LBB11_74:
	cmp	ecx, 91
	jne	LBB11_97
## BB#75:
	lea	ecx, [esi + 28]
	jmp	LBB11_77
LBB11_76:
	mov	dword ptr [esi + 32], 0
	mov	dword ptr [esi + 4], 91
	mov	ebx, dword ptr [ebp + 8]
	mov	ecx, dword ptr [ebp - 20] ## 4-byte Reload
LBB11_77:
	mov	eax, dword ptr [ecx]
	cmp	dword ptr [eax + 36], 0
	je	LBB11_90
## BB#78:
	mov	dword ptr [ebp - 20], ecx ## 4-byte Spill
	mov	eax, dword ptr [esi + 20]
	mov	ecx, eax
	cmp	eax, dword ptr [esi + 12]
	jne	LBB11_88
	.p2align	4, 0x90
LBB11_80:
	sub	eax, ecx
	jbe	LBB11_83
## BB#81:
	mov	edx, dword ptr [ebp - 20] ## 4-byte Reload
	mov	edx, dword ptr [edx]
	mov	edx, dword ptr [edx + 44]
	test	edx, edx
	je	LBB11_83
## BB#82:
	add	ecx, dword ptr [esi + 8]
	sub	esp, 4
	push	eax
	push	ecx
	push	dword ptr [ebx + 48]
	call	_crc32
	add	esp, 16
	mov	dword ptr [ebx + 48], eax
LBB11_83:
	mov	edi, dword ptr [ebx + 28]
	sub	esp, 12
	push	edi
	call	__tr_flush_bits
	add	esp, 16
	mov	eax, ebx
	mov	ebx, dword ptr [edi + 20]
	mov	eax, dword ptr [eax + 16]
	cmp	ebx, eax
	cmova	ebx, eax
	test	ebx, ebx
	je	LBB11_86
## BB#84:
	sub	esp, 4
	push	ebx
	push	dword ptr [edi + 16]
	mov	eax, dword ptr [ebp + 8]
	mov	esi, eax
	push	dword ptr [esi + 12]
	call	_memcpy
	add	esp, 16
	add	dword ptr [esi + 12], ebx
	add	dword ptr [edi + 16], ebx
	add	dword ptr [esi + 20], ebx
	sub	dword ptr [esi + 16], ebx
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	eax, dword ptr [edi + 20]
	sub	eax, ebx
	mov	dword ptr [edi + 20], eax
	jne	LBB11_86
## BB#85:
	mov	eax, dword ptr [edi + 8]
	mov	dword ptr [edi + 16], eax
LBB11_86:
	mov	eax, dword ptr [esi + 20]
	cmp	eax, dword ptr [esi + 12]
	je	LBB11_91
## BB#87:
	mov	ecx, eax
	jmp	LBB11_88
	.p2align	4, 0x90
LBB11_79:                               ##   in Loop: Header=BB11_88 Depth=1
	mov	eax, dword ptr [esi + 20]
	mov	ebx, dword ptr [ebp + 8]
	cmp	eax, dword ptr [esi + 12]
	je	LBB11_80
LBB11_88:                               ## =>This Inner Loop Header: Depth=1
	mov	edx, dword ptr [ebp - 20] ## 4-byte Reload
	mov	edx, dword ptr [edx]
	mov	edx, dword ptr [edx + 36]
	mov	ebx, dword ptr [esi + 32]
	lea	edi, [ebx + 1]
	mov	dword ptr [esi + 32], edi
	movzx	ebx, byte ptr [edx + ebx]
	lea	edx, [eax + 1]
	mov	edi, dword ptr [esi + 8]
	mov	dword ptr [esi + 20], edx
	mov	byte ptr [edi + eax], bl
	test	ebx, ebx
	jne	LBB11_79
## BB#89:
	mov	eax, ecx
	jmp	LBB11_92
LBB11_90:
	mov	dword ptr [esi + 4], 103
	jmp	LBB11_100
LBB11_91:
	mov	ebx, 1
LBB11_92:
	mov	ecx, dword ptr [ebp - 20] ## 4-byte Reload
	mov	ecx, dword ptr [ecx]
	cmp	dword ptr [ecx + 44], 0
	je	LBB11_95
## BB#93:
	mov	ecx, dword ptr [esi + 20]
	sub	ecx, eax
	jbe	LBB11_95
## BB#94:
	add	eax, dword ptr [esi + 8]
	sub	esp, 4
	push	ecx
	push	eax
	mov	eax, dword ptr [ebp + 8]
	mov	edi, esi
	mov	esi, eax
	push	dword ptr [esi + 48]
	call	_crc32
	add	esp, 16
	mov	dword ptr [esi + 48], eax
	mov	esi, edi
LBB11_95:
	test	ebx, ebx
	je	LBB11_99
## BB#96:
	mov	ecx, dword ptr [esi + 4]
	mov	ebx, dword ptr [ebp + 8]
LBB11_97:
	cmp	ecx, 103
	jne	LBB11_112
## BB#98:
	lea	ecx, [esi + 28]
	jmp	LBB11_100
LBB11_99:
	mov	dword ptr [esi + 4], 103
	mov	ebx, dword ptr [ebp + 8]
	mov	ecx, dword ptr [ebp - 20] ## 4-byte Reload
LBB11_100:
	mov	eax, dword ptr [ecx]
	cmp	dword ptr [eax + 44], 0
	je	LBB11_111
## BB#101:
	mov	eax, dword ptr [esi + 20]
	add	eax, 2
	cmp	eax, dword ptr [esi + 12]
	jbe	LBB11_105
## BB#102:
	mov	eax, dword ptr [ebp + 8]
	mov	esi, eax
	mov	edi, dword ptr [esi + 28]
	sub	esp, 12
	push	edi
	call	__tr_flush_bits
	add	esp, 16
	mov	ebx, dword ptr [edi + 20]
	mov	eax, dword ptr [esi + 16]
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
	cmp	ebx, eax
	cmova	ebx, eax
	test	ebx, ebx
	je	LBB11_105
## BB#103:
	sub	esp, 4
	push	ebx
	push	dword ptr [edi + 16]
	mov	eax, dword ptr [ebp + 8]
	mov	esi, eax
	push	dword ptr [esi + 12]
	call	_memcpy
	add	esp, 16
	add	dword ptr [esi + 12], ebx
	add	dword ptr [edi + 16], ebx
	add	dword ptr [esi + 20], ebx
	sub	dword ptr [esi + 16], ebx
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	eax, dword ptr [edi + 20]
	sub	eax, ebx
	mov	dword ptr [edi + 20], eax
	jne	LBB11_105
## BB#104:
	mov	eax, dword ptr [edi + 8]
	mov	dword ptr [edi + 16], eax
LBB11_105:
	mov	eax, dword ptr [esi + 20]
	lea	ecx, [eax + 2]
	cmp	ecx, dword ptr [esi + 12]
	mov	ebx, dword ptr [ebp + 8]
	ja	LBB11_112
## BB#106:
	mov	cl, byte ptr [ebx + 48]
	mov	edx, dword ptr [esi + 8]
	lea	esi, [eax + 1]
	mov	edi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	dword ptr [edi + 20], esi
	mov	byte ptr [edx + eax], cl
	mov	al, byte ptr [ebx + 49]
	mov	ecx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	ecx, dword ptr [ecx + 8]
	mov	edx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	edx, dword ptr [edx + 20]
	lea	esi, [edx + 1]
	mov	edi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	dword ptr [edi + 20], esi
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	byte ptr [ecx + edx], al
	sub	esp, 4
	push	0
	push	0
	push	0
	call	_crc32
	add	esp, 16
	mov	dword ptr [ebx + 48], eax
	jmp	LBB11_111
LBB11_107:
	mov	eax, dword ptr [esi + 8]
	mov	ecx, dword ptr [esi + 20]
	lea	edx, [ecx + 1]
	mov	dword ptr [esi + 20], edx
	mov	byte ptr [eax + ecx], 0
	mov	eax, dword ptr [esi + 8]
	mov	ecx, dword ptr [esi + 20]
	lea	edx, [ecx + 1]
	mov	dword ptr [esi + 20], edx
	mov	byte ptr [eax + ecx], 0
	mov	eax, dword ptr [esi + 8]
	mov	ecx, dword ptr [esi + 20]
	lea	edx, [ecx + 1]
	mov	dword ptr [esi + 20], edx
	mov	byte ptr [eax + ecx], 0
	mov	eax, dword ptr [esi + 8]
	mov	ecx, dword ptr [esi + 20]
	lea	edx, [ecx + 1]
	mov	dword ptr [esi + 20], edx
	mov	byte ptr [eax + ecx], 0
	mov	eax, dword ptr [esi + 8]
	mov	ecx, dword ptr [esi + 20]
	lea	edx, [ecx + 1]
	mov	dword ptr [esi + 20], edx
	mov	byte ptr [eax + ecx], 0
	mov	ecx, dword ptr [esi + 132]
	mov	al, 2
	cmp	ecx, 9
	je	LBB11_110
## BB#108:
	cmp	dword ptr [esi + 136], 1
	setg	dl
	cmp	ecx, 2
	mov	al, 4
	jl	LBB11_110
## BB#109:
	shl	dl, 2
	mov	eax, edx
LBB11_110:
	mov	ecx, dword ptr [esi + 8]
	mov	edx, dword ptr [esi + 20]
	lea	esi, [edx + 1]
	mov	edi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	dword ptr [edi + 20], esi
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	byte ptr [ecx + edx], al
	mov	eax, dword ptr [esi + 8]
	mov	ecx, dword ptr [esi + 20]
	lea	edx, [ecx + 1]
	mov	dword ptr [esi + 20], edx
	mov	byte ptr [eax + ecx], 3
LBB11_111:
	mov	dword ptr [esi + 4], 113
LBB11_112:
	cmp	dword ptr [esi + 20], 0
	je	LBB11_119
## BB#113:
	mov	edi, dword ptr [ebx + 28]
	sub	esp, 12
	push	edi
	call	__tr_flush_bits
	add	esp, 16
	mov	eax, ebx
	mov	ebx, dword ptr [edi + 20]
	mov	eax, dword ptr [eax + 16]
	cmp	ebx, eax
	cmova	ebx, eax
	test	ebx, ebx
	je	LBB11_117
## BB#114:
	sub	esp, 4
	push	ebx
	push	dword ptr [edi + 16]
	mov	eax, dword ptr [ebp + 8]
	mov	esi, eax
	push	dword ptr [esi + 12]
	call	_memcpy
	add	esp, 16
	add	dword ptr [esi + 12], ebx
	add	dword ptr [edi + 16], ebx
	add	dword ptr [esi + 20], ebx
	mov	eax, dword ptr [esi + 16]
	sub	eax, ebx
	mov	dword ptr [esi + 16], eax
	mov	ecx, dword ptr [edi + 20]
	sub	ecx, ebx
	mov	dword ptr [edi + 20], ecx
	jne	LBB11_116
## BB#115:
	mov	ecx, dword ptr [edi + 8]
	mov	dword ptr [edi + 16], ecx
LBB11_116:
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
LBB11_117:
	test	eax, eax
	mov	ebx, dword ptr [ebp + 8]
	jne	LBB11_120
LBB11_118:
	mov	dword ptr [esi + 40], -1
	xor	eax, eax
	jmp	LBB11_21
LBB11_119:
	cmp	dword ptr [ebx + 4], 0
	je	LBB11_182
LBB11_120:
	mov	eax, dword ptr [esi + 4]
	cmp	eax, 666
	mov	ecx, dword ptr [ebx + 4]
	jne	LBB11_122
## BB#121:
	test	ecx, ecx
	jne	LBB11_184
	jmp	LBB11_123
LBB11_122:
	test	ecx, ecx
	jne	LBB11_125
LBB11_123:
	cmp	eax, 666
	sete	al
	cmp	dword ptr [ebp + 12], 0
	sete	cl
	cmp	dword ptr [esi + 116], 0
	jne	LBB11_125
## BB#124:
	or	cl, al
	jne	LBB11_222
LBB11_125:
	mov	eax, dword ptr [esi + 136]
	cmp	eax, 3
	je	LBB11_137
## BB#126:
	cmp	eax, 2
	jne	LBB11_185
LBB11_127:                              ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [esi + 116], 0
	jne	LBB11_129
## BB#128:                              ##   in Loop: Header=BB11_127 Depth=1
	mov	ecx, esi
	call	_fill_window
	cmp	dword ptr [esi + 116], 0
	je	LBB11_186
LBB11_129:                              ##   in Loop: Header=BB11_127 Depth=1
	mov	dword ptr [esi + 96], 0
	mov	eax, dword ptr [esi + 56]
	mov	ecx, dword ptr [esi + 108]
	movzx	eax, byte ptr [eax + ecx]
	mov	ecx, dword ptr [esi + 5796]
	mov	edx, dword ptr [esi + 5792]
	mov	word ptr [ecx + 2*edx], 0
	mov	ecx, dword ptr [esi + 5784]
	lea	esi, [edx + 1]
	mov	edi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	dword ptr [edi + 5792], esi
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	byte ptr [ecx + edx], al
	inc	word ptr [esi + 4*eax + 148]
	mov	ecx, dword ptr [esi + 5788]
	mov	edx, dword ptr [esi + 5792]
	dec	ecx
	dec	dword ptr [esi + 116]
	mov	eax, dword ptr [esi + 108]
	inc	eax
	cmp	edx, ecx
	mov	dword ptr [esi + 108], eax
	jne	LBB11_127
## BB#130:                              ##   in Loop: Header=BB11_127 Depth=1
	mov	ecx, dword ptr [esi + 92]
	test	ecx, ecx
	js	LBB11_132
## BB#131:                              ##   in Loop: Header=BB11_127 Depth=1
	mov	edx, dword ptr [esi + 56]
	add	edx, ecx
	jmp	LBB11_133
LBB11_132:                              ##   in Loop: Header=BB11_127 Depth=1
	xor	edx, edx
LBB11_133:                              ##   in Loop: Header=BB11_127 Depth=1
	sub	eax, ecx
	push	0
	push	eax
	push	edx
	push	esi
	call	__tr_flush_block
	add	esp, 16
	mov	eax, dword ptr [esi + 108]
	mov	dword ptr [esi + 92], eax
	mov	ebx, dword ptr [esi]
	mov	edi, dword ptr [ebx + 28]
	sub	esp, 12
	push	edi
	call	__tr_flush_bits
	add	esp, 16
	mov	esi, dword ptr [edi + 20]
	mov	eax, dword ptr [ebx + 16]
	cmp	esi, eax
	cmova	esi, eax
	test	esi, esi
	je	LBB11_136
## BB#134:                              ##   in Loop: Header=BB11_127 Depth=1
	sub	esp, 4
	push	esi
	push	dword ptr [edi + 16]
	push	dword ptr [ebx + 12]
	call	_memcpy
	add	esp, 16
	add	dword ptr [ebx + 12], esi
	add	dword ptr [edi + 16], esi
	add	dword ptr [ebx + 20], esi
	sub	dword ptr [ebx + 16], esi
	mov	eax, dword ptr [edi + 20]
	sub	eax, esi
	mov	dword ptr [edi + 20], eax
	jne	LBB11_136
## BB#135:                              ##   in Loop: Header=BB11_127 Depth=1
	mov	eax, dword ptr [edi + 8]
	mov	dword ptr [edi + 16], eax
LBB11_136:                              ##   in Loop: Header=BB11_127 Depth=1
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	eax, dword ptr [esi]
	cmp	dword ptr [eax + 16], 0
	mov	ebx, dword ptr [ebp + 8]
	jne	LBB11_127
	jmp	LBB11_180
LBB11_140:                              ##   in Loop: Header=BB11_137 Depth=1
	test	eax, eax
	je	LBB11_190
## BB#141:                              ##   in Loop: Header=BB11_137 Depth=1
	mov	dword ptr [esi + 96], 0
	cmp	eax, 2
	ja	LBB11_144
## BB#142:                              ##   in Loop: Header=BB11_137 Depth=1
	mov	ecx, dword ptr [esi + 108]
	jmp	LBB11_172
LBB11_143:                              ##   in Loop: Header=BB11_137 Depth=1
	mov	dword ptr [esi + 96], 0
LBB11_144:                              ##   in Loop: Header=BB11_137 Depth=1
	mov	ecx, dword ptr [esi + 108]
	test	ecx, ecx
	je	LBB11_171
## BB#145:                              ##   in Loop: Header=BB11_137 Depth=1
	mov	edx, dword ptr [esi + 56]
	mov	bl, byte ptr [edx + ecx - 1]
	cmp	bl, byte ptr [edx + ecx]
	jne	LBB11_160
## BB#146:                              ##   in Loop: Header=BB11_137 Depth=1
	add	edx, ecx
	cmp	bl, byte ptr [edx + 1]
	jne	LBB11_160
## BB#147:                              ##   in Loop: Header=BB11_137 Depth=1
	cmp	bl, byte ptr [edx + 2]
	jne	LBB11_160
## BB#148:                              ##   in Loop: Header=BB11_137 Depth=1
	lea	esi, [edx + 258]
	mov	dword ptr [ebp - 32], esi ## 4-byte Spill
	mov	dword ptr [ebp - 20], 1 ## 4-byte Folded Spill
	mov	edi, 10
LBB11_149:                              ##   Parent Loop BB11_137 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	bl, byte ptr [edx + edi - 7]
	jne	LBB11_161
## BB#150:                              ##   in Loop: Header=BB11_149 Depth=2
	mov	esi, dword ptr [ebp - 20] ## 4-byte Reload
	lea	esi, [edx + esi]
	mov	dword ptr [ebp - 24], esi ## 4-byte Spill
	cmp	bl, byte ptr [edx + edi - 6]
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
	jne	LBB11_163
## BB#151:                              ##   in Loop: Header=BB11_149 Depth=2
	cmp	bl, byte ptr [edx + edi - 5]
	jne	LBB11_164
## BB#152:                              ##   in Loop: Header=BB11_149 Depth=2
	cmp	bl, byte ptr [edx + edi - 4]
	jne	LBB11_165
## BB#153:                              ##   in Loop: Header=BB11_149 Depth=2
	cmp	bl, byte ptr [edx + edi - 3]
	jne	LBB11_166
## BB#154:                              ##   in Loop: Header=BB11_149 Depth=2
	cmp	bl, byte ptr [edx + edi - 2]
	jne	LBB11_167
## BB#155:                              ##   in Loop: Header=BB11_149 Depth=2
	cmp	bl, byte ptr [edx + edi - 1]
	jne	LBB11_168
## BB#156:                              ##   in Loop: Header=BB11_149 Depth=2
	lea	esi, [edi + 8]
	cmp	edi, 257
	jg	LBB11_158
## BB#157:                              ##   in Loop: Header=BB11_149 Depth=2
	add	dword ptr [ebp - 20], 8 ## 4-byte Folded Spill
	cmp	bl, byte ptr [edx + edi]
	mov	edi, esi
	je	LBB11_149
LBB11_158:                              ##   in Loop: Header=BB11_137 Depth=1
	lea	edx, [esi + edx - 8]
	jmp	LBB11_162
LBB11_160:                              ##   in Loop: Header=BB11_137 Depth=1
	mov	ebx, dword ptr [ebp + 8]
	jmp	LBB11_172
LBB11_171:                              ##   in Loop: Header=BB11_137 Depth=1
	xor	ecx, ecx
LBB11_172:                              ##   in Loop: Header=BB11_137 Depth=1
	mov	eax, dword ptr [esi + 56]
	movzx	eax, byte ptr [eax + ecx]
	mov	ecx, dword ptr [esi + 5796]
	mov	edx, dword ptr [esi + 5792]
	mov	word ptr [ecx + 2*edx], 0
	mov	ecx, dword ptr [esi + 5784]
	lea	esi, [edx + 1]
	mov	edi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	dword ptr [edi + 5792], esi
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	byte ptr [ecx + edx], al
	inc	word ptr [esi + 4*eax + 148]
	mov	eax, dword ptr [esi + 5788]
	dec	eax
	xor	ecx, ecx
	cmp	dword ptr [esi + 5792], eax
	sete	cl
	dec	dword ptr [esi + 116]
	mov	eax, dword ptr [esi + 108]
	inc	eax
	mov	dword ptr [esi + 108], eax
	test	ecx, ecx
	je	LBB11_137
LBB11_173:                              ##   in Loop: Header=BB11_137 Depth=1
	mov	ecx, dword ptr [esi + 92]
	test	ecx, ecx
	js	LBB11_175
## BB#174:                              ##   in Loop: Header=BB11_137 Depth=1
	mov	edx, dword ptr [esi + 56]
	add	edx, ecx
	jmp	LBB11_176
LBB11_175:                              ##   in Loop: Header=BB11_137 Depth=1
	xor	edx, edx
LBB11_176:                              ##   in Loop: Header=BB11_137 Depth=1
	sub	eax, ecx
	push	0
	push	eax
	push	edx
	push	esi
	call	__tr_flush_block
	add	esp, 16
	mov	eax, dword ptr [esi + 108]
	mov	dword ptr [esi + 92], eax
	mov	ebx, dword ptr [esi]
	mov	edi, dword ptr [ebx + 28]
	sub	esp, 12
	push	edi
	call	__tr_flush_bits
	add	esp, 16
	mov	esi, dword ptr [edi + 20]
	mov	eax, dword ptr [ebx + 16]
	cmp	esi, eax
	cmova	esi, eax
	test	esi, esi
	je	LBB11_179
## BB#177:                              ##   in Loop: Header=BB11_137 Depth=1
	sub	esp, 4
	push	esi
	push	dword ptr [edi + 16]
	push	dword ptr [ebx + 12]
	call	_memcpy
	add	esp, 16
	add	dword ptr [ebx + 12], esi
	add	dword ptr [edi + 16], esi
	add	dword ptr [ebx + 20], esi
	sub	dword ptr [ebx + 16], esi
	mov	eax, dword ptr [edi + 20]
	sub	eax, esi
	mov	dword ptr [edi + 20], eax
	jne	LBB11_179
## BB#178:                              ##   in Loop: Header=BB11_137 Depth=1
	mov	eax, dword ptr [edi + 8]
	mov	dword ptr [edi + 16], eax
LBB11_179:                              ##   in Loop: Header=BB11_137 Depth=1
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	eax, dword ptr [esi]
	cmp	dword ptr [eax + 16], 0
	mov	ebx, dword ptr [ebp + 8]
	jne	LBB11_137
	jmp	LBB11_180
LBB11_161:                              ##   in Loop: Header=BB11_137 Depth=1
	mov	esi, dword ptr [ebp - 20] ## 4-byte Reload
	lea	edx, [edx + esi + 2]
LBB11_162:                              ##   in Loop: Header=BB11_137 Depth=1
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
	jmp	LBB11_169
LBB11_163:                              ##   in Loop: Header=BB11_137 Depth=1
	mov	edx, dword ptr [ebp - 24] ## 4-byte Reload
	add	edx, 3
	jmp	LBB11_169
LBB11_164:                              ##   in Loop: Header=BB11_137 Depth=1
	mov	edx, dword ptr [ebp - 24] ## 4-byte Reload
	add	edx, 4
	jmp	LBB11_169
LBB11_165:                              ##   in Loop: Header=BB11_137 Depth=1
	mov	edx, dword ptr [ebp - 24] ## 4-byte Reload
	add	edx, 5
	jmp	LBB11_169
LBB11_166:                              ##   in Loop: Header=BB11_137 Depth=1
	mov	edx, dword ptr [ebp - 24] ## 4-byte Reload
	add	edx, 6
	jmp	LBB11_169
LBB11_167:                              ##   in Loop: Header=BB11_137 Depth=1
	mov	edx, dword ptr [ebp - 24] ## 4-byte Reload
	add	edx, 7
	jmp	LBB11_169
LBB11_168:                              ##   in Loop: Header=BB11_137 Depth=1
	mov	edi, dword ptr [ebp - 20] ## 4-byte Reload
	lea	edx, [edx + edi + 8]
LBB11_169:                              ##   in Loop: Header=BB11_137 Depth=1
	sub	edx, dword ptr [ebp - 32] ## 4-byte Folded Reload
	add	edx, 258
	cmp	edx, eax
	cmova	edx, eax
	mov	dword ptr [esi + 96], edx
	cmp	edx, 3
	mov	ebx, dword ptr [ebp + 8]
	jb	LBB11_172
## BB#170:                              ##   in Loop: Header=BB11_137 Depth=1
	mov	eax, dword ptr [esi + 5792]
	mov	ecx, dword ptr [esi + 5796]
	mov	word ptr [ecx + 2*eax], 1
	mov	edi, dword ptr [esi + 5784]
	mov	ecx, edx
	lea	edx, [eax + 1]
	mov	dword ptr [esi + 5792], edx
	add	ecx, 253
	mov	byte ptr [edi + eax], cl
	movzx	eax, cl
	mov	edx, dword ptr [ebp - 28] ## 4-byte Reload
	mov	ecx, dword ptr [edx + L__length_code$non_lazy_ptr-L11$pb]
	movzx	eax, byte ptr [ecx + eax]
	inc	word ptr [esi + 4*eax + 1176]
	mov	eax, dword ptr [edx + L__dist_code$non_lazy_ptr-L11$pb]
	movzx	eax, byte ptr [eax]
	inc	word ptr [esi + 4*eax + 2440]
	mov	eax, dword ptr [esi + 5788]
	dec	eax
	xor	ecx, ecx
	cmp	dword ptr [esi + 5792], eax
	sete	cl
	mov	eax, dword ptr [esi + 96]
	sub	dword ptr [esi + 116], eax
	add	eax, dword ptr [esi + 108]
	mov	dword ptr [esi + 108], eax
	mov	dword ptr [esi + 96], 0
	test	ecx, ecx
	jne	LBB11_173
LBB11_137:                              ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB11_149 Depth 2
	mov	eax, dword ptr [esi + 116]
	cmp	eax, 259
	jae	LBB11_143
## BB#138:                              ##   in Loop: Header=BB11_137 Depth=1
	mov	ecx, esi
	call	_fill_window
	cmp	dword ptr [ebp + 12], 0
	mov	eax, dword ptr [esi + 116]
	jne	LBB11_140
## BB#139:                              ##   in Loop: Header=BB11_137 Depth=1
	cmp	eax, 259
	jae	LBB11_140
	jmp	LBB11_180
LBB11_182:
	xor	edx, edx
	mov	eax, dword ptr [ebp + 12]
	mov	edi, esi
	mov	esi, eax
	cmp	esi, 4
	setg	ch
	xor	eax, eax
	cmp	dword ptr [ebp - 24], 4 ## 4-byte Folded Reload
	setg	cl
	cmp	esi, 4
	mov	esi, edi
	je	LBB11_120
## BB#183:
	mov	dl, ch
	mov	esi, dword ptr [ebp + 12]
	lea	esi, [esi + esi]
	lea	edx, [edx + 8*edx]
	sub	esi, edx
	mov	al, cl
	mov	ecx, dword ptr [ebp - 24] ## 4-byte Reload
	add	ecx, ecx
	lea	eax, [eax + 8*eax]
	sub	ecx, eax
	cmp	esi, ecx
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
	jg	LBB11_120
LBB11_184:
	mov	eax, dword ptr [ebp - 28] ## 4-byte Reload
	mov	eax, dword ptr [eax + L_z_errmsg$non_lazy_ptr-L11$pb]
	mov	eax, dword ptr [eax + 28]
	mov	dword ptr [ebx + 24], eax
	mov	eax, -5
	jmp	LBB11_21
LBB11_185:
	mov	eax, dword ptr [esi + 132]
	lea	eax, [eax + 2*eax]
	sub	esp, 8
	push	dword ptr [ebp + 12]
	push	esi
	mov	ecx, dword ptr [ebp - 28] ## 4-byte Reload
	call	dword ptr [ecx + 4*eax + (_configuration_table-L11$pb)+8]
	add	esp, 16
	jmp	LBB11_197
LBB11_186:
	cmp	dword ptr [ebp + 12], 0
	je	LBB11_180
## BB#187:
	mov	dword ptr [esi + 5812], 0
	cmp	dword ptr [ebp + 12], 4
	je	LBB11_188
## BB#204:
	cmp	dword ptr [esi + 5792], 0
	jne	LBB11_202
	jmp	LBB11_211
LBB11_190:
	mov	dword ptr [esi + 5812], 0
	cmp	dword ptr [ebp + 12], 4
	jne	LBB11_201
LBB11_188:
	mov	eax, dword ptr [esi + 92]
	test	eax, eax
	js	LBB11_189
## BB#192:
	mov	ecx, dword ptr [esi + 56]
	add	ecx, eax
	jmp	LBB11_193
LBB11_201:
	cmp	dword ptr [esi + 5792], 0
	je	LBB11_211
LBB11_202:
	mov	eax, dword ptr [esi + 92]
	test	eax, eax
	js	LBB11_203
## BB#206:
	mov	ecx, dword ptr [esi + 56]
	add	ecx, eax
	jmp	LBB11_207
LBB11_189:
	xor	ecx, ecx
LBB11_193:
	mov	edx, dword ptr [esi + 108]
	sub	edx, eax
	push	1
	push	edx
	push	ecx
	push	esi
	call	__tr_flush_block
	add	esp, 16
	mov	eax, dword ptr [esi + 108]
	mov	dword ptr [esi + 92], eax
	mov	ebx, dword ptr [esi]
	mov	edi, dword ptr [ebx + 28]
	sub	esp, 12
	push	edi
	call	__tr_flush_bits
	add	esp, 16
	mov	esi, dword ptr [edi + 20]
	mov	eax, dword ptr [ebx + 16]
	cmp	esi, eax
	cmova	esi, eax
	test	esi, esi
	je	LBB11_196
## BB#194:
	sub	esp, 4
	push	esi
	push	dword ptr [edi + 16]
	push	dword ptr [ebx + 12]
	call	_memcpy
	add	esp, 16
	add	dword ptr [ebx + 12], esi
	add	dword ptr [edi + 16], esi
	add	dword ptr [ebx + 20], esi
	sub	dword ptr [ebx + 16], esi
	mov	eax, dword ptr [edi + 20]
	sub	eax, esi
	mov	dword ptr [edi + 20], eax
	jne	LBB11_196
## BB#195:
	mov	eax, dword ptr [edi + 8]
	mov	dword ptr [edi + 16], eax
LBB11_196:
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	ecx, dword ptr [esi]
	xor	eax, eax
	cmp	dword ptr [ecx + 16], 0
	setne	al
	or	eax, 2
	mov	ebx, dword ptr [ebp + 8]
LBB11_197:
	mov	ecx, eax
	or	ecx, 1
	cmp	ecx, 3
	jne	LBB11_199
## BB#198:
	mov	dword ptr [esi + 4], 666
LBB11_199:
	mov	ecx, eax
	or	ecx, 2
	cmp	ecx, 2
	jne	LBB11_200
LBB11_180:
	xor	eax, eax
	cmp	dword ptr [ebx + 16], 0
	jne	LBB11_21
## BB#181:
	mov	dword ptr [esi + 40], -1
	jmp	LBB11_21
LBB11_200:
	cmp	eax, 1
	je	LBB11_211
	jmp	LBB11_222
LBB11_203:
	xor	ecx, ecx
LBB11_207:
	mov	edx, dword ptr [esi + 108]
	sub	edx, eax
	push	0
	push	edx
	push	ecx
	push	esi
	call	__tr_flush_block
	add	esp, 16
	mov	eax, dword ptr [esi + 108]
	mov	dword ptr [esi + 92], eax
	mov	ebx, dword ptr [esi]
	mov	edi, dword ptr [ebx + 28]
	sub	esp, 12
	push	edi
	call	__tr_flush_bits
	add	esp, 16
	mov	esi, dword ptr [edi + 20]
	mov	eax, dword ptr [ebx + 16]
	cmp	esi, eax
	cmova	esi, eax
	test	esi, esi
	je	LBB11_210
## BB#208:
	sub	esp, 4
	push	esi
	push	dword ptr [edi + 16]
	push	dword ptr [ebx + 12]
	call	_memcpy
	add	esp, 16
	add	dword ptr [ebx + 12], esi
	add	dword ptr [edi + 16], esi
	add	dword ptr [ebx + 20], esi
	sub	dword ptr [ebx + 16], esi
	mov	eax, dword ptr [edi + 20]
	sub	eax, esi
	mov	dword ptr [edi + 20], eax
	jne	LBB11_210
## BB#209:
	mov	eax, dword ptr [edi + 8]
	mov	dword ptr [edi + 16], eax
LBB11_210:
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	eax, dword ptr [esi]
	cmp	dword ptr [eax + 16], 0
	mov	ebx, dword ptr [ebp + 8]
	je	LBB11_180
LBB11_211:
	mov	eax, dword ptr [ebp + 12]
	cmp	eax, 5
	je	LBB11_217
## BB#212:
	mov	ecx, esi
	cmp	eax, 1
	mov	esi, eax
	jne	LBB11_214
## BB#213:
	sub	esp, 12
	mov	esi, ecx
	push	esi
	call	__tr_align
	add	esp, 16
	jmp	LBB11_217
LBB11_214:
	push	0
	push	0
	push	0
	mov	edi, ecx
	push	edi
	call	__tr_stored_block
	add	esp, 16
	cmp	esi, 3
	mov	esi, edi
	jne	LBB11_217
## BB#215:
	mov	eax, dword ptr [esi + 68]
	mov	ecx, dword ptr [esi + 76]
	mov	word ptr [eax + 2*ecx - 2], 0
	lea	ecx, [ecx + ecx - 2]
	sub	esp, 8
	push	ecx
	push	eax
	call	___bzero
	add	esp, 16
	cmp	dword ptr [esi + 116], 0
	jne	LBB11_217
## BB#216:
	mov	dword ptr [esi + 108], 0
	mov	dword ptr [esi + 92], 0
	mov	dword ptr [esi + 5812], 0
LBB11_217:
	mov	edi, dword ptr [ebx + 28]
	sub	esp, 12
	push	edi
	call	__tr_flush_bits
	add	esp, 16
	mov	eax, ebx
	mov	ebx, dword ptr [edi + 20]
	mov	eax, dword ptr [eax + 16]
	cmp	ebx, eax
	cmova	ebx, eax
	test	ebx, ebx
	je	LBB11_221
## BB#218:
	sub	esp, 4
	push	ebx
	push	dword ptr [edi + 16]
	mov	eax, dword ptr [ebp + 8]
	mov	esi, eax
	push	dword ptr [esi + 12]
	call	_memcpy
	add	esp, 16
	add	dword ptr [esi + 12], ebx
	add	dword ptr [edi + 16], ebx
	add	dword ptr [esi + 20], ebx
	mov	eax, dword ptr [esi + 16]
	sub	eax, ebx
	mov	dword ptr [esi + 16], eax
	mov	ecx, dword ptr [edi + 20]
	sub	ecx, ebx
	mov	dword ptr [edi + 20], ecx
	jne	LBB11_220
## BB#219:
	mov	ecx, dword ptr [edi + 8]
	mov	dword ptr [edi + 16], ecx
LBB11_220:
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
LBB11_221:
	test	eax, eax
	mov	ebx, dword ptr [ebp + 8]
	je	LBB11_118
LBB11_222:
	xor	eax, eax
	cmp	dword ptr [ebp + 12], 4
	jne	LBB11_21
## BB#223:
	mov	eax, dword ptr [esi + 24]
	test	eax, eax
	jle	LBB11_226
## BB#224:
	cmp	eax, 2
	mov	eax, dword ptr [ebx + 48]
	jne	LBB11_227
## BB#225:
	mov	ecx, dword ptr [esi + 8]
	mov	edx, dword ptr [esi + 20]
	mov	edi, esi
	lea	esi, [edx + 1]
	mov	dword ptr [edi + 20], esi
	mov	byte ptr [ecx + edx], al
	mov	al, byte ptr [ebx + 49]
	mov	ecx, dword ptr [edi + 8]
	mov	edx, dword ptr [edi + 20]
	lea	esi, [edx + 1]
	mov	dword ptr [edi + 20], esi
	mov	byte ptr [ecx + edx], al
	mov	al, byte ptr [ebx + 50]
	mov	ecx, dword ptr [edi + 8]
	mov	edx, dword ptr [edi + 20]
	lea	esi, [edx + 1]
	mov	dword ptr [edi + 20], esi
	mov	byte ptr [ecx + edx], al
	mov	al, byte ptr [ebx + 51]
	mov	ecx, dword ptr [edi + 8]
	mov	edx, dword ptr [edi + 20]
	lea	esi, [edx + 1]
	mov	dword ptr [edi + 20], esi
	mov	byte ptr [ecx + edx], al
	mov	al, byte ptr [ebx + 8]
	mov	ecx, dword ptr [edi + 8]
	mov	edx, dword ptr [edi + 20]
	lea	esi, [edx + 1]
	mov	dword ptr [edi + 20], esi
	mov	byte ptr [ecx + edx], al
	mov	al, byte ptr [ebx + 9]
	mov	ecx, dword ptr [edi + 8]
	mov	edx, dword ptr [edi + 20]
	lea	esi, [edx + 1]
	mov	dword ptr [edi + 20], esi
	mov	byte ptr [ecx + edx], al
	mov	al, byte ptr [ebx + 10]
	mov	ecx, dword ptr [edi + 8]
	mov	edx, dword ptr [edi + 20]
	lea	esi, [edx + 1]
	mov	dword ptr [edi + 20], esi
	mov	byte ptr [ecx + edx], al
	mov	al, byte ptr [ebx + 11]
	mov	ecx, dword ptr [edi + 8]
	mov	edx, dword ptr [edi + 20]
	lea	esi, [edx + 1]
	mov	dword ptr [edi + 20], esi
	mov	byte ptr [ecx + edx], al
	jmp	LBB11_228
LBB11_226:
	mov	eax, 1
	jmp	LBB11_21
LBB11_227:
	mov	ecx, dword ptr [esi + 8]
	mov	edx, dword ptr [esi + 20]
	mov	edi, esi
	lea	esi, [edx + 1]
	mov	dword ptr [edi + 20], esi
	mov	ebx, eax
	shr	ebx, 16
	shr	eax, 24
	mov	byte ptr [ecx + edx], al
	mov	eax, dword ptr [edi + 8]
	mov	ecx, dword ptr [edi + 20]
	lea	edx, [ecx + 1]
	mov	dword ptr [edi + 20], edx
	mov	byte ptr [eax + ecx], bl
	mov	ebx, dword ptr [ebp + 8]
	mov	eax, dword ptr [ebx + 48]
	mov	ecx, dword ptr [edi + 8]
	mov	edx, dword ptr [edi + 20]
	lea	esi, [edx + 1]
	mov	dword ptr [edi + 20], esi
	mov	byte ptr [ecx + edx], ah
	mov	ecx, dword ptr [edi + 8]
	mov	edx, dword ptr [edi + 20]
	lea	esi, [edx + 1]
	mov	dword ptr [edi + 20], esi
	mov	byte ptr [ecx + edx], al
LBB11_228:
	mov	edi, dword ptr [ebx + 28]
	sub	esp, 12
	push	edi
	call	__tr_flush_bits
	add	esp, 16
	mov	esi, dword ptr [edi + 20]
	mov	eax, dword ptr [ebx + 16]
	cmp	esi, eax
	cmova	esi, eax
	test	esi, esi
	je	LBB11_231
## BB#229:
	sub	esp, 4
	push	esi
	push	dword ptr [edi + 16]
	push	dword ptr [ebx + 12]
	call	_memcpy
	add	esp, 16
	add	dword ptr [ebx + 12], esi
	add	dword ptr [edi + 16], esi
	add	dword ptr [ebx + 20], esi
	sub	dword ptr [ebx + 16], esi
	mov	eax, dword ptr [edi + 20]
	sub	eax, esi
	mov	dword ptr [edi + 20], eax
	jne	LBB11_231
## BB#230:
	mov	eax, dword ptr [edi + 8]
	mov	dword ptr [edi + 16], eax
LBB11_231:
	mov	ecx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	eax, dword ptr [ecx + 24]
	test	eax, eax
	jle	LBB11_233
## BB#232:
	neg	eax
	mov	dword ptr [ecx + 24], eax
LBB11_233:
	xor	eax, eax
	cmp	dword ptr [ecx + 20], 0
	sete	al
	jmp	LBB11_21

	.globl	_deflateTune
	.p2align	4, 0x90
_deflateTune:                           ## @deflateTune
## BB#0:
	push	ebp
	mov	ebp, esp
	push	edi
	push	esi
	mov	ecx, dword ptr [ebp + 8]
	mov	eax, -2
	test	ecx, ecx
	je	LBB12_3
## BB#1:
	mov	ecx, dword ptr [ecx + 28]
	test	ecx, ecx
	je	LBB12_3
## BB#2:
	mov	eax, dword ptr [ebp + 24]
	mov	edx, dword ptr [ebp + 20]
	mov	esi, dword ptr [ebp + 16]
	mov	edi, dword ptr [ebp + 12]
	mov	dword ptr [ecx + 140], edi
	mov	dword ptr [ecx + 128], esi
	mov	dword ptr [ecx + 144], edx
	mov	dword ptr [ecx + 124], eax
	xor	eax, eax
LBB12_3:
	pop	esi
	pop	edi
	pop	ebp
	ret

	.globl	_deflateBound
	.p2align	4, 0x90
_deflateBound:                          ## @deflateBound
## BB#0:
	push	ebp
	mov	ebp, esp
	push	ebx
	push	edi
	push	esi
	sub	esp, 12
	mov	edx, dword ptr [ebp + 12]
	mov	ecx, dword ptr [ebp + 8]
	lea	ebx, [edx + 7]
	mov	eax, ebx
	shr	eax, 3
	add	eax, edx
	lea	esi, [edx + 63]
	shr	esi, 6
	test	ecx, ecx
	je	LBB13_2
## BB#1:
	mov	edi, dword ptr [ecx + 28]
	test	edi, edi
	je	LBB13_2
## BB#3:
	mov	ecx, dword ptr [edi + 24]
	test	ecx, ecx
	je	LBB13_4
## BB#5:
	cmp	ecx, 2
	je	LBB13_8
## BB#6:
	cmp	ecx, 1
	jne	LBB13_18
## BB#7:
	xor	ecx, ecx
	cmp	dword ptr [edi + 108], 0
	setne	cl
	lea	ecx, [4*ecx + 6]
	cmp	dword ptr [edi + 48], 15
	je	LBB13_20
	jmp	LBB13_21
LBB13_2:
	add	eax, esi
	add	eax, 11
	jmp	LBB13_23
LBB13_4:
	xor	ecx, ecx
	cmp	dword ptr [edi + 48], 15
	je	LBB13_20
	jmp	LBB13_21
LBB13_8:
	mov	ecx, dword ptr [edi + 28]
	test	ecx, ecx
	je	LBB13_9
## BB#10:
	mov	dword ptr [ebp - 24], ebx ## 4-byte Spill
	cmp	dword ptr [ecx + 16], 0
	je	LBB13_11
## BB#12:
	mov	ebx, dword ptr [ecx + 20]
	add	ebx, 20
	jmp	LBB13_13
LBB13_18:
	mov	ecx, 6
	cmp	dword ptr [edi + 48], 15
	je	LBB13_20
	jmp	LBB13_21
LBB13_9:
	mov	ecx, 18
	cmp	dword ptr [edi + 48], 15
	je	LBB13_20
	jmp	LBB13_21
LBB13_11:
	mov	ebx, 18
LBB13_13:
	mov	dword ptr [ebp - 16], ecx ## 4-byte Spill
	mov	ecx, dword ptr [ecx + 28]
	test	ecx, ecx
	je	LBB13_15
	.p2align	4, 0x90
LBB13_14:                               ## =>This Inner Loop Header: Depth=1
	inc	ebx
	cmp	byte ptr [ecx], 0
	lea	ecx, [ecx + 1]
	jne	LBB13_14
LBB13_15:
	mov	ecx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	ecx, dword ptr [ecx + 36]
	test	ecx, ecx
	je	LBB13_17
	.p2align	4, 0x90
LBB13_16:                               ## =>This Inner Loop Header: Depth=1
	inc	ebx
	cmp	byte ptr [ecx], 0
	lea	ecx, [ecx + 1]
	jne	LBB13_16
LBB13_17:
	lea	ecx, [ebx + 2]
	mov	dword ptr [ebp - 20], ecx ## 4-byte Spill
	mov	ecx, dword ptr [ebp - 16] ## 4-byte Reload
	cmp	dword ptr [ecx + 44], 0
	mov	ecx, dword ptr [ebp - 20] ## 4-byte Reload
	cmove	ecx, ebx
	mov	ebx, dword ptr [ebp - 24] ## 4-byte Reload
	cmp	dword ptr [edi + 48], 15
	jne	LBB13_21
LBB13_20:
	cmp	dword ptr [edi + 80], 15
	jne	LBB13_21
## BB#22:
	mov	eax, edx
	shr	eax, 12
	mov	esi, ecx
	mov	ecx, edx
	shr	ecx, 14
	shr	edx, 25
	add	ebx, eax
	add	ebx, ecx
	add	ebx, edx
	add	ebx, esi
	mov	eax, ebx
	jmp	LBB13_23
LBB13_21:
	lea	eax, [esi + eax + 5]
	add	eax, ecx
LBB13_23:
	add	esp, 12
	pop	esi
	pop	edi
	pop	ebx
	pop	ebp
	ret

	.globl	_deflateCopy
	.p2align	4, 0x90
_deflateCopy:                           ## @deflateCopy
## BB#0:
	push	ebp
	mov	ebp, esp
	push	ebx
	push	edi
	push	esi
	sub	esp, 12
	call	L14$pb
L14$pb:
	pop	edx
	mov	ebx, dword ptr [ebp + 8]
	test	ebx, ebx
	mov	esi, -2
	je	LBB14_22
## BB#1:
	mov	eax, dword ptr [ebp + 12]
	test	eax, eax
	je	LBB14_22
## BB#2:
	mov	ecx, dword ptr [eax + 28]
	mov	dword ptr [ebp - 16], ecx ## 4-byte Spill
	test	ecx, ecx
	je	LBB14_22
## BB#3:
	mov	dword ptr [ebp - 20], edx ## 4-byte Spill
	movsd	xmm0, qword ptr [eax + 48] ## xmm0 = mem[0],zero
	movsd	qword ptr [ebx + 48], xmm0
	movsd	xmm0, qword ptr [eax + 40] ## xmm0 = mem[0],zero
	movsd	qword ptr [ebx + 40], xmm0
	movsd	xmm0, qword ptr [eax + 32] ## xmm0 = mem[0],zero
	movsd	qword ptr [ebx + 32], xmm0
	movsd	xmm0, qword ptr [eax + 24] ## xmm0 = mem[0],zero
	movsd	qword ptr [ebx + 24], xmm0
	movsd	xmm0, qword ptr [eax + 16] ## xmm0 = mem[0],zero
	movsd	qword ptr [ebx + 16], xmm0
	movsd	xmm0, qword ptr [eax]   ## xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [eax + 8] ## xmm1 = mem[0],zero
	movsd	qword ptr [ebx + 8], xmm1
	movsd	qword ptr [ebx], xmm0
	sub	esp, 4
	push	5828
	push	1
	push	dword ptr [ebx + 40]
	call	dword ptr [ebx + 32]
	add	esp, 16
	mov	edi, eax
	mov	esi, -4
	test	edi, edi
	je	LBB14_22
## BB#4:
	mov	dword ptr [ebx + 28], edi
	sub	esp, 4
	push	5828
	push	dword ptr [ebp - 16]    ## 4-byte Folded Reload
	push	edi
	call	_memcpy
	add	esp, 16
	mov	dword ptr [edi], ebx
	sub	esp, 4
	push	2
	push	dword ptr [edi + 44]
	push	dword ptr [ebx + 40]
	call	dword ptr [ebx + 32]
	add	esp, 16
	mov	dword ptr [edi + 56], eax
	sub	esp, 4
	push	2
	push	dword ptr [edi + 44]
	push	dword ptr [ebx + 40]
	call	dword ptr [ebx + 32]
	add	esp, 16
	mov	dword ptr [edi + 64], eax
	sub	esp, 4
	push	2
	push	dword ptr [edi + 76]
	push	dword ptr [ebx + 40]
	call	dword ptr [ebx + 32]
	add	esp, 16
	mov	dword ptr [edi + 68], eax
	sub	esp, 4
	push	4
	push	dword ptr [edi + 5788]
	push	dword ptr [ebx + 40]
	call	dword ptr [ebx + 32]
	add	esp, 16
	mov	dword ptr [edi + 8], eax
	mov	edx, dword ptr [edi + 56]
	test	edx, edx
	je	LBB14_8
## BB#5:
	cmp	dword ptr [edi + 64], 0
	je	LBB14_8
## BB#6:
	test	eax, eax
	je	LBB14_8
## BB#7:
	mov	ecx, dword ptr [edi + 68]
	test	ecx, ecx
	je	LBB14_8
## BB#21:
	mov	ecx, dword ptr [edi + 44]
	add	ecx, ecx
	sub	esp, 4
	push	ecx
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
	push	dword ptr [esi + 56]
	push	edx
	mov	ebx, eax
	call	_memcpy
	add	esp, 16
	mov	eax, dword ptr [edi + 44]
	add	eax, eax
	sub	esp, 4
	push	eax
	push	dword ptr [esi + 64]
	push	dword ptr [edi + 64]
	call	_memcpy
	add	esp, 16
	mov	eax, dword ptr [edi + 76]
	add	eax, eax
	sub	esp, 4
	push	eax
	push	dword ptr [esi + 68]
	push	dword ptr [edi + 68]
	call	_memcpy
	add	esp, 12
	push	dword ptr [edi + 12]
	push	dword ptr [esi + 8]
	push	dword ptr [edi + 8]
	call	_memcpy
	add	esp, 16
	mov	eax, dword ptr [edi + 8]
	mov	ecx, dword ptr [esi + 16]
	sub	ecx, dword ptr [esi + 8]
	add	ecx, eax
	mov	dword ptr [edi + 16], ecx
	mov	ecx, dword ptr [edi + 5788]
	lea	edx, [ecx + 2*ecx]
	and	ecx, -2
	add	ebx, ecx
	mov	dword ptr [edi + 5796], ebx
	add	edx, eax
	mov	dword ptr [edi + 5784], edx
	lea	eax, [edi + 148]
	mov	dword ptr [edi + 2840], eax
	lea	eax, [edi + 2440]
	mov	dword ptr [edi + 2852], eax
	mov	eax, edi
	add	eax, 2684
	mov	dword ptr [edi + 2864], eax
	xor	esi, esi
	jmp	LBB14_22
LBB14_8:
	mov	eax, dword ptr [ebx + 28]
	test	eax, eax
	je	LBB14_22
## BB#9:
	mov	ecx, dword ptr [eax + 4]
	lea	edx, [ecx - 69]
	cmp	edx, 44
	ja	LBB14_10
## BB#23:
	mov	ecx, dword ptr [ebp - 20] ## 4-byte Reload
Ltmp2 = LJTI14_0-L14$pb
	add	ecx, dword ptr [ecx + 4*edx + Ltmp2]
	jmp	ecx
LBB14_12:
	mov	ecx, dword ptr [eax + 8]
	test	ecx, ecx
	je	LBB14_14
## BB#13:
	sub	esp, 8
	push	ecx
	push	dword ptr [ebx + 40]
	call	dword ptr [ebx + 36]
	add	esp, 16
	mov	eax, dword ptr [ebx + 28]
LBB14_14:
	mov	ecx, dword ptr [eax + 68]
	test	ecx, ecx
	je	LBB14_16
## BB#15:
	sub	esp, 8
	push	ecx
	push	dword ptr [ebx + 40]
	call	dword ptr [ebx + 36]
	add	esp, 16
	mov	eax, dword ptr [ebx + 28]
LBB14_16:
	mov	ecx, dword ptr [eax + 64]
	test	ecx, ecx
	je	LBB14_18
## BB#17:
	sub	esp, 8
	push	ecx
	push	dword ptr [ebx + 40]
	call	dword ptr [ebx + 36]
	add	esp, 16
	mov	eax, dword ptr [ebx + 28]
LBB14_18:
	mov	ecx, dword ptr [eax + 56]
	test	ecx, ecx
	je	LBB14_20
## BB#19:
	sub	esp, 8
	push	ecx
	push	dword ptr [ebx + 40]
	call	dword ptr [ebx + 36]
	add	esp, 16
	mov	eax, dword ptr [ebx + 28]
LBB14_20:
	sub	esp, 8
	push	eax
	push	dword ptr [ebx + 40]
	call	dword ptr [ebx + 36]
	add	esp, 16
	mov	dword ptr [ebx + 28], 0
LBB14_22:
	mov	eax, esi
	add	esp, 12
	pop	esi
	pop	edi
	pop	ebx
	pop	ebp
	ret
LBB14_10:
	cmp	ecx, 666
	je	LBB14_12
## BB#11:
	cmp	ecx, 42
	je	LBB14_12
	jmp	LBB14_22
	.p2align	2, 0x90
	.data_region jt32
L14_0_set_12 = LBB14_12-L14$pb
L14_0_set_22 = LBB14_22-L14$pb
LJTI14_0:
	.long	L14_0_set_12
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_12
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_12
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_12
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_22
	.long	L14_0_set_12
	.end_data_region

	.p2align	4, 0x90
_deflate_stored:                        ## @deflate_stored
## BB#0:
	push	ebp
	mov	ebp, esp
	push	ebx
	push	edi
	push	esi
	sub	esp, 12
	mov	esi, dword ptr [ebp + 8]
	mov	eax, dword ptr [esi + 12]
	add	eax, -5
	cmp	eax, 65535
	mov	ecx, 65535
	cmovb	ecx, eax
	mov	dword ptr [ebp - 16], ecx ## 4-byte Spill
	.p2align	4, 0x90
LBB15_1:                                ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [esi + 116]
	cmp	eax, 1
	ja	LBB15_4
## BB#2:                                ##   in Loop: Header=BB15_1 Depth=1
	mov	ecx, esi
	call	_fill_window
	mov	eax, dword ptr [esi + 116]
	mov	ecx, eax
	or	ecx, dword ptr [ebp + 12]
	je	LBB15_23
## BB#3:                                ##   in Loop: Header=BB15_1 Depth=1
	test	eax, eax
	je	LBB15_24
LBB15_4:                                ##   in Loop: Header=BB15_1 Depth=1
	mov	edx, dword ptr [esi + 108]
	lea	ecx, [eax + edx]
	mov	dword ptr [esi + 108], ecx
	mov	dword ptr [esi + 116], 0
	mov	ecx, dword ptr [esi + 92]
	add	eax, edx
	mov	edx, dword ptr [ebp - 16] ## 4-byte Reload
	lea	edx, [ecx + edx]
	je	LBB15_6
## BB#5:                                ##   in Loop: Header=BB15_1 Depth=1
	cmp	eax, edx
	jb	LBB15_14
LBB15_6:                                ##   in Loop: Header=BB15_1 Depth=1
	sub	eax, edx
	mov	dword ptr [esi + 116], eax
	mov	dword ptr [esi + 108], edx
	test	ecx, ecx
	js	LBB15_8
## BB#7:                                ##   in Loop: Header=BB15_1 Depth=1
	add	ecx, dword ptr [esi + 56]
	jmp	LBB15_9
LBB15_8:                                ##   in Loop: Header=BB15_1 Depth=1
	xor	ecx, ecx
LBB15_9:                                ##   in Loop: Header=BB15_1 Depth=1
	push	0
	push	dword ptr [ebp - 16]    ## 4-byte Folded Reload
	push	ecx
	push	esi
	call	__tr_flush_block
	add	esp, 16
	mov	eax, dword ptr [esi + 108]
	mov	dword ptr [esi + 92], eax
	mov	ebx, dword ptr [esi]
	mov	edi, dword ptr [ebx + 28]
	sub	esp, 12
	push	edi
	call	__tr_flush_bits
	add	esp, 16
	mov	esi, dword ptr [edi + 20]
	mov	eax, dword ptr [ebx + 16]
	cmp	esi, eax
	cmova	esi, eax
	test	esi, esi
	je	LBB15_12
## BB#10:                               ##   in Loop: Header=BB15_1 Depth=1
	sub	esp, 4
	push	esi
	push	dword ptr [edi + 16]
	push	dword ptr [ebx + 12]
	call	_memcpy
	add	esp, 16
	add	dword ptr [ebx + 12], esi
	add	dword ptr [edi + 16], esi
	add	dword ptr [ebx + 20], esi
	sub	dword ptr [ebx + 16], esi
	mov	eax, dword ptr [edi + 20]
	sub	eax, esi
	mov	dword ptr [edi + 20], eax
	jne	LBB15_12
## BB#11:                               ##   in Loop: Header=BB15_1 Depth=1
	mov	eax, dword ptr [edi + 8]
	mov	dword ptr [edi + 16], eax
LBB15_12:                               ##   in Loop: Header=BB15_1 Depth=1
	mov	esi, dword ptr [ebp + 8]
	mov	eax, dword ptr [esi]
	cmp	dword ptr [eax + 16], 0
	je	LBB15_27
## BB#13:                               ##   in Loop: Header=BB15_1 Depth=1
	mov	ecx, dword ptr [esi + 92]
	mov	eax, dword ptr [esi + 108]
LBB15_14:                               ##   in Loop: Header=BB15_1 Depth=1
	sub	eax, ecx
	mov	edx, dword ptr [esi + 44]
	mov	edi, -262
	add	edx, edi
	cmp	eax, edx
	jb	LBB15_1
## BB#15:                               ##   in Loop: Header=BB15_1 Depth=1
	test	ecx, ecx
	js	LBB15_17
## BB#16:                               ##   in Loop: Header=BB15_1 Depth=1
	add	ecx, dword ptr [esi + 56]
	jmp	LBB15_18
LBB15_17:                               ##   in Loop: Header=BB15_1 Depth=1
	xor	ecx, ecx
LBB15_18:                               ##   in Loop: Header=BB15_1 Depth=1
	push	0
	push	eax
	push	ecx
	push	esi
	call	__tr_flush_block
	add	esp, 16
	mov	eax, dword ptr [esi + 108]
	mov	dword ptr [esi + 92], eax
	mov	ebx, dword ptr [esi]
	mov	edi, dword ptr [ebx + 28]
	sub	esp, 12
	push	edi
	call	__tr_flush_bits
	add	esp, 16
	mov	esi, dword ptr [edi + 20]
	mov	eax, dword ptr [ebx + 16]
	cmp	esi, eax
	cmova	esi, eax
	test	esi, esi
	je	LBB15_21
## BB#19:                               ##   in Loop: Header=BB15_1 Depth=1
	sub	esp, 4
	push	esi
	push	dword ptr [edi + 16]
	push	dword ptr [ebx + 12]
	call	_memcpy
	add	esp, 16
	add	dword ptr [ebx + 12], esi
	add	dword ptr [edi + 16], esi
	add	dword ptr [ebx + 20], esi
	sub	dword ptr [ebx + 16], esi
	mov	eax, dword ptr [edi + 20]
	sub	eax, esi
	mov	dword ptr [edi + 20], eax
	jne	LBB15_21
## BB#20:                               ##   in Loop: Header=BB15_1 Depth=1
	mov	eax, dword ptr [edi + 8]
	mov	dword ptr [edi + 16], eax
LBB15_21:                               ##   in Loop: Header=BB15_1 Depth=1
	mov	esi, dword ptr [ebp + 8]
	mov	eax, dword ptr [esi]
	cmp	dword ptr [eax + 16], 0
	jne	LBB15_1
LBB15_23:
	xor	eax, eax
	jmp	LBB15_42
LBB15_24:
	mov	dword ptr [esi + 5812], 0
	cmp	dword ptr [ebp + 12], 4
	jne	LBB15_28
## BB#25:
	mov	eax, dword ptr [esi + 92]
	test	eax, eax
	js	LBB15_31
## BB#26:
	mov	ecx, dword ptr [esi + 56]
	add	ecx, eax
	jmp	LBB15_32
LBB15_27:
	xor	eax, eax
	jmp	LBB15_42
LBB15_28:
	mov	eax, dword ptr [esi + 92]
	mov	ecx, dword ptr [esi + 108]
	sub	ecx, eax
	jle	LBB15_41
## BB#29:
	test	eax, eax
	js	LBB15_36
## BB#30:
	add	eax, dword ptr [esi + 56]
	jmp	LBB15_37
LBB15_31:
	xor	ecx, ecx
LBB15_32:
	mov	edx, dword ptr [esi + 108]
	sub	edx, eax
	push	1
	push	edx
	push	ecx
	push	esi
	call	__tr_flush_block
	add	esp, 16
	mov	eax, dword ptr [esi + 108]
	mov	dword ptr [esi + 92], eax
	mov	ebx, dword ptr [esi]
	mov	edi, dword ptr [ebx + 28]
	sub	esp, 12
	push	edi
	call	__tr_flush_bits
	add	esp, 16
	mov	esi, dword ptr [edi + 20]
	mov	eax, dword ptr [ebx + 16]
	cmp	esi, eax
	cmova	esi, eax
	test	esi, esi
	je	LBB15_35
## BB#33:
	sub	esp, 4
	push	esi
	push	dword ptr [edi + 16]
	push	dword ptr [ebx + 12]
	call	_memcpy
	add	esp, 16
	add	dword ptr [ebx + 12], esi
	add	dword ptr [edi + 16], esi
	add	dword ptr [ebx + 20], esi
	sub	dword ptr [ebx + 16], esi
	mov	eax, dword ptr [edi + 20]
	sub	eax, esi
	mov	dword ptr [edi + 20], eax
	jne	LBB15_35
## BB#34:
	mov	eax, dword ptr [edi + 8]
	mov	dword ptr [edi + 16], eax
LBB15_35:
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, dword ptr [eax]
	xor	eax, eax
	cmp	dword ptr [ecx + 16], 0
	setne	al
	or	eax, 2
	jmp	LBB15_42
LBB15_36:
	xor	eax, eax
LBB15_37:
	push	0
	push	ecx
	push	eax
	push	esi
	call	__tr_flush_block
	add	esp, 16
	mov	eax, dword ptr [esi + 108]
	mov	dword ptr [esi + 92], eax
	mov	ebx, dword ptr [esi]
	mov	edi, dword ptr [ebx + 28]
	sub	esp, 12
	push	edi
	call	__tr_flush_bits
	add	esp, 16
	mov	esi, dword ptr [edi + 20]
	mov	eax, dword ptr [ebx + 16]
	cmp	esi, eax
	cmova	esi, eax
	test	esi, esi
	je	LBB15_40
## BB#38:
	sub	esp, 4
	push	esi
	push	dword ptr [edi + 16]
	push	dword ptr [ebx + 12]
	call	_memcpy
	add	esp, 16
	add	dword ptr [ebx + 12], esi
	add	dword ptr [edi + 16], esi
	add	dword ptr [ebx + 20], esi
	sub	dword ptr [ebx + 16], esi
	mov	eax, dword ptr [edi + 20]
	sub	eax, esi
	mov	dword ptr [edi + 20], eax
	jne	LBB15_40
## BB#39:
	mov	eax, dword ptr [edi + 8]
	mov	dword ptr [edi + 16], eax
LBB15_40:
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [eax]
	cmp	dword ptr [eax + 16], 0
	je	LBB15_43
LBB15_41:
	mov	eax, 1
LBB15_42:
	add	esp, 12
	pop	esi
	pop	edi
	pop	ebx
	pop	ebp
	ret
LBB15_43:
	xor	eax, eax
	jmp	LBB15_42

	.p2align	4, 0x90
_deflate_fast:                          ## @deflate_fast
## BB#0:
	push	ebp
	mov	ebp, esp
	push	ebx
	push	edi
	push	esi
	sub	esp, 44
	call	L16$pb
L16$pb:
	pop	eax
	mov	dword ptr [ebp - 28], eax ## 4-byte Spill
	mov	ebx, dword ptr [ebp + 8]
	.p2align	4, 0x90
LBB16_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB16_13 Depth 2
	cmp	dword ptr [ebx + 116], 261
	ja	LBB16_6
## BB#2:                                ##   in Loop: Header=BB16_1 Depth=1
	mov	ecx, ebx
	call	_fill_window
	cmp	dword ptr [ebp + 12], 0
	mov	eax, dword ptr [ebx + 116]
	jne	LBB16_4
## BB#3:                                ##   in Loop: Header=BB16_1 Depth=1
	cmp	eax, 262
	jb	LBB16_43
LBB16_4:                                ##   in Loop: Header=BB16_1 Depth=1
	test	eax, eax
	je	LBB16_26
## BB#5:                                ##   in Loop: Header=BB16_1 Depth=1
	cmp	eax, 3
	jb	LBB16_8
LBB16_6:                                ##   in Loop: Header=BB16_1 Depth=1
	mov	edx, dword ptr [ebx + 56]
	mov	esi, dword ptr [ebx + 72]
	mov	cl, byte ptr [ebx + 88]
	shl	esi, cl
	mov	eax, dword ptr [ebx + 108]
	movzx	ecx, byte ptr [edx + eax + 2]
	xor	ecx, esi
	and	ecx, dword ptr [ebx + 84]
	mov	dword ptr [ebx + 72], ecx
	mov	esi, dword ptr [ebx + 64]
	mov	edi, dword ptr [ebx + 68]
	mov	edx, dword ptr [ebp + 8]
	mov	ebx, dword ptr [edx + 52]
	and	ebx, eax
	movzx	edx, word ptr [edi + 2*ecx]
	mov	word ptr [esi + 2*ebx], dx
	mov	ebx, dword ptr [ebp + 8]
	mov	word ptr [edi + 2*ecx], ax
	test	edx, edx
	je	LBB16_8
## BB#7:                                ##   in Loop: Header=BB16_1 Depth=1
	sub	eax, edx
	mov	ecx, dword ptr [ebx + 44]
	mov	esi, -262
	add	ecx, esi
	cmp	eax, ecx
	jbe	LBB16_9
LBB16_8:                                ##   in Loop: Header=BB16_1 Depth=1
	mov	eax, dword ptr [ebx + 96]
	cmp	eax, 3
	jae	LBB16_10
	jmp	LBB16_15
	.p2align	4, 0x90
LBB16_9:                                ##   in Loop: Header=BB16_1 Depth=1
	mov	ecx, ebx
	call	_longest_match
	mov	dword ptr [ebx + 96], eax
	cmp	eax, 3
	jb	LBB16_15
LBB16_10:                               ##   in Loop: Header=BB16_1 Depth=1
	mov	ecx, dword ptr [ebx + 108]
	sub	ecx, dword ptr [ebx + 112]
	mov	edx, dword ptr [ebx + 5796]
	mov	esi, dword ptr [ebx + 5792]
	mov	word ptr [edx + 2*esi], cx
	mov	edx, dword ptr [ebx + 5784]
	lea	edi, [esi + 1]
	mov	dword ptr [ebx + 5792], edi
	add	eax, 253
	mov	byte ptr [edx + esi], al
	add	ecx, 65535
	movzx	eax, al
	mov	esi, dword ptr [ebp - 28] ## 4-byte Reload
	mov	edx, dword ptr [esi + L__length_code$non_lazy_ptr-L16$pb]
	movzx	eax, byte ptr [edx + eax]
	inc	word ptr [ebx + 4*eax + 1176]
	movzx	eax, cx
	mov	ecx, eax
	shr	ecx, 7
	add	ecx, 256
	cmp	eax, 256
	cmovb	ecx, eax
	mov	eax, dword ptr [esi + L__dist_code$non_lazy_ptr-L16$pb]
	movzx	eax, byte ptr [eax + ecx]
	inc	word ptr [ebx + 4*eax + 2440]
	mov	eax, dword ptr [ebx + 5788]
	dec	eax
	xor	ecx, ecx
	cmp	dword ptr [ebx + 5792], eax
	sete	cl
	mov	edi, dword ptr [ebx + 96]
	mov	eax, dword ptr [ebx + 116]
	sub	eax, edi
	mov	dword ptr [ebx + 116], eax
	cmp	eax, 3
	jb	LBB16_16
## BB#11:                               ##   in Loop: Header=BB16_1 Depth=1
	cmp	edi, dword ptr [ebx + 128]
	ja	LBB16_16
## BB#12:                               ##   in Loop: Header=BB16_1 Depth=1
	mov	dword ptr [ebp - 24], ecx ## 4-byte Spill
	lea	eax, [edi - 1]
	mov	dword ptr [ebx + 96], eax
	mov	eax, edi
	mov	edi, dword ptr [ebx + 108]
	mov	esi, dword ptr [ebx + 72]
	mov	ecx, dword ptr [ebx + 88]
	mov	dword ptr [ebp - 36], ecx ## 4-byte Spill
	mov	edx, dword ptr [ebx + 52]
	mov	dword ptr [ebp - 48], edx ## 4-byte Spill
	add	eax, -2
	inc	edi
	mov	edx, dword ptr [ebx + 56]
	mov	dword ptr [ebp - 44], edx ## 4-byte Spill
	mov	edx, dword ptr [ebx + 84]
	mov	dword ptr [ebp - 40], edx ## 4-byte Spill
	mov	edx, dword ptr [ebx + 68]
	mov	dword ptr [ebp - 20], edx ## 4-byte Spill
	mov	ecx, dword ptr [ebx + 64]
	mov	dword ptr [ebp - 32], ecx ## 4-byte Spill
	.p2align	4, 0x90
LBB16_13:                               ##   Parent Loop BB16_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	dword ptr [ebx + 108], edi
	mov	ecx, dword ptr [ebp - 36] ## 4-byte Reload
                                        ## kill: %CL<def> %CL<kill> %ECX<kill>
	shl	esi, cl
	mov	edx, dword ptr [ebp - 44] ## 4-byte Reload
	movzx	edx, byte ptr [edx + edi + 2]
	xor	edx, esi
	and	edx, dword ptr [ebp - 40] ## 4-byte Folded Reload
	mov	dword ptr [ebx + 72], edx
	mov	ecx, dword ptr [ebp - 20] ## 4-byte Reload
	movzx	esi, word ptr [ecx + 2*edx]
	mov	word ptr [ebp - 14], si ## 2-byte Spill
	mov	ebx, dword ptr [ebp - 48] ## 4-byte Reload
	and	ebx, edi
	mov	esi, dword ptr [ebp - 32] ## 4-byte Reload
	movzx	ecx, word ptr [ebp - 14] ## 2-byte Folded Reload
	mov	word ptr [esi + 2*ebx], cx
	mov	ebx, dword ptr [ebp + 8]
	mov	ecx, dword ptr [ebp - 20] ## 4-byte Reload
	mov	word ptr [ecx + 2*edx], di
	mov	dword ptr [ebx + 96], eax
	dec	eax
	inc	edi
	cmp	eax, -1
	mov	esi, edx
	jne	LBB16_13
## BB#14:                               ##   in Loop: Header=BB16_1 Depth=1
	mov	dword ptr [ebx + 108], edi
	mov	ecx, dword ptr [ebp - 24] ## 4-byte Reload
	test	ecx, ecx
	je	LBB16_1
	jmp	LBB16_17
	.p2align	4, 0x90
LBB16_15:                               ##   in Loop: Header=BB16_1 Depth=1
	mov	eax, dword ptr [ebx + 56]
	mov	ecx, dword ptr [ebx + 108]
	movzx	eax, byte ptr [eax + ecx]
	mov	ecx, dword ptr [ebx + 5796]
	mov	edx, dword ptr [ebx + 5792]
	mov	word ptr [ecx + 2*edx], 0
	mov	ecx, dword ptr [ebx + 5784]
	lea	esi, [edx + 1]
	mov	dword ptr [ebx + 5792], esi
	mov	byte ptr [ecx + edx], al
	inc	word ptr [ebx + 4*eax + 148]
	mov	eax, dword ptr [ebx + 5788]
	dec	eax
	xor	ecx, ecx
	cmp	dword ptr [ebx + 5792], eax
	sete	cl
	dec	dword ptr [ebx + 116]
	mov	edi, dword ptr [ebx + 108]
	inc	edi
	mov	dword ptr [ebx + 108], edi
	test	ecx, ecx
	je	LBB16_1
	jmp	LBB16_17
	.p2align	4, 0x90
LBB16_16:                               ##   in Loop: Header=BB16_1 Depth=1
	add	edi, dword ptr [ebx + 108]
	mov	dword ptr [ebx + 108], edi
	mov	dword ptr [ebx + 96], 0
	mov	eax, dword ptr [ebx + 56]
	movzx	edx, byte ptr [eax + edi]
	mov	dword ptr [ebx + 72], edx
	mov	esi, ecx
	mov	cl, byte ptr [ebx + 88]
	shl	edx, cl
	mov	ecx, esi
	movzx	eax, byte ptr [eax + edi + 1]
	xor	eax, edx
	and	eax, dword ptr [ebx + 84]
	mov	dword ptr [ebx + 72], eax
	test	ecx, ecx
	je	LBB16_1
LBB16_17:                               ##   in Loop: Header=BB16_1 Depth=1
	mov	eax, dword ptr [ebx + 92]
	test	eax, eax
	js	LBB16_19
## BB#18:                               ##   in Loop: Header=BB16_1 Depth=1
	mov	ecx, dword ptr [ebx + 56]
	add	ecx, eax
	jmp	LBB16_20
LBB16_19:                               ##   in Loop: Header=BB16_1 Depth=1
	xor	ecx, ecx
LBB16_20:                               ##   in Loop: Header=BB16_1 Depth=1
	sub	edi, eax
	push	0
	push	edi
	push	ecx
	push	ebx
	call	__tr_flush_block
	add	esp, 16
	mov	eax, dword ptr [ebx + 108]
	mov	dword ptr [ebx + 92], eax
	mov	edi, dword ptr [ebx]
	mov	esi, dword ptr [edi + 28]
	sub	esp, 12
	push	esi
	call	__tr_flush_bits
	add	esp, 16
	mov	ebx, dword ptr [esi + 20]
	mov	eax, dword ptr [edi + 16]
	cmp	ebx, eax
	cmova	ebx, eax
	test	ebx, ebx
	je	LBB16_23
## BB#21:                               ##   in Loop: Header=BB16_1 Depth=1
	sub	esp, 4
	push	ebx
	push	dword ptr [esi + 16]
	push	dword ptr [edi + 12]
	call	_memcpy
	add	esp, 16
	add	dword ptr [edi + 12], ebx
	add	dword ptr [esi + 16], ebx
	add	dword ptr [edi + 20], ebx
	sub	dword ptr [edi + 16], ebx
	mov	eax, dword ptr [esi + 20]
	sub	eax, ebx
	mov	dword ptr [esi + 20], eax
	jne	LBB16_23
## BB#22:                               ##   in Loop: Header=BB16_1 Depth=1
	mov	eax, dword ptr [esi + 8]
	mov	dword ptr [esi + 16], eax
LBB16_23:                               ##   in Loop: Header=BB16_1 Depth=1
	mov	ebx, dword ptr [ebp + 8]
	mov	eax, dword ptr [ebx]
	cmp	dword ptr [eax + 16], 0
	jne	LBB16_1
LBB16_43:
	xor	eax, eax
LBB16_44:
	add	esp, 44
	pop	esi
	pop	edi
	pop	ebx
	pop	ebp
	ret
LBB16_26:
	mov	eax, dword ptr [ebx + 108]
	cmp	eax, 2
	mov	ecx, 2
	cmovb	ecx, eax
	mov	dword ptr [ebx + 5812], ecx
	cmp	dword ptr [ebp + 12], 4
	jne	LBB16_29
## BB#27:
	mov	ecx, dword ptr [ebx + 92]
	test	ecx, ecx
	js	LBB16_32
## BB#28:
	mov	edx, dword ptr [ebx + 56]
	add	edx, ecx
	jmp	LBB16_33
LBB16_29:
	cmp	dword ptr [ebx + 5792], 0
	je	LBB16_42
## BB#30:
	mov	ecx, dword ptr [ebx + 92]
	test	ecx, ecx
	js	LBB16_37
## BB#31:
	mov	edx, dword ptr [ebx + 56]
	add	edx, ecx
	jmp	LBB16_38
LBB16_32:
	xor	edx, edx
LBB16_33:
	sub	eax, ecx
	push	1
	push	eax
	push	edx
	push	ebx
	call	__tr_flush_block
	add	esp, 16
	mov	eax, dword ptr [ebx + 108]
	mov	dword ptr [ebx + 92], eax
	mov	edi, dword ptr [ebx]
	mov	esi, dword ptr [edi + 28]
	sub	esp, 12
	push	esi
	call	__tr_flush_bits
	add	esp, 16
	mov	ebx, dword ptr [esi + 20]
	mov	eax, dword ptr [edi + 16]
	cmp	ebx, eax
	cmova	ebx, eax
	test	ebx, ebx
	je	LBB16_36
## BB#34:
	sub	esp, 4
	push	ebx
	push	dword ptr [esi + 16]
	push	dword ptr [edi + 12]
	call	_memcpy
	add	esp, 16
	add	dword ptr [edi + 12], ebx
	add	dword ptr [esi + 16], ebx
	add	dword ptr [edi + 20], ebx
	sub	dword ptr [edi + 16], ebx
	mov	eax, dword ptr [esi + 20]
	sub	eax, ebx
	mov	dword ptr [esi + 20], eax
	jne	LBB16_36
## BB#35:
	mov	eax, dword ptr [esi + 8]
	mov	dword ptr [esi + 16], eax
LBB16_36:
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, dword ptr [eax]
	xor	eax, eax
	cmp	dword ptr [ecx + 16], 0
	setne	al
	or	eax, 2
	jmp	LBB16_44
LBB16_37:
	xor	edx, edx
LBB16_38:
	sub	eax, ecx
	push	0
	push	eax
	push	edx
	push	ebx
	call	__tr_flush_block
	add	esp, 16
	mov	eax, dword ptr [ebx + 108]
	mov	dword ptr [ebx + 92], eax
	mov	edi, dword ptr [ebx]
	mov	esi, dword ptr [edi + 28]
	sub	esp, 12
	push	esi
	call	__tr_flush_bits
	add	esp, 16
	mov	ebx, dword ptr [esi + 20]
	mov	eax, dword ptr [edi + 16]
	cmp	ebx, eax
	cmova	ebx, eax
	test	ebx, ebx
	je	LBB16_41
## BB#39:
	sub	esp, 4
	push	ebx
	push	dword ptr [esi + 16]
	push	dword ptr [edi + 12]
	call	_memcpy
	add	esp, 16
	add	dword ptr [edi + 12], ebx
	add	dword ptr [esi + 16], ebx
	add	dword ptr [edi + 20], ebx
	sub	dword ptr [edi + 16], ebx
	mov	eax, dword ptr [esi + 20]
	sub	eax, ebx
	mov	dword ptr [esi + 20], eax
	jne	LBB16_41
## BB#40:
	mov	eax, dword ptr [esi + 8]
	mov	dword ptr [esi + 16], eax
LBB16_41:
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [eax]
	cmp	dword ptr [eax + 16], 0
	je	LBB16_43
LBB16_42:
	mov	eax, 1
	jmp	LBB16_44

	.p2align	4, 0x90
_deflate_slow:                          ## @deflate_slow
## BB#0:
	push	ebp
	mov	ebp, esp
	push	ebx
	push	edi
	push	esi
	sub	esp, 60
	call	L17$pb
L17$pb:
	pop	eax
	mov	dword ptr [ebp - 32], eax ## 4-byte Spill
	mov	esi, dword ptr [ebp + 8]
LBB17_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB17_31 Depth 2
	mov	eax, dword ptr [esi + 116]
	cmp	eax, 261
	ja	LBB17_8
	jmp	LBB17_4
	.p2align	4, 0x90
LBB17_2:                                ##   in Loop: Header=BB17_1 Depth=1
	mov	dword ptr [esi + 104], 1
	inc	dword ptr [esi + 108]
	mov	eax, dword ptr [esi + 116]
	dec	eax
	mov	dword ptr [esi + 116], eax
LBB17_3:                                ##   in Loop: Header=BB17_1 Depth=1
	cmp	eax, 261
	ja	LBB17_8
LBB17_4:                                ##   in Loop: Header=BB17_1 Depth=1
	mov	ecx, esi
	call	_fill_window
	cmp	dword ptr [ebp + 12], 0
	mov	eax, dword ptr [esi + 116]
	jne	LBB17_6
## BB#5:                                ##   in Loop: Header=BB17_1 Depth=1
	cmp	eax, 262
	jb	LBB17_64
LBB17_6:                                ##   in Loop: Header=BB17_1 Depth=1
	test	eax, eax
	je	LBB17_45
## BB#7:                                ##   in Loop: Header=BB17_1 Depth=1
	cmp	eax, 2
	jbe	LBB17_15
LBB17_8:                                ##   in Loop: Header=BB17_1 Depth=1
	mov	eax, dword ptr [esi + 56]
	mov	edx, dword ptr [esi + 72]
	mov	cl, byte ptr [esi + 88]
	shl	edx, cl
	mov	ecx, dword ptr [esi + 108]
	movzx	eax, byte ptr [eax + ecx + 2]
	xor	eax, edx
	and	eax, dword ptr [esi + 84]
	mov	dword ptr [esi + 72], eax
	mov	edx, dword ptr [ebp + 8]
	mov	esi, dword ptr [edx + 64]
	mov	edx, dword ptr [ebp + 8]
	mov	edi, dword ptr [edx + 68]
	mov	edx, dword ptr [ebp + 8]
	mov	ebx, dword ptr [edx + 52]
	and	ebx, ecx
	movzx	edx, word ptr [edi + 2*eax]
	mov	word ptr [esi + 2*ebx], dx
	mov	esi, dword ptr [ebp + 8]
	mov	word ptr [edi + 2*eax], cx
	mov	ecx, dword ptr [esi + 96]
	mov	dword ptr [esi + 120], ecx
	mov	eax, dword ptr [esi + 112]
	mov	dword ptr [esi + 100], eax
	test	edx, edx
	mov	dword ptr [esi + 96], 2
	je	LBB17_17
## BB#9:                                ##   in Loop: Header=BB17_1 Depth=1
	mov	eax, 2
	cmp	ecx, dword ptr [esi + 128]
	jae	LBB17_19
## BB#10:                               ##   in Loop: Header=BB17_1 Depth=1
	mov	eax, dword ptr [esi + 108]
	sub	eax, edx
	mov	ecx, dword ptr [esi + 44]
	mov	edi, -262
	add	ecx, edi
	cmp	eax, ecx
	mov	eax, 2
	ja	LBB17_18
## BB#11:                               ##   in Loop: Header=BB17_1 Depth=1
	mov	ecx, esi
	call	_longest_match
	mov	dword ptr [esi + 96], eax
	cmp	eax, 5
	ja	LBB17_18
## BB#12:                               ##   in Loop: Header=BB17_1 Depth=1
	cmp	dword ptr [esi + 136], 1
	je	LBB17_16
## BB#13:                               ##   in Loop: Header=BB17_1 Depth=1
	cmp	eax, 3
	jne	LBB17_18
## BB#14:                               ##   in Loop: Header=BB17_1 Depth=1
	mov	ecx, dword ptr [esi + 108]
	sub	ecx, dword ptr [esi + 112]
	mov	eax, 3
	cmp	ecx, 4097
	jae	LBB17_16
	jmp	LBB17_18
	.p2align	4, 0x90
LBB17_15:                               ##   in Loop: Header=BB17_1 Depth=1
	mov	eax, dword ptr [esi + 96]
	mov	dword ptr [esi + 120], eax
	mov	eax, dword ptr [esi + 112]
	mov	dword ptr [esi + 100], eax
LBB17_16:                               ##   in Loop: Header=BB17_1 Depth=1
	mov	dword ptr [esi + 96], 2
LBB17_17:                               ##   in Loop: Header=BB17_1 Depth=1
	mov	eax, 2
LBB17_18:                               ##   in Loop: Header=BB17_1 Depth=1
	mov	ecx, dword ptr [esi + 120]
LBB17_19:                               ##   in Loop: Header=BB17_1 Depth=1
	cmp	ecx, 3
	jb	LBB17_21
## BB#20:                               ##   in Loop: Header=BB17_1 Depth=1
	cmp	eax, ecx
	jbe	LBB17_30
LBB17_21:                               ##   in Loop: Header=BB17_1 Depth=1
	cmp	dword ptr [esi + 104], 0
	je	LBB17_2
## BB#22:                               ##   in Loop: Header=BB17_1 Depth=1
	mov	eax, dword ptr [esi + 56]
	mov	ecx, dword ptr [esi + 108]
	movzx	eax, byte ptr [eax + ecx - 1]
	mov	ecx, dword ptr [esi + 5796]
	mov	edx, dword ptr [esi + 5792]
	mov	word ptr [ecx + 2*edx], 0
	mov	ecx, dword ptr [esi + 5784]
	mov	edi, esi
	lea	esi, [edx + 1]
	mov	dword ptr [edi + 5792], esi
	mov	byte ptr [ecx + edx], al
	inc	word ptr [edi + 4*eax + 148]
	mov	eax, dword ptr [edi + 5788]
	dec	eax
	cmp	dword ptr [edi + 5792], eax
	jne	LBB17_29
## BB#23:                               ##   in Loop: Header=BB17_1 Depth=1
	mov	eax, dword ptr [edi + 92]
	test	eax, eax
	js	LBB17_25
## BB#24:                               ##   in Loop: Header=BB17_1 Depth=1
	mov	ecx, dword ptr [edi + 56]
	add	ecx, eax
	jmp	LBB17_26
LBB17_25:                               ##   in Loop: Header=BB17_1 Depth=1
	xor	ecx, ecx
LBB17_26:                               ##   in Loop: Header=BB17_1 Depth=1
	mov	edx, dword ptr [edi + 108]
	sub	edx, eax
	push	0
	push	edx
	push	ecx
	push	edi
	call	__tr_flush_block
	add	esp, 16
	mov	eax, dword ptr [edi + 108]
	mov	dword ptr [edi + 92], eax
	mov	ebx, dword ptr [edi]
	mov	esi, dword ptr [ebx + 28]
	sub	esp, 12
	push	esi
	call	__tr_flush_bits
	add	esp, 16
	mov	dword ptr [ebp - 16], esi ## 4-byte Spill
	mov	esi, dword ptr [esi + 20]
	mov	eax, dword ptr [ebx + 16]
	cmp	esi, eax
	cmova	esi, eax
	test	esi, esi
	je	LBB17_29
## BB#27:                               ##   in Loop: Header=BB17_1 Depth=1
	sub	esp, 4
	push	esi
	mov	eax, dword ptr [ebp - 16] ## 4-byte Reload
	push	dword ptr [eax + 16]
	push	dword ptr [ebx + 12]
	call	_memcpy
	add	esp, 16
	add	dword ptr [ebx + 12], esi
	mov	ecx, dword ptr [ebp - 16] ## 4-byte Reload
	add	dword ptr [ecx + 16], esi
	add	dword ptr [ebx + 20], esi
	sub	dword ptr [ebx + 16], esi
	mov	eax, dword ptr [ecx + 20]
	sub	eax, esi
	mov	dword ptr [ecx + 20], eax
	jne	LBB17_29
## BB#28:                               ##   in Loop: Header=BB17_1 Depth=1
	mov	ecx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	eax, dword ptr [ecx + 8]
	mov	dword ptr [ecx + 16], eax
	.p2align	4, 0x90
LBB17_29:                               ##   in Loop: Header=BB17_1 Depth=1
	inc	dword ptr [edi + 108]
	mov	eax, dword ptr [edi + 116]
	dec	eax
	mov	dword ptr [edi + 116], eax
	mov	ecx, dword ptr [edi]
	cmp	dword ptr [ecx + 16], 0
	mov	esi, edi
	jne	LBB17_3
	jmp	LBB17_64
	.p2align	4, 0x90
LBB17_30:                               ##   in Loop: Header=BB17_1 Depth=1
	mov	eax, dword ptr [esi + 108]
	mov	edx, dword ptr [esi + 116]
	lea	edx, [eax + edx - 3]
	mov	dword ptr [ebp - 60], edx ## 4-byte Spill
	add	eax, 65535
	sub	eax, dword ptr [esi + 100]
	mov	edx, dword ptr [esi + 5796]
	mov	esi, dword ptr [ebp + 8]
	mov	esi, dword ptr [esi + 5792]
	mov	word ptr [edx + 2*esi], ax
	mov	edx, dword ptr [ebp + 8]
	mov	edx, dword ptr [edx + 5784]
	lea	edi, [esi + 1]
	mov	ebx, dword ptr [ebp + 8]
	mov	dword ptr [ebx + 5792], edi
	add	ecx, 253
	mov	byte ptr [edx + esi], cl
	mov	esi, dword ptr [ebp + 8]
	add	eax, 65535
	movzx	ecx, cl
	mov	edi, dword ptr [ebp - 32] ## 4-byte Reload
	mov	edx, dword ptr [edi + L__length_code$non_lazy_ptr-L17$pb]
	movzx	ecx, byte ptr [edx + ecx]
	inc	word ptr [esi + 4*ecx + 1176]
	movzx	eax, ax
	mov	ecx, eax
	shr	ecx, 7
	add	ecx, 256
	cmp	eax, 256
	cmovb	ecx, eax
	mov	eax, dword ptr [edi + L__dist_code$non_lazy_ptr-L17$pb]
	movzx	eax, byte ptr [eax + ecx]
	inc	word ptr [esi + 4*eax + 2440]
	mov	eax, dword ptr [esi + 5792]
	mov	dword ptr [ebp - 24], eax ## 4-byte Spill
	mov	ecx, dword ptr [esi + 5788]
	mov	edi, dword ptr [esi + 120]
	mov	eax, 1
	sub	eax, edi
	add	dword ptr [esi + 116], eax
	dec	ecx
	mov	dword ptr [ebp - 20], ecx ## 4-byte Spill
	lea	ecx, [edi - 2]
	mov	dword ptr [esi + 120], ecx
	add	edi, -3
	mov	eax, dword ptr [esi + 108]
	lea	edx, [eax + 1]
	mov	dword ptr [ebp - 56], edx ## 4-byte Spill
	mov	dword ptr [ebp - 28], eax ## 4-byte Spill
	lea	eax, [eax + 3]
	mov	dword ptr [ebp - 36], eax ## 4-byte Spill
	xor	ebx, ebx
	mov	dword ptr [ebp - 40], ecx ## 4-byte Spill
	.p2align	4, 0x90
LBB17_31:                               ##   Parent Loop BB17_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [ebp - 56] ## 4-byte Reload
	lea	edx, [eax + ebx]
	mov	dword ptr [esi + 108], edx
	cmp	edx, dword ptr [ebp - 60] ## 4-byte Folded Reload
	ja	LBB17_33
## BB#32:                               ##   in Loop: Header=BB17_31 Depth=2
	mov	eax, dword ptr [ebp + 8]
	mov	esi, dword ptr [eax + 72]
	mov	eax, dword ptr [ebp + 8]
	movzx	ecx, byte ptr [eax + 88]
	shl	esi, cl
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, dword ptr [eax + 56]
	add	ecx, dword ptr [ebp - 36] ## 4-byte Folded Reload
	movzx	ecx, byte ptr [ebx + ecx]
	xor	ecx, esi
	mov	eax, dword ptr [ebp + 8]
	and	ecx, dword ptr [eax + 84]
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [eax + 72], ecx
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [eax + 64]
	mov	dword ptr [ebp - 52], eax ## 4-byte Spill
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [eax + 68]
	mov	dword ptr [ebp - 16], eax ## 4-byte Spill
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [eax + 52]
	and	eax, edx
	mov	dword ptr [ebp - 48], eax ## 4-byte Spill
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
	movzx	esi, word ptr [esi + 2*ecx]
	mov	eax, dword ptr [ebp - 52] ## 4-byte Reload
	mov	dword ptr [ebp - 44], edx ## 4-byte Spill
	mov	edx, dword ptr [ebp - 48] ## 4-byte Reload
	mov	word ptr [eax + 2*edx], si
	mov	esi, dword ptr [ebp + 8]
	mov	eax, dword ptr [ebp - 16] ## 4-byte Reload
	mov	edx, dword ptr [ebp - 44] ## 4-byte Reload
	mov	word ptr [eax + 2*ecx], dx
	mov	ecx, dword ptr [ebp - 40] ## 4-byte Reload
LBB17_33:                               ##   in Loop: Header=BB17_31 Depth=2
	mov	dword ptr [esi + 120], edi
	inc	ebx
	dec	edi
	cmp	ecx, ebx
	jne	LBB17_31
## BB#34:                               ##   in Loop: Header=BB17_1 Depth=1
	mov	eax, dword ptr [ebp - 20] ## 4-byte Reload
	cmp	dword ptr [ebp - 24], eax ## 4-byte Folded Reload
	mov	dword ptr [esi + 104], 0
	mov	dword ptr [esi + 96], 2
	mov	edx, dword ptr [ebp - 28] ## 4-byte Reload
	lea	eax, [edx + ebx + 1]
	mov	dword ptr [esi + 108], eax
	jne	LBB17_1
## BB#35:                               ##   in Loop: Header=BB17_1 Depth=1
	mov	eax, dword ptr [esi + 92]
	test	eax, eax
	js	LBB17_37
## BB#36:                               ##   in Loop: Header=BB17_1 Depth=1
	mov	ecx, dword ptr [esi + 56]
	add	ecx, eax
	jmp	LBB17_38
LBB17_37:                               ##   in Loop: Header=BB17_1 Depth=1
	xor	ecx, ecx
LBB17_38:                               ##   in Loop: Header=BB17_1 Depth=1
	sub	edx, eax
	lea	eax, [edx + ebx + 1]
	push	0
	push	eax
	push	ecx
	push	esi
	call	__tr_flush_block
	add	esp, 16
	mov	eax, dword ptr [esi + 108]
	mov	dword ptr [esi + 92], eax
	mov	ebx, dword ptr [esi]
	mov	edi, dword ptr [ebx + 28]
	sub	esp, 12
	push	edi
	call	__tr_flush_bits
	add	esp, 16
	mov	dword ptr [ebp - 16], edi ## 4-byte Spill
	mov	edi, dword ptr [edi + 20]
	mov	eax, dword ptr [ebx + 16]
	cmp	edi, eax
	cmova	edi, eax
	test	edi, edi
	je	LBB17_41
## BB#39:                               ##   in Loop: Header=BB17_1 Depth=1
	sub	esp, 4
	push	edi
	mov	eax, dword ptr [ebp - 16] ## 4-byte Reload
	push	dword ptr [eax + 16]
	push	dword ptr [ebx + 12]
	call	_memcpy
	add	esp, 16
	add	dword ptr [ebx + 12], edi
	mov	ecx, dword ptr [ebp - 16] ## 4-byte Reload
	add	dword ptr [ecx + 16], edi
	add	dword ptr [ebx + 20], edi
	sub	dword ptr [ebx + 16], edi
	mov	eax, dword ptr [ecx + 20]
	sub	eax, edi
	mov	dword ptr [ecx + 20], eax
	jne	LBB17_41
## BB#40:                               ##   in Loop: Header=BB17_1 Depth=1
	mov	ecx, dword ptr [ebp - 16] ## 4-byte Reload
	mov	eax, dword ptr [ecx + 8]
	mov	dword ptr [ecx + 16], eax
LBB17_41:                               ##   in Loop: Header=BB17_1 Depth=1
	mov	eax, dword ptr [esi]
	cmp	dword ptr [eax + 16], 0
	jne	LBB17_1
	jmp	LBB17_64
LBB17_45:
	cmp	dword ptr [esi + 104], 0
	je	LBB17_47
## BB#46:
	mov	eax, dword ptr [esi + 56]
	mov	ecx, dword ptr [esi + 108]
	movzx	eax, byte ptr [eax + ecx - 1]
	mov	ecx, dword ptr [esi + 5796]
	mov	edx, dword ptr [esi + 5792]
	mov	word ptr [ecx + 2*edx], 0
	mov	ecx, dword ptr [esi + 5784]
	lea	esi, [edx + 1]
	mov	edi, dword ptr [ebp + 8]
	mov	dword ptr [edi + 5792], esi
	mov	esi, dword ptr [ebp + 8]
	mov	byte ptr [ecx + edx], al
	inc	word ptr [esi + 4*eax + 148]
	mov	dword ptr [esi + 104], 0
LBB17_47:
	mov	eax, dword ptr [esi + 108]
	cmp	eax, 2
	mov	ecx, 2
	cmovb	ecx, eax
	mov	dword ptr [esi + 5812], ecx
	cmp	dword ptr [ebp + 12], 4
	jne	LBB17_50
## BB#48:
	mov	ecx, dword ptr [esi + 92]
	test	ecx, ecx
	js	LBB17_53
## BB#49:
	mov	edx, dword ptr [esi + 56]
	add	edx, ecx
	jmp	LBB17_54
LBB17_50:
	cmp	dword ptr [esi + 5792], 0
	je	LBB17_63
## BB#51:
	mov	ecx, dword ptr [esi + 92]
	test	ecx, ecx
	js	LBB17_58
## BB#52:
	mov	edx, dword ptr [esi + 56]
	add	edx, ecx
	jmp	LBB17_59
LBB17_53:
	xor	edx, edx
LBB17_54:
	sub	eax, ecx
	push	1
	push	eax
	push	edx
	push	esi
	call	__tr_flush_block
	add	esp, 16
	mov	eax, dword ptr [esi + 108]
	mov	dword ptr [esi + 92], eax
	mov	ebx, dword ptr [esi]
	mov	edi, dword ptr [ebx + 28]
	sub	esp, 12
	push	edi
	call	__tr_flush_bits
	add	esp, 16
	mov	esi, dword ptr [edi + 20]
	mov	eax, dword ptr [ebx + 16]
	cmp	esi, eax
	cmova	esi, eax
	test	esi, esi
	je	LBB17_57
## BB#55:
	sub	esp, 4
	push	esi
	push	dword ptr [edi + 16]
	push	dword ptr [ebx + 12]
	call	_memcpy
	add	esp, 16
	add	dword ptr [ebx + 12], esi
	add	dword ptr [edi + 16], esi
	add	dword ptr [ebx + 20], esi
	sub	dword ptr [ebx + 16], esi
	mov	eax, dword ptr [edi + 20]
	sub	eax, esi
	mov	dword ptr [edi + 20], eax
	jne	LBB17_57
## BB#56:
	mov	eax, dword ptr [edi + 8]
	mov	dword ptr [edi + 16], eax
LBB17_57:
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, dword ptr [eax]
	xor	eax, eax
	cmp	dword ptr [ecx + 16], 0
	setne	al
	or	eax, 2
	jmp	LBB17_65
LBB17_58:
	xor	edx, edx
LBB17_59:
	sub	eax, ecx
	push	0
	push	eax
	push	edx
	push	esi
	call	__tr_flush_block
	add	esp, 16
	mov	eax, dword ptr [esi + 108]
	mov	dword ptr [esi + 92], eax
	mov	ebx, dword ptr [esi]
	mov	edi, dword ptr [ebx + 28]
	sub	esp, 12
	push	edi
	call	__tr_flush_bits
	add	esp, 16
	mov	esi, dword ptr [edi + 20]
	mov	eax, dword ptr [ebx + 16]
	cmp	esi, eax
	cmova	esi, eax
	test	esi, esi
	je	LBB17_62
## BB#60:
	sub	esp, 4
	push	esi
	push	dword ptr [edi + 16]
	push	dword ptr [ebx + 12]
	call	_memcpy
	add	esp, 16
	add	dword ptr [ebx + 12], esi
	add	dword ptr [edi + 16], esi
	add	dword ptr [ebx + 20], esi
	sub	dword ptr [ebx + 16], esi
	mov	eax, dword ptr [edi + 20]
	sub	eax, esi
	mov	dword ptr [edi + 20], eax
	jne	LBB17_62
## BB#61:
	mov	eax, dword ptr [edi + 8]
	mov	dword ptr [edi + 16], eax
LBB17_62:
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [eax]
	cmp	dword ptr [eax + 16], 0
	je	LBB17_64
LBB17_63:
	mov	eax, 1
	jmp	LBB17_65
LBB17_64:
	xor	eax, eax
LBB17_65:
	add	esp, 60
	pop	esi
	pop	edi
	pop	ebx
	pop	ebp
	ret

	.p2align	4, 0x90
_longest_match:                         ## @longest_match
## BB#0:
	push	ebp
	mov	ebp, esp
	push	ebx
	push	edi
	push	esi
	sub	esp, 60
	mov	esi, dword ptr [ecx + 56]
	mov	edi, dword ptr [ecx + 108]
	mov	eax, -262
	add	eax, dword ptr [ecx + 44]
	lea	ebx, [esi + edi]
	mov	dword ptr [ebp - 28], ebx ## 4-byte Spill
	mov	dword ptr [ebp - 72], esi ## 4-byte Spill
	lea	esi, [esi + edi + 258]
	mov	dword ptr [ebp - 56], esi ## 4-byte Spill
	sub	edi, eax
	mov	eax, 0
	cmovbe	edi, eax
	mov	dword ptr [ebp - 68], edi ## 4-byte Spill
	mov	eax, dword ptr [ecx + 124]
	mov	esi, eax
	shr	esi, 2
	mov	edi, dword ptr [ecx + 120]
	cmp	edi, dword ptr [ecx + 140]
	cmovb	esi, eax
	mov	eax, dword ptr [ecx + 144]
	mov	ebx, dword ptr [ecx + 116]
	cmp	eax, ebx
	mov	dword ptr [ebp - 52], ebx ## 4-byte Spill
	cmova	eax, ebx
	mov	dword ptr [ebp - 44], eax ## 4-byte Spill
	mov	ebx, dword ptr [ebp - 28] ## 4-byte Reload
	mov	al, byte ptr [edi + ebx - 1]
	mov	byte ptr [ebp - 18], al ## 1-byte Spill
	mov	bl, byte ptr [edi + ebx]
	mov	eax, edi
	mov	edi, dword ptr [ecx + 52]
	mov	dword ptr [ebp - 48], ecx ## 4-byte Spill
	mov	ecx, dword ptr [ecx + 64]
	mov	dword ptr [ebp - 64], ecx ## 4-byte Spill
	mov	ch, bl
	mov	ebx, edi
	mov	dword ptr [ebp - 32], ebx ## 4-byte Spill
	jmp	LBB18_14
	.p2align	4, 0x90
LBB18_1:                                ##   in Loop: Header=BB18_14 Depth=1
	dec	esi
	jne	LBB18_14
	jmp	LBB18_30
LBB18_2:                                ##   in Loop: Header=BB18_14 Depth=1
	lea	eax, [ebx + eax + 3]
	mov	dword ptr [ebp - 16], eax ## 4-byte Spill
	jmp	LBB18_11
LBB18_3:                                ##   in Loop: Header=BB18_14 Depth=1
	add	dword ptr [ebp - 16], 2 ## 4-byte Folded Spill
	jmp	LBB18_10
LBB18_4:                                ##   in Loop: Header=BB18_14 Depth=1
	add	dword ptr [ebp - 16], 3 ## 4-byte Folded Spill
	jmp	LBB18_11
LBB18_5:                                ##   in Loop: Header=BB18_14 Depth=1
	add	dword ptr [ebp - 16], 4 ## 4-byte Folded Spill
	jmp	LBB18_11
LBB18_6:                                ##   in Loop: Header=BB18_14 Depth=1
	add	dword ptr [ebp - 16], 5 ## 4-byte Folded Spill
	jmp	LBB18_11
LBB18_7:                                ##   in Loop: Header=BB18_14 Depth=1
	add	dword ptr [ebp - 16], 6 ## 4-byte Folded Spill
	jmp	LBB18_11
LBB18_8:                                ##   in Loop: Header=BB18_14 Depth=1
	add	dword ptr [ebp - 16], 7 ## 4-byte Folded Spill
	jmp	LBB18_11
LBB18_9:                                ##   in Loop: Header=BB18_14 Depth=1
	mov	ch, byte ptr [ebp - 17] ## 1-byte Reload
LBB18_10:                               ##   in Loop: Header=BB18_14 Depth=1
	mov	esi, dword ptr [ebp - 24] ## 4-byte Reload
LBB18_11:                               ##   in Loop: Header=BB18_14 Depth=1
	mov	eax, dword ptr [ebp - 16] ## 4-byte Reload
	sub	eax, dword ptr [ebp - 56] ## 4-byte Folded Reload
	mov	dword ptr [ebp - 16], eax ## 4-byte Spill
	lea	edi, [eax + 258]
	mov	eax, dword ptr [ebp - 36] ## 4-byte Reload
	cmp	edi, eax
	mov	ebx, dword ptr [ebp - 32] ## 4-byte Reload
	jle	LBB18_29
## BB#12:                               ##   in Loop: Header=BB18_14 Depth=1
	mov	ecx, dword ptr [ebp - 48] ## 4-byte Reload
	mov	dword ptr [ecx + 112], edx
	cmp	edi, dword ptr [ebp - 44] ## 4-byte Folded Reload
	jge	LBB18_31
## BB#13:                               ##   in Loop: Header=BB18_14 Depth=1
	mov	ecx, dword ptr [ebp - 28] ## 4-byte Reload
	mov	esi, dword ptr [ebp - 16] ## 4-byte Reload
	mov	al, byte ptr [ecx + esi + 257]
	mov	byte ptr [ebp - 18], al ## 1-byte Spill
	mov	ch, byte ptr [ecx + esi + 258]
	mov	esi, dword ptr [ebp - 24] ## 4-byte Reload
	mov	eax, edi
	jmp	LBB18_29
	.p2align	4, 0x90
LBB18_14:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB18_19 Depth 2
	mov	edi, dword ptr [ebp - 72] ## 4-byte Reload
	lea	edi, [edi + edx]
	cmp	byte ptr [eax + edi], ch
	jne	LBB18_29
## BB#15:                               ##   in Loop: Header=BB18_14 Depth=1
	mov	cl, byte ptr [ebp - 18] ## 1-byte Reload
	cmp	byte ptr [edi + eax - 1], cl
	jne	LBB18_29
## BB#16:                               ##   in Loop: Header=BB18_14 Depth=1
	mov	dword ptr [ebp - 36], eax ## 4-byte Spill
	mov	al, byte ptr [edi]
	mov	ebx, dword ptr [ebp - 28] ## 4-byte Reload
	cmp	al, byte ptr [ebx]
	jne	LBB18_28
## BB#17:                               ##   in Loop: Header=BB18_14 Depth=1
	mov	al, byte ptr [edi + 1]
	cmp	al, byte ptr [ebx + 1]
	jne	LBB18_28
## BB#18:                               ##   in Loop: Header=BB18_14 Depth=1
	mov	dword ptr [ebp - 40], 2 ## 4-byte Folded Spill
	xor	eax, eax
	mov	ebx, dword ptr [ebp - 28] ## 4-byte Reload
	mov	dword ptr [ebp - 24], esi ## 4-byte Spill
	mov	byte ptr [ebp - 17], ch ## 1-byte Spill
LBB18_19:                               ##   Parent Loop BB18_14 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	cl, byte ptr [ebx + eax + 3]
	cmp	cl, byte ptr [edi + eax + 3]
	jne	LBB18_2
## BB#20:                               ##   in Loop: Header=BB18_19 Depth=2
	mov	esi, dword ptr [ebp - 40] ## 4-byte Reload
	lea	esi, [ebx + esi]
	mov	dword ptr [ebp - 16], esi ## 4-byte Spill
	mov	cl, byte ptr [ebx + eax + 4]
	cmp	cl, byte ptr [edi + eax + 4]
	jne	LBB18_3
## BB#21:                               ##   in Loop: Header=BB18_19 Depth=2
	mov	cl, byte ptr [ebx + eax + 5]
	cmp	cl, byte ptr [edi + eax + 5]
	mov	esi, dword ptr [ebp - 24] ## 4-byte Reload
	jne	LBB18_4
## BB#22:                               ##   in Loop: Header=BB18_19 Depth=2
	mov	cl, byte ptr [ebx + eax + 6]
	cmp	cl, byte ptr [edi + eax + 6]
	jne	LBB18_5
## BB#23:                               ##   in Loop: Header=BB18_19 Depth=2
	mov	cl, byte ptr [ebx + eax + 7]
	cmp	cl, byte ptr [edi + eax + 7]
	jne	LBB18_6
## BB#24:                               ##   in Loop: Header=BB18_19 Depth=2
	mov	cl, byte ptr [ebx + eax + 8]
	cmp	cl, byte ptr [edi + eax + 8]
	jne	LBB18_7
## BB#25:                               ##   in Loop: Header=BB18_19 Depth=2
	mov	cl, byte ptr [ebx + eax + 9]
	cmp	cl, byte ptr [edi + eax + 9]
	jne	LBB18_8
## BB#26:                               ##   in Loop: Header=BB18_19 Depth=2
	lea	ecx, [eax + 10]
	mov	dword ptr [ebp - 60], ecx ## 4-byte Spill
	mov	ecx, dword ptr [ebp - 40] ## 4-byte Reload
	lea	esi, [ebx + ecx + 8]
	mov	dword ptr [ebp - 16], esi ## 4-byte Spill
	cmp	dword ptr [ebp - 60], 257 ## 4-byte Folded Reload
	jg	LBB18_9
## BB#27:                               ##   in Loop: Header=BB18_19 Depth=2
	add	ecx, 8
	mov	dword ptr [ebp - 40], ecx ## 4-byte Spill
	movzx	ecx, byte ptr [edi + eax + 10]
	cmp	byte ptr [ebx + eax + 10], cl
	lea	eax, [eax + 8]
	mov	ch, byte ptr [ebp - 17] ## 1-byte Reload
	mov	esi, dword ptr [ebp - 24] ## 4-byte Reload
	je	LBB18_19
	jmp	LBB18_11
LBB18_28:                               ##   in Loop: Header=BB18_14 Depth=1
	mov	eax, dword ptr [ebp - 36] ## 4-byte Reload
	mov	ebx, dword ptr [ebp - 32] ## 4-byte Reload
	.p2align	4, 0x90
LBB18_29:                               ##   in Loop: Header=BB18_14 Depth=1
	and	edx, ebx
	mov	edi, dword ptr [ebp - 64] ## 4-byte Reload
	movzx	edx, word ptr [edi + 2*edx]
	cmp	edx, dword ptr [ebp - 68] ## 4-byte Folded Reload
	ja	LBB18_1
LBB18_30:
	mov	ecx, dword ptr [ebp - 52] ## 4-byte Reload
	cmp	eax, ecx
	cmova	eax, ecx
	add	esp, 60
	pop	esi
	pop	edi
	pop	ebx
	pop	ebp
	ret
LBB18_31:
	mov	eax, edi
	jmp	LBB18_30

	.section	__TEXT,__const
	.globl	_deflate_copyright      ## @deflate_copyright
_deflate_copyright:
	.asciz	" deflate 1.2.8 Copyright 1995-2013 Jean-loup Gailly and Mark Adler "

	.section	__DATA,__const
	.p2align	2               ## @configuration_table
_configuration_table:
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.short	0                       ## 0x0
	.long	_deflate_stored
	.short	4                       ## 0x4
	.short	4                       ## 0x4
	.short	8                       ## 0x8
	.short	4                       ## 0x4
	.long	_deflate_fast
	.short	4                       ## 0x4
	.short	5                       ## 0x5
	.short	16                      ## 0x10
	.short	8                       ## 0x8
	.long	_deflate_fast
	.short	4                       ## 0x4
	.short	6                       ## 0x6
	.short	32                      ## 0x20
	.short	32                      ## 0x20
	.long	_deflate_fast
	.short	4                       ## 0x4
	.short	4                       ## 0x4
	.short	16                      ## 0x10
	.short	16                      ## 0x10
	.long	_deflate_slow
	.short	8                       ## 0x8
	.short	16                      ## 0x10
	.short	32                      ## 0x20
	.short	32                      ## 0x20
	.long	_deflate_slow
	.short	8                       ## 0x8
	.short	16                      ## 0x10
	.short	128                     ## 0x80
	.short	128                     ## 0x80
	.long	_deflate_slow
	.short	8                       ## 0x8
	.short	32                      ## 0x20
	.short	128                     ## 0x80
	.short	256                     ## 0x100
	.long	_deflate_slow
	.short	32                      ## 0x20
	.short	128                     ## 0x80
	.short	258                     ## 0x102
	.short	1024                    ## 0x400
	.long	_deflate_slow
	.short	32                      ## 0x20
	.short	258                     ## 0x102
	.short	258                     ## 0x102
	.short	4096                    ## 0x1000
	.long	_deflate_slow


	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L__dist_code$non_lazy_ptr:
	.indirect_symbol	__dist_code
	.long	0
L__length_code$non_lazy_ptr:
	.indirect_symbol	__length_code
	.long	0
L_z_errmsg$non_lazy_ptr:
	.indirect_symbol	_z_errmsg
	.long	0
L_zcalloc$non_lazy_ptr:
	.indirect_symbol	_zcalloc
	.long	0
L_zcfree$non_lazy_ptr:
	.indirect_symbol	_zcfree
	.long	0

.subsections_via_symbols
