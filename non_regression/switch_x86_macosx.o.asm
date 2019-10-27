	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_PyToken_OneChar
_PyToken_OneChar:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %ecx
	cmpl      $93, %ecx
	jg        L0000001C
L0000000B:
	cmpl      $57, %ecx
	jg        L0000002D
L00000010:
	cmpl      $37, %ecx
	jne       L00000061
L00000015:
	movl      $24, %eax
	popl      %ebp
	ret       
L0000001C:
	cmpl      $95, %ecx
	jg        L00000050
L00000021:
	cmpl      $94, %ecx
	jne       L00000091
L00000026:
	movl      $33, %eax
	popl      %ebp
	ret       
L0000002D:
	addl      $-58, %ecx
	cmpl      $6, %ecx
	ja        L00000091
L00000035:
	call      L0000003A
L0000003A:
	popl      %edx
	movl      $11, %eax
	addl      L000000A8-L0000003A(%edx,%ecx,4), %edx
	jmp       *%edx
L00000049:
	movl      $22, %eax
	popl      %ebp
	ret       
L00000050:
	cmpl      $124, %ecx
	jg        L0000006D
L00000055:
	cmpl      $96, %ecx
	jne       L00000079
L0000005A:
	movl      $25, %eax
	popl      %ebp
	ret       
L00000061:
	cmpl      $46, %ecx
	jne       L00000091
L00000066:
	movl      $23, %eax
	popl      %ebp
	ret       
L0000006D:
	cmpl      $125, %ecx
	jne       L00000085
L00000072:
	movl      $27, %eax
	popl      %ebp
	ret       
L00000079:
	cmpl      $123, %ecx
	jne       L00000091
L0000007E:
	movl      $26, %eax
	popl      %ebp
	ret       
L00000085:
	cmpl      $126, %ecx
	jne       L00000091
L0000008A:
	movl      $32, %eax
	popl      %ebp
	ret       
L00000091:
	movl      $51, %eax
L00000096:
	popl      %ebp
	ret       
L00000098:
	movl      $21, %eax
	popl      %ebp
	ret       
L0000009F:
	movl      $50, %eax
	popl      %ebp
	ret       
	.align 2, 0x90
L000000A8:
	.long	L00000096-L0000003A
	.long	L00000091-L0000003A
	.long	L00000091-L0000003A
	.long	L00000049-L0000003A
	.long	L00000098-L0000003A
	.long	L00000091-L0000003A
	.long	L0000009F-L0000003A
# ----------------------
	.align 4, 0x90
	.globl	_PyToken_TwoChars
_PyToken_TwoChars:
	pushl     %ebp
	movl      %esp, %ebp
	movl      12(%ebp), %ecx
	movl      8(%ebp), %eax
	cmpl      $60, %eax
	jg        L00000103
L000000DE:
	addl      $-33, %eax
	cmpl      $14, %eax
	ja        L0000018A
L000000EA:
	call      L000000EF
L000000EF:
	popl      %edx
	addl      L000001B0-L000000EF(%edx,%eax,4), %edx
	jmp       *%edx
L000000F9:
	movl      $29, %eax
	jmp       L00000185
L00000103:
	cmpl      $93, %eax
	jg        L00000114
L00000108:
	cmpl      $61, %eax
	jne       L00000120
L0000010D:
	movl      $28, %eax
	jmp       L00000185
L00000114:
	cmpl      $94, %eax
	jne       L00000142
L00000119:
	movl      $44, %eax
	jmp       L00000185
L00000120:
	cmpl      $62, %eax
	jne       L0000018A
L00000125:
	cmpl      $62, %ecx
	movl      $35, %eax
	movl      $51, %edx
	cmove     %eax, %edx
	cmpl      $61, %ecx
	movl      $31, %eax
	cmovne    %edx, %eax
	popl      %ebp
	ret       
L00000142:
	cmpl      $124, %eax
	jne       L0000018A
L00000147:
	movl      $43, %eax
	jmp       L00000185
L0000014E:
	movl      $41, %eax
	jmp       L00000185
L00000155:
	movl      $42, %eax
	jmp       L00000185
