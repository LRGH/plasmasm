	.file	"(extract)pyexpat.c"
	.section       .rodata.str1.1,"a",@progbits
.LC00000000.str1.1:
	.string	"NiNNNNN"
.LC00000008.str1.1:
	.string	"EntityDecl"
# ----------------------
	.text
	.local	my_EntityDeclHandler
	.type	my_EntityDeclHandler, @function
my_EntityDeclHandler:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $76, %esp
	movl      96(%esp), %esi
	call      __x86.get_pc_thunk.bx
.L00000010:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      48(%esi), %eax
	movl      68(%eax), %ecx
	testl     %ecx, %ecx
	je        .L0000032F
.L00000024:
	movl      32(%esi), %edx
	testl     %edx, %edx
	je        .L00000036
.L0000002B:
	movl      40(%esi), %eax
	testl     %eax, %eax
	jne       .L00000338
.L00000036:
	movl      12(%esi), %edx
	leal      conv_string_to_utf8@GOTOFF(%ebx), %eax
	testl     %edx, %edx
	leal      conv_string_to_unicode@GOTOFF(%ebx), %edx
	cmovne    %edx, %eax
	movl      128(%esp), %edx
	movl      %edx, (%esp)
	call      *%eax
.L00000056:
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L00000390
.L00000060:
	movl      44(%esi), %eax
	movl      %ebp, %edi
	testl     %eax, %eax
	je        .L00000095
.L00000069:
	movl      %ebp, 4(%esp)
	movl      %eax, (%esp)
	call      PyDict_GetItem@PLT
.L00000075:
	testl     %eax, %eax
	movl      %eax, %edx
	je        .L0000036E
.L0000007F:
	addl      $1, (%eax)
	movl      %edx, %edi
	movl      (%ebp), %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%ebp)
	je        .L000003F0
.L00000095:
	movl      12(%esi), %ebp
	leal      conv_string_to_utf8@GOTOFF(%ebx), %edx
	leal      conv_string_to_unicode@GOTOFF(%ebx), %eax
	testl     %ebp, %ebp
	cmove     %edx, %eax
	movl      124(%esp), %edx
	movl      %edx, (%esp)
	call      *%eax
.L000000B2:
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L00000450
.L000000BC:
	movl      44(%esi), %eax
	movl      %ebp, 44(%esp)
	testl     %eax, %eax
	je        .L000000F7
.L000000C7:
	movl      %ebp, 4(%esp)
	movl      %eax, (%esp)
	call      PyDict_GetItem@PLT
.L000000D3:
	testl     %eax, %eax
	movl      %eax, %edx
	je        .L0000042D
.L000000DD:
	movl      44(%esp), %ecx
	addl      $1, (%eax)
	movl      %edx, 44(%esp)
	movl      (%ecx), %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%ecx)
	je        .L000003E0
.L000000F7:
	movl      12(%esi), %ecx
	leal      conv_string_to_utf8@GOTOFF(%ebx), %edx
	leal      conv_string_to_unicode@GOTOFF(%ebx), %eax
	testl     %ecx, %ecx
	cmove     %edx, %eax
	movl      120(%esp), %edx
	movl      %edx, (%esp)
	call      *%eax
.L00000114:
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L00000420
.L0000011E:
	movl      44(%esi), %eax
	movl      %ebp, 48(%esp)
	testl     %eax, %eax
	je        .L00000159
.L00000129:
	movl      %ebp, 4(%esp)
	movl      %eax, (%esp)
	call      PyDict_GetItem@PLT
.L00000135:
	testl     %eax, %eax
	movl      %eax, %edx
	je        .L000003FE
.L0000013F:
	movl      48(%esp), %ecx
	addl      $1, (%eax)
	movl      %edx, 48(%esp)
	movl      (%ecx), %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%ecx)
	je        .L000003D0
.L00000159:
	movl      12(%esi), %edx
	leal      conv_string_to_unicode@GOTOFF(%ebx), %eax
	testl     %edx, %edx
	leal      conv_string_to_utf8@GOTOFF(%ebx), %edx
	cmove     %edx, %eax
	movl      116(%esp), %edx
	movl      %edx, (%esp)
	call      *%eax
.L00000176:
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L000004A0
.L00000180:
	movl      44(%esi), %eax
	movl      %ebp, 52(%esp)
	testl     %eax, %eax
	je        .L000001BB
.L0000018B:
	movl      %ebp, 4(%esp)
	movl      %eax, (%esp)
	call      PyDict_GetItem@PLT
.L00000197:
	testl     %eax, %eax
	movl      %eax, %edx
	je        .L0000047F
.L000001A1:
	movl      52(%esp), %ecx
	addl      $1, (%eax)
	movl      %edx, 52(%esp)
	movl      (%ecx), %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%ecx)
	je        .L000003B0
.L000001BB:
	movl      12(%esi), %edx
	testl     %edx, %edx
	je        .L000001F8
