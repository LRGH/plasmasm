	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_PyToken_OneChar
_PyToken_OneChar:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      %edi, -8(%rbp)
	movl      %edi, %eax
	subl      $93, %edi
	movl      %eax, -12(%rbp)
	movl      %edi, -16(%rbp)
	jg        L00000074
L00000014:
	jmp       L00000016
L00000016:
	movl      -12(%rbp), %eax
	subl      $57, %eax
	movl      %eax, -20(%rbp)
	jg        L00000048
L00000021:
	jmp       L00000023
L00000023:
	movl      -12(%rbp), %eax
	subl      $37, %eax
	movl      %eax, -24(%rbp)
	je        L000000FA
L00000032:
	jmp       L00000034
L00000034:
	movl      -12(%rbp), %eax
	subl      $46, %eax
	movl      %eax, -28(%rbp)
	je        L000000F1
L00000043:
	jmp       L00000139
L00000048:
	movl      -12(%rbp), %eax
	addl      $-58, %eax
	movl      %eax, %ecx
	subl      $6, %eax
	movq      %rcx, -40(%rbp)
	movl      %eax, -44(%rbp)
	ja        L00000139
L00000060:
	leaq      L00000148(%rip), %rax
	movq      -40(%rbp), %rcx
	movslq    (%rax,%rcx,4), %rdx
	addq      %rax, %rdx
	jmp       *%rdx
L00000074:
	movl      -12(%rbp), %eax
	subl      $95, %eax
	movl      %eax, -48(%rbp)
	jg        L00000095
L0000007F:
	jmp       L00000081
L00000081:
	movl      -12(%rbp), %eax
	subl      $94, %eax
	movl      %eax, -52(%rbp)
	je        L0000011E
L00000090:
	jmp       L00000139
L00000095:
	movl      -12(%rbp), %eax
	subl      $124, %eax
	movl      %eax, -56(%rbp)
	jg        L000000BC
L000000A0:
	jmp       L000000A2
L000000A2:
	movl      -12(%rbp), %eax
	subl      $96, %eax
	movl      %eax, -60(%rbp)
	je        L00000103
L000000AD:
	jmp       L000000AF
L000000AF:
	movl      -12(%rbp), %eax
	subl      $123, %eax
	movl      %eax, -64(%rbp)
	je        L0000010C
L000000BA:
	jmp       L00000139
L000000BC:
	movl      -12(%rbp), %eax
	subl      $125, %eax
	movl      %eax, -68(%rbp)
	je        L00000115
L000000C7:
	jmp       L000000C9
L000000C9:
	movl      -12(%rbp), %eax
	subl      $126, %eax
	movl      %eax, -72(%rbp)
	je        L00000127
L000000D4:
	jmp       L00000139
L000000D6:
	movl      $11, -4(%rbp)
	jmp       L00000140
L000000DF:
	movl      $21, -4(%rbp)
	jmp       L00000140
L000000E8:
	movl      $22, -4(%rbp)
	jmp       L00000140
L000000F1:
	movl      $23, -4(%rbp)
	jmp       L00000140
L000000FA:
	movl      $24, -4(%rbp)
	jmp       L00000140
L00000103:
	movl      $25, -4(%rbp)
	jmp       L00000140
L0000010C:
	movl      $26, -4(%rbp)
	jmp       L00000140
L00000115:
	movl      $27, -4(%rbp)
	jmp       L00000140
L0000011E:
	movl      $33, -4(%rbp)
	jmp       L00000140
L00000127:
	movl      $32, -4(%rbp)
	jmp       L00000140
L00000130:
	movl      $50, -4(%rbp)
	jmp       L00000140
L00000139:
	movl      $51, -4(%rbp)
L00000140:
	movl      -4(%rbp), %eax
	popq      %rbp
	ret       
L00000145:
	.align 4, 0x90
# ----------------------
L00000148:
	.long	L000000D6-L00000148
	.long	L00000139-L00000148
	.long	L00000139-L00000148
	.long	L000000E8-L00000148
	.long	L000000DF-L00000148
	.long	L00000139-L00000148
	.long	L00000130-L00000148
