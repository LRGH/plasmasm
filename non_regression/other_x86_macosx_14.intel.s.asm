	.intel_syntax noprefix
	.macosx_version_min 10, 13
	.section       __TEXT,__text,regular,pure_instructions
	.p2align 4, 0x90
# ----------------------
	.globl	_deflateInit_
_deflateInit_:
	push      ebp
	mov       ebp, esp
	sub       esp, 8
	push      DWORD PTR [ebp+20]
	push      DWORD PTR [ebp+16]
	push      0
	push      8
	push      15
	push      8
	push      DWORD PTR [ebp+12]
	push      DWORD PTR [ebp+8]
	call      _deflateInit2_
	add       esp, 40
	pop       ebp
	ret       
# ----------------------
	.p2align 4, 0x90
# ----------------------
	.globl	_deflateInit2_
_deflateInit2_:
	push      ebp
	mov       ebp, esp
	push      ebx
	push      edi
	push      esi
	sub       esp, 28
	call      L1$pb
L1$pb:
	pop       ecx
	mov       eax, DWORD PTR [ebp+32]
	mov       edi, -6
	test      eax, eax
	je        LBB1_36
	cmp       DWORD PTR [ebp+36], 56
	jne       LBB1_36
	cmp       BYTE PTR [eax], 49
	jne       LBB1_36
	mov       esi, DWORD PTR [ebp+8]
	mov       edi, -2
	test      esi, esi
	je        LBB1_36
	mov       DWORD PTR [ebp-16], ecx
	mov       eax, DWORD PTR [ebp+28]
	mov       DWORD PTR [ebp-28], eax
	mov       eax, DWORD PTR [ebp+24]
	mov       DWORD PTR [ebp-20], eax
	mov       eax, DWORD PTR [ebp+20]
	mov       edx, DWORD PTR [ebp+16]
	mov       edi, DWORD PTR [ebp+12]
	mov       DWORD PTR [esi+24], 0
	mov       ecx, DWORD PTR [esi+32]
	test      ecx, ecx
	jne       LBB1_6
	mov       ecx, DWORD PTR [ebp-16]
	mov       ecx, DWORD PTR [ecx + L_zcalloc$non_lazy_ptr-L1$pb]
	mov       DWORD PTR [esi+32], ecx
	mov       DWORD PTR [esi+40], 0
LBB1_6:
	cmp       DWORD PTR [esi+36], 0
	jne       LBB1_8
	mov       ebx, DWORD PTR [ebp-16]
	mov       ebx, DWORD PTR [ebx + L_zcfree$non_lazy_ptr-L1$pb]
	mov       DWORD PTR [esi+36], ebx
LBB1_8:
	cmp       edi, -1
	mov       ebx, 6
	cmovne    ebx, edi
	mov       DWORD PTR [ebp-24], ebx
	test      eax, eax
	js        LBB1_10
	lea       edi, [eax-16]
	xor       ebx, ebx
	cmp       eax, 15
	setg      bl
	cmovg     eax, edi
	inc       ebx
	jmp       LBB1_11
LBB1_10:
	neg       eax
	xor       ebx, ebx
LBB1_11:
	mov       edi, -2
	cmp       DWORD PTR [ebp-28], 4
	ja        LBB1_36
	cmp       DWORD PTR [ebp-24], 9
	ja        LBB1_36
	cmp       edx, 8
	jne       LBB1_36
	mov       edx, DWORD PTR [ebp-20]
	dec       edx
	cmp       edx, 8
	ja        LBB1_36
	mov       edx, eax
	and       edx, -8
	cmp       edx, 8
	jne       LBB1_36
	cmp       eax, 8
	mov       edx, 9
	cmovne    edx, eax
	mov       DWORD PTR [ebp-32], edx
	sub       esp, 4
	push      5828
	push      1
	push      DWORD PTR [esi+40]
	call      ecx
	add       esp, 16
	mov       edi, eax
	test      edi, edi
	je        LBB1_35
	mov       DWORD PTR [esi+28], edi
	mov       DWORD PTR [edi], esi
	mov       DWORD PTR [edi+24], ebx
	mov       DWORD PTR [edi+28], 0
	mov       ecx, DWORD PTR [ebp-32]
	mov       DWORD PTR [edi+48], ecx
	mov       ebx, 1
	shl       ebx, cl
	mov       DWORD PTR [edi+44], ebx
	lea       eax, [ebx-1]
	mov       DWORD PTR [edi+52], eax
	mov       eax, DWORD PTR [ebp-20]
	lea       ecx, [eax+7]
	mov       edx, eax
	mov       DWORD PTR [edi+80], ecx
	mov       eax, 1
	shl       eax, cl
	mov       DWORD PTR [edi+76], eax
	dec       eax
	mov       DWORD PTR [edi+84], eax
	lea       eax, [edx+9]
	mov       ecx, -1431655765
	mul       ecx
	shr       edx, 1
	mov       DWORD PTR [edi+88], edx
	sub       esp, 4
	push      2
	push      ebx
	push      DWORD PTR [esi+40]
	call      DWORD PTR [esi+32]
	add       esp, 16
	mov       DWORD PTR [edi+56], eax
	sub       esp, 4
	push      2
	push      DWORD PTR [edi+44]
	push      DWORD PTR [esi+40]
	call      DWORD PTR [esi+32]
	add       esp, 16
	mov       DWORD PTR [edi+64], eax
	sub       esp, 4
	push      2
	push      DWORD PTR [edi+76]
	push      DWORD PTR [esi+40]
	call      DWORD PTR [esi+32]
	add       esp, 16
	mov       DWORD PTR [edi+68], eax
	mov       DWORD PTR [edi+5824], 0
	mov       ecx, DWORD PTR [ebp-20]
	add       ecx, 6
	mov       eax, 1
	shl       eax, cl
	mov       DWORD PTR [edi+5788], eax
	sub       esp, 4
	push      4
	push      eax
	push      DWORD PTR [esi+40]
	call      DWORD PTR [esi+32]
	add       esp, 16
	mov       DWORD PTR [edi+8], eax
	mov       ecx, DWORD PTR [edi+5788]
	lea       edx, [0+ecx*4]
	mov       DWORD PTR [edi+12], edx
	cmp       DWORD PTR [edi+56], 0
	je        LBB1_22
	cmp       DWORD PTR [edi+64], 0
	je        LBB1_22
	cmp       DWORD PTR [edi+68], 0
	je        LBB1_22
	test      eax, eax
	je        LBB1_22
	mov       edx, ecx
	and       edx, -2
	add       edx, eax
	mov       DWORD PTR [edi+5796], edx
	lea       ecx, [ecx+ecx*2]
	add       ecx, eax
	mov       DWORD PTR [edi+5784], ecx
	mov       eax, DWORD PTR [ebp-24]
	mov       DWORD PTR [edi+132], eax
	mov       eax, DWORD PTR [ebp-28]
	mov       DWORD PTR [edi+136], eax
	mov       BYTE PTR [edi+36], 8
	add       esp, 28
	pop       esi
	pop       edi
	pop       ebx
	pop       ebp
	jmp       _deflateReset
LBB1_22:
	mov       DWORD PTR [edi+4], 666
	mov       eax, DWORD PTR [ebp-16]
	mov       eax, DWORD PTR [eax + L_z_errmsg$non_lazy_ptr-L1$pb]
	mov       eax, DWORD PTR [eax+24]
	mov       DWORD PTR [esi+24], eax
	mov       eax, DWORD PTR [esi+28]
	test      eax, eax
	je        LBB1_35
	mov       ecx, DWORD PTR [eax+4]
	lea       edx, [ecx-69]
	cmp       edx, 44
	mov       edi, -4
	ja        LBB1_37
	mov       ecx, DWORD PTR [ebp-16]
	add       ecx, DWORD PTR [ecx+edx*4 + Ltmp0]
	jmp       ecx
LBB1_25:
	mov       ecx, DWORD PTR [eax+8]
	test      ecx, ecx
	je        LBB1_27
	sub       esp, 8
	push      ecx
	push      DWORD PTR [esi+40]
	call      DWORD PTR [esi+36]
	add       esp, 16
	mov       eax, DWORD PTR [esi+28]
LBB1_27:
	mov       ecx, DWORD PTR [eax+68]
	test      ecx, ecx
	je        LBB1_29
	sub       esp, 8
	push      ecx
	push      DWORD PTR [esi+40]
	call      DWORD PTR [esi+36]
	add       esp, 16
	mov       eax, DWORD PTR [esi+28]
LBB1_29:
	mov       ecx, DWORD PTR [eax+64]
	test      ecx, ecx
	je        LBB1_31
	sub       esp, 8
	push      ecx
	push      DWORD PTR [esi+40]
	call      DWORD PTR [esi+36]
	add       esp, 16
	mov       eax, DWORD PTR [esi+28]
LBB1_31:
	mov       ecx, DWORD PTR [eax+56]
	test      ecx, ecx
	je        LBB1_33
	sub       esp, 8
	push      ecx
	push      DWORD PTR [esi+40]
	call      DWORD PTR [esi+36]
	add       esp, 16
	mov       eax, DWORD PTR [esi+28]
LBB1_33:
	sub       esp, 8
	push      eax
	push      DWORD PTR [esi+40]
	call      DWORD PTR [esi+36]
	add       esp, 16
	mov       DWORD PTR [esi+28], 0
	jmp       LBB1_36
LBB1_35:
	mov       edi, -4
LBB1_36:
	mov       eax, edi
	add       esp, 28
	pop       esi
	pop       edi
	pop       ebx
	pop       ebp
	ret       
LBB1_37:
	cmp       ecx, 666
	je        LBB1_25
	cmp       ecx, 42
	je        LBB1_25
	jmp       LBB1_36
# ----------------------
	.p2align 2, 0x90
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
# ----------------------
	.p2align 4, 0x90
# ----------------------
	.globl	_deflateEnd
_deflateEnd:
	push      ebp
	mov       ebp, esp
	push      ebx
	push      edi
	push      esi
	sub       esp, 12
	call      L2$pb
L2$pb:
	pop       edx
	mov       esi, DWORD PTR [ebp+8]
	mov       eax, -2
	test      esi, esi
	je        LBB2_14
	mov       ecx, DWORD PTR [esi+28]
	test      ecx, ecx
	je        LBB2_14
	mov       edi, DWORD PTR [ecx+4]
	lea       ebx, [edi-69]
	cmp       ebx, 44
	ja        LBB2_3
	add       edx, DWORD PTR [edx+ebx*4 + Ltmp1]
	jmp       edx
LBB2_5:
	mov       eax, DWORD PTR [ecx+8]
	test      eax, eax
	je        LBB2_7
	sub       esp, 8
	push      eax
	push      DWORD PTR [esi+40]
	call      DWORD PTR [esi+36]
	add       esp, 16
	mov       ecx, DWORD PTR [esi+28]
LBB2_7:
	mov       eax, DWORD PTR [ecx+68]
	test      eax, eax
	je        LBB2_9
	sub       esp, 8
	push      eax
	push      DWORD PTR [esi+40]
	call      DWORD PTR [esi+36]
	add       esp, 16
	mov       ecx, DWORD PTR [esi+28]
LBB2_9:
	mov       eax, DWORD PTR [ecx+64]
	test      eax, eax
	je        LBB2_11
	sub       esp, 8
	push      eax
	push      DWORD PTR [esi+40]
	call      DWORD PTR [esi+36]
	add       esp, 16
	mov       ecx, DWORD PTR [esi+28]
LBB2_11:
	mov       eax, DWORD PTR [ecx+56]
	test      eax, eax
	je        LBB2_13
	sub       esp, 8
	push      eax
	push      DWORD PTR [esi+40]
	call      DWORD PTR [esi+36]
	add       esp, 16
	mov       ecx, DWORD PTR [esi+28]
LBB2_13:
	sub       esp, 8
	push      ecx
	push      DWORD PTR [esi+40]
	call      DWORD PTR [esi+36]
	add       esp, 16
	mov       DWORD PTR [esi+28], 0
	xor       ecx, ecx
	cmp       edi, 113
	mov       eax, -3
	cmovne    eax, ecx
LBB2_14:
	add       esp, 12
	pop       esi
	pop       edi
	pop       ebx
	pop       ebp
	ret       
LBB2_3:
	cmp       edi, 666
	je        LBB2_5
	cmp       edi, 42
	je        LBB2_5
	jmp       LBB2_14
# ----------------------
	.p2align 2, 0x90
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
# ----------------------
	.p2align 4, 0x90
# ----------------------
	.globl	_deflateReset
_deflateReset:
	push      ebp
	mov       ebp, esp
	push      ebx
	push      edi
	push      esi
	sub       esp, 12
	call      L3$pb
L3$pb:
	pop       esi
	mov       edi, DWORD PTR [ebp+8]
	mov       eax, -2
	test      edi, edi
	je        LBB3_10
	mov       ebx, DWORD PTR [edi+28]
	test      ebx, ebx
	je        LBB3_10
	cmp       DWORD PTR [edi+32], 0
	je        LBB3_10
	cmp       DWORD PTR [edi+36], 0
	je        LBB3_10
	mov       DWORD PTR [edi+20], 0
	mov       DWORD PTR [edi+8], 0
	mov       DWORD PTR [edi+24], 0
	mov       DWORD PTR [edi+44], 2
	mov       DWORD PTR [ebx+20], 0
	mov       eax, DWORD PTR [ebx+8]
	mov       DWORD PTR [ebx+16], eax
	mov       eax, DWORD PTR [ebx+24]
	test      eax, eax
	jns       LBB3_6
	neg       eax
	mov       DWORD PTR [ebx+24], eax
LBB3_6:
	test      eax, eax
	mov       ecx, 42
	mov       edx, 113
	cmovne    edx, ecx
	mov       DWORD PTR [ebx+4], edx
	sub       esp, 4
	cmp       eax, 2
	jne       LBB3_8
	push      0
	push      0
	push      0
	call      _crc32
	jmp       LBB3_9
LBB3_8:
	push      0
	push      0
	push      0
	call      _adler32
LBB3_9:
	add       esp, 16
	mov       DWORD PTR [edi+48], eax
	mov       DWORD PTR [ebx+40], 0
	sub       esp, 12
	push      ebx
	call      __tr_init
	add       esp, 16
	mov       edi, DWORD PTR [edi+28]
	mov       eax, DWORD PTR [edi+44]
	add       eax, eax
	mov       DWORD PTR [edi+60], eax
	mov       eax, DWORD PTR [edi+68]
	mov       ecx, DWORD PTR [edi+76]
	mov       WORD PTR [eax+ecx*2-2], 0
	lea       ecx, [ecx+ecx-2]
	sub       esp, 8
	push      ecx
	push      eax
	call      ___bzero
	add       esp, 16
	mov       eax, DWORD PTR [edi+132]
	lea       eax, [eax+eax*2]
	movzx     ecx, WORD PTR [esi+eax*4 + _configuration_table-L3$pb+2]
	mov       DWORD PTR [edi+128], ecx
	movzx     ecx, WORD PTR [esi+eax*4 + _configuration_table-L3$pb]
	mov       DWORD PTR [edi+140], ecx
	movzx     ecx, WORD PTR [esi+eax*4 + _configuration_table-L3$pb+4]
	mov       DWORD PTR [edi+144], ecx
	movzx     eax, WORD PTR [esi+eax*4 + _configuration_table-L3$pb+6]
	mov       DWORD PTR [edi+124], eax
	mov       DWORD PTR [edi+108], 0
	mov       DWORD PTR [edi+92], 0
	mov       DWORD PTR [edi+116], 0
	mov       DWORD PTR [edi+5812], 0
	mov       DWORD PTR [edi+120], 2
	mov       DWORD PTR [edi+96], 2
	mov       DWORD PTR [edi+104], 0
	mov       DWORD PTR [edi+72], 0
	xor       eax, eax
LBB3_10:
	add       esp, 12
	pop       esi
	pop       edi
	pop       ebx
	pop       ebp
	ret       
# ----------------------
	.p2align 4, 0x90
# ----------------------
	.globl	_deflateSetDictionary
_deflateSetDictionary:
	push      ebp
	mov       ebp, esp
	push      ebx
	push      edi
	push      esi
	sub       esp, 60
	mov       ebx, DWORD PTR [ebp+8]
	mov       eax, -2
	test      ebx, ebx
	je        LBB4_21
	mov       esi, DWORD PTR [ebp+12]
	test      esi, esi
	je        LBB4_21
	mov       ecx, DWORD PTR [ebx+28]
	test      ecx, ecx
	je        LBB4_21
	mov       edx, DWORD PTR [ecx+24]
	cmp       edx, 2
	je        LBB4_21
	cmp       edx, 1
	jne       LBB4_6
	cmp       DWORD PTR [ecx+4], 42
	jne       LBB4_21
LBB4_6:
	cmp       DWORD PTR [ecx+116], 0
	jne       LBB4_21
	mov       edi, DWORD PTR [ebp+16]
	cmp       edx, 1
	mov       DWORD PTR [ebp-16], ecx
	mov       DWORD PTR [ebp-48], edx
	jne       LBB4_9
	sub       esp, 4
	push      edi
	push      esi
	push      DWORD PTR [ebx+48]
	call      _adler32
	mov       edx, DWORD PTR [ebp-48]
	mov       ecx, DWORD PTR [ebp-16]
	add       esp, 16
	mov       DWORD PTR [ebx+48], eax
LBB4_9:
	mov       DWORD PTR [ecx+24], 0
	mov       eax, DWORD PTR [ecx+44]
	cmp       eax, edi
	ja        LBB4_13
	test      edx, edx
	jne       LBB4_12
	mov       eax, DWORD PTR [ecx+68]
	mov       ecx, DWORD PTR [ecx+76]
	mov       WORD PTR [eax+ecx*2-2], 0
	lea       ecx, [ecx+ecx-2]
	sub       esp, 8
	push      ecx
	push      eax
	call      ___bzero
	mov       ecx, DWORD PTR [ebp-16]
	add       esp, 16
	mov       DWORD PTR [ecx+108], 0
	mov       DWORD PTR [ecx+92], 0
	mov       DWORD PTR [ecx+5812], 0
	mov       eax, DWORD PTR [ecx+44]
LBB4_12:
	sub       edi, eax
	add       esi, edi
	mov       edi, eax
LBB4_13:
	mov       eax, DWORD PTR [ebx]
	mov       DWORD PTR [ebp-60], eax
	mov       eax, DWORD PTR [ebx+4]
	mov       DWORD PTR [ebp-64], eax
	mov       DWORD PTR [ebx+4], edi
	mov       DWORD PTR [ebx], esi
	call      _fill_window
	mov       edx, DWORD PTR [ebp-16]
	mov       eax, DWORD PTR [edx+108]
	mov       ecx, DWORD PTR [edx+116]
	cmp       ecx, 3
	jb        LBB4_20
# ----------------------
	.p2align 4, 0x90
LBB4_14:
	mov       DWORD PTR [ebp-20], ecx
	lea       ebx, [ecx-2]
	mov       edi, DWORD PTR [edx+72]
	mov       ecx, DWORD PTR [edx+88]
	mov       esi, DWORD PTR [edx+52]
	mov       DWORD PTR [ebp-32], esi
	mov       esi, DWORD PTR [edx+56]
	mov       DWORD PTR [ebp-40], esi
	mov       DWORD PTR [ebp-52], ebx
	test      bl, 1
	mov       esi, DWORD PTR [edx+84]
	mov       DWORD PTR [ebp-36], esi
	mov       esi, DWORD PTR [edx+68]
	mov       ebx, DWORD PTR [edx+64]
	mov       DWORD PTR [ebp-28], ebx
	mov       DWORD PTR [ebp-24], esi
	mov       DWORD PTR [ebp-68], eax
	mov       DWORD PTR [ebp-56], ecx
	jne       LBB4_16
	mov       ebx, eax
	mov       edx, DWORD PTR [ebp-52]
	mov       eax, DWORD PTR [ebp-20]
	jmp       LBB4_17
# ----------------------
	.p2align 4, 0x90
LBB4_16:
	shl       edi, cl
	mov       ecx, DWORD PTR [ebp-40]
	movzx     ebx, BYTE PTR [ecx+eax+2]
	xor       ebx, edi
	and       ebx, DWORD PTR [ebp-36]
	mov       DWORD PTR [edx+72], ebx
	movzx     edx, WORD PTR [esi+ebx*2]
	mov       edi, DWORD PTR [ebp-32]
	and       edi, eax
	mov       ecx, DWORD PTR [ebp-28]
	mov       WORD PTR [ecx+edi*2], dx
	mov       WORD PTR [esi+ebx*2], ax
	mov       edi, ebx
	lea       ebx, [eax+1]
	mov       eax, DWORD PTR [ebp-20]
	lea       edx, [eax-3]
LBB4_17:
	cmp       eax, 3
	mov       eax, DWORD PTR [ebp-24]
	je        LBB4_19
# ----------------------
	.p2align 4, 0x90
