	.macosx_version_min 10, 11
	.section       __TEXT,__text,regular,pure_instructions
_ellrootno_3:
	pushl     %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $44, %esp
	movl      %ecx, %ebx
	call      L0000000E
L0000000E:
	popl      %ecx
	movl      %ecx, 16(%esp)
	movl      40(%ebx), %edx
	movl      44(%ebx), %esi
	movl      48(%ebx), %edi
	movl      $0, 32(%esp)
	cmpl      $1073741824, 4(%edx)
	movl      L_avma$non_lazy_ptr-L0000000E(%ecx), %ebp
	movl      (%ebp), %eax
	movl      %eax, 28(%esp)
	movl      $12, 24(%esp)
	movl      $0, %eax
	jb        L00000077
L00000047:
	leal      40(%esp), %ecx
	movl      %ecx, 8(%esp)
	movl      %edx, (%esp)
	movl      $3, 4(%esp)
	call      _Z_lvalrem
L0000005F:
	movl      %eax, 24(%esp)
	movl      40(%esp), %eax
	movl      %eax, (%esp)
	movl      $81, 4(%esp)
	call      _umodiu
L00000077:
	movl      %eax, 20(%esp)
	cmpl      $1073741824, 4(%esi)
	jb        L000000B4
L00000084:
	leal      40(%esp), %eax
	movl      %eax, 8(%esp)
	movl      %esi, (%esp)
	movl      $3, 4(%esp)
	call      _Z_lvalrem
L0000009C:
	movl      40(%esp), %eax
	movl      %eax, (%esp)
	movl      $81, 4(%esp)
	call      _umodiu
L000000B0:
	movl      %eax, 32(%esp)
L000000B4:
	cmpl      $1073741823, 4(%edi)
	jbe       L00000108
L000000BD:
	leal      40(%esp), %eax
	movl      %eax, 8(%esp)
	movl      %edi, (%esp)
	movl      $3, 4(%esp)
	call      _Z_lvalrem
L000000D5:
	movl      %eax, %edi
	movl      40(%esp), %eax
	movl      %eax, (%esp)
	movl      $81, 4(%esp)
	call      _umodiu
L000000EB:
	movl      %eax, 12(%esp)
	movl      28(%esp), %eax
	movl      %eax, (%ebp)
	movl      $1, %eax
	testl     %edi, %edi
	movl      32(%esp), %ebp
	jne       L0000011B
L00000103:
	jmp       L000001AF
L00000108:
	movl      28(%esp), %eax
	movl      %eax, (%ebp)
	movl      $0, 12(%esp)
	movl      32(%esp), %ebp
L0000011B:
	leal      36(%esp), %eax
	movl      %eax, (%esp)
	movl      $3, %edx
	movl      %ebx, %ecx
	call      _neron
L0000012E:
	movl      %eax, %edi
	movl      %ebp, (%esp)
	movl      $3, 4(%esp)
	call      _kross
L00000140:
	movl      %eax, %ebx
	movl      36(%esp), %esi
	cmpl      $4, %esi
	jle       L0000014F
L0000014B:
	movl      %ebx, %eax
	jmp       L000001AF
L0000014F:
	movl      %edi, 32(%esp)
	movl      $954437177, %ecx
	movl      %ebp, %eax
	imull     %ecx
	movl      %edx, %edi
	movl      20(%esp), %eax
	movl      %eax, (%esp)
	movl      $3, 4(%esp)
	call      _kross
L00000172:
	movl      %eax, %ecx
	addl      $4, %esi
	cmpl      $8, %esi
	ja        L000001AA
L0000017C:
	movl      %edi, %eax
	shrl      $31, %eax
	sarl      $1, %edi
	addl      %eax, %edi
	leal      (%edi,%edi,8), %eax
	subl      %eax, %ebp
	movl      16(%esp), %eax
	movl      L000002A4-L0000000E(%eax,%esi,4), %edx
	addl      %eax, %edx
	movl      %eax, %esi
	movl      $1, %eax
	jmp       *%edx