L0000015C:
	cmpl      $61, %ecx
	movl      $39, %eax
	movl      $51, %edx
	cmove     %eax, %edx
	cmpl      $42, %ecx
	movl      $36, %eax
	cmovne    %edx, %eax
	popl      %ebp
	ret       
L00000179:
	movl      $37, %eax
	jmp       L00000185
L00000180:
	movl      $38, %eax
L00000185:
	cmpl      $61, %ecx
	je        L0000018F
L0000018A:
	movl      $51, %eax
L0000018F:
	popl      %ebp
	ret       
L00000191:
	cmpl      $61, %ecx
	movl      $40, %eax
	movl      $51, %edx
	cmove     %eax, %edx
	cmpl      $47, %ecx
	movl      $48, %eax
	cmovne    %edx, %eax
	popl      %ebp
	ret       
	.align 2, 0x90
L000001B0:
	.long	L000000F9-L000000EF
	.long	L0000018A-L000000EF
	.long	L0000018A-L000000EF
	.long	L0000018A-L000000EF
	.long	L0000014E-L000000EF
	.long	L00000155-L000000EF
	.long	L0000018A-L000000EF
	.long	L0000018A-L000000EF
	.long	L0000018A-L000000EF
	.long	L0000015C-L000000EF
	.long	L00000179-L000000EF
	.long	L0000018A-L000000EF
	.long	L00000180-L000000EF
	.long	L0000018A-L000000EF
	.long	L00000191-L000000EF
# ----------------------
	.align 4, 0x90
	.globl	_main
_main:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	movl      $51, %ecx
	movl      8(%ebp), %edx
	cmpl      $93, %edx
	jg        L00000216
L00000202:
	cmpl      $57, %edx
	jg        L0000022A
L00000207:
	cmpl      $37, %edx
	jne       L00000263
L0000020C:
	movl      $24, %eax
	jmp       L000002C8
L00000216:
	cmpl      $95, %edx
	jg        L00000252
L0000021B:
	cmpl      $94, %edx
	jne       L00000293
L00000220:
	movl      $33, %eax
	jmp       L000002C8
L0000022A:
	leal      -58(%edx), %esi
	cmpl      $6, %esi
	ja        L00000293
L00000232:
	call      L00000237
L00000237:
	popl      %edi
	movl      $11, %eax
	addl      L000002D0-L00000237(%edi,%esi,4), %edi
	jmp       *%edi
L00000246:
	movl      $28, %ecx
	movl      $22, %eax
	jmp       L000002C8
L00000252:
	cmpl      $124, %edx
	jg        L0000026F
L00000257:
	cmpl      $96, %edx
	jne       L0000027B
L0000025C:
	movl      $25, %eax
	jmp       L000002C8
L00000263:
	cmpl      $46, %edx
	jne       L00000293
L00000268:
	movl      $23, %eax
	jmp       L000002C8
L0000026F:
	cmpl      $125, %edx
	jne       L00000287
L00000274:
	movl      $27, %eax
	jmp       L000002C8
L0000027B:
	cmpl      $123, %edx
	jne       L00000293
L00000280:
	movl      $26, %eax
	jmp       L000002C8
L00000287:
	cmpl      $126, %edx
	jne       L00000293
L0000028C:
	movl      $32, %eax
	jmp       L000002C8
L00000293:
	movl      $51, %eax
	cmpl      $42, %edx
	jne       L000002A4
L0000029D:
	movl      $36, %ecx
	jmp       L000002C8
L000002A4:
	cmpl      $47, %edx
	jne       L000002B0
L000002A9:
	movl      $48, %ecx
	jmp       L000002C8
L000002B0:
	movl      $51, %ecx
	jmp       L000002C8
L000002B7:
	movl      $35, %ecx
	movl      $21, %eax
	jmp       L000002C8
L000002C3:
	movl      $50, %eax
L000002C8:
	addl      %ecx, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.align 2, 0x90
L000002D0:
	.long	L000002C8-L00000237
	.long	L00000293-L00000237
	.long	L00000293-L00000237
	.long	L00000246-L00000237
	.long	L000002B7-L00000237
	.long	L00000293-L00000237
	.long	L000002C3-L00000237
# ----------------------

.subsections_via_symbols