LBB4_18:
	mov       DWORD PTR [ebp-20], edx
	mov       ecx, DWORD PTR [ebp-56]
	shl       edi, cl
	mov       ecx, DWORD PTR [ebp-40]
	movzx     esi, BYTE PTR [ecx+ebx+2]
	xor       esi, edi
	and       esi, DWORD PTR [ebp-36]
	mov       edx, DWORD PTR [ebp-16]
	mov       DWORD PTR [edx+72], esi
	movzx     edi, WORD PTR [eax+esi*2]
	mov       eax, DWORD PTR [ebp-32]
	and       eax, ebx
	mov       ecx, DWORD PTR [ebp-28]
	mov       WORD PTR [ecx+eax*2], di
	mov       eax, DWORD PTR [ebp-24]
	mov       WORD PTR [eax+esi*2], bx
	mov       ecx, DWORD PTR [ebp-56]
	shl       esi, cl
	mov       eax, DWORD PTR [ebp-40]
	movzx     edi, BYTE PTR [eax+ebx+3]
	xor       edi, esi
	and       edi, DWORD PTR [ebp-36]
	mov       DWORD PTR [edx+72], edi
	mov       edx, DWORD PTR [ebp-20]
	mov       eax, DWORD PTR [ebp-24]
	movzx     eax, WORD PTR [eax+edi*2]
	mov       WORD PTR [ebp-42], ax
	lea       ecx, [ebx+1]
	mov       DWORD PTR [ebp-72], ecx
	mov       eax, DWORD PTR [ebp-32]
	and       eax, ecx
	mov       ecx, DWORD PTR [ebp-28]
	movzx     esi, WORD PTR [ebp-42]
	mov       WORD PTR [ecx+eax*2], si
	mov       eax, DWORD PTR [ebp-24]
	mov       esi, DWORD PTR [ebp-72]
	mov       WORD PTR [eax+edi*2], si
	add       ebx, 2
	add       edx, -2
	jne       LBB4_18
LBB4_19:
	mov       eax, DWORD PTR [ebp-52]
	add       eax, DWORD PTR [ebp-68]
	mov       edi, DWORD PTR [ebp-16]
	mov       DWORD PTR [edi+108], eax
	mov       DWORD PTR [edi+116], 2
	mov       ecx, edi
	call      _fill_window
	mov       eax, DWORD PTR [edi+108]
	mov       ecx, DWORD PTR [edi+116]
	cmp       ecx, 2
	mov       edx, edi
	ja        LBB4_14
LBB4_20:
	add       eax, ecx
	mov       DWORD PTR [edx+108], eax
	mov       DWORD PTR [edx+92], eax
	mov       DWORD PTR [edx+5812], ecx
	mov       DWORD PTR [edx+116], 0
	mov       DWORD PTR [edx+120], 2
	mov       DWORD PTR [edx+96], 2
	mov       DWORD PTR [edx+104], 0
	mov       eax, DWORD PTR [ebp+8]
	mov       ecx, DWORD PTR [ebp-60]
	mov       DWORD PTR [eax], ecx
	mov       ecx, DWORD PTR [ebp-64]
	mov       DWORD PTR [eax+4], ecx
	mov       eax, DWORD PTR [ebp-48]
	mov       DWORD PTR [edx+24], eax
	xor       eax, eax
LBB4_21:
	add       esp, 60
	pop       esi
	pop       edi
	pop       ebx
	pop       ebp
	ret       
# ----------------------
	.section       __TEXT,__literal16,16byte_literals
	.p2align 4
LCPI5_0:
	.byte	14
	.byte	15
	.byte	12
	.byte	13
	.byte	10
	.byte	11
	.byte	8
	.byte	9
	.byte	6
	.byte	7
	.byte	4
	.byte	5
	.byte	2
	.byte	3
	.byte	0
	.byte	1
LCPI5_1:
	.long	2147483648
	.long	2147483648
	.long	2147483648
	.long	2147483648
LCPI5_2:
	.byte	0
	.byte	1
	.byte	4
	.byte	5
	.byte	8
	.byte	9
	.byte	12
	.byte	13
	.byte	8
	.byte	9
	.byte	12
	.byte	13
	.byte	12
	.byte	13
	.byte	14
	.byte	15
# ----------------------
	.section       __TEXT,__text,regular,pure_instructions
	.p2align 4, 0x90
_fill_window:
	push      ebp
	mov       ebp, esp
	push      ebx
	push      edi
	push      esi
	sub       esp, 156
	mov       esi, ecx
	call      L5$pb
L5$pb:
	pop       eax
	mov       edi, DWORD PTR [esi+44]
	mov       ecx, edi
	and       ecx, 7
	mov       edx, edi
	sub       edx, ecx
	mov       DWORD PTR [ebp-52], edx
	movaps    xmm0, XMMWORD PTR [eax + LCPI5_0-L5$pb]
	movaps    XMMWORD PTR [ebp-104], xmm0
	movdqa    xmm1, XMMWORD PTR [eax + LCPI5_1-L5$pb]
	movdqa    XMMWORD PTR [ebp-168], xmm1
	movaps    xmm0, XMMWORD PTR [eax + LCPI5_2-L5$pb]
	movaps    XMMWORD PTR [ebp-120], xmm0
	mov       DWORD PTR [ebp-48], ecx
	sub       ecx, edi
	mov       DWORD PTR [ebp-44], ecx
	movd      xmm0, edi
	pshufd    xmm0, xmm0, 0
	movdqa    XMMWORD PTR [ebp-152], xmm0
	pxor      xmm0, xmm1
	movdqa    XMMWORD PTR [ebp-136], xmm0
	mov       ecx, DWORD PTR [esi+116]
	lea       eax, [edi-262]
	mov       DWORD PTR [ebp-56], eax
	lea       eax, [edi-8]
	mov       DWORD PTR [ebp-40], eax
	mov       eax, edi
	mov       DWORD PTR [ebp-28], esi
	mov       DWORD PTR [ebp-20], edi
	jmp       LBB5_4
# ----------------------
	.p2align 4, 0x90
LBB5_1:
	mov       ecx, DWORD PTR [ebp-36]
	cmp       ecx, 261
	ja        LBB5_38
	mov       eax, DWORD PTR [esi]
	cmp       DWORD PTR [eax+4], 0
	je        LBB5_38
	mov       eax, DWORD PTR [esi+44]
	mov       edi, DWORD PTR [ebp-20]
LBB5_4:
	mov       ebx, DWORD PTR [esi+60]
	sub       ebx, ecx
	mov       ecx, DWORD PTR [esi+108]
	sub       ebx, ecx
	add       eax, DWORD PTR [ebp-56]
	cmp       ecx, eax
	jb        LBB5_25
	mov       eax, DWORD PTR [esi+56]
	lea       ecx, [eax+edi]
	sub       esp, 4
	push      edi
	push      ecx
	push      eax
	call      _memcpy
	add       esp, 16
	sub       DWORD PTR [esi+112], edi
	mov       ecx, DWORD PTR [esi+108]
	sub       ecx, edi
	mov       DWORD PTR [esi+108], ecx
	sub       DWORD PTR [esi+92], edi
	mov       edx, DWORD PTR [esi+68]
	mov       edi, DWORD PTR [esi+76]
	lea       eax, [edx+edi*2]
	cmp       edi, 8
	mov       DWORD PTR [ebp-16], ecx
	jae       LBB5_7
	mov       esi, edi
	mov       edi, DWORD PTR [ebp-20]
	movdqa    xmm0, XMMWORD PTR [ebp-104]
	movdqa    xmm6, XMMWORD PTR [ebp-120]
	pxor      xmm3, xmm3
	jmp       LBB5_12
# ----------------------
	.p2align 4, 0x90
LBB5_7:
	mov       DWORD PTR [ebp-24], edx
	mov       esi, edi
	and       esi, 7
	mov       edx, edi
	sub       edx, esi
	movdqa    xmm0, XMMWORD PTR [ebp-104]
	movdqa    xmm6, XMMWORD PTR [ebp-120]
	pxor      xmm3, xmm3
	je        LBB5_11
	mov       ecx, esi
	sub       ecx, edi
	lea       eax, [eax+ecx*2]
	mov       ecx, DWORD PTR [ebp-24]
	lea       edi, [ecx+edi*2-16]
# ----------------------
	.p2align 4, 0x90
LBB5_9:
	movdqu    xmm2, XMMWORD PTR [edi]
	pshufb    xmm2, xmm0
	pmovzxwd  xmm1, xmm2
	punpckhwd xmm2, xmm3
	movdqa    xmm0, xmm2
	movdqa    xmm5, XMMWORD PTR [ebp-168]
	pxor      xmm0, xmm5
	movdqa    xmm7, XMMWORD PTR [ebp-136]
	movdqa    xmm3, xmm7
	pcmpgtd   xmm3, xmm0
	movdqa    xmm4, xmm1
	pxor      xmm4, xmm5
	pcmpgtd   xmm7, xmm4
	pshufb    xmm3, xmm6
	pshufb    xmm7, xmm6
	punpcklqdq xmm7, xmm3
	movdqa    xmm3, XMMWORD PTR [ebp-152]
	psubd     xmm1, xmm3
	psubd     xmm2, xmm3
	pxor      xmm3, xmm3
	pshufb    xmm2, xmm6
	pshufb    xmm1, xmm6
	punpcklqdq xmm1, xmm2
	psllw     xmm7, 15
	psraw     xmm7, 15
	movdqa    xmm0, xmm7
	pblendvb  xmm1, xmm3
	movdqa    xmm0, XMMWORD PTR [ebp-104]
	pshufb    xmm1, xmm0
	movdqu    XMMWORD PTR [edi], xmm1
	add       edi, -16
	add       edx, -8
	jne       LBB5_9
	test      esi, esi
	mov       edi, DWORD PTR [ebp-20]
	mov       edx, 0
	jne       LBB5_13
	jmp       LBB5_15
LBB5_11:
	mov       esi, edi
	mov       edi, DWORD PTR [ebp-20]
LBB5_12:
	xor       edx, edx
LBB5_13:
	add       eax, -2
# ----------------------
	.p2align 4, 0x90
LBB5_14:
	movzx     ecx, WORD PTR [eax]
	sub       ecx, edi
	cmovb     cx, dx
	mov       WORD PTR [eax], cx
	add       eax, -2
	dec       esi
	jne       LBB5_14
LBB5_15:
	cmp       edi, 8
	mov       eax, DWORD PTR [ebp-28]
	mov       ecx, DWORD PTR [eax+64]
	lea       eax, [ecx+edi*2]
	jb        LBB5_21
	mov       edx, DWORD PTR [ebp-52]
	test      edx, edx
	je        LBB5_21
	mov       esi, DWORD PTR [ebp-44]
	lea       eax, [eax+esi*2]
	mov       esi, DWORD PTR [ebp-40]
	lea       ecx, [ecx+esi*2]
# ----------------------
	.p2align 4, 0x90
LBB5_19:
	movdqu    xmm2, XMMWORD PTR [ecx]
	pshufb    xmm2, xmm0
	pmovzxwd  xmm1, xmm2
	punpckhwd xmm2, xmm3
	movdqa    xmm0, xmm2
	movdqa    xmm7, xmm6
	movdqa    xmm6, XMMWORD PTR [ebp-168]
	pxor      xmm0, xmm6
	movdqa    xmm5, XMMWORD PTR [ebp-136]
	movdqa    xmm3, xmm5
	pcmpgtd   xmm3, xmm0
	movdqa    xmm4, xmm1
	pxor      xmm4, xmm6
	movdqa    xmm6, xmm7
	pcmpgtd   xmm5, xmm4
	pshufb    xmm3, xmm6
	pshufb    xmm5, xmm6
	punpcklqdq xmm5, xmm3
	movdqa    xmm3, XMMWORD PTR [ebp-152]
	psubd     xmm1, xmm3
	psubd     xmm2, xmm3
	pxor      xmm3, xmm3
	pshufb    xmm2, xmm6
	pshufb    xmm1, xmm6
	punpcklqdq xmm1, xmm2
	psllw     xmm5, 15
	psraw     xmm5, 15
	movdqa    xmm0, xmm5
	pblendvb  xmm1, xmm3
	movdqa    xmm0, XMMWORD PTR [ebp-104]
	pshufb    xmm1, xmm0
	movdqu    XMMWORD PTR [ecx], xmm1
	add       ecx, -16
	add       edx, -8
	jne       LBB5_19
	mov       ecx, DWORD PTR [ebp-48]
	test      ecx, ecx
	jne       LBB5_22
	jmp       LBB5_24
# ----------------------
	.p2align 4, 0x90
LBB5_21:
	mov       ecx, edi
LBB5_22:
	add       eax, -2
# ----------------------
	.p2align 4, 0x90
LBB5_23:
	movzx     edx, WORD PTR [eax]
	sub       edx, edi
	mov       esi, 0
	cmovae    si, dx
	mov       WORD PTR [eax], si
	add       eax, -2
	dec       ecx
	jne       LBB5_23
LBB5_24:
	add       ebx, edi
	mov       esi, DWORD PTR [ebp-28]
	mov       ecx, DWORD PTR [ebp-16]
LBB5_25:
	mov       edi, DWORD PTR [esi]
	mov       eax, DWORD PTR [edi+4]
	test      eax, eax
	je        LBB5_38
	mov       edx, DWORD PTR [esi+116]
	cmp       eax, ebx
	cmovbe    ebx, eax
	test      ebx, ebx
	je        LBB5_30
	add       ecx, DWORD PTR [esi+56]
	add       ecx, edx
	sub       eax, ebx
	mov       DWORD PTR [edi+4], eax
	sub       esp, 4
	push      ebx
	push      DWORD PTR [edi]
	mov       DWORD PTR [ebp-16], ecx
	push      ecx
	call      _memcpy
	add       esp, 16
	mov       eax, DWORD PTR [edi+28]
	mov       eax, DWORD PTR [eax+24]
	cmp       eax, 2
	je        LBB5_31
	cmp       eax, 1
	jne       LBB5_33
	sub       esp, 4
	push      ebx
	push      DWORD PTR [ebp-16]
	push      DWORD PTR [edi+48]
	call      _adler32
	jmp       LBB5_32
# ----------------------
	.p2align 4, 0x90
LBB5_30:
	xor       ebx, ebx
	jmp       LBB5_34
# ----------------------
	.p2align 4, 0x90
LBB5_31:
	sub       esp, 4
	push      ebx
	push      DWORD PTR [ebp-16]
	push      DWORD PTR [edi+48]
	call      _crc32
LBB5_32:
	add       esp, 16
	mov       DWORD PTR [edi+48], eax
LBB5_33:
	add       DWORD PTR [edi], ebx
	add       DWORD PTR [edi+8], ebx
	mov       edx, DWORD PTR [esi+116]
LBB5_34:
	add       edx, ebx
	mov       DWORD PTR [esi+116], edx
	mov       eax, DWORD PTR [esi+5812]
	mov       DWORD PTR [ebp-36], edx
	mov       DWORD PTR [ebp-32], eax
	lea       eax, [eax+edx]
	cmp       eax, 3
	jb        LBB5_1
	mov       ebx, DWORD PTR [esi+56]
	mov       edx, DWORD PTR [esi+108]
	mov       edi, DWORD PTR [ebp-32]
	sub       edx, edi
	movzx     eax, BYTE PTR [ebx+edx]
	mov       DWORD PTR [esi+72], eax
	mov       ecx, DWORD PTR [esi+88]
	mov       DWORD PTR [ebp-64], ecx
	shl       eax, cl
	mov       DWORD PTR [ebp-24], edx
	movzx     edx, BYTE PTR [ebx+edx+1]
	xor       edx, eax
	mov       eax, DWORD PTR [esi+84]
	mov       DWORD PTR [ebp-60], eax
	and       edx, eax
	mov       DWORD PTR [esi+72], edx
	add       ebx, 2
	mov       DWORD PTR [ebp-68], ebx
	xor       ebx, ebx
	mov       eax, edi
# ----------------------
	.p2align 4, 0x90
LBB5_36:
	cmp       DWORD PTR [ebp-32], ebx
	je        LBB5_1
	mov       ecx, DWORD PTR [ebp-24]
	lea       ecx, [ecx+ebx]
	mov       DWORD PTR [ebp-16], ecx
	mov       ecx, DWORD PTR [ebp-64]
	shl       edx, cl
	mov       DWORD PTR [ebp-76], eax
	mov       eax, DWORD PTR [ebp-68]
	lea       edi, [eax+ebx]
	mov       eax, DWORD PTR [ebp-24]
	movzx     edi, BYTE PTR [eax+edi]
	xor       edi, edx
	and       edi, DWORD PTR [ebp-60]
	mov       DWORD PTR [esi+72], edi
	mov       eax, DWORD PTR [esi+64]
	mov       DWORD PTR [ebp-72], eax
	mov       eax, DWORD PTR [esi+52]
	and       eax, DWORD PTR [ebp-16]
	mov       edx, DWORD PTR [ebp-28]
	mov       esi, DWORD PTR [edx+68]
	movzx     edx, WORD PTR [esi+edi*2]
	mov       ecx, DWORD PTR [ebp-72]
	mov       WORD PTR [ecx+eax*2], dx
	mov       eax, DWORD PTR [ebp-16]
	mov       WORD PTR [esi+edi*2], ax
	mov       esi, DWORD PTR [ebp-28]
	mov       eax, DWORD PTR [ebp-36]
	mov       ecx, DWORD PTR [ebp-76]
	lea       eax, [eax+ecx-1]
	inc       ebx
	cmp       eax, 2
	lea       eax, [ecx-1]
	mov       DWORD PTR [esi+5812], eax
	mov       edx, edi
	ja        LBB5_36
	jmp       LBB5_1
LBB5_38:
	mov       eax, DWORD PTR [esi+5824]
	mov       edx, DWORD PTR [esi+60]
	mov       ecx, edx
	sub       ecx, eax
	mov       ebx, esi
	jbe       LBB5_43
	mov       esi, DWORD PTR [ebx+116]
	add       esi, DWORD PTR [ebx+108]
	cmp       eax, esi
	jae       LBB5_41
	sub       edx, esi
	cmp       edx, 258
	mov       edi, 258
	cmovb     edi, edx
	mov       eax, DWORD PTR [ebx+56]
	add       eax, esi
	sub       esp, 8
	push      edi
	push      eax
	call      ___bzero
	add       esp, 16
	add       edi, esi
	mov       DWORD PTR [ebx+5824], edi
	jmp       LBB5_43
LBB5_41:
	add       esi, 258
	sub       esi, eax
	jbe       LBB5_43
	cmp       esi, ecx
	cmova     esi, ecx
	add       eax, DWORD PTR [ebx+56]
	sub       esp, 8
	push      esi
	push      eax
	call      ___bzero
	add       esp, 16
	add       DWORD PTR [ebx+5824], esi
LBB5_43:
	add       esp, 156
	pop       esi
	pop       edi
	pop       ebx
	pop       ebp
	ret       
# ----------------------
	.p2align 4, 0x90
# ----------------------
	.globl	_deflateResetKeep
_deflateResetKeep:
	push      ebp
	mov       ebp, esp
	push      edi
	push      esi
	mov       esi, DWORD PTR [ebp+8]
	mov       eax, -2
	test      esi, esi
	je        LBB6_10
	mov       edi, DWORD PTR [esi+28]
	test      edi, edi
	je        LBB6_10
	cmp       DWORD PTR [esi+32], 0
	je        LBB6_10
	cmp       DWORD PTR [esi+36], 0
	je        LBB6_10
	mov       DWORD PTR [esi+20], 0
	mov       DWORD PTR [esi+8], 0
	mov       DWORD PTR [esi+24], 0
	mov       DWORD PTR [esi+44], 2
	mov       DWORD PTR [edi+20], 0
	mov       eax, DWORD PTR [edi+8]
	mov       DWORD PTR [edi+16], eax
	mov       eax, DWORD PTR [edi+24]
	test      eax, eax
	jns       LBB6_6
	neg       eax
	mov       DWORD PTR [edi+24], eax
LBB6_6:
	test      eax, eax
	mov       ecx, 42
	mov       edx, 113
	cmovne    edx, ecx
	mov       DWORD PTR [edi+4], edx
	sub       esp, 4
	cmp       eax, 2
	jne       LBB6_8
	push      0
	push      0
	push      0
	call      _crc32
	jmp       LBB6_9
LBB6_8:
	push      0
	push      0
	push      0
	call      _adler32
LBB6_9:
	add       esp, 16
	mov       DWORD PTR [esi+48], eax
	mov       DWORD PTR [edi+40], 0
	sub       esp, 12
	push      edi
	call      __tr_init
	add       esp, 16
	xor       eax, eax
LBB6_10:
	pop       esi
	pop       edi
	pop       ebp
	ret       
# ----------------------
	.p2align 4, 0x90
# ----------------------
	.globl	_deflateSetHeader
_deflateSetHeader:
	push      ebp
	mov       ebp, esp
	mov       ecx, DWORD PTR [ebp+8]
	mov       eax, -2
	test      ecx, ecx
	je        LBB7_4
	mov       ecx, DWORD PTR [ecx+28]
	test      ecx, ecx
	je        LBB7_4
	cmp       DWORD PTR [ecx+24], 2
	jne       LBB7_4
	mov       eax, DWORD PTR [ebp+12]
	mov       DWORD PTR [ecx+28], eax
	xor       eax, eax
LBB7_4:
	pop       ebp
	ret       
# ----------------------
	.p2align 4, 0x90
# ----------------------
	.globl	_deflatePending
_deflatePending:
	push      ebp
	mov       ebp, esp
	push      esi
	mov       ecx, DWORD PTR [ebp+8]
	mov       eax, -2
	test      ecx, ecx
	je        LBB8_6
	mov       ecx, DWORD PTR [ecx+28]
	test      ecx, ecx
	je        LBB8_6
	mov       edx, DWORD PTR [ebp+16]
	mov       eax, DWORD PTR [ebp+12]
	test      eax, eax
	je        LBB8_4
	mov       esi, DWORD PTR [ecx+20]
	mov       DWORD PTR [eax], esi
LBB8_4:
	xor       eax, eax
	test      edx, edx
	je        LBB8_6
	mov       ecx, DWORD PTR [ecx+5820]
	mov       DWORD PTR [edx], ecx
LBB8_6:
	pop       esi
	pop       ebp
	ret       