# ----------------------
	.align 4, 0x90
	.globl	_PyToken_TwoChars
_PyToken_TwoChars:
	pushq     %rbp
	movq      %rsp, %rbp
	movl      %edi, -8(%rbp)
	movl      %esi, -12(%rbp)
	movl      -8(%rbp), %esi
	movl      %esi, %edi
	subl      $60, %edi
	movl      %esi, -16(%rbp)
	movl      %edi, -20(%rbp)
	jg        L000001B8
L0000018A:
	jmp       L0000018C
L0000018C:
	movl      -16(%rbp), %eax
	addl      $-33, %eax
	movl      %eax, %ecx
	subl      $14, %eax
	movq      %rcx, -32(%rbp)
	movl      %eax, -36(%rbp)
	ja        L0000038A
L000001A4:
	leaq      L00000398(%rip), %rax
	movq      -32(%rbp), %rcx
	movslq    (%rax,%rcx,4), %rdx
	addq      %rax, %rdx
	jmp       *%rdx
L000001B8:
	movl      -16(%rbp), %eax
	subl      $93, %eax
	movl      %eax, -40(%rbp)
	jg        L000001E2
L000001C3:
	jmp       L000001C5
L000001C5:
	movl      -16(%rbp), %eax
	subl      $61, %eax
	movl      %eax, -44(%rbp)
	je        L00000207
L000001D0:
	jmp       L000001D2
L000001D2:
	movl      -16(%rbp), %eax
	subl      $62, %eax
	movl      %eax, -48(%rbp)
	je        L00000243
L000001DD:
	jmp       L0000038A
L000001E2:
	movl      -16(%rbp), %eax
	subl      $94, %eax
	movl      %eax, -52(%rbp)
	je        L00000372
L000001F1:
	jmp       L000001F3
L000001F3:
	movl      -16(%rbp), %eax
	subl      $124, %eax
	movl      %eax, -56(%rbp)
	je        L0000032A
L00000202:
	jmp       L0000038A
L00000207:
	movl      -12(%rbp), %eax
	subl      $61, %eax
	movl      %eax, -60(%rbp)
	jne       L00000220
L00000212:
	jmp       L00000214
L00000214:
	movl      $28, -4(%rbp)
	jmp       L00000391
L00000220:
	jmp       L0000038A
L00000225:
	movl      -12(%rbp), %eax
	subl      $61, %eax
	movl      %eax, -64(%rbp)
	jne       L0000023E
L00000230:
	jmp       L00000232
L00000232:
	movl      $29, -4(%rbp)
	jmp       L00000391
L0000023E:
	jmp       L0000038A
L00000243:
	movl      -12(%rbp), %eax
	movl      %eax, %ecx
	subl      $62, %ecx
	movl      %eax, -68(%rbp)
	movl      %ecx, -72(%rbp)
	je        L0000026E
L00000253:
	jmp       L00000255
L00000255:
	movl      -68(%rbp), %eax
	subl      $61, %eax
	movl      %eax, -76(%rbp)
	jne       L0000027A
L00000260:
	jmp       L00000262
L00000262:
	movl      $31, -4(%rbp)
	jmp       L00000391
L0000026E:
	movl      $35, -4(%rbp)
	jmp       L00000391
L0000027A:
	jmp       L0000038A
L0000027F:
	movl      -12(%rbp), %eax
	subl      $61, %eax
	movl      %eax, -80(%rbp)
	jne       L00000298
L0000028A:
	jmp       L0000028C
L0000028C:
	movl      $37, -4(%rbp)
	jmp       L00000391
L00000298:
	jmp       L0000038A
L0000029D:
	movl      -12(%rbp), %eax
	subl      $61, %eax
	movl      %eax, -84(%rbp)
	jne       L000002B6
L000002A8:
	jmp       L000002AA
L000002AA:
	movl      $38, -4(%rbp)
	jmp       L00000391
L000002B6:
	jmp       L0000038A
