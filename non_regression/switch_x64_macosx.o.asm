	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_PyToken_OneChar
_PyToken_OneChar:
	pushq     %rbp
	movq      %rsp, %rbp
	cmpl      $93, %edi
	jg        L0000001A
L00000009:
	cmpl      $57, %edi
	jg        L0000002B
L0000000E:
	cmpl      $37, %edi
	jne       L00000060
L00000013:
	movl      $24, %eax
	popq      %rbp
	ret       
L0000001A:
	cmpl      $95, %edi
	jg        L0000004F
L0000001F:
	cmpl      $94, %edi
	jne       L00000090
L00000024:
	movl      $33, %eax
	popq      %rbp
	ret       
L0000002B:
	addl      $-58, %edi
	cmpl      $6, %edi
	ja        L00000090
L00000033:
	movl      $11, %eax
	leaq      L000000A8(%rip), %rcx
	movslq    (%rcx,%rdi,4), %rdx
	addq      %rcx, %rdx
	jmp       *%rdx
L00000048:
	movl      $22, %eax
	popq      %rbp
	ret       
L0000004F:
	cmpl      $124, %edi
	jg        L0000006C
L00000054:
	cmpl      $96, %edi
	jne       L00000078
L00000059:
	movl      $25, %eax
	popq      %rbp
	ret       
L00000060:
	cmpl      $46, %edi
	jne       L00000090
L00000065:
	movl      $23, %eax
	popq      %rbp
	ret       
L0000006C:
	cmpl      $125, %edi
	jne       L00000084
L00000071:
	movl      $27, %eax
	popq      %rbp
	ret       
L00000078:
	cmpl      $123, %edi
	jne       L00000090
L0000007D:
	movl      $26, %eax
	popq      %rbp
	ret       
L00000084:
	cmpl      $126, %edi
	jne       L00000090
L00000089:
	movl      $32, %eax
	popq      %rbp
	ret       
L00000090:
	movl      $51, %eax
L00000095:
	popq      %rbp
	ret       
L00000097:
	movl      $21, %eax
	popq      %rbp
	ret       
L0000009E:
	movl      $50, %eax
	popq      %rbp
	ret       
L000000A5:
	.align 4, 0x90
# ----------------------
L000000A8:
	.long	L00000095-L000000A8
	.long	L00000090-L000000A8
	.long	L00000090-L000000A8
	.long	L00000048-L000000A8
	.long	L00000097-L000000A8
	.long	L00000090-L000000A8
	.long	L0000009E-L000000A8
# ----------------------
	.align 4, 0x90
	.globl	_PyToken_TwoChars
_PyToken_TwoChars:
	pushq     %rbp
	movq      %rsp, %rbp
	cmpl      $60, %edi
	jg        L000000FF
L000000D9:
	addl      $-33, %edi
	cmpl      $14, %edi
	ja        L00000186
L000000E5:
	leaq      L000001AC(%rip), %rax
	movslq    (%rax,%rdi,4), %rcx
	addq      %rax, %rcx
	jmp       *%rcx
L000000F5:
	movl      $29, %eax
	jmp       L00000181
L000000FF:
	cmpl      $93, %edi
	jg        L00000110
L00000104:
	cmpl      $61, %edi
	jne       L0000011C
L00000109:
	movl      $28, %eax
	jmp       L00000181
L00000110:
	cmpl      $94, %edi
	jne       L0000013E
L00000115:
	movl      $44, %eax
	jmp       L00000181
L0000011C:
	cmpl      $62, %edi
	jne       L00000186
L00000121:
	cmpl      $62, %esi
	movl      $35, %eax
	movl      $51, %ecx
	cmove     %eax, %ecx
	cmpl      $61, %esi
	movl      $31, %eax
	cmovne    %ecx, %eax
	popq      %rbp
	ret       
L0000013E:
	cmpl      $124, %edi
	jne       L00000186
L00000143:
	movl      $43, %eax
	jmp       L00000181
L0000014A:
	movl      $41, %eax
	jmp       L00000181
L00000151:
	movl      $42, %eax
	jmp       L00000181