# ----------------------
	.p2align 4, 0x90
# ----------------------
	.globl	_deflatePrime
_deflatePrime:
	push      ebp
	mov       ebp, esp
	push      ebx
	push      edi
	push      esi
	sub       esp, 12
	mov       ecx, DWORD PTR [ebp+8]
	mov       eax, -2
	test      ecx, ecx
	je        LBB9_6
	mov       edx, DWORD PTR [ecx+28]
	test      edx, edx
	je        LBB9_6
	mov       ecx, DWORD PTR [edx+16]
	add       ecx, 2
	mov       eax, -5
	cmp       DWORD PTR [edx+5796], ecx
	jb        LBB9_6
	mov       eax, DWORD PTR [ebp+16]
	mov       DWORD PTR [ebp-16], eax
	mov       DWORD PTR [ebp-20], edx
	mov       esi, DWORD PTR [ebp+12]
	mov       edi, DWORD PTR [ebp-20]
# ----------------------
	.p2align 4, 0x90
LBB9_4:
	mov       eax, DWORD PTR [edi+5820]
	mov       ebx, 16
	sub       ebx, eax
	cmp       ebx, esi
	cmovg     ebx, esi
	mov       edx, 1
	mov       ecx, ebx
	shl       edx, cl
	dec       edx
	and       edx, DWORD PTR [ebp-16]
	mov       ecx, eax
	shl       edx, cl
	or        edx, DWORD PTR [edi+5816]
	mov       WORD PTR [edi+5816], dx
	add       eax, ebx
	mov       DWORD PTR [edi+5820], eax
	mov       DWORD PTR [esp], edi
	call      __tr_flush_bits
	mov       ecx, ebx
	sar       DWORD PTR [ebp-16], cl
	sub       esi, ebx
	jne       LBB9_4
	xor       eax, eax
LBB9_6:
	add       esp, 12
	pop       esi
	pop       edi
	pop       ebx
	pop       ebp
	ret       
# ----------------------
	.p2align 4, 0x90
# ----------------------
	.globl	_deflateParams
_deflateParams:
	push      ebp
	mov       ebp, esp
	push      ebx
	push      edi
	push      esi
	sub       esp, 12
	call      L10$pb
L10$pb:
	pop       esi
	mov       ecx, DWORD PTR [ebp+8]
	mov       eax, -2
	test      ecx, ecx
	je        LBB10_14
	mov       edi, DWORD PTR [ecx+28]
	test      edi, edi
	je        LBB10_14
	mov       edx, DWORD PTR [ebp+12]
	cmp       edx, -1
	mov       ebx, 6
	cmovne    ebx, edx
	cmp       DWORD PTR [ebp+16], 4
	ja        LBB10_14
	cmp       ebx, 9
	ja        LBB10_14
	mov       eax, DWORD PTR [ebp+16]
	cmp       DWORD PTR [edi+136], eax
	jne       LBB10_7
	mov       eax, DWORD PTR [edi+132]
	lea       eax, [eax+eax*2]
	mov       eax, DWORD PTR [esi+eax*4 + _configuration_table-L10$pb+8]
	lea       edx, [ebx+ebx*2]
	cmp       eax, DWORD PTR [esi+edx*4 + _configuration_table-L10$pb+8]
	je        LBB10_6
LBB10_7:
	cmp       DWORD PTR [ecx+8], 0
	je        LBB10_8
	sub       esp, 8
	push      5
	push      ecx
	call      _deflate
	add       esp, 16
	cmp       eax, -5
	jne       LBB10_11
	mov       ecx, DWORD PTR [edi+20]
	test      ecx, ecx
	mov       eax, -5
	cmove     eax, ecx
	cmp       DWORD PTR [edi+132], ebx
	jne       LBB10_12
	jmp       LBB10_13
LBB10_8:
	xor       eax, eax
	cmp       DWORD PTR [edi+132], ebx
	jne       LBB10_12
	jmp       LBB10_13
LBB10_6:
	xor       eax, eax
LBB10_11:
	cmp       DWORD PTR [edi+132], ebx
	je        LBB10_13
LBB10_12:
	mov       DWORD PTR [edi+132], ebx
	lea       ecx, [ebx+ebx*2]
	movzx     edx, WORD PTR [esi+ecx*4 + _configuration_table-L10$pb+2]
	mov       DWORD PTR [edi+128], edx
	movzx     edx, WORD PTR [esi+ecx*4 + _configuration_table-L10$pb]
	mov       DWORD PTR [edi+140], edx
	movzx     edx, WORD PTR [esi+ecx*4 + _configuration_table-L10$pb+4]
	mov       DWORD PTR [edi+144], edx
	movzx     ecx, WORD PTR [esi+ecx*4 + _configuration_table-L10$pb+6]
	mov       DWORD PTR [edi+124], ecx
LBB10_13:
	mov       ecx, DWORD PTR [ebp+16]
	mov       DWORD PTR [edi+136], ecx
LBB10_14:
	add       esp, 12
	pop       esi
	pop       edi
	pop       ebx
	pop       ebp
	ret       
# ----------------------
	.p2align 4, 0x90
# ----------------------
	.globl	_deflate
_deflate:
	push      ebp
	mov       ebp, esp
	push      ebx
	push      edi
	push      esi
	sub       esp, 28
	call      L11$pb
L11$pb:
	pop       ecx
	mov       ebx, DWORD PTR [ebp+8]
	mov       eax, -2
	test      ebx, ebx
	je        LBB11_21
	cmp       DWORD PTR [ebp+12], 5
	ja        LBB11_21
	mov       esi, DWORD PTR [ebx+28]
	test      esi, esi
	je        LBB11_21
	mov       DWORD PTR [ebp-28], ecx
	cmp       DWORD PTR [ebx+12], 0
	je        LBB11_20
	cmp       DWORD PTR [ebx], 0
	je        LBB11_19
LBB11_5:
	mov       ecx, DWORD PTR [esi+4]
	cmp       DWORD PTR [ebp+12], 4
	je        LBB11_7
	cmp       ecx, 666
	je        LBB11_20
LBB11_7:
	cmp       DWORD PTR [ebx+16], 0
	je        LBB11_184
	mov       DWORD PTR [esi], ebx
	mov       eax, DWORD PTR [esi+40]
	mov       DWORD PTR [ebp-24], eax
	mov       eax, DWORD PTR [ebp+12]
	mov       DWORD PTR [esi+40], eax
	cmp       ecx, 42
	mov       DWORD PTR [ebp-16], esi
	jne       LBB11_29
	cmp       DWORD PTR [esi+24], 2
	jne       LBB11_22
	sub       esp, 4
	push      0
	push      0
	push      0
	call      _crc32
	add       esp, 16
	mov       DWORD PTR [ebx+48], eax
	mov       eax, DWORD PTR [esi+8]
	mov       ecx, DWORD PTR [esi+20]
	lea       edx, [ecx+1]
	mov       DWORD PTR [esi+20], edx
	mov       BYTE PTR [eax+ecx], 31
	mov       eax, DWORD PTR [esi+8]
	mov       ecx, DWORD PTR [esi+20]
	lea       edx, [ecx+1]
	mov       DWORD PTR [esi+20], edx
	mov       BYTE PTR [eax+ecx], 139
	mov       eax, DWORD PTR [esi+8]
	mov       ecx, DWORD PTR [esi+20]
	lea       edx, [ecx+1]
	mov       DWORD PTR [esi+20], edx
	mov       BYTE PTR [eax+ecx], 8
	mov       eax, DWORD PTR [esi+28]
	test      eax, eax
	je        LBB11_107
	cmp       DWORD PTR [eax], 0
	setne     cl
	cmp       DWORD PTR [eax+44], 0
	setne     dl
	add       dl, dl
	or        dl, cl
	cmp       DWORD PTR [eax+16], 0
	setne     cl
	shl       cl, 2
	cmp       DWORD PTR [eax+28], 0
	setne     ch
	shl       ch, 3
	or        ch, cl
	or        ch, dl
	cmp       DWORD PTR [eax+36], 0
	setne     al
	shl       al, 4
	or        al, ch
	mov       ecx, DWORD PTR [esi+8]
	mov       edx, DWORD PTR [esi+20]
	lea       esi, [edx+1]
	mov       edi, DWORD PTR [ebp-16]
	mov       DWORD PTR [edi+20], esi
	mov       BYTE PTR [ecx+edx], al
	mov       eax, DWORD PTR [ebp-16]
	mov       eax, DWORD PTR [eax+28]
	mov       al, BYTE PTR [eax+4]
	mov       ecx, DWORD PTR [ebp-16]
	mov       ecx, DWORD PTR [ecx+8]
	mov       edx, DWORD PTR [ebp-16]
	mov       edx, DWORD PTR [edx+20]
	lea       esi, [edx+1]
	mov       edi, DWORD PTR [ebp-16]
	mov       DWORD PTR [edi+20], esi
	mov       BYTE PTR [ecx+edx], al
	mov       eax, DWORD PTR [ebp-16]
	mov       eax, DWORD PTR [eax+28]
	mov       al, BYTE PTR [eax+5]
	mov       ecx, DWORD PTR [ebp-16]
	mov       ecx, DWORD PTR [ecx+8]
	mov       edx, DWORD PTR [ebp-16]
	mov       edx, DWORD PTR [edx+20]
	lea       esi, [edx+1]
	mov       edi, DWORD PTR [ebp-16]
	mov       DWORD PTR [edi+20], esi
	mov       BYTE PTR [ecx+edx], al
	mov       eax, DWORD PTR [ebp-16]
	mov       eax, DWORD PTR [eax+28]
	mov       al, BYTE PTR [eax+6]
	mov       ecx, DWORD PTR [ebp-16]
	mov       ecx, DWORD PTR [ecx+8]
	mov       edx, DWORD PTR [ebp-16]
	mov       edx, DWORD PTR [edx+20]
	lea       esi, [edx+1]
	mov       edi, DWORD PTR [ebp-16]
	mov       DWORD PTR [edi+20], esi
	mov       BYTE PTR [ecx+edx], al
	mov       eax, DWORD PTR [ebp-16]
	mov       eax, DWORD PTR [eax+28]
	mov       al, BYTE PTR [eax+7]
	mov       ecx, DWORD PTR [ebp-16]
	mov       ecx, DWORD PTR [ecx+8]
	mov       edx, DWORD PTR [ebp-16]
	mov       edx, DWORD PTR [edx+20]
	lea       esi, [edx+1]
	mov       edi, DWORD PTR [ebp-16]
	mov       DWORD PTR [edi+20], esi
	mov       esi, DWORD PTR [ebp-16]
	mov       BYTE PTR [ecx+edx], al
	mov       ecx, DWORD PTR [esi+132]
	mov       al, 2
	cmp       ecx, 9
	je        LBB11_14
	cmp       DWORD PTR [esi+136], 1
	setg      dl
	cmp       ecx, 2
	mov       al, 4
	jl        LBB11_14
	shl       dl, 2
	mov       eax, edx
LBB11_14:
	mov       ecx, DWORD PTR [esi+8]
	mov       edx, DWORD PTR [esi+20]
	lea       esi, [edx+1]
	mov       edi, DWORD PTR [ebp-16]
	mov       DWORD PTR [edi+20], esi
	mov       BYTE PTR [ecx+edx], al
	mov       eax, DWORD PTR [ebp-16]
	mov       eax, DWORD PTR [eax+28]
	mov       al, BYTE PTR [eax+12]
	mov       ecx, DWORD PTR [ebp-16]
	mov       ecx, DWORD PTR [ecx+8]
	mov       edx, DWORD PTR [ebp-16]
	mov       edx, DWORD PTR [edx+20]
	lea       esi, [edx+1]
	mov       edi, DWORD PTR [ebp-16]
	mov       DWORD PTR [edi+20], esi
	mov       esi, DWORD PTR [ebp-16]
	mov       BYTE PTR [ecx+edx], al
	mov       eax, DWORD PTR [esi+28]
	cmp       DWORD PTR [eax+16], 0
	je        LBB11_16
	mov       al, BYTE PTR [eax+20]
	mov       ecx, DWORD PTR [esi+8]
	mov       edx, DWORD PTR [esi+20]
	lea       esi, [edx+1]
	mov       edi, DWORD PTR [ebp-16]
	mov       DWORD PTR [edi+20], esi
	mov       BYTE PTR [ecx+edx], al
	mov       eax, DWORD PTR [ebp-16]
	mov       eax, DWORD PTR [eax+28]
	mov       al, BYTE PTR [eax+21]
	mov       ecx, DWORD PTR [ebp-16]
	mov       ecx, DWORD PTR [ecx+8]
	mov       edx, DWORD PTR [ebp-16]
	mov       edx, DWORD PTR [edx+20]
	lea       esi, [edx+1]
	mov       edi, DWORD PTR [ebp-16]
	mov       DWORD PTR [edi+20], esi
	mov       esi, DWORD PTR [ebp-16]
	mov       BYTE PTR [ecx+edx], al
	mov       eax, DWORD PTR [esi+28]
LBB11_16:
	cmp       DWORD PTR [eax+44], 0
	je        LBB11_18
	sub       esp, 4
	push      DWORD PTR [esi+20]
	push      DWORD PTR [esi+8]
	push      DWORD PTR [ebx+48]
	call      _crc32
	add       esp, 16
	mov       DWORD PTR [ebx+48], eax
LBB11_18:
	lea       ecx, [esi+28]
	mov       DWORD PTR [esi+32], 0
	mov       DWORD PTR [esi+4], 69
	jmp       LBB11_31
LBB11_19:
	cmp       DWORD PTR [ebx+4], 0
	je        LBB11_5
LBB11_20:
	mov       ecx, DWORD PTR [ebp-28]
	mov       ecx, DWORD PTR [ecx + L_z_errmsg$non_lazy_ptr-L11$pb]
	mov       ecx, DWORD PTR [ecx+16]
	mov       DWORD PTR [ebx+24], ecx
LBB11_21:
	add       esp, 28
	pop       esi
	pop       edi
	pop       ebx
	pop       ebp
	ret       
LBB11_22:
	mov       eax, DWORD PTR [esi+48]
	shl       eax, 12
	add       eax, -30720
	xor       edx, edx
	cmp       DWORD PTR [esi+136], 1
	jg        LBB11_26
	mov       ecx, DWORD PTR [esi+132]
	cmp       ecx, 2
	jl        LBB11_26
	mov       edx, 64
	cmp       ecx, 6
	jl        LBB11_26
	mov       ecx, 128
	mov       edx, 192
	cmove     edx, ecx
LBB11_26:
	or        edx, eax
	mov       ecx, edx
	or        ecx, 32
	cmp       DWORD PTR [esi+108], 0
	cmove     ecx, edx
	mov       edx, 138547333
	mov       eax, ecx
	mul       edx
	mov       eax, ecx
	sub       eax, edx
	shr       eax, 1
	add       eax, edx
	shr       eax, 4
	mov       edx, eax
	shl       edx, 5
	sub       edx, eax
	mov       eax, ecx
	sub       eax, edx
	mov       DWORD PTR [esi+4], 113
	mov       edx, DWORD PTR [esi+8]
	mov       esi, DWORD PTR [ebp-16]
	mov       esi, DWORD PTR [esi+20]
	lea       edi, [esi+1]
	mov       ebx, DWORD PTR [ebp-16]
	mov       DWORD PTR [ebx+20], edi
	or        eax, ecx
	mov       BYTE PTR [edx+esi], ch
	mov       ecx, DWORD PTR [ebp-16]
	mov       ecx, DWORD PTR [ecx+8]
	mov       edx, DWORD PTR [ebp-16]
	mov       edx, DWORD PTR [edx+20]
	lea       esi, [edx+1]
	mov       edi, DWORD PTR [ebp-16]
	mov       DWORD PTR [edi+20], esi
	mov       esi, DWORD PTR [ebp-16]
	xor       al, 31
	mov       BYTE PTR [ecx+edx], al
	cmp       DWORD PTR [esi+108], 0
	mov       ebx, DWORD PTR [ebp+8]
	je        LBB11_28
	mov       eax, DWORD PTR [ebx+48]
	mov       ecx, DWORD PTR [esi+8]
	mov       edx, DWORD PTR [esi+20]
	lea       esi, [edx+1]
	mov       edi, DWORD PTR [ebp-16]
	mov       DWORD PTR [edi+20], esi
	mov       ebx, eax
	shr       ebx, 16
	shr       eax, 24
	mov       BYTE PTR [ecx+edx], al
	mov       eax, DWORD PTR [ebp-16]
	mov       eax, DWORD PTR [eax+8]
	mov       ecx, DWORD PTR [ebp-16]
	mov       ecx, DWORD PTR [ecx+20]
	lea       edx, [ecx+1]
	mov       esi, DWORD PTR [ebp-16]
	mov       DWORD PTR [esi+20], edx
	mov       BYTE PTR [eax+ecx], bl
	mov       ebx, DWORD PTR [ebp+8]
	mov       eax, DWORD PTR [ebx+48]
	mov       ecx, DWORD PTR [ebp-16]
	mov       ecx, DWORD PTR [ecx+8]
	mov       edx, DWORD PTR [ebp-16]
	mov       edx, DWORD PTR [edx+20]
	lea       esi, [edx+1]
	mov       edi, DWORD PTR [ebp-16]
	mov       DWORD PTR [edi+20], esi
	mov       BYTE PTR [ecx+edx], ah
	mov       ecx, DWORD PTR [ebp-16]
	mov       ecx, DWORD PTR [ecx+8]
	mov       edx, DWORD PTR [ebp-16]
	mov       edx, DWORD PTR [edx+20]
	lea       esi, [edx+1]
	mov       edi, DWORD PTR [ebp-16]
	mov       DWORD PTR [edi+20], esi
	mov       esi, DWORD PTR [ebp-16]
	mov       BYTE PTR [ecx+edx], al
LBB11_28:
	sub       esp, 4
	push      0
	push      0
	push      0
	call      _adler32
	add       esp, 16
	mov       DWORD PTR [ebx+48], eax
	mov       ecx, DWORD PTR [esi+4]
LBB11_29:
	cmp       ecx, 69
	jne       LBB11_52
	lea       ecx, [esi+28]
LBB11_31:
	mov       eax, DWORD PTR [ecx]
	cmp       DWORD PTR [eax+16], 0
	je        LBB11_66
	mov       DWORD PTR [ebp-20], ecx
	mov       ecx, DWORD PTR [esi+20]
	mov       edi, DWORD PTR [esi+32]
	movzx     edx, WORD PTR [eax+20]
	cmp       edi, edx
	jae       LBB11_46
	mov       edx, ecx
	cmp       ecx, DWORD PTR [esi+12]
	jne       LBB11_43
LBB11_35:
	sub       ecx, edx
	jbe       LBB11_38
	mov       eax, DWORD PTR [eax+44]
	test      eax, eax
	je        LBB11_38
	add       edx, DWORD PTR [esi+8]
	sub       esp, 4
	push      ecx
	push      edx
	push      DWORD PTR [ebx+48]
	call      _crc32
	add       esp, 16
	mov       DWORD PTR [ebx+48], eax
LBB11_38:
	mov       edi, DWORD PTR [ebx+28]
	sub       esp, 12
	push      edi
	call      __tr_flush_bits
	add       esp, 16
	mov       eax, ebx
	mov       ebx, DWORD PTR [edi+20]
	mov       eax, DWORD PTR [eax+16]
	cmp       ebx, eax
	cmova     ebx, eax
	test      ebx, ebx
	je        LBB11_41
	sub       esp, 4
	push      ebx
	push      DWORD PTR [edi+16]
	mov       eax, DWORD PTR [ebp+8]
	push      DWORD PTR [eax+12]
	call      _memcpy
	add       esp, 16
	mov       eax, DWORD PTR [ebp+8]
	add       DWORD PTR [eax+12], ebx
	add       DWORD PTR [edi+16], ebx
	add       DWORD PTR [eax+20], ebx
	sub       DWORD PTR [eax+16], ebx
	mov       eax, DWORD PTR [edi+20]
	sub       eax, ebx
	mov       DWORD PTR [edi+20], eax
	jne       LBB11_41
	mov       eax, DWORD PTR [edi+8]
	mov       DWORD PTR [edi+16], eax
LBB11_41:
	mov       ecx, DWORD PTR [esi+20]
	mov       eax, DWORD PTR [esi+28]
	cmp       ecx, DWORD PTR [esi+12]
	je        LBB11_45
	mov       edi, DWORD PTR [esi+32]
	mov       edx, ecx
	jmp       LBB11_43
LBB11_34:
	mov       ecx, DWORD PTR [esi+20]
	mov       ebx, DWORD PTR [ebp+8]
	cmp       ecx, DWORD PTR [esi+12]
	je        LBB11_35
LBB11_43:
	mov       eax, DWORD PTR [eax+16]
	movzx     eax, BYTE PTR [eax+edi]
	mov       esi, DWORD PTR [ebp-16]
	mov       esi, DWORD PTR [esi+8]
	lea       edi, [ecx+1]
	mov       ebx, DWORD PTR [ebp-16]
	mov       DWORD PTR [ebx+20], edi
	mov       BYTE PTR [esi+ecx], al
	mov       esi, DWORD PTR [ebp-16]
	mov       edi, DWORD PTR [esi+32]
	inc       edi
	mov       DWORD PTR [esi+32], edi
	mov       eax, DWORD PTR [esi+28]
	movzx     ecx, WORD PTR [eax+20]
	cmp       edi, ecx
	jb        LBB11_34
	mov       ecx, edx
LBB11_45:
	mov       ebx, DWORD PTR [ebp+8]