L000002BB:
	movl      -12(%rbp), %eax
	movl      %eax, %ecx
	subl      $61, %ecx
	movl      %eax, -88(%rbp)
	movl      %ecx, -92(%rbp)
	je        L000002E6
L000002CB:
	jmp       L000002CD
L000002CD:
	movl      -88(%rbp), %eax
	subl      $42, %eax
	movl      %eax, -96(%rbp)
	jne       L000002F2
L000002D8:
	jmp       L000002DA
L000002DA:
	movl      $36, -4(%rbp)
	jmp       L00000391
L000002E6:
	movl      $39, -4(%rbp)
	jmp       L00000391
L000002F2:
	jmp       L0000038A
L000002F7:
	movl      -12(%rbp), %eax
	movl      %eax, %ecx
	subl      $61, %ecx
	movl      %eax, -100(%rbp)
	movl      %ecx, -104(%rbp)
	je        L0000031F
L00000307:
	jmp       L00000309
L00000309:
	movl      -100(%rbp), %eax
	subl      $47, %eax
	movl      %eax, -108(%rbp)
	jne       L00000328
L00000314:
	jmp       L00000316
L00000316:
	movl      $48, -4(%rbp)
	jmp       L00000391
L0000031F:
	movl      $40, -4(%rbp)
	jmp       L00000391
L00000328:
	jmp       L0000038A
L0000032A:
	movl      -12(%rbp), %eax
	subl      $61, %eax
	movl      %eax, -112(%rbp)
	jne       L00000340
L00000335:
	jmp       L00000337
L00000337:
	movl      $43, -4(%rbp)
	jmp       L00000391
L00000340:
	jmp       L0000038A
L00000342:
	movl      -12(%rbp), %eax
	subl      $61, %eax
	movl      %eax, -116(%rbp)
	jne       L00000358
L0000034D:
	jmp       L0000034F
L0000034F:
	movl      $41, -4(%rbp)
	jmp       L00000391
L00000358:
	jmp       L0000038A
L0000035A:
	movl      -12(%rbp), %eax
	subl      $61, %eax
	movl      %eax, -120(%rbp)
	jne       L00000370
L00000365:
	jmp       L00000367
L00000367:
	movl      $42, -4(%rbp)
	jmp       L00000391
L00000370:
	jmp       L0000038A
L00000372:
	movl      -12(%rbp), %eax
	subl      $61, %eax
	movl      %eax, -124(%rbp)
	jne       L00000388
L0000037D:
	jmp       L0000037F
L0000037F:
	movl      $44, -4(%rbp)
	jmp       L00000391
L00000388:
	jmp       L0000038A
L0000038A:
	movl      $51, -4(%rbp)
L00000391:
	movl      -4(%rbp), %eax
	popq      %rbp
	ret       
L00000396:
	.align 4, 0x90
# ----------------------
L00000398:
	.long	L00000225-L00000398
	.long	L0000038A-L00000398
	.long	L0000038A-L00000398
	.long	L0000038A-L00000398
	.long	L00000342-L00000398
	.long	L0000035A-L00000398
	.long	L0000038A-L00000398
	.long	L0000038A-L00000398
	.long	L0000038A-L00000398
	.long	L000002BB-L00000398
	.long	L0000027F-L00000398
	.long	L0000038A-L00000398
	.long	L0000029D-L00000398
	.long	L0000038A-L00000398
	.long	L000002F7-L00000398
# ----------------------
	.align 4, 0x90
	.globl	_main
_main:
	pushq     %rbp
	movq      %rsp, %rbp
	subq      $32, %rsp
	movl      $0, -4(%rbp)
	movl      %edi, -8(%rbp)
	movq      %rsi, -16(%rbp)
	movl      -8(%rbp), %edi
	call      _PyToken_OneChar
L000003FE:
	movl      -8(%rbp), %edi
	movl      -8(%rbp), %esi
	movl      %eax, -20(%rbp)
	call      _PyToken_TwoChars
L0000040C:
	movl      -20(%rbp), %esi
	addl      %eax, %esi
	movl      %esi, %eax
	addq      $32, %rsp
	popq      %rbp
	ret       
# ----------------------

.subsections_via_symbols