.L000001C2:
	movl      108(%esp), %eax
	testl     %eax, %eax
	je        .L00000360
.L000001CE:
	leal      .LC7@GOTOFF(%ebx), %eax
	movl      %eax, 8(%esp)
	movl      112(%esp), %eax
	movl      %eax, 4(%esp)
	movl      108(%esp), %eax
	movl      %eax, (%esp)
	call      PyUnicodeUCS2_DecodeUTF8@PLT
.L000001EC:
	movl      12(%esi), %edx
	jmp       .L0000021B
.L000001F1:
	.p2align 3
.L000001F8:
	movl      108(%esp), %ebp
	testl     %ebp, %ebp
	je        .L00000360
.L00000204:
	movl      112(%esp), %eax
	movl      %eax, 4(%esp)
	movl      108(%esp), %eax
	movl      %eax, (%esp)
	call      PyString_FromStringAndSize@PLT
.L00000218:
	movl      12(%esi), %edx
.L0000021B:
	testl     %edx, %edx
	movl      %eax, 56(%esp)
	leal      conv_string_to_utf8@GOTOFF(%ebx), %edx
	leal      conv_string_to_unicode@GOTOFF(%ebx), %eax
	cmove     %edx, %eax
	movl      100(%esp), %edx
	movl      %edx, (%esp)
	call      *%eax
.L00000239:
	testl     %eax, %eax
	movl      %eax, %ecx
	je        .L00000478
.L00000243:
	movl      44(%esi), %eax
	movl      %ecx, %ebp
	movl      %ecx, 60(%esp)
	testl     %eax, %eax
	je        .L00000280
.L00000250:
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      PyDict_GetItem@PLT
.L0000025C:
	movl      60(%esp), %ecx
	testl     %eax, %eax
	movl      %eax, %edx
	je        .L0000045D
.L0000026A:
	addl      $1, (%eax)
	movl      (%ebp), %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%ebp)
	movl      %edx, %ebp
	je        .L000003C0
.L00000280:
	movl      44(%esp), %eax
	movl      %edi, 28(%esp)
	movl      %ebp, 4(%esp)
	movl      %eax, 24(%esp)
	movl      48(%esp), %eax
	movl      %eax, 20(%esp)
	movl      52(%esp), %eax
	movl      %eax, 16(%esp)
	movl      56(%esp), %eax
	movl      %eax, 12(%esp)
	movl      104(%esp), %eax
	movl      %eax, 8(%esp)
	leal      .LC00000000.str1.1@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      Py_BuildValue@PLT
.L000002BE:
	testl     %eax, %eax
	movl      %eax, %edi
	je        .L000004B0
.L000002C8:
	movl      48(%esi), %eax
	leal      .LC00000008.str1.1@GOTOFF(%ebx), %edx
	movl      $1, 24(%esi)
	movl      68(%eax), %ebp
	movl      $17, %eax
	movl      $694, (%esp)
	call      getcode
.L000002EC:
	leal      8(%esi), %edx
	movl      %edx, 4(%esp)
	movl      %edi, (%esp)
	movl      %ebp, %edx
	call      call_with_frame.isra.9
.L000002FD:
	movl      $0, 24(%esi)
	movl      (%edi), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%edi)
	je        .L00000398
.L00000313:
	testl     %eax, %eax
	je        .L00000532
.L0000031B:
	movl      (%eax), %edi
	leal      -1(%edi), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	jne       .L0000032F
.L00000326:
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
.L0000032F:
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000337:
	.p2align 3
.L00000338:
	movl      %eax, (%esp)
	movl      %esi, %eax
	call      call_character_handler
.L00000342:
	movl      $0, 40(%esi)
	testl     %eax, %eax
	jns       .L00000036
.L00000351:
	addl      $76, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000359:
	.p2align 4
.L00000360:
	movl      _Py_NoneStruct@GOT(%ebx), %eax
	addl      $1, (%eax)
	jmp       .L0000021B
.L0000036E:
	movl      %ebp, 8(%esp)
	movl      %ebp, 4(%esp)
	movl      44(%esi), %eax
	movl      %eax, (%esp)
	call      PyDict_SetItem@PLT
.L00000381:
	testl     %eax, %eax
	je        .L00000095
.L00000389:
	.p2align 4
.L00000390:
	xorl      %edi, %edi
	jmp       .L00000095
.L00000397:
	.p2align 3
.L00000398:
	movl      4(%edi), %edx
	movl      %eax, 44(%esp)
	movl      %edi, (%esp)
	call      *24(%edx)
.L000003A5:
	movl      44(%esp), %eax
	jmp       .L00000313
.L000003AE:
	.p2align 3
.L000003B0:
	movl      4(%ebp), %eax
	movl      %ebp, (%esp)
	call      *24(%eax)
.L000003B9:
	jmp       .L000001BB
.L000003BE:
	.p2align 3
.L000003C0:
	movl      4(%ecx), %eax
	movl      %ecx, (%esp)
	call      *24(%eax)