LBB11_46:
	cmp       DWORD PTR [eax+44], 0
	je        LBB11_49
	mov       edx, DWORD PTR [esi+20]
	sub       edx, ecx
	jbe       LBB11_49
	add       ecx, DWORD PTR [esi+8]
	sub       esp, 4
	push      edx
	push      ecx
	push      DWORD PTR [ebx+48]
	call      _crc32
	add       esp, 16
	mov       DWORD PTR [ebx+48], eax
	mov       eax, DWORD PTR [esi+28]
LBB11_49:
	mov       ecx, DWORD PTR [esi+32]
	cmp       ecx, DWORD PTR [eax+20]
	jne       LBB11_51
	mov       DWORD PTR [esi+32], 0
	mov       DWORD PTR [esi+4], 73
	mov       ecx, DWORD PTR [ebp-20]
	cmp       DWORD PTR [eax+28], 0
	jne       LBB11_54
	jmp       LBB11_67
LBB11_66:
	mov       DWORD PTR [esi+4], 73
	cmp       DWORD PTR [eax+28], 0
	jne       LBB11_54
	jmp       LBB11_67
LBB11_51:
	mov       ecx, DWORD PTR [esi+4]
LBB11_52:
	cmp       ecx, 73
	jne       LBB11_74
	lea       ecx, [esi+28]
	mov       eax, DWORD PTR [esi+28]
	cmp       DWORD PTR [eax+28], 0
	je        LBB11_67
LBB11_54:
	mov       DWORD PTR [ebp-20], ecx
	mov       eax, DWORD PTR [esi+20]
	mov       ecx, eax
	cmp       eax, DWORD PTR [esi+12]
	jne       LBB11_64
# ----------------------
	.p2align 4, 0x90
LBB11_56:
	sub       eax, ecx
	jbe       LBB11_59
	mov       edx, DWORD PTR [ebp-20]
	mov       edx, DWORD PTR [edx]
	mov       edx, DWORD PTR [edx+44]
	test      edx, edx
	je        LBB11_59
	add       ecx, DWORD PTR [esi+8]
	sub       esp, 4
	push      eax
	push      ecx
	push      DWORD PTR [ebx+48]
	call      _crc32
	add       esp, 16
	mov       DWORD PTR [ebx+48], eax
LBB11_59:
	mov       edi, DWORD PTR [ebx+28]
	sub       esp, 12
	push      edi
	call      __tr_flush_bits
	add       esp, 16
	mov       eax, ebx
	mov       ebx, DWORD PTR [edi+20]
	mov       eax, DWORD PTR [eax+16]
	cmp       ebx, eax
	cmova     ebx, eax
	test      ebx, ebx
	je        LBB11_62
	sub       esp, 4
	push      ebx
	push      DWORD PTR [edi+16]
	mov       eax, DWORD PTR [ebp+8]
	mov       esi, eax
	push      DWORD PTR [esi+12]
	call      _memcpy
	add       esp, 16
	add       DWORD PTR [esi+12], ebx
	add       DWORD PTR [edi+16], ebx
	add       DWORD PTR [esi+20], ebx
	sub       DWORD PTR [esi+16], ebx
	mov       esi, DWORD PTR [ebp-16]
	mov       eax, DWORD PTR [edi+20]
	sub       eax, ebx
	mov       DWORD PTR [edi+20], eax
	jne       LBB11_62
	mov       eax, DWORD PTR [edi+8]
	mov       DWORD PTR [edi+16], eax
LBB11_62:
	mov       eax, DWORD PTR [esi+20]
	cmp       eax, DWORD PTR [esi+12]
	je        LBB11_68
	mov       ecx, eax
	jmp       LBB11_64
# ----------------------
	.p2align 4, 0x90
LBB11_55:
	mov       eax, DWORD PTR [esi+20]
	mov       ebx, DWORD PTR [ebp+8]
	cmp       eax, DWORD PTR [esi+12]
	je        LBB11_56
LBB11_64:
	mov       edx, DWORD PTR [ebp-20]
	mov       edx, DWORD PTR [edx]
	mov       edx, DWORD PTR [edx+28]
	mov       ebx, DWORD PTR [esi+32]
	lea       edi, [ebx+1]
	mov       DWORD PTR [esi+32], edi
	movzx     ebx, BYTE PTR [edx+ebx]
	lea       edx, [eax+1]
	mov       edi, DWORD PTR [esi+8]
	mov       DWORD PTR [esi+20], edx
	mov       BYTE PTR [edi+eax], bl
	test      ebx, ebx
	jne       LBB11_55
	mov       eax, ecx
	jmp       LBB11_69
LBB11_67:
	mov       DWORD PTR [esi+4], 91
	jmp       LBB11_77
LBB11_68:
	mov       ebx, 1
LBB11_69:
	mov       ecx, DWORD PTR [ebp-20]
	mov       ecx, DWORD PTR [ecx]
	cmp       DWORD PTR [ecx+44], 0
	je        LBB11_72
	mov       ecx, DWORD PTR [esi+20]
	sub       ecx, eax
	jbe       LBB11_72
	add       eax, DWORD PTR [esi+8]
	sub       esp, 4
	push      ecx
	push      eax
	mov       eax, DWORD PTR [ebp+8]
	mov       edi, esi
	mov       esi, eax
	push      DWORD PTR [esi+48]
	call      _crc32
	add       esp, 16
	mov       DWORD PTR [esi+48], eax
	mov       esi, edi
LBB11_72:
	test      ebx, ebx
	je        LBB11_76
	mov       ecx, DWORD PTR [esi+4]
	mov       ebx, DWORD PTR [ebp+8]
LBB11_74:
	cmp       ecx, 91
	jne       LBB11_97
	lea       ecx, [esi+28]
	jmp       LBB11_77
LBB11_76:
	mov       DWORD PTR [esi+32], 0
	mov       DWORD PTR [esi+4], 91
	mov       ebx, DWORD PTR [ebp+8]
	mov       ecx, DWORD PTR [ebp-20]
LBB11_77:
	mov       eax, DWORD PTR [ecx]
	cmp       DWORD PTR [eax+36], 0
	je        LBB11_90
	mov       DWORD PTR [ebp-20], ecx
	mov       eax, DWORD PTR [esi+20]
	mov       ecx, eax
	cmp       eax, DWORD PTR [esi+12]
	jne       LBB11_88
# ----------------------
	.p2align 4, 0x90
LBB11_80:
	sub       eax, ecx
	jbe       LBB11_83
	mov       edx, DWORD PTR [ebp-20]
	mov       edx, DWORD PTR [edx]
	mov       edx, DWORD PTR [edx+44]
	test      edx, edx
	je        LBB11_83
	add       ecx, DWORD PTR [esi+8]
	sub       esp, 4
	push      eax
	push      ecx
	push      DWORD PTR [ebx+48]
	call      _crc32
	add       esp, 16
	mov       DWORD PTR [ebx+48], eax
LBB11_83:
	mov       edi, DWORD PTR [ebx+28]
	sub       esp, 12
	push      edi
	call      __tr_flush_bits
	add       esp, 16
	mov       eax, ebx
	mov       ebx, DWORD PTR [edi+20]
	mov       eax, DWORD PTR [eax+16]
	cmp       ebx, eax
	cmova     ebx, eax
	test      ebx, ebx
	je        LBB11_86
	sub       esp, 4
	push      ebx
	push      DWORD PTR [edi+16]
	mov       eax, DWORD PTR [ebp+8]
	mov       esi, eax
	push      DWORD PTR [esi+12]
	call      _memcpy
	add       esp, 16
	add       DWORD PTR [esi+12], ebx
	add       DWORD PTR [edi+16], ebx
	add       DWORD PTR [esi+20], ebx
	sub       DWORD PTR [esi+16], ebx
	mov       esi, DWORD PTR [ebp-16]
	mov       eax, DWORD PTR [edi+20]
	sub       eax, ebx
	mov       DWORD PTR [edi+20], eax
	jne       LBB11_86
	mov       eax, DWORD PTR [edi+8]
	mov       DWORD PTR [edi+16], eax
LBB11_86:
	mov       eax, DWORD PTR [esi+20]
	cmp       eax, DWORD PTR [esi+12]
	je        LBB11_91
	mov       ecx, eax
	jmp       LBB11_88
# ----------------------
	.p2align 4, 0x90
LBB11_79:
	mov       eax, DWORD PTR [esi+20]
	mov       ebx, DWORD PTR [ebp+8]
	cmp       eax, DWORD PTR [esi+12]
	je        LBB11_80
LBB11_88:
	mov       edx, DWORD PTR [ebp-20]
	mov       edx, DWORD PTR [edx]
	mov       edx, DWORD PTR [edx+36]
	mov       ebx, DWORD PTR [esi+32]
	lea       edi, [ebx+1]
	mov       DWORD PTR [esi+32], edi
	movzx     ebx, BYTE PTR [edx+ebx]
	lea       edx, [eax+1]
	mov       edi, DWORD PTR [esi+8]
	mov       DWORD PTR [esi+20], edx
	mov       BYTE PTR [edi+eax], bl
	test      ebx, ebx
	jne       LBB11_79
	mov       eax, ecx
	jmp       LBB11_92
LBB11_90:
	mov       DWORD PTR [esi+4], 103
	jmp       LBB11_100
LBB11_91:
	mov       ebx, 1
LBB11_92:
	mov       ecx, DWORD PTR [ebp-20]
	mov       ecx, DWORD PTR [ecx]
	cmp       DWORD PTR [ecx+44], 0
	je        LBB11_95
	mov       ecx, DWORD PTR [esi+20]
	sub       ecx, eax
	jbe       LBB11_95
	add       eax, DWORD PTR [esi+8]
	sub       esp, 4
	push      ecx
	push      eax
	mov       eax, DWORD PTR [ebp+8]
	mov       edi, esi
	mov       esi, eax
	push      DWORD PTR [esi+48]
	call      _crc32
	add       esp, 16
	mov       DWORD PTR [esi+48], eax
	mov       esi, edi
LBB11_95:
	test      ebx, ebx
	je        LBB11_99
	mov       ecx, DWORD PTR [esi+4]
	mov       ebx, DWORD PTR [ebp+8]
LBB11_97:
	cmp       ecx, 103
	jne       LBB11_112
	lea       ecx, [esi+28]
	jmp       LBB11_100
LBB11_99:
	mov       DWORD PTR [esi+4], 103
	mov       ebx, DWORD PTR [ebp+8]
	mov       ecx, DWORD PTR [ebp-20]
LBB11_100:
	mov       eax, DWORD PTR [ecx]
	cmp       DWORD PTR [eax+44], 0
	je        LBB11_111
	mov       eax, DWORD PTR [esi+20]
	add       eax, 2
	cmp       eax, DWORD PTR [esi+12]
	jbe       LBB11_105
	mov       eax, DWORD PTR [ebp+8]
	mov       esi, eax
	mov       edi, DWORD PTR [esi+28]
	sub       esp, 12
	push      edi
	call      __tr_flush_bits
	add       esp, 16
	mov       ebx, DWORD PTR [edi+20]
	mov       eax, DWORD PTR [esi+16]
	mov       esi, DWORD PTR [ebp-16]
	cmp       ebx, eax
	cmova     ebx, eax
	test      ebx, ebx
	je        LBB11_105
	sub       esp, 4
	push      ebx
	push      DWORD PTR [edi+16]
	mov       eax, DWORD PTR [ebp+8]
	mov       esi, eax
	push      DWORD PTR [esi+12]
	call      _memcpy
	add       esp, 16
	add       DWORD PTR [esi+12], ebx
	add       DWORD PTR [edi+16], ebx
	add       DWORD PTR [esi+20], ebx
	sub       DWORD PTR [esi+16], ebx
	mov       esi, DWORD PTR [ebp-16]
	mov       eax, DWORD PTR [edi+20]
	sub       eax, ebx
	mov       DWORD PTR [edi+20], eax
	jne       LBB11_105
	mov       eax, DWORD PTR [edi+8]
	mov       DWORD PTR [edi+16], eax
LBB11_105:
	mov       eax, DWORD PTR [esi+20]
	lea       ecx, [eax+2]
	cmp       ecx, DWORD PTR [esi+12]
	mov       ebx, DWORD PTR [ebp+8]
	ja        LBB11_112
	mov       cl, BYTE PTR [ebx+48]
	mov       edx, DWORD PTR [esi+8]
	lea       esi, [eax+1]
	mov       edi, DWORD PTR [ebp-16]
	mov       DWORD PTR [edi+20], esi
	mov       BYTE PTR [edx+eax], cl
	mov       al, BYTE PTR [ebx+49]
	mov       ecx, DWORD PTR [ebp-16]
	mov       ecx, DWORD PTR [ecx+8]
	mov       edx, DWORD PTR [ebp-16]
	mov       edx, DWORD PTR [edx+20]
	lea       esi, [edx+1]
	mov       edi, DWORD PTR [ebp-16]
	mov       DWORD PTR [edi+20], esi
	mov       esi, DWORD PTR [ebp-16]
	mov       BYTE PTR [ecx+edx], al
	sub       esp, 4
	push      0
	push      0
	push      0
	call      _crc32
	add       esp, 16
	mov       DWORD PTR [ebx+48], eax
	jmp       LBB11_111
LBB11_107:
	mov       eax, DWORD PTR [esi+8]
	mov       ecx, DWORD PTR [esi+20]
	lea       edx, [ecx+1]
	mov       DWORD PTR [esi+20], edx
	mov       BYTE PTR [eax+ecx], 0
	mov       eax, DWORD PTR [esi+8]
	mov       ecx, DWORD PTR [esi+20]
	lea       edx, [ecx+1]
	mov       DWORD PTR [esi+20], edx
	mov       BYTE PTR [eax+ecx], 0
	mov       eax, DWORD PTR [esi+8]
	mov       ecx, DWORD PTR [esi+20]
	lea       edx, [ecx+1]
	mov       DWORD PTR [esi+20], edx
	mov       BYTE PTR [eax+ecx], 0
	mov       eax, DWORD PTR [esi+8]
	mov       ecx, DWORD PTR [esi+20]
	lea       edx, [ecx+1]
	mov       DWORD PTR [esi+20], edx
	mov       BYTE PTR [eax+ecx], 0
	mov       eax, DWORD PTR [esi+8]
	mov       ecx, DWORD PTR [esi+20]
	lea       edx, [ecx+1]
	mov       DWORD PTR [esi+20], edx
	mov       BYTE PTR [eax+ecx], 0
	mov       ecx, DWORD PTR [esi+132]
	mov       al, 2
	cmp       ecx, 9
	je        LBB11_110
	cmp       DWORD PTR [esi+136], 1
	setg      dl
	cmp       ecx, 2
	mov       al, 4
	jl        LBB11_110
	shl       dl, 2
	mov       eax, edx
LBB11_110:
	mov       ecx, DWORD PTR [esi+8]
	mov       edx, DWORD PTR [esi+20]
	lea       esi, [edx+1]
	mov       edi, DWORD PTR [ebp-16]
	mov       DWORD PTR [edi+20], esi
	mov       esi, DWORD PTR [ebp-16]
	mov       BYTE PTR [ecx+edx], al
	mov       eax, DWORD PTR [esi+8]
	mov       ecx, DWORD PTR [esi+20]
	lea       edx, [ecx+1]
	mov       DWORD PTR [esi+20], edx
	mov       BYTE PTR [eax+ecx], 3
LBB11_111:
	mov       DWORD PTR [esi+4], 113
LBB11_112:
	cmp       DWORD PTR [esi+20], 0
	je        LBB11_119
	mov       edi, DWORD PTR [ebx+28]
	sub       esp, 12
	push      edi
	call      __tr_flush_bits
	add       esp, 16
	mov       eax, ebx
	mov       ebx, DWORD PTR [edi+20]
	mov       eax, DWORD PTR [eax+16]
	cmp       ebx, eax
	cmova     ebx, eax
	test      ebx, ebx
	je        LBB11_117
	sub       esp, 4
	push      ebx
	push      DWORD PTR [edi+16]
	mov       eax, DWORD PTR [ebp+8]
	mov       esi, eax
	push      DWORD PTR [esi+12]
	call      _memcpy
	add       esp, 16
	add       DWORD PTR [esi+12], ebx
	add       DWORD PTR [edi+16], ebx
	add       DWORD PTR [esi+20], ebx
	mov       eax, DWORD PTR [esi+16]
	sub       eax, ebx
	mov       DWORD PTR [esi+16], eax
	mov       ecx, DWORD PTR [edi+20]
	sub       ecx, ebx
	mov       DWORD PTR [edi+20], ecx
	jne       LBB11_116
	mov       ecx, DWORD PTR [edi+8]
	mov       DWORD PTR [edi+16], ecx
LBB11_116:
	mov       esi, DWORD PTR [ebp-16]
LBB11_117:
	test      eax, eax
	mov       ebx, DWORD PTR [ebp+8]
	jne       LBB11_120
LBB11_118:
	mov       DWORD PTR [esi+40], -1
	xor       eax, eax
	jmp       LBB11_21
LBB11_119:
	cmp       DWORD PTR [ebx+4], 0
	je        LBB11_182
LBB11_120:
	mov       eax, DWORD PTR [esi+4]
	cmp       eax, 666
	mov       ecx, DWORD PTR [ebx+4]
	jne       LBB11_122
	test      ecx, ecx
	jne       LBB11_184
	jmp       LBB11_123
LBB11_122:
	test      ecx, ecx
	jne       LBB11_125
LBB11_123:
	cmp       eax, 666
	sete      al
	cmp       DWORD PTR [ebp+12], 0
	sete      cl
	cmp       DWORD PTR [esi+116], 0
	jne       LBB11_125
	or        cl, al
	jne       LBB11_222
LBB11_125:
	mov       eax, DWORD PTR [esi+136]
	cmp       eax, 3
	je        LBB11_137
	cmp       eax, 2
	jne       LBB11_185
LBB11_127:
	cmp       DWORD PTR [esi+116], 0
	jne       LBB11_129
	mov       ecx, esi
	call      _fill_window
	cmp       DWORD PTR [esi+116], 0
	je        LBB11_186
LBB11_129:
	mov       DWORD PTR [esi+96], 0
	mov       eax, DWORD PTR [esi+56]
	mov       ecx, DWORD PTR [esi+108]
	movzx     eax, BYTE PTR [eax+ecx]
	mov       ecx, DWORD PTR [esi+5796]
	mov       edx, DWORD PTR [esi+5792]
	mov       WORD PTR [ecx+edx*2], 0
	mov       ecx, DWORD PTR [esi+5784]
	lea       esi, [edx+1]
	mov       edi, DWORD PTR [ebp-16]
	mov       DWORD PTR [edi+5792], esi
	mov       esi, DWORD PTR [ebp-16]
	mov       BYTE PTR [ecx+edx], al
	inc       WORD PTR [esi+eax*4+148]
	mov       ecx, DWORD PTR [esi+5788]
	mov       edx, DWORD PTR [esi+5792]
	dec       ecx
	dec       DWORD PTR [esi+116]
	mov       eax, DWORD PTR [esi+108]
	inc       eax
	cmp       edx, ecx
	mov       DWORD PTR [esi+108], eax
	jne       LBB11_127
	mov       ecx, DWORD PTR [esi+92]
	test      ecx, ecx
	js        LBB11_132
	mov       edx, DWORD PTR [esi+56]
	add       edx, ecx
	jmp       LBB11_133
LBB11_132:
	xor       edx, edx
LBB11_133:
	sub       eax, ecx
	push      0
	push      eax
	push      edx
	push      esi
	call      __tr_flush_block
	add       esp, 16
	mov       eax, DWORD PTR [esi+108]
	mov       DWORD PTR [esi+92], eax
	mov       ebx, DWORD PTR [esi]
	mov       edi, DWORD PTR [ebx+28]
	sub       esp, 12
	push      edi
	call      __tr_flush_bits
	add       esp, 16
	mov       esi, DWORD PTR [edi+20]
	mov       eax, DWORD PTR [ebx+16]
	cmp       esi, eax
	cmova     esi, eax
	test      esi, esi
	je        LBB11_136
	sub       esp, 4
	push      esi
	push      DWORD PTR [edi+16]
	push      DWORD PTR [ebx+12]
	call      _memcpy
	add       esp, 16
	add       DWORD PTR [ebx+12], esi
	add       DWORD PTR [edi+16], esi
	add       DWORD PTR [ebx+20], esi
	sub       DWORD PTR [ebx+16], esi
	mov       eax, DWORD PTR [edi+20]
	sub       eax, esi
	mov       DWORD PTR [edi+20], eax
	jne       LBB11_136
	mov       eax, DWORD PTR [edi+8]
	mov       DWORD PTR [edi+16], eax
LBB11_136:
	mov       esi, DWORD PTR [ebp-16]
	mov       eax, DWORD PTR [esi]
	cmp       DWORD PTR [eax+16], 0
	mov       ebx, DWORD PTR [ebp+8]
	jne       LBB11_127
	jmp       LBB11_180
LBB11_140:
	test      eax, eax
	je        LBB11_190
	mov       DWORD PTR [esi+96], 0
	cmp       eax, 2
	ja        LBB11_144
	mov       ecx, DWORD PTR [esi+108]
	jmp       LBB11_172
LBB11_143:
	mov       DWORD PTR [esi+96], 0
LBB11_144:
	mov       ecx, DWORD PTR [esi+108]
	test      ecx, ecx
	je        LBB11_171
	mov       edx, DWORD PTR [esi+56]
	mov       bl, BYTE PTR [edx+ecx-1]
	cmp       bl, BYTE PTR [edx+ecx]
	jne       LBB11_160
	add       edx, ecx
	cmp       bl, BYTE PTR [edx+1]
	jne       LBB11_160
	cmp       bl, BYTE PTR [edx+2]
	jne       LBB11_160
	lea       esi, [edx+258]
	mov       DWORD PTR [ebp-32], esi
	mov       DWORD PTR [ebp-20], 1
	mov       edi, 10
