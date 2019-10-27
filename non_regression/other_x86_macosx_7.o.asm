	.section       __TEXT,__text,regular,pure_instructions
_read_markers:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $604, %esp
	call      L00000011
L00000011:
	popl      %eax
	movl      %eax, -568(%ebp)
	movl      8(%ebp), %edx
	movl      L___stack_chk_guard$non_lazy_ptr-L00000011(%eax), %eax
	movl      %eax, -588(%ebp)
	movl      (%eax), %eax
	movl      %eax, -16(%ebp)
	movl      472(%edx), %edi
	jmp       L0000004E
L00000034:
	.align 4, 0x90
L00000040:
	movl      $0, 472(%esi)
	xorl      %edi, %edi
	movl      %esi, %edx
L0000004E:
	testl     %edi, %edi
	jne       L00000140
L00000056:
	movl      496(%edx), %eax
	cmpl      $0, 12(%eax)
	je        L00000082
L00000062:
	movl      %edx, %ecx
	movl      %edx, %esi
	call      _next_marker
L0000006B:
	xorl      %ebx, %ebx
	testl     %eax, %eax
	je        L00000246
L00000075:
	movl      472(%esi), %edi
	movl      %esi, %edx
	jmp       L00000140
L00000082:
	movl      24(%edx), %ecx
	movl      4(%ecx), %ebx
	testl     %ebx, %ebx
	jne       L000000A7
L0000008C:
	movl      %edx, (%esp)
	movl      %edx, %esi
	movl      %ecx, %edi
	call      *12(%edi)
L00000096:
	xorl      %ebx, %ebx
	testl     %eax, %eax
	je        L00000246
L000000A0:
	movl      4(%edi), %ebx
	movl      %esi, %edx
	movl      %edi, %ecx
L000000A7:
	movl      (%ecx), %esi
	decl      %ebx
	movzbl    (%esi), %eax
	movl      %eax, -572(%ebp)
	je        L000000B8
L000000B5:
	incl      %esi
	jmp       L000000D7
L000000B8:
	movl      %edx, (%esp)
	movl      %edx, %esi
	movl      %ecx, %edi
	call      *12(%edi)
L000000C2:
	xorl      %ebx, %ebx
	testl     %eax, %eax
	je        L00000246
L000000CC:
	movl      %esi, %eax
	movl      (%edi), %esi
	movl      4(%edi), %ebx
	movl      %eax, %edx
	movl      %edi, %ecx
L000000D7:
	decl      %ebx
	movb      (%esi), %al
	incl      %esi
	movzbl    %al, %edi
	cmpl      $255, -572(%ebp)
	jne       L000000F4
L000000EA:
	movzbl    %al, %eax
	cmpl      $216, %eax
	je        L00000132
L000000F4:
	movl      (%edx), %eax
	movl      %eax, -576(%ebp)
	movl      $53, 20(%eax)
	movl      -572(%ebp), %eax
	movl      -576(%ebp), %edx
	movl      %eax, 24(%edx)
	movl      -576(%ebp), %eax
	movl      %edi, 28(%eax)
	movl      8(%ebp), %edx
	movl      %edx, (%esp)
	movl      %ecx, -572(%ebp)
	call      *(%eax)
L00000129:
	movl      -572(%ebp), %ecx
	movl      8(%ebp), %edx
L00000132:
	movl      %edi, 472(%edx)
	movl      %esi, (%ecx)
	movl      %ebx, 4(%ecx)
	.align 4, 0x90
L00000140:
	cmpl      $191, %edi
	jg        L00000150
L00000148:
	cmpl      $1, %edi
	jne       L00000190
L0000014D:
	jmp       L000001B0
L0000014F:
	.align 4, 0x90
L00000150:
	leal      -192(%edi), %eax
	cmpl      $62, %eax
	ja        L00000190
L0000015B:
	movl      -568(%ebp), %ecx
	movl      L00000258-L00000011(%ecx,%eax,4), %eax
	addl      %ecx, %eax
	jmp       *%eax
L0000016C:
	movl      496(%edx), %eax
	movl      %edx, (%esp)
	movl      %edx, %esi
	call      *-864(%eax,%edi,4)
L0000017E:
	xorl      %ebx, %ebx
L00000180:
	testl     %eax, %eax
	jne       L00000040
L00000188:
	jmp       L00000246
L0000018D:
	.align 4, 0x90
L00000190:
	movl      (%edx), %eax
	movl      $68, 20(%eax)
L00000199:
	movl      %edi, 24(%eax)
	movl      %edx, (%esp)
	movl      %edx, %esi
	call      *(%eax)