L000001A0:
	movl      32(%esp), %eax
	decl      %eax
	cmpl      $3, %eax
	jbe       L00000205
L000001AA:
	movl      $-1, %eax
L000001AF:
	addl      $44, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
L000001B7:
	movl      32(%esp), %eax
	leal      -1(%eax), %eax
	cmpl      $3, %eax
	ja        L0000024D
L000001C7:
	addl      L000002D8-L0000000E(%esi,%eax,4), %esi
	movl      $1, %eax
	jmp       *%esi
L000001D5:
	cmpl      $4, %ebp
	movl      $1, %eax
	je        L000001AF
L000001DF:
	cmpl      $6, %ebp
	movl      $1, %ecx
	movl      $-1, %eax
	cmovg     %ecx, %eax
	jmp       L000001AF
L000001F1:
	movl      32(%esp), %eax
	cmpl      $3, %eax
	je        L00000226
L000001FA:
	cmpl      $2, %eax
	jne       L0000022C
L000001FF:
	negl      %ecx
	movl      %ecx, %eax
	jmp       L000001AF
L00000205:
	addl      L000002C8-L0000000E(%esi,%eax,4), %esi
	movl      %ebx, %eax
	jmp       *%esi
L00000210:
	cmpl      $4, 24(%esp)
	jne       L00000280
L00000217:
	cmpl      $4, %ebp
	movl      $1, %eax
	je        L000001AF
L00000221:
	cmpl      $8, %ebp
	jmp       L00000291
L00000226:
	negl      %ebx
	movl      %ebx, %eax
	jmp       L000001AF
L0000022C:
	cmpl      $1, %eax
	jne       L0000024D
L00000231:
	movl      12(%esp), %eax
	movl      %eax, (%esp)
	movl      $3, 4(%esp)
	call      _kross
L00000245:
	imull     %ebx, %eax
	jmp       L000001AF
L0000024D:
	cmpl      $2, 32(%esp)
	movl      $1, %eax
	cmove     %eax, %ebx
	movl      %ebx, %eax
	jmp       L000001AF
L00000261:
	negl      %ebx
	imull     %ebx, %ecx
	movl      %ecx, %eax
	jmp       L000001AF
L0000026D:
	cmpl      $2, %ebp
	movl      $1, %eax
	je        L000001AF
L0000027B:
	cmpl      $7, %ebp
	jmp       L00000291
L00000280:
	cmpl      $1, %ebp
	movl      $1, %eax
	je        L000001AF
L0000028E:
	cmpl      $2, %ebp
L00000291:
	movl      $1, %ecx
	movl      $-1, %eax
	cmove     %ecx, %eax
	jmp       L000001AF
	.align 2, 0x90
L000002A4:
	.long	L000001A0-L0000000E
	.long	L000001AF-L0000000E
	.long	L0000024D-L0000000E
	.long	L000001AA-L0000000E
	.long	L000001AA-L0000000E
	.long	L000001AF-L0000000E
	.long	L000001B7-L0000000E
	.long	L000001AF-L0000000E
	.long	L000001F1-L0000000E
	.align 2, 0x90
L000002C8:
	.long	L00000210-L0000000E
	.long	L00000226-L0000000E
	.long	L0000026D-L0000000E
	.long	L000001AF-L0000000E
	.align 2, 0x90
L000002D8:
	.long	L000001D5-L0000000E
	.long	L00000261-L0000000E
	.long	L000001AF-L0000000E
	.long	L00000226-L0000000E
# ----------------------
	.section       __IMPORT,__pointers,non_lazy_symbol_pointers
L_avma$non_lazy_ptr:
	.indirect_symbol _avma
	.long	0
# ----------------------
L_bot$non_lazy_ptr:
	.indirect_symbol _bot
	.long	0
# ----------------------

.subsections_via_symbols