LBB11_149:
	cmp       bl, BYTE PTR [edx+edi-7]
	jne       LBB11_161
	mov       esi, DWORD PTR [ebp-20]
	lea       esi, [edx+esi]
	mov       DWORD PTR [ebp-24], esi
	cmp       bl, BYTE PTR [edx+edi-6]
	mov       esi, DWORD PTR [ebp-16]
	jne       LBB11_163
	cmp       bl, BYTE PTR [edx+edi-5]
	jne       LBB11_164
	cmp       bl, BYTE PTR [edx+edi-4]
	jne       LBB11_165
	cmp       bl, BYTE PTR [edx+edi-3]
	jne       LBB11_166
	cmp       bl, BYTE PTR [edx+edi-2]
	jne       LBB11_167
	cmp       bl, BYTE PTR [edx+edi-1]
	jne       LBB11_168
	lea       esi, [edi+8]
	cmp       edi, 257
	jg        LBB11_158
	add       DWORD PTR [ebp-20], 8
	cmp       bl, BYTE PTR [edx+edi]
	mov       edi, esi
	je        LBB11_149
LBB11_158:
	lea       edx, [esi+edx-8]
	jmp       LBB11_162
LBB11_160:
	mov       ebx, DWORD PTR [ebp+8]
	jmp       LBB11_172
LBB11_171:
	xor       ecx, ecx
LBB11_172:
	mov       eax, DWORD PTR [esi+56]
	movzx     eax, BYTE PTR [eax+ecx]
	mov       ecx, DWORD PTR [esi+5796]
	mov       edx, DWORD PTR [esi+5792]
	mov       WORD PTR [ecx+edx*2], 0
	mov       ecx, DWORD PTR [esi+5784]
	lea       esi, [edx+1]
	mov       edi, DWORD PTR [ebp-16]
	mov       DWORD PTR [edi+5792], esi
	mov       esi, DWORD PTR [ebp-16]
	mov       BYTE PTR [ecx+edx], al
	inc       WORD PTR [esi+eax*4+148]
	mov       eax, DWORD PTR [esi+5788]
	dec       eax
	xor       ecx, ecx
	cmp       DWORD PTR [esi+5792], eax
	sete      cl
	dec       DWORD PTR [esi+116]
	mov       eax, DWORD PTR [esi+108]
	inc       eax
	mov       DWORD PTR [esi+108], eax
	test      ecx, ecx
	je        LBB11_137
LBB11_173:
	mov       ecx, DWORD PTR [esi+92]
	test      ecx, ecx
	js        LBB11_175
	mov       edx, DWORD PTR [esi+56]
	add       edx, ecx
	jmp       LBB11_176
LBB11_175:
	xor       edx, edx
LBB11_176:
	sub       eax, ecx
	push      0
	push      eax
	push      edx
	push      esi
	call      __tr_flush_block
	add       esp, 16
	mov       eax, DWORD PTR [esi+108]
	mov       DWORD PTR [esi+92], eax
	mov       ebx, DWORD PTR [esi]
	mov       edi, DWORD PTR [ebx+28]
	sub       esp, 12
	push      edi
	call      __tr_flush_bits
	add       esp, 16
	mov       esi, DWORD PTR [edi+20]
	mov       eax, DWORD PTR [ebx+16]
	cmp       esi, eax
	cmova     esi, eax
	test      esi, esi
	je        LBB11_179
	sub       esp, 4
	push      esi
	push      DWORD PTR [edi+16]
	push      DWORD PTR [ebx+12]
	call      _memcpy
	add       esp, 16
	add       DWORD PTR [ebx+12], esi
	add       DWORD PTR [edi+16], esi
	add       DWORD PTR [ebx+20], esi
	sub       DWORD PTR [ebx+16], esi
	mov       eax, DWORD PTR [edi+20]
	sub       eax, esi
	mov       DWORD PTR [edi+20], eax
	jne       LBB11_179
	mov       eax, DWORD PTR [edi+8]
	mov       DWORD PTR [edi+16], eax
LBB11_179:
	mov       esi, DWORD PTR [ebp-16]
	mov       eax, DWORD PTR [esi]
	cmp       DWORD PTR [eax+16], 0
	mov       ebx, DWORD PTR [ebp+8]
	jne       LBB11_137
	jmp       LBB11_180
LBB11_161:
	mov       esi, DWORD PTR [ebp-20]
	lea       edx, [edx+esi+2]
LBB11_162:
	mov       esi, DWORD PTR [ebp-16]
	jmp       LBB11_169
LBB11_163:
	mov       edx, DWORD PTR [ebp-24]
	add       edx, 3
	jmp       LBB11_169
LBB11_164:
	mov       edx, DWORD PTR [ebp-24]
	add       edx, 4
	jmp       LBB11_169
LBB11_165:
	mov       edx, DWORD PTR [ebp-24]
	add       edx, 5
	jmp       LBB11_169
LBB11_166:
	mov       edx, DWORD PTR [ebp-24]
	add       edx, 6
	jmp       LBB11_169
LBB11_167:
	mov       edx, DWORD PTR [ebp-24]
	add       edx, 7
	jmp       LBB11_169
LBB11_168:
	mov       edi, DWORD PTR [ebp-20]
	lea       edx, [edx+edi+8]
LBB11_169:
	sub       edx, DWORD PTR [ebp-32]
	add       edx, 258
	cmp       edx, eax
	cmova     edx, eax
	mov       DWORD PTR [esi+96], edx
	cmp       edx, 3
	mov       ebx, DWORD PTR [ebp+8]
	jb        LBB11_172
	mov       eax, DWORD PTR [esi+5792]
	mov       ecx, DWORD PTR [esi+5796]
	mov       WORD PTR [ecx+eax*2], 1
	mov       edi, DWORD PTR [esi+5784]
	mov       ecx, edx
	lea       edx, [eax+1]
	mov       DWORD PTR [esi+5792], edx
	add       ecx, 253
	mov       BYTE PTR [edi+eax], cl
	movzx     eax, cl
	mov       edx, DWORD PTR [ebp-28]
	mov       ecx, DWORD PTR [edx + L__length_code$non_lazy_ptr-L11$pb]
	movzx     eax, BYTE PTR [ecx+eax]
	inc       WORD PTR [esi+eax*4+1176]
	mov       eax, DWORD PTR [edx + L__dist_code$non_lazy_ptr-L11$pb]
	movzx     eax, BYTE PTR [eax]
	inc       WORD PTR [esi+eax*4+2440]
	mov       eax, DWORD PTR [esi+5788]
	dec       eax
	xor       ecx, ecx
	cmp       DWORD PTR [esi+5792], eax
	sete      cl
	mov       eax, DWORD PTR [esi+96]
	sub       DWORD PTR [esi+116], eax
	add       eax, DWORD PTR [esi+108]
	mov       DWORD PTR [esi+108], eax
	mov       DWORD PTR [esi+96], 0
	test      ecx, ecx
	jne       LBB11_173
LBB11_137:
	mov       eax, DWORD PTR [esi+116]
	cmp       eax, 259
	jae       LBB11_143
	mov       ecx, esi
	call      _fill_window
	cmp       DWORD PTR [ebp+12], 0
	mov       eax, DWORD PTR [esi+116]
	jne       LBB11_140
	cmp       eax, 259
	jae       LBB11_140
	jmp       LBB11_180
LBB11_182:
	xor       edx, edx
	mov       eax, DWORD PTR [ebp+12]
	mov       edi, esi
	mov       esi, eax
	cmp       esi, 4
	setg      ch
	xor       eax, eax
	cmp       DWORD PTR [ebp-24], 4
	setg      cl
	cmp       esi, 4
	mov       esi, edi
	je        LBB11_120
	mov       dl, ch
	mov       esi, DWORD PTR [ebp+12]
	lea       esi, [esi+esi]
	lea       edx, [edx+edx*8]
	sub       esi, edx
	mov       al, cl
	mov       ecx, DWORD PTR [ebp-24]
	add       ecx, ecx
	lea       eax, [eax+eax*8]
	sub       ecx, eax
	cmp       esi, ecx
	mov       esi, DWORD PTR [ebp-16]
	jg        LBB11_120
LBB11_184:
	mov       eax, DWORD PTR [ebp-28]
	mov       eax, DWORD PTR [eax + L_z_errmsg$non_lazy_ptr-L11$pb]
	mov       eax, DWORD PTR [eax+28]
	mov       DWORD PTR [ebx+24], eax
	mov       eax, -5
	jmp       LBB11_21
LBB11_185:
	mov       eax, DWORD PTR [esi+132]
	lea       eax, [eax+eax*2]
	sub       esp, 8
	push      DWORD PTR [ebp+12]
	push      esi
	mov       ecx, DWORD PTR [ebp-28]
	call      DWORD PTR [ecx+eax*4 + _configuration_table-L11$pb+8]
	add       esp, 16
	jmp       LBB11_197
LBB11_186:
	cmp       DWORD PTR [ebp+12], 0
	je        LBB11_180
	mov       DWORD PTR [esi+5812], 0
	cmp       DWORD PTR [ebp+12], 4
	je        LBB11_188
	cmp       DWORD PTR [esi+5792], 0
	jne       LBB11_202
	jmp       LBB11_211
LBB11_190:
	mov       DWORD PTR [esi+5812], 0
	cmp       DWORD PTR [ebp+12], 4
	jne       LBB11_201
LBB11_188:
	mov       eax, DWORD PTR [esi+92]
	test      eax, eax
	js        LBB11_189
	mov       ecx, DWORD PTR [esi+56]
	add       ecx, eax
	jmp       LBB11_193
LBB11_201:
	cmp       DWORD PTR [esi+5792], 0
	je        LBB11_211
LBB11_202:
	mov       eax, DWORD PTR [esi+92]
	test      eax, eax
	js        LBB11_203
	mov       ecx, DWORD PTR [esi+56]
	add       ecx, eax
	jmp       LBB11_207
LBB11_189:
	xor       ecx, ecx
LBB11_193:
	mov       edx, DWORD PTR [esi+108]
	sub       edx, eax
	push      1
	push      edx
	push      ecx
	push      esi
	call      __tr_flush_block
	add       esp, 16
	mov       eax, DWORD PTR [esi+108]
	mov       DWORD PTR [esi+92], eax
	mov       ebx, DWORD PTR [esi]
	mov       edi, DWORD PTR [ebx+28]
	sub       esp, 12
	push      edi
	call      __tr_flush_bits
	add       esp, 16
	mov       esi, DWORD PTR [edi+20]
	mov       eax, DWORD PTR [ebx+16]
	cmp       esi, eax
	cmova     esi, eax
	test      esi, esi
	je        LBB11_196
	sub       esp, 4
	push      esi
	push      DWORD PTR [edi+16]
	push      DWORD PTR [ebx+12]
	call      _memcpy
	add       esp, 16
	add       DWORD PTR [ebx+12], esi
	add       DWORD PTR [edi+16], esi
	add       DWORD PTR [ebx+20], esi
	sub       DWORD PTR [ebx+16], esi
	mov       eax, DWORD PTR [edi+20]
	sub       eax, esi
	mov       DWORD PTR [edi+20], eax
	jne       LBB11_196
	mov       eax, DWORD PTR [edi+8]
	mov       DWORD PTR [edi+16], eax
LBB11_196:
	mov       esi, DWORD PTR [ebp-16]
	mov       ecx, DWORD PTR [esi]
	xor       eax, eax
	cmp       DWORD PTR [ecx+16], 0
	setne     al
	or        eax, 2
	mov       ebx, DWORD PTR [ebp+8]
LBB11_197:
	mov       ecx, eax
	or        ecx, 1
	cmp       ecx, 3
	jne       LBB11_199
	mov       DWORD PTR [esi+4], 666
LBB11_199:
	mov       ecx, eax
	or        ecx, 2
	cmp       ecx, 2
	jne       LBB11_200
LBB11_180:
	xor       eax, eax
	cmp       DWORD PTR [ebx+16], 0
	jne       LBB11_21
	mov       DWORD PTR [esi+40], -1
	jmp       LBB11_21
LBB11_200:
	cmp       eax, 1
	je        LBB11_211
	jmp       LBB11_222
LBB11_203:
	xor       ecx, ecx
LBB11_207:
	mov       edx, DWORD PTR [esi+108]
	sub       edx, eax
	push      0
	push      edx
	push      ecx
	push      esi
	call      __tr_flush_block
	add       esp, 16
	mov       eax, DWORD PTR [esi+108]
	mov       DWORD PTR [esi+92], eax
	mov       ebx, DWORD PTR [esi]
	mov       edi, DWORD PTR [ebx+28]
	sub       esp, 12
	push      edi
	call      __tr_flush_bits
	add       esp, 16
	mov       esi, DWORD PTR [edi+20]
	mov       eax, DWORD PTR [ebx+16]
	cmp       esi, eax
	cmova     esi, eax
	test      esi, esi
	je        LBB11_210
	sub       esp, 4
	push      esi
	push      DWORD PTR [edi+16]
	push      DWORD PTR [ebx+12]
	call      _memcpy
	add       esp, 16
	add       DWORD PTR [ebx+12], esi
	add       DWORD PTR [edi+16], esi
	add       DWORD PTR [ebx+20], esi
	sub       DWORD PTR [ebx+16], esi
	mov       eax, DWORD PTR [edi+20]
	sub       eax, esi
	mov       DWORD PTR [edi+20], eax
	jne       LBB11_210
	mov       eax, DWORD PTR [edi+8]
	mov       DWORD PTR [edi+16], eax
LBB11_210:
	mov       esi, DWORD PTR [ebp-16]
	mov       eax, DWORD PTR [esi]
	cmp       DWORD PTR [eax+16], 0
	mov       ebx, DWORD PTR [ebp+8]
	je        LBB11_180
LBB11_211:
	mov       eax, DWORD PTR [ebp+12]
	cmp       eax, 5
	je        LBB11_217
	mov       ecx, esi
	cmp       eax, 1
	mov       esi, eax
	jne       LBB11_214
	sub       esp, 12
	mov       esi, ecx
	push      esi
	call      __tr_align
	add       esp, 16
	jmp       LBB11_217
LBB11_214:
	push      0
	push      0
	push      0
	mov       edi, ecx
	push      edi
	call      __tr_stored_block
	add       esp, 16
	cmp       esi, 3
	mov       esi, edi
	jne       LBB11_217
	mov       eax, DWORD PTR [esi+68]
	mov       ecx, DWORD PTR [esi+76]
	mov       WORD PTR [eax+ecx*2-2], 0
	lea       ecx, [ecx+ecx-2]
	sub       esp, 8
	push      ecx
	push      eax
	call      ___bzero
	add       esp, 16
	cmp       DWORD PTR [esi+116], 0
	jne       LBB11_217
	mov       DWORD PTR [esi+108], 0
	mov       DWORD PTR [esi+92], 0
	mov       DWORD PTR [esi+5812], 0
LBB11_217:
	mov       edi, DWORD PTR [ebx+28]
	sub       esp, 12
	push      edi
	call      __tr_flush_bits
	add       esp, 16
	mov       eax, ebx
	mov       ebx, DWORD PTR [edi+20]
	mov       eax, DWORD PTR [eax+16]
	cmp       ebx, eax
	cmova     ebx, eax
	test      ebx, ebx
	je        LBB11_221
	sub       esp, 4
	push      ebx
	push      DWORD PTR [edi+16]
	mov       eax, DWORD PTR [ebp+8]
	mov       esi, eax
	push      DWORD PTR [esi+12]
	call      _memcpy
	add       esp, 16
	add       DWORD PTR [esi+12], ebx
	add       DWORD PTR [edi+16], ebx
	add       DWORD PTR [esi+20], ebx
	mov       eax, DWORD PTR [esi+16]
	sub       eax, ebx
	mov       DWORD PTR [esi+16], eax
	mov       ecx, DWORD PTR [edi+20]
	sub       ecx, ebx
	mov       DWORD PTR [edi+20], ecx
	jne       LBB11_220
	mov       ecx, DWORD PTR [edi+8]
	mov       DWORD PTR [edi+16], ecx
LBB11_220:
	mov       esi, DWORD PTR [ebp-16]
LBB11_221:
	test      eax, eax
	mov       ebx, DWORD PTR [ebp+8]
	je        LBB11_118
LBB11_222:
	xor       eax, eax
	cmp       DWORD PTR [ebp+12], 4
	jne       LBB11_21
	mov       eax, DWORD PTR [esi+24]
	test      eax, eax
	jle       LBB11_226
	cmp       eax, 2
	mov       eax, DWORD PTR [ebx+48]
	jne       LBB11_227
	mov       ecx, DWORD PTR [esi+8]
	mov       edx, DWORD PTR [esi+20]
	mov       edi, esi
	lea       esi, [edx+1]
	mov       DWORD PTR [edi+20], esi
	mov       BYTE PTR [ecx+edx], al
	mov       al, BYTE PTR [ebx+49]
	mov       ecx, DWORD PTR [edi+8]
	mov       edx, DWORD PTR [edi+20]
	lea       esi, [edx+1]
	mov       DWORD PTR [edi+20], esi
	mov       BYTE PTR [ecx+edx], al
	mov       al, BYTE PTR [ebx+50]
	mov       ecx, DWORD PTR [edi+8]
	mov       edx, DWORD PTR [edi+20]
	lea       esi, [edx+1]
	mov       DWORD PTR [edi+20], esi
	mov       BYTE PTR [ecx+edx], al
	mov       al, BYTE PTR [ebx+51]
	mov       ecx, DWORD PTR [edi+8]
	mov       edx, DWORD PTR [edi+20]
	lea       esi, [edx+1]
	mov       DWORD PTR [edi+20], esi
	mov       BYTE PTR [ecx+edx], al
	mov       al, BYTE PTR [ebx+8]
	mov       ecx, DWORD PTR [edi+8]
	mov       edx, DWORD PTR [edi+20]
	lea       esi, [edx+1]
	mov       DWORD PTR [edi+20], esi
	mov       BYTE PTR [ecx+edx], al
	mov       al, BYTE PTR [ebx+9]
	mov       ecx, DWORD PTR [edi+8]
	mov       edx, DWORD PTR [edi+20]
	lea       esi, [edx+1]
	mov       DWORD PTR [edi+20], esi
	mov       BYTE PTR [ecx+edx], al
	mov       al, BYTE PTR [ebx+10]
	mov       ecx, DWORD PTR [edi+8]
	mov       edx, DWORD PTR [edi+20]
	lea       esi, [edx+1]
	mov       DWORD PTR [edi+20], esi
	mov       BYTE PTR [ecx+edx], al
	mov       al, BYTE PTR [ebx+11]
	mov       ecx, DWORD PTR [edi+8]
	mov       edx, DWORD PTR [edi+20]
	lea       esi, [edx+1]
	mov       DWORD PTR [edi+20], esi
	mov       BYTE PTR [ecx+edx], al
	jmp       LBB11_228
LBB11_226:
	mov       eax, 1
	jmp       LBB11_21
LBB11_227:
	mov       ecx, DWORD PTR [esi+8]
	mov       edx, DWORD PTR [esi+20]
	mov       edi, esi
	lea       esi, [edx+1]
	mov       DWORD PTR [edi+20], esi
	mov       ebx, eax
	shr       ebx, 16
	shr       eax, 24
	mov       BYTE PTR [ecx+edx], al
	mov       eax, DWORD PTR [edi+8]
	mov       ecx, DWORD PTR [edi+20]
	lea       edx, [ecx+1]
	mov       DWORD PTR [edi+20], edx
	mov       BYTE PTR [eax+ecx], bl
	mov       ebx, DWORD PTR [ebp+8]
	mov       eax, DWORD PTR [ebx+48]
	mov       ecx, DWORD PTR [edi+8]
	mov       edx, DWORD PTR [edi+20]
	lea       esi, [edx+1]
	mov       DWORD PTR [edi+20], esi
	mov       BYTE PTR [ecx+edx], ah
	mov       ecx, DWORD PTR [edi+8]
	mov       edx, DWORD PTR [edi+20]
	lea       esi, [edx+1]
	mov       DWORD PTR [edi+20], esi
	mov       BYTE PTR [ecx+edx], al
LBB11_228:
	mov       edi, DWORD PTR [ebx+28]
	sub       esp, 12
	push      edi
	call      __tr_flush_bits
	add       esp, 16
	mov       esi, DWORD PTR [edi+20]
	mov       eax, DWORD PTR [ebx+16]
	cmp       esi, eax
	cmova     esi, eax
	test      esi, esi
	je        LBB11_231
	sub       esp, 4
	push      esi
	push      DWORD PTR [edi+16]
	push      DWORD PTR [ebx+12]
	call      _memcpy
	add       esp, 16
	add       DWORD PTR [ebx+12], esi
	add       DWORD PTR [edi+16], esi
	add       DWORD PTR [ebx+20], esi
	sub       DWORD PTR [ebx+16], esi
	mov       eax, DWORD PTR [edi+20]
	sub       eax, esi
	mov       DWORD PTR [edi+20], eax
	jne       LBB11_231
	mov       eax, DWORD PTR [edi+8]
	mov       DWORD PTR [edi+16], eax
LBB11_231:
	mov       ecx, DWORD PTR [ebp-16]
	mov       eax, DWORD PTR [ecx+24]
	test      eax, eax
	jle       LBB11_233
	neg       eax
	mov       DWORD PTR [ecx+24], eax
