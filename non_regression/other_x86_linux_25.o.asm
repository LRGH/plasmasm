	.file	"(extract)pyexpat.c"
	.section       .rodata.str1.1,"a",@progbits
.LC00000000.str1.1:
	.string	"(NO&)"
.LC00000006.str1.1:
	.string	"ProcessingInstruction"
# ----------------------
	.text
	.local	my_ProcessingInstructionHandler
	.type	my_ProcessingInstructionHandler, @function
my_ProcessingInstructionHandler:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %esi
	call      __x86.get_pc_thunk.bx
.L00000010:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      48(%esi), %eax
	movl      8(%eax), %eax
	testl     %eax, %eax
	je        .L0000011C
.L00000024:
	movl      32(%esi), %edx
	testl     %edx, %edx
	je        .L00000036
.L0000002B:
	movl      40(%esi), %eax
	testl     %eax, %eax
	jne       .L00000128
.L00000036:
	movl      12(%esi), %ebp
	leal      conv_string_to_unicode@GOTOFF(%ebx), %eax
	leal      conv_string_to_utf8@GOTOFF(%ebx), %edi
	testl     %ebp, %ebp
	cmovne    %eax, %edi
	movl      68(%esp), %eax
	movl      %eax, (%esp)
	call      *%edi
.L00000053:
	testl     %eax, %eax
	movl      %eax, %ecx
	je        .L000001B0
.L0000005D:
	movl      44(%esi), %eax
	movl      %ecx, %ebp
	movl      %ecx, 28(%esp)
	testl     %eax, %eax
	je        .L0000009A
.L0000006A:
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      PyDict_GetItem@PLT
.L00000076:
	movl      28(%esp), %ecx
	testl     %eax, %eax
	movl      %eax, %edx
	je        .L0000018E
.L00000084:
	addl      $1, (%eax)
	movl      (%ebp), %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%ebp)
	movl      %edx, %ebp
	je        .L00000180
.L0000009A:
	movl      72(%esp), %eax
	movl      %edi, 8(%esp)
	movl      %ebp, 4(%esp)
	movl      %eax, 12(%esp)
	leal      .LC00000000.str1.1@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      Py_BuildValue@PLT
.L000000B8:
	testl     %eax, %eax
	movl      %eax, %edi
	je        .L000001B8
.L000000C2:
	movl      48(%esi), %eax
	leal      .LC00000006.str1.1@GOTOFF(%ebx), %edx
	movl      $1, 24(%esi)
	movl      8(%eax), %ebp
	movl      $2, %eax
	movl      $645, (%esp)
	call      getcode
.L000000E6:
	leal      8(%esi), %edx
	movl      %edx, 4(%esp)
	movl      %edi, (%esp)
	movl      %ebp, %edx
	call      call_with_frame.isra.9
.L000000F7:
	movl      $0, 24(%esi)
	movl      (%edi), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%edi)
	je        .L00000168
.L00000109:
	testl     %eax, %eax
	je        .L0000023A
.L00000111:
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	je        .L00000150
.L0000011C:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000124:
	.p2align 3
.L00000128:
	movl      %eax, (%esp)
	movl      %esi, %eax
	call      call_character_handler
.L00000132:
	movl      $0, 40(%esi)
	testl     %eax, %eax
	jns       .L00000036
.L00000141:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000149:
	.p2align 4
.L00000150:
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
.L00000159:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000161:
	.p2align 3
.L00000168:
	movl      4(%edi), %edx
	movl      %eax, 28(%esp)
	movl      %edi, (%esp)
	call      *24(%edx)
.L00000175:
	movl      28(%esp), %eax
	jmp       .L00000109
.L0000017B:
	.p2align 3
.L00000180:
	movl      4(%ecx), %eax
	movl      %ecx, (%esp)
	call      *24(%eax)
.L00000189:
	jmp       .L0000009A
.L0000018E:
	movl      %ebp, 8(%esp)
	movl      %ebp, 4(%esp)
	movl      44(%esi), %eax
	movl      %eax, (%esp)
	call      PyDict_SetItem@PLT
.L000001A1:
	testl     %eax, %eax
	je        .L0000009A
.L000001A9:
	.p2align 4
.L000001B0:
	xorl      %ebp, %ebp
	jmp       .L0000009A
.L000001B7:
	.p2align 3
.L000001B8:
	movl      handler_info@GOTOFF(%ebx), %edi
	testl     %edi, %edi
	je        .L00000220
.L000001C2:
	leal      handler_info@GOTOFF+4(%ebx), %edi
	xorl      %ebp, %ebp
	jmp       .L000001F5
.L000001CC:
	.p2align 3
.L000001D0:
	movl      $0, 4(%esp)
	movl      8(%esi), %edx
	addl      $4, %ebp
	movl      %edi, 28(%esp)
	movl      %edx, (%esp)
	call      *(%edi)
.L000001E7:
	movl      28(%esp), %eax
	addl      $20, %edi
	movl      16(%eax), %ecx
	testl     %ecx, %ecx
	je        .L00000220
.L000001F5:
	movl      48(%esi), %edx
	addl      %ebp, %edx
	movl      (%edx), %eax
	movl      $0, (%edx)
	testl     %eax, %eax
	je        .L000001D0
.L00000206:
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	jne       .L000001D0
.L00000211:
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
.L0000021A:
	jmp       .L000001D0
.L0000021C:
	.p2align 3
.L00000220:
	leal      error_external_entity_ref_handler@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      8(%esi), %eax
	movl      %eax, (%esp)
	call      XML_SetExternalEntityRefHandler@PLT
.L00000235:
	jmp       .L0000011C
.L0000023A:
	movl      handler_info@GOTOFF(%ebx), %edx
	testl     %edx, %edx
	je        .L00000220
.L00000244:
	leal      handler_info@GOTOFF+4(%ebx), %edi
	xorl      %ebp, %ebp
	jmp       .L00000275
.L0000024E:
	.p2align 3
.L00000250:
	movl      $0, 4(%esp)
	movl      8(%esi), %edx
	addl      $4, %ebp
	movl      %edi, 28(%esp)
	movl      %edx, (%esp)
	call      *(%edi)
.L00000267:
	movl      28(%esp), %eax
	addl      $20, %edi
	movl      16(%eax), %eax
	testl     %eax, %eax
	je        .L00000220
.L00000275:
	movl      48(%esi), %edx
	addl      %ebp, %edx
	movl      (%edx), %eax
	movl      $0, (%edx)
	testl     %eax, %eax
	je        .L00000250
.L00000286:
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	jne       .L00000250
.L00000291:
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
.L0000029A:
	jmp       .L00000250
	.size	my_ProcessingInstructionHandler, .-my_ProcessingInstructionHandler
# ----------------------
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
