	.file	"(extract)pyexpat.c"
	.section       .rodata.str1.1
.LC60:
	.string	"(NO&)"
.LC61:
	.string	"ProcessingInstruction"
# ----------------------
	.text
	.p2align 4,,15
# ----------------------
	.local	my_ProcessingInstructionHandler
	.type	my_ProcessingInstructionHandler, @function
my_ProcessingInstructionHandler:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %esi
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      48(%esi), %eax
	movl      8(%eax), %eax
	testl     %eax, %eax
	je        .L1304
	movl      32(%esi), %edx
	testl     %edx, %edx
	je        .L1310
	movl      40(%esi), %eax
	testl     %eax, %eax
	jne       .L1342
.L1310:
	movl      12(%esi), %ebp
	leal      conv_string_to_unicode@GOTOFF(%ebx), %eax
	leal      conv_string_to_utf8@GOTOFF(%ebx), %edi
	testl     %ebp, %ebp
	cmovne    %eax, %edi
	movl      68(%esp), %eax
	movl      %eax, (%esp)
	call      *%edi
	testl     %eax, %eax
	movl      %eax, %ecx
	je        .L1315
	movl      44(%esi), %eax
	movl      %ecx, %ebp
	movl      %ecx, 28(%esp)
	testl     %eax, %eax
	je        .L1313
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      PyDict_GetItem@PLT
	movl      28(%esp), %ecx
	testl     %eax, %eax
	movl      %eax, %edx
	je        .L1343
	addl      $1, (%eax)
	movl      (%ebp), %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%ebp)
	movl      %edx, %ebp
	je        .L1344
.L1313:
	movl      72(%esp), %eax
	movl      %edi, 8(%esp)
	movl      %ebp, 4(%esp)
	movl      %eax, 12(%esp)
	leal      .LC60@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      Py_BuildValue@PLT
	testl     %eax, %eax
	movl      %eax, %edi
	je        .L1345
	movl      48(%esi), %eax
	leal      .LC61@GOTOFF(%ebx), %edx
	movl      $1, 24(%esi)
	movl      8(%eax), %ebp
	movl      $2, %eax
	movl      $645, (%esp)
	call      getcode
	leal      8(%esi), %edx
	movl      %edx, 4(%esp)
	movl      %edi, (%esp)
	movl      %ebp, %edx
	call      call_with_frame.isra.9
	movl      $0, 24(%esi)
	movl      (%edi), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%edi)
	je        .L1346
.L1323:
	testl     %eax, %eax
	je        .L1347
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	je        .L1348
.L1304:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L1342:
	movl      %eax, (%esp)
	movl      %esi, %eax
	call      call_character_handler
	movl      $0, 40(%esi)
	testl     %eax, %eax
	jns       .L1310
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L1348:
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L1346:
	movl      4(%edi), %edx
	movl      %eax, 28(%esp)
	movl      %edi, (%esp)
	call      *24(%edx)
	movl      28(%esp), %eax
	jmp       .L1323
	.p2align 4,,7
	.p2align 3
.L1344:
	movl      4(%ecx), %eax
	movl      %ecx, (%esp)
	call      *24(%eax)
	jmp       .L1313
.L1343:
	movl      %ebp, 8(%esp)
	movl      %ebp, 4(%esp)
	movl      44(%esi), %eax
	movl      %eax, (%esp)
	call      PyDict_SetItem@PLT
	testl     %eax, %eax
	je        .L1313
	.p2align 4,,7
	.p2align 3
.L1315:
	xorl      %ebp, %ebp
	jmp       .L1313
	.p2align 4,,7
	.p2align 3
.L1345:
	movl      handler_info@GOTOFF(%ebx), %edi
	testl     %edi, %edi
	je        .L1329
	leal      handler_info@GOTOFF+4(%ebx), %edi
	xorl      %ebp, %ebp
	jmp       .L1322
	.p2align 4,,7
	.p2align 3
.L1319:
	movl      $0, 4(%esp)
	movl      8(%esi), %edx
	addl      $4, %ebp
	movl      %edi, 28(%esp)
	movl      %edx, (%esp)
	call      *(%edi)
	movl      28(%esp), %eax
	addl      $20, %edi
	movl      16(%eax), %ecx
	testl     %ecx, %ecx
	je        .L1329
.L1322:
	movl      48(%esi), %edx
	addl      %ebp, %edx
	movl      (%edx), %eax
	movl      $0, (%edx)
	testl     %eax, %eax
	je        .L1319
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	jne       .L1319
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
	jmp       .L1319
	.p2align 4,,7
	.p2align 3
.L1329:
	leal      error_external_entity_ref_handler@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      8(%esi), %eax
	movl      %eax, (%esp)
	call      XML_SetExternalEntityRefHandler@PLT
	jmp       .L1304
.L1347:
	movl      handler_info@GOTOFF(%ebx), %edx
	testl     %edx, %edx
	je        .L1329
	leal      handler_info@GOTOFF+4(%ebx), %edi
	xorl      %ebp, %ebp
	jmp       .L1330
	.p2align 4,,7
	.p2align 3
.L1327:
	movl      $0, 4(%esp)
	movl      8(%esi), %edx
	addl      $4, %ebp
	movl      %edi, 28(%esp)
	movl      %edx, (%esp)
	call      *(%edi)
	movl      28(%esp), %eax
	addl      $20, %edi
	movl      16(%eax), %eax
	testl     %eax, %eax
	je        .L1329
.L1330:
	movl      48(%esi), %edx
	addl      %ebp, %edx
	movl      (%edx), %eax
	movl      $0, (%edx)
	testl     %eax, %eax
	je        .L1327
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	jne       .L1327
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
	jmp       .L1327
	.cfi_endproc
	.size	my_ProcessingInstructionHandler, .-my_ProcessingInstructionHandler
# ----------------------
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