LBB11_233:
	xor       eax, eax
	cmp       DWORD PTR [ecx+20], 0
	sete      al
	jmp       LBB11_21
# ----------------------
	.p2align 4, 0x90
# ----------------------
	.globl	_deflateTune
_deflateTune:
	push      ebp
	mov       ebp, esp
	push      edi
	push      esi
	mov       ecx, DWORD PTR [ebp+8]
	mov       eax, -2
	test      ecx, ecx
	je        LBB12_3
	mov       ecx, DWORD PTR [ecx+28]
	test      ecx, ecx
	je        LBB12_3
	mov       eax, DWORD PTR [ebp+24]
	mov       edx, DWORD PTR [ebp+20]
	mov       esi, DWORD PTR [ebp+16]
	mov       edi, DWORD PTR [ebp+12]
	mov       DWORD PTR [ecx+140], edi
	mov       DWORD PTR [ecx+128], esi
	mov       DWORD PTR [ecx+144], edx
	mov       DWORD PTR [ecx+124], eax
	xor       eax, eax
LBB12_3:
	pop       esi
	pop       edi
	pop       ebp
	ret       
# ----------------------
	.p2align 4, 0x90
# ----------------------
	.globl	_deflateBound
_deflateBound:
	push      ebp
	mov       ebp, esp
	push      ebx
	push      edi
	push      esi
	sub       esp, 12
	mov       edx, DWORD PTR [ebp+12]
	mov       ecx, DWORD PTR [ebp+8]
	lea       ebx, [edx+7]
	mov       eax, ebx
	shr       eax, 3
	add       eax, edx
	lea       esi, [edx+63]
	shr       esi, 6
	test      ecx, ecx
	je        LBB13_2
	mov       edi, DWORD PTR [ecx+28]
	test      edi, edi
	je        LBB13_2
	mov       ecx, DWORD PTR [edi+24]
	test      ecx, ecx
	je        LBB13_4
	cmp       ecx, 2
	je        LBB13_8
	cmp       ecx, 1
	jne       LBB13_18
	xor       ecx, ecx
	cmp       DWORD PTR [edi+108], 0
	setne     cl
	lea       ecx, [6+ecx*4]
	cmp       DWORD PTR [edi+48], 15
	je        LBB13_20
	jmp       LBB13_21
LBB13_2:
	add       eax, esi
	add       eax, 11
	jmp       LBB13_23
LBB13_4:
	xor       ecx, ecx
	cmp       DWORD PTR [edi+48], 15
	je        LBB13_20
	jmp       LBB13_21
LBB13_8:
	mov       ecx, DWORD PTR [edi+28]
	test      ecx, ecx
	je        LBB13_9
	mov       DWORD PTR [ebp-24], ebx
	cmp       DWORD PTR [ecx+16], 0
	je        LBB13_11
	mov       ebx, DWORD PTR [ecx+20]
	add       ebx, 20
	jmp       LBB13_13
LBB13_18:
	mov       ecx, 6
	cmp       DWORD PTR [edi+48], 15
	je        LBB13_20
	jmp       LBB13_21
LBB13_9:
	mov       ecx, 18
	cmp       DWORD PTR [edi+48], 15
	je        LBB13_20
	jmp       LBB13_21
LBB13_11:
	mov       ebx, 18
LBB13_13:
	mov       DWORD PTR [ebp-16], ecx
	mov       ecx, DWORD PTR [ecx+28]
	test      ecx, ecx
	je        LBB13_15
# ----------------------
	.p2align 4, 0x90
LBB13_14:
	inc       ebx
	cmp       BYTE PTR [ecx], 0
	lea       ecx, [ecx+1]
	jne       LBB13_14
LBB13_15:
	mov       ecx, DWORD PTR [ebp-16]
	mov       ecx, DWORD PTR [ecx+36]
	test      ecx, ecx
	je        LBB13_17
# ----------------------
	.p2align 4, 0x90
LBB13_16:
	inc       ebx
	cmp       BYTE PTR [ecx], 0
	lea       ecx, [ecx+1]
	jne       LBB13_16
LBB13_17:
	lea       ecx, [ebx+2]
	mov       DWORD PTR [ebp-20], ecx
	mov       ecx, DWORD PTR [ebp-16]
	cmp       DWORD PTR [ecx+44], 0
	mov       ecx, DWORD PTR [ebp-20]
	cmove     ecx, ebx
	mov       ebx, DWORD PTR [ebp-24]
	cmp       DWORD PTR [edi+48], 15
	jne       LBB13_21
LBB13_20:
	cmp       DWORD PTR [edi+80], 15
	jne       LBB13_21
	mov       eax, edx
	shr       eax, 12
	mov       esi, ecx
	mov       ecx, edx
	shr       ecx, 14
	shr       edx, 25
	add       ebx, eax
	add       ebx, ecx
	add       ebx, edx
	add       ebx, esi
	mov       eax, ebx
	jmp       LBB13_23
LBB13_21:
	lea       eax, [esi+eax+5]
	add       eax, ecx
LBB13_23:
	add       esp, 12
	pop       esi
	pop       edi
	pop       ebx
	pop       ebp
	ret       
# ----------------------
	.p2align 4, 0x90
# ----------------------
	.globl	_deflateCopy
_deflateCopy:
	push      ebp
	mov       ebp, esp
	push      ebx
	push      edi
	push      esi
	sub       esp, 12
	call      L14$pb
L14$pb:
	pop       edx
	mov       ebx, DWORD PTR [ebp+8]
	test      ebx, ebx
	mov       esi, -2
	je        LBB14_22
	mov       eax, DWORD PTR [ebp+12]
	test      eax, eax
	je        LBB14_22
	mov       ecx, DWORD PTR [eax+28]
	mov       DWORD PTR [ebp-16], ecx
	test      ecx, ecx
	je        LBB14_22
	mov       DWORD PTR [ebp-20], edx
	movsd     xmm0, QWORD PTR [eax+48]
	movsd     QWORD PTR [ebx+48], xmm0
	movsd     xmm0, QWORD PTR [eax+40]
	movsd     QWORD PTR [ebx+40], xmm0
	movsd     xmm0, QWORD PTR [eax+32]
	movsd     QWORD PTR [ebx+32], xmm0
	movsd     xmm0, QWORD PTR [eax+24]
	movsd     QWORD PTR [ebx+24], xmm0
	movsd     xmm0, QWORD PTR [eax+16]
	movsd     QWORD PTR [ebx+16], xmm0
	movsd     xmm0, QWORD PTR [eax]
	movsd     xmm1, QWORD PTR [eax+8]
	movsd     QWORD PTR [ebx+8], xmm1
	movsd     QWORD PTR [ebx], xmm0
	sub       esp, 4
	push      5828
	push      1
	push      DWORD PTR [ebx+40]
	call      DWORD PTR [ebx+32]
	add       esp, 16
	mov       edi, eax
	mov       esi, -4
	test      edi, edi
	je        LBB14_22
	mov       DWORD PTR [ebx+28], edi
	sub       esp, 4
	push      5828
	push      DWORD PTR [ebp-16]
	push      edi
	call      _memcpy
	add       esp, 16
	mov       DWORD PTR [edi], ebx
	sub       esp, 4
	push      2
	push      DWORD PTR [edi+44]
	push      DWORD PTR [ebx+40]
	call      DWORD PTR [ebx+32]
	add       esp, 16
	mov       DWORD PTR [edi+56], eax
	sub       esp, 4
	push      2
	push      DWORD PTR [edi+44]
	push      DWORD PTR [ebx+40]
	call      DWORD PTR [ebx+32]
	add       esp, 16
	mov       DWORD PTR [edi+64], eax
	sub       esp, 4
	push      2
	push      DWORD PTR [edi+76]
	push      DWORD PTR [ebx+40]
	call      DWORD PTR [ebx+32]
	add       esp, 16
	mov       DWORD PTR [edi+68], eax
	sub       esp, 4
	push      4
	push      DWORD PTR [edi+5788]
	push      DWORD PTR [ebx+40]
	call      DWORD PTR [ebx+32]
	add       esp, 16
	mov       DWORD PTR [edi+8], eax
	mov       edx, DWORD PTR [edi+56]
	test      edx, edx
	je        LBB14_8
	cmp       DWORD PTR [edi+64], 0
	je        LBB14_8
	test      eax, eax
	je        LBB14_8
	mov       ecx, DWORD PTR [edi+68]
	test      ecx, ecx
	je        LBB14_8
	mov       ecx, DWORD PTR [edi+44]
	add       ecx, ecx
	sub       esp, 4
	push      ecx
	mov       esi, DWORD PTR [ebp-16]
	push      DWORD PTR [esi+56]
	push      edx
	mov       ebx, eax
	call      _memcpy
	add       esp, 16
	mov       eax, DWORD PTR [edi+44]
	add       eax, eax
	sub       esp, 4
	push      eax
	push      DWORD PTR [esi+64]
	push      DWORD PTR [edi+64]
	call      _memcpy
	add       esp, 16
	mov       eax, DWORD PTR [edi+76]
	add       eax, eax
	sub       esp, 4
	push      eax
	push      DWORD PTR [esi+68]
	push      DWORD PTR [edi+68]
	call      _memcpy
	add       esp, 12
	push      DWORD PTR [edi+12]
	push      DWORD PTR [esi+8]
	push      DWORD PTR [edi+8]
	call      _memcpy
	add       esp, 16
	mov       eax, DWORD PTR [edi+8]
	mov       ecx, DWORD PTR [esi+16]
	sub       ecx, DWORD PTR [esi+8]
	add       ecx, eax
	mov       DWORD PTR [edi+16], ecx
	mov       ecx, DWORD PTR [edi+5788]
	lea       edx, [ecx+ecx*2]
	and       ecx, -2
	add       ebx, ecx
	mov       DWORD PTR [edi+5796], ebx
	add       edx, eax
	mov       DWORD PTR [edi+5784], edx
	lea       eax, [edi+148]
	mov       DWORD PTR [edi+2840], eax
	lea       eax, [edi+2440]
	mov       DWORD PTR [edi+2852], eax
	mov       eax, edi
	add       eax, 2684
	mov       DWORD PTR [edi+2864], eax
	xor       esi, esi
	jmp       LBB14_22
LBB14_8:
	mov       eax, DWORD PTR [ebx+28]
	test      eax, eax
	je        LBB14_22
	mov       ecx, DWORD PTR [eax+4]
	lea       edx, [ecx-69]
	cmp       edx, 44
	ja        LBB14_10
	mov       ecx, DWORD PTR [ebp-20]
	add       ecx, DWORD PTR [ecx+edx*4 + Ltmp2]
	jmp       ecx
LBB14_12:
	mov       ecx, DWORD PTR [eax+8]
	test      ecx, ecx
	je        LBB14_14
	sub       esp, 8
	push      ecx
	push      DWORD PTR [ebx+40]
	call      DWORD PTR [ebx+36]
	add       esp, 16
	mov       eax, DWORD PTR [ebx+28]
LBB14_14:
	mov       ecx, DWORD PTR [eax+68]
	test      ecx, ecx
	je        LBB14_16
	sub       esp, 8
	push      ecx
	push      DWORD PTR [ebx+40]
	call      DWORD PTR [ebx+36]
	add       esp, 16
	mov       eax, DWORD PTR [ebx+28]
LBB14_16:
	mov       ecx, DWORD PTR [eax+64]
	test      ecx, ecx
	je        LBB14_18
	sub       esp, 8
	push      ecx
	push      DWORD PTR [ebx+40]
	call      DWORD PTR [ebx+36]
	add       esp, 16
	mov       eax, DWORD PTR [ebx+28]
LBB14_18:
	mov       ecx, DWORD PTR [eax+56]
	test      ecx, ecx
	je        LBB14_20
	sub       esp, 8
	push      ecx
	push      DWORD PTR [ebx+40]
	call      DWORD PTR [ebx+36]
	add       esp, 16
	mov       eax, DWORD PTR [ebx+28]
LBB14_20:
	sub       esp, 8
	push      eax
	push      DWORD PTR [ebx+40]
	call      DWORD PTR [ebx+36]
	add       esp, 16
	mov       DWORD PTR [ebx+28], 0
LBB14_22:
	mov       eax, esi
	add       esp, 12
	pop       esi
	pop       edi
	pop       ebx
	pop       ebp
	ret       
LBB14_10:
	cmp       ecx, 666
	je        LBB14_12
	cmp       ecx, 42
	je        LBB14_12
	jmp       LBB14_22
# ----------------------
	.p2align 2, 0x90
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
# ----------------------
	.p2align 4, 0x90
_deflate_stored:
	push      ebp
	mov       ebp, esp
	push      ebx
	push      edi
	push      esi
	sub       esp, 12
	mov       esi, DWORD PTR [ebp+8]
	mov       eax, DWORD PTR [esi+12]
	add       eax, -5
	cmp       eax, 65535
	mov       ecx, 65535
	cmovb     ecx, eax
	mov       DWORD PTR [ebp-16], ecx
# ----------------------
	.p2align 4, 0x90
LBB15_1:
	mov       eax, DWORD PTR [esi+116]
	cmp       eax, 1
	ja        LBB15_4
	mov       ecx, esi
	call      _fill_window
	mov       eax, DWORD PTR [esi+116]
	mov       ecx, eax
	or        ecx, DWORD PTR [ebp+12]
	je        LBB15_23
	test      eax, eax
	je        LBB15_24
LBB15_4:
	mov       edx, DWORD PTR [esi+108]
	lea       ecx, [eax+edx]
	mov       DWORD PTR [esi+108], ecx
	mov       DWORD PTR [esi+116], 0
	mov       ecx, DWORD PTR [esi+92]
	add       eax, edx
	mov       edx, DWORD PTR [ebp-16]
	lea       edx, [ecx+edx]
	je        LBB15_6
	cmp       eax, edx
	jb        LBB15_14
LBB15_6:
	sub       eax, edx
	mov       DWORD PTR [esi+116], eax
	mov       DWORD PTR [esi+108], edx
	test      ecx, ecx
	js        LBB15_8
	add       ecx, DWORD PTR [esi+56]
	jmp       LBB15_9
LBB15_8:
	xor       ecx, ecx
LBB15_9:
	push      0
	push      DWORD PTR [ebp-16]
	push      ecx
	push      esi
	call      __tr_flush_block
	add       esp, 16
	mov       eax, DWORD PTR [esi+108]
	mov       DWORD PTR [esi+92], eax
	mov       ebx, DWORD PTR [esi]
	mov       edi, DWORD PTR [ebx+28]
	sub       esp, 12
	push      edi
	call      __tr_flush_bits
	add       esp, 16
	mov       esi, DWORD PTR [edi+20]
	mov       eax, DWORD PTR [ebx+16]
	cmp       esi, eax
	cmova     esi, eax
	test      esi, esi
	je        LBB15_12
	sub       esp, 4
	push      esi
	push      DWORD PTR [edi+16]
	push      DWORD PTR [ebx+12]
	call      _memcpy
	add       esp, 16
	add       DWORD PTR [ebx+12], esi
	add       DWORD PTR [edi+16], esi
	add       DWORD PTR [ebx+20], esi
	sub       DWORD PTR [ebx+16], esi
	mov       eax, DWORD PTR [edi+20]
	sub       eax, esi
	mov       DWORD PTR [edi+20], eax
	jne       LBB15_12
	mov       eax, DWORD PTR [edi+8]
	mov       DWORD PTR [edi+16], eax
LBB15_12:
	mov       esi, DWORD PTR [ebp+8]
	mov       eax, DWORD PTR [esi]
	cmp       DWORD PTR [eax+16], 0
	je        LBB15_27
	mov       ecx, DWORD PTR [esi+92]
	mov       eax, DWORD PTR [esi+108]
LBB15_14:
	sub       eax, ecx
	mov       edx, DWORD PTR [esi+44]
	mov       edi, -262
	add       edx, edi
	cmp       eax, edx
	jb        LBB15_1
	test      ecx, ecx
	js        LBB15_17
	add       ecx, DWORD PTR [esi+56]
	jmp       LBB15_18
LBB15_17:
	xor       ecx, ecx
LBB15_18:
	push      0
	push      eax
	push      ecx
	push      esi
	call      __tr_flush_block
	add       esp, 16
	mov       eax, DWORD PTR [esi+108]
	mov       DWORD PTR [esi+92], eax
	mov       ebx, DWORD PTR [esi]
	mov       edi, DWORD PTR [ebx+28]
	sub       esp, 12
	push      edi
	call      __tr_flush_bits
	add       esp, 16
	mov       esi, DWORD PTR [edi+20]
	mov       eax, DWORD PTR [ebx+16]
	cmp       esi, eax
	cmova     esi, eax
	test      esi, esi
	je        LBB15_21
	sub       esp, 4
	push      esi
	push      DWORD PTR [edi+16]
	push      DWORD PTR [ebx+12]
	call      _memcpy
	add       esp, 16
	add       DWORD PTR [ebx+12], esi
	add       DWORD PTR [edi+16], esi
	add       DWORD PTR [ebx+20], esi
	sub       DWORD PTR [ebx+16], esi
	mov       eax, DWORD PTR [edi+20]
	sub       eax, esi
	mov       DWORD PTR [edi+20], eax
	jne       LBB15_21
	mov       eax, DWORD PTR [edi+8]
	mov       DWORD PTR [edi+16], eax
LBB15_21:
	mov       esi, DWORD PTR [ebp+8]
	mov       eax, DWORD PTR [esi]
	cmp       DWORD PTR [eax+16], 0
	jne       LBB15_1
LBB15_23:
	xor       eax, eax
	jmp       LBB15_42
LBB15_24:
	mov       DWORD PTR [esi+5812], 0
	cmp       DWORD PTR [ebp+12], 4
	jne       LBB15_28
	mov       eax, DWORD PTR [esi+92]
	test      eax, eax
	js        LBB15_31
	mov       ecx, DWORD PTR [esi+56]
	add       ecx, eax
	jmp       LBB15_32
LBB15_27:
	xor       eax, eax
	jmp       LBB15_42
LBB15_28:
	mov       eax, DWORD PTR [esi+92]
	mov       ecx, DWORD PTR [esi+108]
	sub       ecx, eax
	jle       LBB15_41
	test      eax, eax
	js        LBB15_36
	add       eax, DWORD PTR [esi+56]
	jmp       LBB15_37
LBB15_31:
	xor       ecx, ecx
LBB15_32:
	mov       edx, DWORD PTR [esi+108]
	sub       edx, eax
	push      1
	push      edx
	push      ecx
	push      esi
	call      __tr_flush_block
	add       esp, 16
	mov       eax, DWORD PTR [esi+108]
	mov       DWORD PTR [esi+92], eax
	mov       ebx, DWORD PTR [esi]
	mov       edi, DWORD PTR [ebx+28]
	sub       esp, 12
	push      edi
	call      __tr_flush_bits
	add       esp, 16
	mov       esi, DWORD PTR [edi+20]
	mov       eax, DWORD PTR [ebx+16]
	cmp       esi, eax
	cmova     esi, eax
	test      esi, esi
	je        LBB15_35
	sub       esp, 4
	push      esi
	push      DWORD PTR [edi+16]
	push      DWORD PTR [ebx+12]
	call      _memcpy
	add       esp, 16
	add       DWORD PTR [ebx+12], esi
	add       DWORD PTR [edi+16], esi
	add       DWORD PTR [ebx+20], esi
	sub       DWORD PTR [ebx+16], esi
	mov       eax, DWORD PTR [edi+20]
	sub       eax, esi
	mov       DWORD PTR [edi+20], eax
	jne       LBB15_35
	mov       eax, DWORD PTR [edi+8]
	mov       DWORD PTR [edi+16], eax
LBB15_35:
	mov       eax, DWORD PTR [ebp+8]
	mov       ecx, DWORD PTR [eax]
	xor       eax, eax
	cmp       DWORD PTR [ecx+16], 0
	setne     al
	or        eax, 2
	jmp       LBB15_42
LBB15_36:
	xor       eax, eax
LBB15_37:
	push      0
	push      ecx
	push      eax
	push      esi
	call      __tr_flush_block
	add       esp, 16
	mov       eax, DWORD PTR [esi+108]
	mov       DWORD PTR [esi+92], eax
	mov       ebx, DWORD PTR [esi]
	mov       edi, DWORD PTR [ebx+28]
	sub       esp, 12
	push      edi
	call      __tr_flush_bits
	add       esp, 16
	mov       esi, DWORD PTR [edi+20]
	mov       eax, DWORD PTR [ebx+16]
	cmp       esi, eax
	cmova     esi, eax
	test      esi, esi
	je        LBB15_40
	sub       esp, 4
	push      esi
	push      DWORD PTR [edi+16]
	push      DWORD PTR [ebx+12]
	call      _memcpy
	add       esp, 16
	add       DWORD PTR [ebx+12], esi
	add       DWORD PTR [edi+16], esi
	add       DWORD PTR [ebx+20], esi
	sub       DWORD PTR [ebx+16], esi
	mov       eax, DWORD PTR [edi+20]
	sub       eax, esi
	mov       DWORD PTR [edi+20], eax
	jne       LBB15_40
	mov       eax, DWORD PTR [edi+8]
	mov       DWORD PTR [edi+16], eax
LBB15_40:
	mov       eax, DWORD PTR [ebp+8]
	mov       eax, DWORD PTR [eax]
	cmp       DWORD PTR [eax+16], 0
	je        LBB15_43
LBB15_41:
	mov       eax, 1
LBB15_42:
	add       esp, 12
	pop       esi
	pop       edi
	pop       ebx
	pop       ebp
	ret       
LBB15_43:
	xor       eax, eax
	jmp       LBB15_42