.L000003C9:
	jmp       .L00000280
.L000003CE:
	.p2align 3
.L000003D0:
	movl      4(%ebp), %eax
	movl      %ebp, (%esp)
	call      *24(%eax)
.L000003D9:
	jmp       .L00000159
.L000003DE:
	.p2align 3
.L000003E0:
	movl      4(%ebp), %eax
	movl      %ebp, (%esp)
	call      *24(%eax)
.L000003E9:
	jmp       .L000000F7
.L000003EE:
	.p2align 3
.L000003F0:
	movl      4(%ebp), %eax
	movl      %ebp, (%esp)
	call      *24(%eax)
.L000003F9:
	jmp       .L00000095
.L000003FE:
	movl      48(%esp), %eax
	movl      %eax, 8(%esp)
	movl      %eax, 4(%esp)
	movl      44(%esi), %eax
	movl      %eax, (%esp)
	call      PyDict_SetItem@PLT
.L00000415:
	testl     %eax, %eax
	je        .L00000159
.L0000041D:
	.p2align 3
.L00000420:
	movl      $0, 48(%esp)
	jmp       .L00000159
.L0000042D:
	movl      44(%esp), %eax
	movl      %eax, 8(%esp)
	movl      %eax, 4(%esp)
	movl      44(%esi), %eax
	movl      %eax, (%esp)
	call      PyDict_SetItem@PLT
.L00000444:
	testl     %eax, %eax
	je        .L000000F7
.L0000044C:
	.p2align 3
.L00000450:
	movl      $0, 44(%esp)
	jmp       .L000000F7
.L0000045D:
	movl      %ebp, 8(%esp)
	movl      %ebp, 4(%esp)
	movl      44(%esi), %eax
	movl      %eax, (%esp)
	call      PyDict_SetItem@PLT
.L00000470:
	testl     %eax, %eax
	je        .L00000280
.L00000478:
	xorl      %ebp, %ebp
	jmp       .L00000280
.L0000047F:
	movl      52(%esp), %eax
	movl      %eax, 8(%esp)
	movl      %eax, 4(%esp)
	movl      44(%esi), %eax
	movl      %eax, (%esp)
	call      PyDict_SetItem@PLT
.L00000496:
	testl     %eax, %eax
	je        .L000001BB
.L0000049E:
	.p2align 3
.L000004A0:
	movl      $0, 52(%esp)
	jmp       .L000001BB
.L000004AD:
	.p2align 3
.L000004B0:
	movl      handler_info@GOTOFF(%ebx), %edi
	testl     %edi, %edi
	je        .L00000518
.L000004BA:
	leal      handler_info@GOTOFF+4(%ebx), %edi
	xorl      %ebp, %ebp
	jmp       .L000004ED
.L000004C4:
	.p2align 3
.L000004C8:
	movl      $0, 4(%esp)
	movl      8(%esi), %edx
	addl      $4, %ebp
	movl      %edi, 44(%esp)
	movl      %edx, (%esp)
	call      *(%edi)
.L000004DF:
	movl      44(%esp), %eax
	addl      $20, %edi
	movl      16(%eax), %ecx
	testl     %ecx, %ecx
	je        .L00000518
.L000004ED:
	movl      48(%esi), %edx
	addl      %ebp, %edx
	movl      (%edx), %eax
	movl      $0, (%edx)
	testl     %eax, %eax
	je        .L000004C8
.L000004FE:
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	jne       .L000004C8
.L00000509:
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
.L00000512:
	jmp       .L000004C8
.L00000514:
	.p2align 3
.L00000518:
	leal      error_external_entity_ref_handler@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      8(%esi), %eax
	movl      %eax, (%esp)
	call      XML_SetExternalEntityRefHandler@PLT
.L0000052D:
	jmp       .L0000032F
.L00000532:
	movl      handler_info@GOTOFF(%ebx), %edx
	testl     %edx, %edx
	je        .L00000518
.L0000053C:
	leal      handler_info@GOTOFF+4(%ebx), %edi
	xorl      %ebp, %ebp
	jmp       .L0000056D
.L00000546:
	.p2align 3
.L00000548:
	movl      $0, 4(%esp)
	movl      8(%esi), %edx
	addl      $4, %ebp
	movl      %edi, 44(%esp)
	movl      %edx, (%esp)
	call      *(%edi)
.L0000055F:
	movl      44(%esp), %eax
	addl      $20, %edi
	movl      16(%eax), %eax
	testl     %eax, %eax
	je        .L00000518
.L0000056D:
	movl      48(%esi), %edx
	addl      %ebp, %edx
	movl      (%edx), %eax
	movl      $0, (%edx)
	testl     %eax, %eax
	je        .L00000548
.L0000057E:
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	jne       .L00000548
.L00000589:
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
.L00000592:
	jmp       .L00000548
	.size	my_EntityDeclHandler, .-my_EntityDeclHandler
# ----------------------
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