L000001A3:
	jmp       L00000040
L000001A8:
	.align 4, 0x90
L000001B0:
	movl      (%edx), %eax
	movl      $92, 20(%eax)
	movl      %edi, 24(%eax)
	movl      %edx, (%esp)
	movl      $1, 4(%esp)
	movl      %edx, %esi
	call      *4(%eax)
L000001CC:
	jmp       L00000040
L000001D1:
	movl      (%edx), %eax
	movl      $60, 20(%eax)
	jmp       L00000199
L000001DC:
	movl      $0, (%esp)
	jmp       L0000022D
L000001E5:
	movl      %edx, (%esp)
	movl      %edx, %esi
	call      _skip_variable
L000001EF:
	jmp       L0000017E
L000001F1:
	movl      $0, (%esp)
	jmp       L00000246
L000001FA:
	movl      24(%edx), %esi
	movl      4(%esi), %ebx
	testl     %ebx, %ebx
	jne       L00000215
L00000204:
	movl      %edx, (%esp)
	movl      %edx, %edi
	call      *12(%esi)
L0000020C:
	testl     %eax, %eax
	je        L00000246
L00000210:
	movl      4(%esi), %ebx
	movl      %edi, %edx
L00000215:
	movl      (%esi), %edi
	movzbl    (%edi), %ecx
	decl      %ebx
	je        L00000246
L0000021D:
	movl      %esi, -572(%ebp)
	incl      %edi
	jmp       L00000246
L00000226:
	movl      $1, (%esp)
L0000022D:
	xorl      %ebx, %ebx
	movl      %edx, %esi
	xorl      %edx, %edx
	movl      %esi, %ecx
	call      _get_sof
L0000023A:
	jmp       L00000180
L0000023F:
	movl      $1, (%esp)
L00000246:
	movl      %ebx, %eax
	addl      $604, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
L00000253:
	call      ___stack_chk_fail
	.align 2, 0x90
L00000258:
	.long	L000001DC-L00000011
	.long	L000001DC-L00000011
	.long	L000001F1-L00000011
	.long	L000001D1-L00000011
	.long	L000001FA-L00000011
	.long	L000001D1-L00000011
	.long	L000001D1-L00000011
	.long	L000001D1-L00000011
	.long	L000001D1-L00000011
	.long	L00000226-L00000011
	.long	L0000023F-L00000011
	.long	L000001D1-L00000011
	.long	L000001E5-L00000011
	.long	L000001D1-L00000011
	.long	L000001D1-L00000011
	.long	L000001D1-L00000011
	.long	L000001B0-L00000011
	.long	L000001B0-L00000011
	.long	L000001B0-L00000011
	.long	L000001B0-L00000011
	.long	L000001B0-L00000011
	.long	L000001B0-L00000011
	.long	L000001B0-L00000011
	.long	L000001B0-L00000011
	.long	L00000246-L00000011
	.long	L00000246-L00000011
	.long	L00000246-L00000011
	.long	L00000246-L00000011
	.long	L000001E5-L00000011
	.long	L00000246-L00000011
	.long	L00000190-L00000011
	.long	L00000190-L00000011
	.long	L0000016C-L00000011
	.long	L0000016C-L00000011
	.long	L0000016C-L00000011
	.long	L0000016C-L00000011
	.long	L0000016C-L00000011
	.long	L0000016C-L00000011
	.long	L0000016C-L00000011
	.long	L0000016C-L00000011
	.long	L0000016C-L00000011
	.long	L0000016C-L00000011
	.long	L0000016C-L00000011
	.long	L0000016C-L00000011
	.long	L0000016C-L00000011
	.long	L0000016C-L00000011
	.long	L0000016C-L00000011
	.long	L0000016C-L00000011
	.long	L00000190-L00000011
	.long	L00000190-L00000011
	.long	L00000190-L00000011
	.long	L00000190-L00000011
	.long	L00000190-L00000011
	.long	L00000190-L00000011
	.long	L00000190-L00000011
	.long	L00000190-L00000011
	.long	L00000190-L00000011
	.long	L00000190-L00000011
	.long	L00000190-L00000011
	.long	L00000190-L00000011
	.long	L00000190-L00000011
	.long	L00000190-L00000011
	.long	L00000246-L00000011
# ----------------------
	.section       __IMPORT,__pointers,non_lazy_symbol_pointers
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol ___stack_chk_guard
	.long	0
# ----------------------
L_jpeg_natural_order$non_lazy_ptr:
	.indirect_symbol _jpeg_natural_order
	.long	0
# ----------------------

.subsections_via_symbols