# ----------------------
	.p2align 4, 0x90
_deflate_fast:
	push      ebp
	mov       ebp, esp
	push      ebx
	push      edi
	push      esi
	sub       esp, 44
	call      L16$pb
L16$pb:
	pop       eax
	mov       DWORD PTR [ebp-28], eax
	mov       ebx, DWORD PTR [ebp+8]
# ----------------------
	.p2align 4, 0x90
LBB16_1:
	cmp       DWORD PTR [ebx+116], 261
	ja        LBB16_6
	mov       ecx, ebx
	call      _fill_window
	cmp       DWORD PTR [ebp+12], 0
	mov       eax, DWORD PTR [ebx+116]
	jne       LBB16_4
	cmp       eax, 262
	jb        LBB16_43
LBB16_4:
	test      eax, eax
	je        LBB16_26
	cmp       eax, 3
	jb        LBB16_8
LBB16_6:
	mov       edx, DWORD PTR [ebx+56]
	mov       esi, DWORD PTR [ebx+72]
	mov       cl, BYTE PTR [ebx+88]
	shl       esi, cl
	mov       eax, DWORD PTR [ebx+108]
	movzx     ecx, BYTE PTR [edx+eax+2]
	xor       ecx, esi
	and       ecx, DWORD PTR [ebx+84]
	mov       DWORD PTR [ebx+72], ecx
	mov       esi, DWORD PTR [ebx+64]
	mov       edi, DWORD PTR [ebx+68]
	mov       edx, DWORD PTR [ebp+8]
	mov       ebx, DWORD PTR [edx+52]
	and       ebx, eax
	movzx     edx, WORD PTR [edi+ecx*2]
	mov       WORD PTR [esi+ebx*2], dx
	mov       ebx, DWORD PTR [ebp+8]
	mov       WORD PTR [edi+ecx*2], ax
	test      edx, edx
	je        LBB16_8
	sub       eax, edx
	mov       ecx, DWORD PTR [ebx+44]
	mov       esi, -262
	add       ecx, esi
	cmp       eax, ecx
	jbe       LBB16_9
LBB16_8:
	mov       eax, DWORD PTR [ebx+96]
	cmp       eax, 3
	jae       LBB16_10
	jmp       LBB16_15
# ----------------------
	.p2align 4, 0x90
LBB16_9:
	mov       ecx, ebx
	call      _longest_match
	mov       DWORD PTR [ebx+96], eax
	cmp       eax, 3
	jb        LBB16_15
LBB16_10:
	mov       ecx, DWORD PTR [ebx+108]
	sub       ecx, DWORD PTR [ebx+112]
	mov       edx, DWORD PTR [ebx+5796]
	mov       esi, DWORD PTR [ebx+5792]
	mov       WORD PTR [edx+esi*2], cx
	mov       edx, DWORD PTR [ebx+5784]
	lea       edi, [esi+1]
	mov       DWORD PTR [ebx+5792], edi
	add       eax, 253
	mov       BYTE PTR [edx+esi], al
	add       ecx, 65535
	movzx     eax, al
	mov       esi, DWORD PTR [ebp-28]
	mov       edx, DWORD PTR [esi + L__length_code$non_lazy_ptr-L16$pb]
	movzx     eax, BYTE PTR [edx+eax]
	inc       WORD PTR [ebx+eax*4+1176]
	movzx     eax, cx
	mov       ecx, eax
	shr       ecx, 7
	add       ecx, 256
	cmp       eax, 256
	cmovb     ecx, eax
	mov       eax, DWORD PTR [esi + L__dist_code$non_lazy_ptr-L16$pb]
	movzx     eax, BYTE PTR [eax+ecx]
	inc       WORD PTR [ebx+eax*4+2440]
	mov       eax, DWORD PTR [ebx+5788]
	dec       eax
	xor       ecx, ecx
	cmp       DWORD PTR [ebx+5792], eax
	sete      cl
	mov       edi, DWORD PTR [ebx+96]
	mov       eax, DWORD PTR [ebx+116]
	sub       eax, edi
	mov       DWORD PTR [ebx+116], eax
	cmp       eax, 3
	jb        LBB16_16
	cmp       edi, DWORD PTR [ebx+128]
	ja        LBB16_16
	mov       DWORD PTR [ebp-24], ecx
	lea       eax, [edi-1]
	mov       DWORD PTR [ebx+96], eax
	mov       eax, edi
	mov       edi, DWORD PTR [ebx+108]
	mov       esi, DWORD PTR [ebx+72]
	mov       ecx, DWORD PTR [ebx+88]
	mov       DWORD PTR [ebp-36], ecx
	mov       edx, DWORD PTR [ebx+52]
	mov       DWORD PTR [ebp-48], edx
	add       eax, -2
	inc       edi
	mov       edx, DWORD PTR [ebx+56]
	mov       DWORD PTR [ebp-44], edx
	mov       edx, DWORD PTR [ebx+84]
	mov       DWORD PTR [ebp-40], edx
	mov       edx, DWORD PTR [ebx+68]
	mov       DWORD PTR [ebp-20], edx
	mov       ecx, DWORD PTR [ebx+64]
	mov       DWORD PTR [ebp-32], ecx
# ----------------------
	.p2align 4, 0x90
LBB16_13:
	mov       DWORD PTR [ebx+108], edi
	mov       ecx, DWORD PTR [ebp-36]
	shl       esi, cl
	mov       edx, DWORD PTR [ebp-44]
	movzx     edx, BYTE PTR [edx+edi+2]
	xor       edx, esi
	and       edx, DWORD PTR [ebp-40]
	mov       DWORD PTR [ebx+72], edx
	mov       ecx, DWORD PTR [ebp-20]
	movzx     esi, WORD PTR [ecx+edx*2]
	mov       WORD PTR [ebp-14], si
	mov       ebx, DWORD PTR [ebp-48]
	and       ebx, edi
	mov       esi, DWORD PTR [ebp-32]
	movzx     ecx, WORD PTR [ebp-14]
	mov       WORD PTR [esi+ebx*2], cx
	mov       ebx, DWORD PTR [ebp+8]
	mov       ecx, DWORD PTR [ebp-20]
	mov       WORD PTR [ecx+edx*2], di
	mov       DWORD PTR [ebx+96], eax
	dec       eax
	inc       edi
	cmp       eax, -1
	mov       esi, edx
	jne       LBB16_13
	mov       DWORD PTR [ebx+108], edi
	mov       ecx, DWORD PTR [ebp-24]
	test      ecx, ecx
	je        LBB16_1
	jmp       LBB16_17
# ----------------------
	.p2align 4, 0x90
LBB16_15:
	mov       eax, DWORD PTR [ebx+56]
	mov       ecx, DWORD PTR [ebx+108]
	movzx     eax, BYTE PTR [eax+ecx]
	mov       ecx, DWORD PTR [ebx+5796]
	mov       edx, DWORD PTR [ebx+5792]
	mov       WORD PTR [ecx+edx*2], 0
	mov       ecx, DWORD PTR [ebx+5784]
	lea       esi, [edx+1]
	mov       DWORD PTR [ebx+5792], esi
	mov       BYTE PTR [ecx+edx], al
	inc       WORD PTR [ebx+eax*4+148]
	mov       eax, DWORD PTR [ebx+5788]
	dec       eax
	xor       ecx, ecx
	cmp       DWORD PTR [ebx+5792], eax
	sete      cl
	dec       DWORD PTR [ebx+116]
	mov       edi, DWORD PTR [ebx+108]
	inc       edi
	mov       DWORD PTR [ebx+108], edi
	test      ecx, ecx
	je        LBB16_1
	jmp       LBB16_17
# ----------------------
	.p2align 4, 0x90
LBB16_16:
	add       edi, DWORD PTR [ebx+108]
	mov       DWORD PTR [ebx+108], edi
	mov       DWORD PTR [ebx+96], 0
	mov       eax, DWORD PTR [ebx+56]
	movzx     edx, BYTE PTR [eax+edi]
	mov       DWORD PTR [ebx+72], edx
	mov       esi, ecx
	mov       cl, BYTE PTR [ebx+88]
	shl       edx, cl
	mov       ecx, esi
	movzx     eax, BYTE PTR [eax+edi+1]
	xor       eax, edx
	and       eax, DWORD PTR [ebx+84]
	mov       DWORD PTR [ebx+72], eax
	test      ecx, ecx
	je        LBB16_1
LBB16_17:
	mov       eax, DWORD PTR [ebx+92]
	test      eax, eax
	js        LBB16_19
	mov       ecx, DWORD PTR [ebx+56]
	add       ecx, eax
	jmp       LBB16_20
LBB16_19:
	xor       ecx, ecx
LBB16_20:
	sub       edi, eax
	push      0
	push      edi
	push      ecx
	push      ebx
	call      __tr_flush_block
	add       esp, 16
	mov       eax, DWORD PTR [ebx+108]
	mov       DWORD PTR [ebx+92], eax
	mov       edi, DWORD PTR [ebx]
	mov       esi, DWORD PTR [edi+28]
	sub       esp, 12
	push      esi
	call      __tr_flush_bits
	add       esp, 16
	mov       ebx, DWORD PTR [esi+20]
	mov       eax, DWORD PTR [edi+16]
	cmp       ebx, eax
	cmova     ebx, eax
	test      ebx, ebx
	je        LBB16_23
	sub       esp, 4
	push      ebx
	push      DWORD PTR [esi+16]
	push      DWORD PTR [edi+12]
	call      _memcpy
	add       esp, 16
	add       DWORD PTR [edi+12], ebx
	add       DWORD PTR [esi+16], ebx
	add       DWORD PTR [edi+20], ebx
	sub       DWORD PTR [edi+16], ebx
	mov       eax, DWORD PTR [esi+20]
	sub       eax, ebx
	mov       DWORD PTR [esi+20], eax
	jne       LBB16_23
	mov       eax, DWORD PTR [esi+8]
	mov       DWORD PTR [esi+16], eax
LBB16_23:
	mov       ebx, DWORD PTR [ebp+8]
	mov       eax, DWORD PTR [ebx]
	cmp       DWORD PTR [eax+16], 0
	jne       LBB16_1
LBB16_43:
	xor       eax, eax
LBB16_44:
	add       esp, 44
	pop       esi
	pop       edi
	pop       ebx
	pop       ebp
	ret       
LBB16_26:
	mov       eax, DWORD PTR [ebx+108]
	cmp       eax, 2
	mov       ecx, 2
	cmovb     ecx, eax
	mov       DWORD PTR [ebx+5812], ecx
	cmp       DWORD PTR [ebp+12], 4
	jne       LBB16_29
	mov       ecx, DWORD PTR [ebx+92]
	test      ecx, ecx
	js        LBB16_32
	mov       edx, DWORD PTR [ebx+56]
	add       edx, ecx
	jmp       LBB16_33
LBB16_29:
	cmp       DWORD PTR [ebx+5792], 0
	je        LBB16_42
	mov       ecx, DWORD PTR [ebx+92]
	test      ecx, ecx
	js        LBB16_37
	mov       edx, DWORD PTR [ebx+56]
	add       edx, ecx
	jmp       LBB16_38
LBB16_32:
	xor       edx, edx
LBB16_33:
	sub       eax, ecx
	push      1
	push      eax
	push      edx
	push      ebx
	call      __tr_flush_block
	add       esp, 16
	mov       eax, DWORD PTR [ebx+108]
	mov       DWORD PTR [ebx+92], eax
	mov       edi, DWORD PTR [ebx]
	mov       esi, DWORD PTR [edi+28]
	sub       esp, 12
	push      esi
	call      __tr_flush_bits
	add       esp, 16
	mov       ebx, DWORD PTR [esi+20]
	mov       eax, DWORD PTR [edi+16]
	cmp       ebx, eax
	cmova     ebx, eax
	test      ebx, ebx
	je        LBB16_36
	sub       esp, 4
	push      ebx
	push      DWORD PTR [esi+16]
	push      DWORD PTR [edi+12]
	call      _memcpy
	add       esp, 16
	add       DWORD PTR [edi+12], ebx
	add       DWORD PTR [esi+16], ebx
	add       DWORD PTR [edi+20], ebx
	sub       DWORD PTR [edi+16], ebx
	mov       eax, DWORD PTR [esi+20]
	sub       eax, ebx
	mov       DWORD PTR [esi+20], eax
	jne       LBB16_36
	mov       eax, DWORD PTR [esi+8]
	mov       DWORD PTR [esi+16], eax
LBB16_36:
	mov       eax, DWORD PTR [ebp+8]
	mov       ecx, DWORD PTR [eax]
	xor       eax, eax
	cmp       DWORD PTR [ecx+16], 0
	setne     al
	or        eax, 2
	jmp       LBB16_44
LBB16_37:
	xor       edx, edx
LBB16_38:
	sub       eax, ecx
	push      0
	push      eax
	push      edx
	push      ebx
	call      __tr_flush_block
	add       esp, 16
	mov       eax, DWORD PTR [ebx+108]
	mov       DWORD PTR [ebx+92], eax
	mov       edi, DWORD PTR [ebx]
	mov       esi, DWORD PTR [edi+28]
	sub       esp, 12
	push      esi
	call      __tr_flush_bits
	add       esp, 16
	mov       ebx, DWORD PTR [esi+20]
	mov       eax, DWORD PTR [edi+16]
	cmp       ebx, eax
	cmova     ebx, eax
	test      ebx, ebx
	je        LBB16_41
	sub       esp, 4
	push      ebx
	push      DWORD PTR [esi+16]
	push      DWORD PTR [edi+12]
	call      _memcpy
	add       esp, 16
	add       DWORD PTR [edi+12], ebx
	add       DWORD PTR [esi+16], ebx
	add       DWORD PTR [edi+20], ebx
	sub       DWORD PTR [edi+16], ebx
	mov       eax, DWORD PTR [esi+20]
	sub       eax, ebx
	mov       DWORD PTR [esi+20], eax
	jne       LBB16_41
	mov       eax, DWORD PTR [esi+8]
	mov       DWORD PTR [esi+16], eax
LBB16_41:
	mov       eax, DWORD PTR [ebp+8]
	mov       eax, DWORD PTR [eax]
	cmp       DWORD PTR [eax+16], 0
	je        LBB16_43
LBB16_42:
	mov       eax, 1
	jmp       LBB16_44
# ----------------------
	.p2align 4, 0x90
_deflate_slow:
	push      ebp
	mov       ebp, esp
	push      ebx
	push      edi
	push      esi
	sub       esp, 60
	call      L17$pb
L17$pb:
	pop       eax
	mov       DWORD PTR [ebp-32], eax
	mov       esi, DWORD PTR [ebp+8]
LBB17_1:
	mov       eax, DWORD PTR [esi+116]
	cmp       eax, 261
	ja        LBB17_8
	jmp       LBB17_4
# ----------------------
	.p2align 4, 0x90
LBB17_2:
	mov       DWORD PTR [esi+104], 1
	inc       DWORD PTR [esi+108]
	mov       eax, DWORD PTR [esi+116]
	dec       eax
	mov       DWORD PTR [esi+116], eax
LBB17_3:
	cmp       eax, 261
	ja        LBB17_8
LBB17_4:
	mov       ecx, esi
	call      _fill_window
	cmp       DWORD PTR [ebp+12], 0
	mov       eax, DWORD PTR [esi+116]
	jne       LBB17_6
	cmp       eax, 262
	jb        LBB17_64
LBB17_6:
	test      eax, eax
	je        LBB17_45
	cmp       eax, 2
	jbe       LBB17_15
LBB17_8:
	mov       eax, DWORD PTR [esi+56]
	mov       edx, DWORD PTR [esi+72]
	mov       cl, BYTE PTR [esi+88]
	shl       edx, cl
	mov       ecx, DWORD PTR [esi+108]
	movzx     eax, BYTE PTR [eax+ecx+2]
	xor       eax, edx
	and       eax, DWORD PTR [esi+84]
	mov       DWORD PTR [esi+72], eax
	mov       edx, DWORD PTR [ebp+8]
	mov       esi, DWORD PTR [edx+64]
	mov       edx, DWORD PTR [ebp+8]
	mov       edi, DWORD PTR [edx+68]
	mov       edx, DWORD PTR [ebp+8]
	mov       ebx, DWORD PTR [edx+52]
	and       ebx, ecx
	movzx     edx, WORD PTR [edi+eax*2]
	mov       WORD PTR [esi+ebx*2], dx
	mov       esi, DWORD PTR [ebp+8]
	mov       WORD PTR [edi+eax*2], cx
	mov       ecx, DWORD PTR [esi+96]
	mov       DWORD PTR [esi+120], ecx
	mov       eax, DWORD PTR [esi+112]
	mov       DWORD PTR [esi+100], eax
	test      edx, edx
	mov       DWORD PTR [esi+96], 2
	je        LBB17_17
	mov       eax, 2
	cmp       ecx, DWORD PTR [esi+128]
	jae       LBB17_19
	mov       eax, DWORD PTR [esi+108]
	sub       eax, edx
	mov       ecx, DWORD PTR [esi+44]
	mov       edi, -262
	add       ecx, edi
	cmp       eax, ecx
	mov       eax, 2
	ja        LBB17_18
	mov       ecx, esi
	call      _longest_match
	mov       DWORD PTR [esi+96], eax
	cmp       eax, 5
	ja        LBB17_18
	cmp       DWORD PTR [esi+136], 1
	je        LBB17_16
	cmp       eax, 3
	jne       LBB17_18
	mov       ecx, DWORD PTR [esi+108]
	sub       ecx, DWORD PTR [esi+112]
	mov       eax, 3
	cmp       ecx, 4097
	jae       LBB17_16
	jmp       LBB17_18
# ----------------------
	.p2align 4, 0x90
LBB17_15:
	mov       eax, DWORD PTR [esi+96]
	mov       DWORD PTR [esi+120], eax
	mov       eax, DWORD PTR [esi+112]
	mov       DWORD PTR [esi+100], eax
LBB17_16:
	mov       DWORD PTR [esi+96], 2
LBB17_17:
	mov       eax, 2
LBB17_18:
	mov       ecx, DWORD PTR [esi+120]
LBB17_19:
	cmp       ecx, 3
	jb        LBB17_21
	cmp       eax, ecx
	jbe       LBB17_30
LBB17_21:
	cmp       DWORD PTR [esi+104], 0
	je        LBB17_2
	mov       eax, DWORD PTR [esi+56]
	mov       ecx, DWORD PTR [esi+108]
	movzx     eax, BYTE PTR [eax+ecx-1]
	mov       ecx, DWORD PTR [esi+5796]
	mov       edx, DWORD PTR [esi+5792]
	mov       WORD PTR [ecx+edx*2], 0
	mov       ecx, DWORD PTR [esi+5784]
	mov       edi, esi
	lea       esi, [edx+1]
	mov       DWORD PTR [edi+5792], esi
	mov       BYTE PTR [ecx+edx], al
	inc       WORD PTR [edi+eax*4+148]
	mov       eax, DWORD PTR [edi+5788]
	dec       eax
	cmp       DWORD PTR [edi+5792], eax
	jne       LBB17_29
	mov       eax, DWORD PTR [edi+92]
	test      eax, eax
	js        LBB17_25
	mov       ecx, DWORD PTR [edi+56]
	add       ecx, eax
	jmp       LBB17_26
LBB17_25:
	xor       ecx, ecx
LBB17_26:
	mov       edx, DWORD PTR [edi+108]
	sub       edx, eax
	push      0
	push      edx
	push      ecx
	push      edi
	call      __tr_flush_block
	add       esp, 16
	mov       eax, DWORD PTR [edi+108]
	mov       DWORD PTR [edi+92], eax
	mov       ebx, DWORD PTR [edi]
	mov       esi, DWORD PTR [ebx+28]
	sub       esp, 12
	push      esi
	call      __tr_flush_bits
	add       esp, 16
	mov       DWORD PTR [ebp-16], esi
	mov       esi, DWORD PTR [esi+20]
	mov       eax, DWORD PTR [ebx+16]
	cmp       esi, eax
	cmova     esi, eax
	test      esi, esi
	je        LBB17_29
	sub       esp, 4
	push      esi
	mov       eax, DWORD PTR [ebp-16]
	push      DWORD PTR [eax+16]
	push      DWORD PTR [ebx+12]
	call      _memcpy
	add       esp, 16
	add       DWORD PTR [ebx+12], esi
	mov       ecx, DWORD PTR [ebp-16]
	add       DWORD PTR [ecx+16], esi
	add       DWORD PTR [ebx+20], esi
	sub       DWORD PTR [ebx+16], esi
	mov       eax, DWORD PTR [ecx+20]
	sub       eax, esi
	mov       DWORD PTR [ecx+20], eax
	jne       LBB17_29
	mov       ecx, DWORD PTR [ebp-16]
	mov       eax, DWORD PTR [ecx+8]
	mov       DWORD PTR [ecx+16], eax
# ----------------------
	.p2align 4, 0x90
LBB17_29:
	inc       DWORD PTR [edi+108]
	mov       eax, DWORD PTR [edi+116]
	dec       eax
	mov       DWORD PTR [edi+116], eax
	mov       ecx, DWORD PTR [edi]
	cmp       DWORD PTR [ecx+16], 0
	mov       esi, edi
	jne       LBB17_3
	jmp       LBB17_64
# ----------------------
	.p2align 4, 0x90