L00000158:
	cmpl      $61, %esi
	movl      $39, %eax
	movl      $51, %ecx
	cmove     %eax, %ecx
	cmpl      $42, %esi
	movl      $36, %eax
	cmovne    %ecx, %eax
	popq      %rbp
	ret       
L00000175:
	movl      $37, %eax
	jmp       L00000181
L0000017C:
	movl      $38, %eax
L00000181:
	cmpl      $61, %esi
	je        L0000018B
L00000186:
	movl      $51, %eax
L0000018B:
	popq      %rbp
	ret       
L0000018D:
	cmpl      $61, %esi
	movl      $40, %eax
	movl      $51, %ecx
	cmove     %eax, %ecx
	cmpl      $47, %esi
	movl      $48, %eax
	cmovne    %ecx, %eax
	popq      %rbp
	ret       
L000001AA:
	.align 4, 0x90
# ----------------------
L000001AC:
	.long	L000000F5-L000001AC
	.long	L00000186-L000001AC
	.long	L00000186-L000001AC
	.long	L00000186-L000001AC
	.long	L0000014A-L000001AC
	.long	L00000151-L000001AC
	.long	L00000186-L000001AC
	.long	L00000186-L000001AC
	.long	L00000186-L000001AC
	.long	L00000158-L000001AC
	.long	L00000175-L000001AC
	.long	L00000186-L000001AC
	.long	L0000017C-L000001AC
	.long	L00000186-L000001AC
	.long	L0000018D-L000001AC
# ----------------------
	.align 4, 0x90
	.globl	_main
_main:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      $51, %ecx
	cmpl      $93, %edi
	jg        L00000212
L000001FE:
	cmpl      $57, %edi
	jg        L00000226
L00000203:
	cmpl      $37, %edi
	jne       L00000260
L00000208:
	movl      $24, %eax
	jmp       L000002C5
L00000212:
	cmpl      $95, %edi
	jg        L0000024F
L00000217:
	cmpl      $94, %edi
	jne       L00000290
L0000021C:
	movl      $33, %eax
	jmp       L000002C5
L00000226:
	leal      -58(%rdi), %edx
	cmpl      $6, %edx
	ja        L00000290
L0000022E:
	movl      $11, %eax
	leaq      L000002CC(%rip), %rsi
	movslq    (%rsi,%rdx,4), %rdx
	addq      %rsi, %rdx
	jmp       *%rdx
L00000243:
	movl      $28, %ecx
	movl      $22, %eax
	jmp       L000002C5
L0000024F:
	cmpl      $124, %edi
	jg        L0000026C
L00000254:
	cmpl      $96, %edi
	jne       L00000278
L00000259:
	movl      $25, %eax
	jmp       L000002C5
L00000260:
	cmpl      $46, %edi
	jne       L00000290
L00000265:
	movl      $23, %eax
	jmp       L000002C5
L0000026C:
	cmpl      $125, %edi
	jne       L00000284
L00000271:
	movl      $27, %eax
	jmp       L000002C5
L00000278:
	cmpl      $123, %edi
	jne       L00000290
L0000027D:
	movl      $26, %eax
	jmp       L000002C5
L00000284:
	cmpl      $126, %edi
	jne       L00000290
L00000289:
	movl      $32, %eax
	jmp       L000002C5
L00000290:
	movl      $51, %eax
	cmpl      $42, %edi
	jne       L000002A1
L0000029A:
	movl      $36, %ecx
	jmp       L000002C5
L000002A1:
	cmpl      $47, %edi
	jne       L000002AD
L000002A6:
	movl      $48, %ecx
	jmp       L000002C5
L000002AD:
	movl      $51, %ecx
	jmp       L000002C5
L000002B4:
	movl      $35, %ecx
	movl      $21, %eax
	jmp       L000002C5
L000002C0:
	movl      $50, %eax
L000002C5:
	addl      %ecx, %eax
	popq      %rbp
	ret       
L000002C9:
	.align 4, 0x90
# ----------------------
L000002CC:
	.long	L000002C5-L000002CC
	.long	L00000290-L000002CC
	.long	L00000290-L000002CC
	.long	L00000243-L000002CC
	.long	L000002B4-L000002CC
	.long	L00000290-L000002CC
	.long	L000002C0-L000002CC
# ----------------------

.subsections_via_symbols