LBB17_30:
	mov       eax, DWORD PTR [esi+108]
	mov       edx, DWORD PTR [esi+116]
	lea       edx, [eax+edx-3]
	mov       DWORD PTR [ebp-60], edx
	add       eax, 65535
	sub       eax, DWORD PTR [esi+100]
	mov       edx, DWORD PTR [esi+5796]
	mov       esi, DWORD PTR [ebp+8]
	mov       esi, DWORD PTR [esi+5792]
	mov       WORD PTR [edx+esi*2], ax
	mov       edx, DWORD PTR [ebp+8]
	mov       edx, DWORD PTR [edx+5784]
	lea       edi, [esi+1]
	mov       ebx, DWORD PTR [ebp+8]
	mov       DWORD PTR [ebx+5792], edi
	add       ecx, 253
	mov       BYTE PTR [edx+esi], cl
	mov       esi, DWORD PTR [ebp+8]
	add       eax, 65535
	movzx     ecx, cl
	mov       edi, DWORD PTR [ebp-32]
	mov       edx, DWORD PTR [edi + L__length_code$non_lazy_ptr-L17$pb]
	movzx     ecx, BYTE PTR [edx+ecx]
	inc       WORD PTR [esi+ecx*4+1176]
	movzx     eax, ax
	mov       ecx, eax
	shr       ecx, 7
	add       ecx, 256
	cmp       eax, 256
	cmovb     ecx, eax
	mov       eax, DWORD PTR [edi + L__dist_code$non_lazy_ptr-L17$pb]
	movzx     eax, BYTE PTR [eax+ecx]
	inc       WORD PTR [esi+eax*4+2440]
	mov       eax, DWORD PTR [esi+5792]
	mov       DWORD PTR [ebp-24], eax
	mov       ecx, DWORD PTR [esi+5788]
	mov       edi, DWORD PTR [esi+120]
	mov       eax, 1
	sub       eax, edi
	add       DWORD PTR [esi+116], eax
	dec       ecx
	mov       DWORD PTR [ebp-20], ecx
	lea       ecx, [edi-2]
	mov       DWORD PTR [esi+120], ecx
	add       edi, -3
	mov       eax, DWORD PTR [esi+108]
	lea       edx, [eax+1]
	mov       DWORD PTR [ebp-56], edx
	mov       DWORD PTR [ebp-28], eax
	lea       eax, [eax+3]
	mov       DWORD PTR [ebp-36], eax
	xor       ebx, ebx
	mov       DWORD PTR [ebp-40], ecx
# ----------------------
	.p2align 4, 0x90
LBB17_31:
	mov       eax, DWORD PTR [ebp-56]
	lea       edx, [eax+ebx]
	mov       DWORD PTR [esi+108], edx
	cmp       edx, DWORD PTR [ebp-60]
	ja        LBB17_33
	mov       eax, DWORD PTR [ebp+8]
	mov       esi, DWORD PTR [eax+72]
	mov       eax, DWORD PTR [ebp+8]
	movzx     ecx, BYTE PTR [eax+88]
	shl       esi, cl
	mov       eax, DWORD PTR [ebp+8]
	mov       ecx, DWORD PTR [eax+56]
	add       ecx, DWORD PTR [ebp-36]
	movzx     ecx, BYTE PTR [ebx+ecx]
	xor       ecx, esi
	mov       eax, DWORD PTR [ebp+8]
	and       ecx, DWORD PTR [eax+84]
	mov       eax, DWORD PTR [ebp+8]
	mov       DWORD PTR [eax+72], ecx
	mov       eax, DWORD PTR [ebp+8]
	mov       eax, DWORD PTR [eax+64]
	mov       DWORD PTR [ebp-52], eax
	mov       eax, DWORD PTR [ebp+8]
	mov       eax, DWORD PTR [eax+68]
	mov       DWORD PTR [ebp-16], eax
	mov       eax, DWORD PTR [ebp+8]
	mov       eax, DWORD PTR [eax+52]
	and       eax, edx
	mov       DWORD PTR [ebp-48], eax
	mov       esi, DWORD PTR [ebp-16]
	movzx     esi, WORD PTR [esi+ecx*2]
	mov       eax, DWORD PTR [ebp-52]
	mov       DWORD PTR [ebp-44], edx
	mov       edx, DWORD PTR [ebp-48]
	mov       WORD PTR [eax+edx*2], si
	mov       esi, DWORD PTR [ebp+8]
	mov       eax, DWORD PTR [ebp-16]
	mov       edx, DWORD PTR [ebp-44]
	mov       WORD PTR [eax+ecx*2], dx
	mov       ecx, DWORD PTR [ebp-40]
LBB17_33:
	mov       DWORD PTR [esi+120], edi
	inc       ebx
	dec       edi
	cmp       ecx, ebx
	jne       LBB17_31
	mov       eax, DWORD PTR [ebp-20]
	cmp       DWORD PTR [ebp-24], eax
	mov       DWORD PTR [esi+104], 0
	mov       DWORD PTR [esi+96], 2
	mov       edx, DWORD PTR [ebp-28]
	lea       eax, [edx+ebx+1]
	mov       DWORD PTR [esi+108], eax
	jne       LBB17_1
	mov       eax, DWORD PTR [esi+92]
	test      eax, eax
	js        LBB17_37
	mov       ecx, DWORD PTR [esi+56]
	add       ecx, eax
	jmp       LBB17_38
LBB17_37:
	xor       ecx, ecx
LBB17_38:
	sub       edx, eax
	lea       eax, [edx+ebx+1]
	push      0
	push      eax
	push      ecx
	push      esi
	call      __tr_flush_block
	add       esp, 16
	mov       eax, DWORD PTR [esi+108]
	mov       DWORD PTR [esi+92], eax
	mov       ebx, DWORD PTR [esi]
	mov       edi, DWORD PTR [ebx+28]
	sub       esp, 12
	push      edi
	call      __tr_flush_bits
	add       esp, 16
	mov       DWORD PTR [ebp-16], edi
	mov       edi, DWORD PTR [edi+20]
	mov       eax, DWORD PTR [ebx+16]
	cmp       edi, eax
	cmova     edi, eax
	test      edi, edi
	je        LBB17_41
	sub       esp, 4
	push      edi
	mov       eax, DWORD PTR [ebp-16]
	push      DWORD PTR [eax+16]
	push      DWORD PTR [ebx+12]
	call      _memcpy
	add       esp, 16
	add       DWORD PTR [ebx+12], edi
	mov       ecx, DWORD PTR [ebp-16]
	add       DWORD PTR [ecx+16], edi
	add       DWORD PTR [ebx+20], edi
	sub       DWORD PTR [ebx+16], edi
	mov       eax, DWORD PTR [ecx+20]
	sub       eax, edi
	mov       DWORD PTR [ecx+20], eax
	jne       LBB17_41
	mov       ecx, DWORD PTR [ebp-16]
	mov       eax, DWORD PTR [ecx+8]
	mov       DWORD PTR [ecx+16], eax
LBB17_41:
	mov       eax, DWORD PTR [esi]
	cmp       DWORD PTR [eax+16], 0
	jne       LBB17_1
	jmp       LBB17_64
LBB17_45:
	cmp       DWORD PTR [esi+104], 0
	je        LBB17_47
	mov       eax, DWORD PTR [esi+56]
	mov       ecx, DWORD PTR [esi+108]
	movzx     eax, BYTE PTR [eax+ecx-1]
	mov       ecx, DWORD PTR [esi+5796]
	mov       edx, DWORD PTR [esi+5792]
	mov       WORD PTR [ecx+edx*2], 0
	mov       ecx, DWORD PTR [esi+5784]
	lea       esi, [edx+1]
	mov       edi, DWORD PTR [ebp+8]
	mov       DWORD PTR [edi+5792], esi
	mov       esi, DWORD PTR [ebp+8]
	mov       BYTE PTR [ecx+edx], al
	inc       WORD PTR [esi+eax*4+148]
	mov       DWORD PTR [esi+104], 0
LBB17_47:
	mov       eax, DWORD PTR [esi+108]
	cmp       eax, 2
	mov       ecx, 2
	cmovb     ecx, eax
	mov       DWORD PTR [esi+5812], ecx
	cmp       DWORD PTR [ebp+12], 4
	jne       LBB17_50
	mov       ecx, DWORD PTR [esi+92]
	test      ecx, ecx
	js        LBB17_53
	mov       edx, DWORD PTR [esi+56]
	add       edx, ecx
	jmp       LBB17_54
LBB17_50:
	cmp       DWORD PTR [esi+5792], 0
	je        LBB17_63
	mov       ecx, DWORD PTR [esi+92]
	test      ecx, ecx
	js        LBB17_58
	mov       edx, DWORD PTR [esi+56]
	add       edx, ecx
	jmp       LBB17_59
LBB17_53:
	xor       edx, edx
LBB17_54:
	sub       eax, ecx
	push      1
	push      eax
	push      edx
	push      esi
	call      __tr_flush_block
	add       esp, 16
	mov       eax, DWORD PTR [esi+108]
	mov       DWORD PTR [esi+92], eax
	mov       ebx, DWORD PTR [esi]
	mov       edi, DWORD PTR [ebx+28]
	sub       esp, 12
	push      edi
	call      __tr_flush_bits
	add       esp, 16
	mov       esi, DWORD PTR [edi+20]
	mov       eax, DWORD PTR [ebx+16]
	cmp       esi, eax
	cmova     esi, eax
	test      esi, esi
	je        LBB17_57
	sub       esp, 4
	push      esi
	push      DWORD PTR [edi+16]
	push      DWORD PTR [ebx+12]
	call      _memcpy
	add       esp, 16
	add       DWORD PTR [ebx+12], esi
	add       DWORD PTR [edi+16], esi
	add       DWORD PTR [ebx+20], esi
	sub       DWORD PTR [ebx+16], esi
	mov       eax, DWORD PTR [edi+20]
	sub       eax, esi
	mov       DWORD PTR [edi+20], eax
	jne       LBB17_57
	mov       eax, DWORD PTR [edi+8]
	mov       DWORD PTR [edi+16], eax
LBB17_57:
	mov       eax, DWORD PTR [ebp+8]
	mov       ecx, DWORD PTR [eax]
	xor       eax, eax
	cmp       DWORD PTR [ecx+16], 0
	setne     al
	or        eax, 2
	jmp       LBB17_65
LBB17_58:
	xor       edx, edx
LBB17_59:
	sub       eax, ecx
	push      0
	push      eax
	push      edx
	push      esi
	call      __tr_flush_block
	add       esp, 16
	mov       eax, DWORD PTR [esi+108]
	mov       DWORD PTR [esi+92], eax
	mov       ebx, DWORD PTR [esi]
	mov       edi, DWORD PTR [ebx+28]
	sub       esp, 12
	push      edi
	call      __tr_flush_bits
	add       esp, 16
	mov       esi, DWORD PTR [edi+20]
	mov       eax, DWORD PTR [ebx+16]
	cmp       esi, eax
	cmova     esi, eax
	test      esi, esi
	je        LBB17_62
	sub       esp, 4
	push      esi
	push      DWORD PTR [edi+16]
	push      DWORD PTR [ebx+12]
	call      _memcpy
	add       esp, 16
	add       DWORD PTR [ebx+12], esi
	add       DWORD PTR [edi+16], esi
	add       DWORD PTR [ebx+20], esi
	sub       DWORD PTR [ebx+16], esi
	mov       eax, DWORD PTR [edi+20]
	sub       eax, esi
	mov       DWORD PTR [edi+20], eax
	jne       LBB17_62
	mov       eax, DWORD PTR [edi+8]
	mov       DWORD PTR [edi+16], eax
LBB17_62:
	mov       eax, DWORD PTR [ebp+8]
	mov       eax, DWORD PTR [eax]
	cmp       DWORD PTR [eax+16], 0
	je        LBB17_64
LBB17_63:
	mov       eax, 1
	jmp       LBB17_65
LBB17_64:
	xor       eax, eax
LBB17_65:
	add       esp, 60
	pop       esi
	pop       edi
	pop       ebx
	pop       ebp
	ret       
# ----------------------
	.p2align 4, 0x90
_longest_match:
	push      ebp
	mov       ebp, esp
	push      ebx
	push      edi
	push      esi
	sub       esp, 60
	mov       esi, DWORD PTR [ecx+56]
	mov       edi, DWORD PTR [ecx+108]
	mov       eax, -262
	add       eax, DWORD PTR [ecx+44]
	lea       ebx, [esi+edi]
	mov       DWORD PTR [ebp-28], ebx
	mov       DWORD PTR [ebp-72], esi
	lea       esi, [esi+edi+258]
	mov       DWORD PTR [ebp-56], esi
	sub       edi, eax
	mov       eax, 0
	cmovbe    edi, eax
	mov       DWORD PTR [ebp-68], edi
	mov       eax, DWORD PTR [ecx+124]
	mov       esi, eax
	shr       esi, 2
	mov       edi, DWORD PTR [ecx+120]
	cmp       edi, DWORD PTR [ecx+140]
	cmovb     esi, eax
	mov       eax, DWORD PTR [ecx+144]
	mov       ebx, DWORD PTR [ecx+116]
	cmp       eax, ebx
	mov       DWORD PTR [ebp-52], ebx
	cmova     eax, ebx
	mov       DWORD PTR [ebp-44], eax
	mov       ebx, DWORD PTR [ebp-28]
	mov       al, BYTE PTR [edi+ebx-1]
	mov       BYTE PTR [ebp-18], al
	mov       bl, BYTE PTR [edi+ebx]
	mov       eax, edi
	mov       edi, DWORD PTR [ecx+52]
	mov       DWORD PTR [ebp-48], ecx
	mov       ecx, DWORD PTR [ecx+64]
	mov       DWORD PTR [ebp-64], ecx
	mov       ch, bl
	mov       ebx, edi
	mov       DWORD PTR [ebp-32], ebx
	jmp       LBB18_14
# ----------------------
	.p2align 4, 0x90
LBB18_1:
	dec       esi
	jne       LBB18_14
	jmp       LBB18_30
LBB18_2:
	lea       eax, [ebx+eax+3]
	mov       DWORD PTR [ebp-16], eax
	jmp       LBB18_11
LBB18_3:
	add       DWORD PTR [ebp-16], 2
	jmp       LBB18_10
LBB18_4:
	add       DWORD PTR [ebp-16], 3
	jmp       LBB18_11
LBB18_5:
	add       DWORD PTR [ebp-16], 4
	jmp       LBB18_11
LBB18_6:
	add       DWORD PTR [ebp-16], 5
	jmp       LBB18_11
LBB18_7:
	add       DWORD PTR [ebp-16], 6
	jmp       LBB18_11
LBB18_8:
	add       DWORD PTR [ebp-16], 7
	jmp       LBB18_11
LBB18_9:
	mov       ch, BYTE PTR [ebp-17]
LBB18_10:
	mov       esi, DWORD PTR [ebp-24]
LBB18_11:
	mov       eax, DWORD PTR [ebp-16]
	sub       eax, DWORD PTR [ebp-56]
	mov       DWORD PTR [ebp-16], eax
	lea       edi, [eax+258]
	mov       eax, DWORD PTR [ebp-36]
	cmp       edi, eax
	mov       ebx, DWORD PTR [ebp-32]
	jle       LBB18_29
	mov       ecx, DWORD PTR [ebp-48]
	mov       DWORD PTR [ecx+112], edx
	cmp       edi, DWORD PTR [ebp-44]
	jge       LBB18_31
	mov       ecx, DWORD PTR [ebp-28]
	mov       esi, DWORD PTR [ebp-16]
	mov       al, BYTE PTR [ecx+esi+257]
	mov       BYTE PTR [ebp-18], al
	mov       ch, BYTE PTR [ecx+esi+258]
	mov       esi, DWORD PTR [ebp-24]
	mov       eax, edi
	jmp       LBB18_29
# ----------------------
	.p2align 4, 0x90
LBB18_14:
	mov       edi, DWORD PTR [ebp-72]
	lea       edi, [edi+edx]
	cmp       BYTE PTR [eax+edi], ch
	jne       LBB18_29
	mov       cl, BYTE PTR [ebp-18]
	cmp       BYTE PTR [edi+eax-1], cl
	jne       LBB18_29
	mov       DWORD PTR [ebp-36], eax
	mov       al, BYTE PTR [edi]
	mov       ebx, DWORD PTR [ebp-28]
	cmp       al, BYTE PTR [ebx]
	jne       LBB18_28
	mov       al, BYTE PTR [edi+1]
	cmp       al, BYTE PTR [ebx+1]
	jne       LBB18_28
	mov       DWORD PTR [ebp-40], 2
	xor       eax, eax
	mov       ebx, DWORD PTR [ebp-28]
	mov       DWORD PTR [ebp-24], esi
	mov       BYTE PTR [ebp-17], ch
LBB18_19:
	mov       cl, BYTE PTR [ebx+eax+3]
	cmp       cl, BYTE PTR [edi+eax+3]
	jne       LBB18_2
	mov       esi, DWORD PTR [ebp-40]
	lea       esi, [ebx+esi]
	mov       DWORD PTR [ebp-16], esi
	mov       cl, BYTE PTR [ebx+eax+4]
	cmp       cl, BYTE PTR [edi+eax+4]
	jne       LBB18_3
	mov       cl, BYTE PTR [ebx+eax+5]
	cmp       cl, BYTE PTR [edi+eax+5]
	mov       esi, DWORD PTR [ebp-24]
	jne       LBB18_4
	mov       cl, BYTE PTR [ebx+eax+6]
	cmp       cl, BYTE PTR [edi+eax+6]
	jne       LBB18_5
	mov       cl, BYTE PTR [ebx+eax+7]
	cmp       cl, BYTE PTR [edi+eax+7]
	jne       LBB18_6
	mov       cl, BYTE PTR [ebx+eax+8]
	cmp       cl, BYTE PTR [edi+eax+8]
	jne       LBB18_7
	mov       cl, BYTE PTR [ebx+eax+9]
	cmp       cl, BYTE PTR [edi+eax+9]
	jne       LBB18_8
	lea       ecx, [eax+10]
	mov       DWORD PTR [ebp-60], ecx
	mov       ecx, DWORD PTR [ebp-40]
	lea       esi, [ebx+ecx+8]
	mov       DWORD PTR [ebp-16], esi
	cmp       DWORD PTR [ebp-60], 257
	jg        LBB18_9
	add       ecx, 8
	mov       DWORD PTR [ebp-40], ecx
	movzx     ecx, BYTE PTR [edi+eax+10]
	cmp       BYTE PTR [ebx+eax+10], cl
	lea       eax, [eax+8]
	mov       ch, BYTE PTR [ebp-17]
	mov       esi, DWORD PTR [ebp-24]
	je        LBB18_19
	jmp       LBB18_11
LBB18_28:
	mov       eax, DWORD PTR [ebp-36]
	mov       ebx, DWORD PTR [ebp-32]
# ----------------------
	.p2align 4, 0x90
LBB18_29:
	and       edx, ebx
	mov       edi, DWORD PTR [ebp-64]
	movzx     edx, WORD PTR [edi+edx*2]
	cmp       edx, DWORD PTR [ebp-68]
	ja        LBB18_1
LBB18_30:
	mov       ecx, DWORD PTR [ebp-52]
	cmp       eax, ecx
	cmova     eax, ecx
	add       esp, 60
	pop       esi
	pop       edi
	pop       ebx
	pop       ebp
	ret       
LBB18_31:
	mov       eax, edi
	jmp       LBB18_30
# ----------------------
	.section       __TEXT,__const
	.globl	_deflate_copyright
_deflate_copyright:
	.asciz	" deflate 1.2.8 Copyright 1995-2013 Jean-loup Gailly and Mark Adler "
# ----------------------
	.section       __DATA,__const
	.p2align 2
_configuration_table:
	.value	0
	.value	0
	.value	0
	.value	0
	.long	_deflate_stored
	.value	4
	.value	4
	.value	8
	.value	4
	.long	_deflate_fast
	.value	4
	.value	5
	.value	16
	.value	8
	.long	_deflate_fast
	.value	4
	.value	6
	.value	32
	.value	32
	.long	_deflate_fast
	.value	4
	.value	4
	.value	16
	.value	16
	.long	_deflate_slow
	.value	8
	.value	16
	.value	32
	.value	32
	.long	_deflate_slow
	.value	8
	.value	16
	.value	128
	.value	128
	.long	_deflate_slow
	.value	8
	.value	32
	.value	128
	.value	256
	.long	_deflate_slow
	.value	32
	.value	128
	.value	258
	.value	1024
	.long	_deflate_slow
	.value	32
	.value	258
	.value	258
	.value	4096
	.long	_deflate_slow
# ----------------------
	.section       __IMPORT,__pointers,non_lazy_symbol_pointers
L__dist_code$non_lazy_ptr:
	.indirect_symbol __dist_code
	.long	0
# ----------------------
L__length_code$non_lazy_ptr:
	.indirect_symbol __length_code
	.long	0
# ----------------------
L_z_errmsg$non_lazy_ptr:
	.indirect_symbol _z_errmsg
	.long	0
# ----------------------
L_zcalloc$non_lazy_ptr:
	.indirect_symbol _zcalloc
	.long	0
# ----------------------
L_zcfree$non_lazy_ptr:
	.indirect_symbol _zcfree
	.long	0
# ----------------------
	.set	Ltmp0,LJTI1_0-L1$pb
	.set	L1_0_set_25,LBB1_25-L1$pb
	.set	L1_0_set_36,LBB1_36-L1$pb
	.set	Ltmp1,LJTI2_0-L2$pb
	.set	L2_0_set_5,LBB2_5-L2$pb
	.set	L2_0_set_14,LBB2_14-L2$pb
	.set	Ltmp2,LJTI14_0-L14$pb
	.set	L14_0_set_12,LBB14_12-L14$pb
	.set	L14_0_set_22,LBB14_22-L14$pb

.subsections_via_symbols
