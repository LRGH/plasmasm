	.file	"codecsX.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC01:
	.section	.rodata.str1.4,"aMS",@progbits,1
.LC04:
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.section       .rodata
	.align 32
	.local	hexdigits
	.type	hexdigits, @object
hexdigits:
	.long	3211312
	.long	3342386
	.long	3473460
	.long	3604534
	.long	3735608
	.long	6422625
	.long	6553699
	.long	6684773
	.size	hexdigits, 32
# ----------------------
	.section       .rodata.str1.4,"aMS",@progbits,1
.LC00000000.str1.4:
	.string	"can't initialize codec error registry"
# ----------------------
.LC00000026.str1.4:
	.value	0
	.align 4
.LC00000028.str1.4:
	.string	"can't initialize codec registry"
# ----------------------
	.data
	.local	methods.8510
	.type	methods.8510, @object
methods.8510:
	.long	.LC00000028.str1.1
	.long	.LC0000002F.str1.1
	.long	strict_errors
	.long	8
	.long	0
	.long	.LC0000003D.str1.1
	.long	.LC00000044.str1.1
	.long	ignore_errors
	.long	8
	.long	0
	.long	.LC00000052.str1.1
	.long	.LC0000005A.str1.1
	.long	replace_errors
	.long	8
	.long	0
	.long	.LC00000069.str1.1
	.long	.LC0000007B.str1.1
	.long	xmlcharrefreplace_errors
	.long	8
	.long	0
	.long	.LC00000094.str1.1
	.long	.LC000000A5.str1.1
	.long	backslashreplace_errors
	.long	8
	.long	0
	.size	methods.8510, 100
# ----------------------
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC00000000.str1.1:
	.string	"(Oi)"
.LC00000005.str1.1:
	.string	"encodings"
.LC0000000F.str1.1:
	.string	"handler must be callable"
.LC00000028.str1.1:
	.string	"strict"
.LC0000002F.str1.1:
	.string	"strict_errors"
.LC0000003D.str1.1:
	.string	"ignore"
.LC00000044.str1.1:
	.string	"ignore_errors"
.LC00000052.str1.1:
	.string	"replace"
.LC0000005A.str1.1:
	.string	"replace_errors"
.LC00000069.str1.1:
	.string	"xmlcharrefreplace"
.LC0000007B.str1.1:
	.string	"xmlcharrefreplace_errors"
.LC00000094.str1.1:
	.string	"backslashreplace"
.LC000000A5.str1.1:
	.string	"backslashreplace_errors"
# ----------------------
	.text
	.local	replace_errors
	.type	replace_errors, @function
replace_errors:
	movl      8(%esp), %eax
	movl      %eax, 4(%esp)
	jmp       PyCodec_ReplaceErrors
	.size	replace_errors, .-replace_errors
# ----------------------
.L0000000D:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.local	ignore_errors
	.type	ignore_errors, @function
ignore_errors:
	movl      8(%esp), %eax
	movl      %eax, 4(%esp)
	jmp       PyCodec_IgnoreErrors
	.size	ignore_errors, .-ignore_errors
# ----------------------
.L0000001D:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.local	strict_errors
	.type	strict_errors, @function
strict_errors:
	movl      8(%esp), %eax
	movl      %eax, 4(%esp)
	jmp       PyCodec_StrictErrors
	.size	strict_errors, .-strict_errors
# ----------------------
.L0000002D:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.local	backslashreplace_errors
	.type	backslashreplace_errors, @function
backslashreplace_errors:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $52, %esp
	movl      76(%esp), %ebx
	pushl     PyExc_UnicodeEncodeError
	pushl     %ebx
	call      PyObject_IsInstance
.L00000047:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L000001F0
.L00000052:
	subl      $8, %esp
	leal      32(%esp), %eax
	pushl     %eax
	pushl     %ebx
	call      PyUnicodeEncodeError_GetStart
.L00000060:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L00000078
.L00000067:
	xorl      %eax, %eax
.L00000069:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000071:
	.p2align 4,,10
	.p2align 3
.L00000078:
	subl      $8, %esp
	leal      36(%esp), %eax
	pushl     %eax
	pushl     %ebx
	call      PyUnicodeEncodeError_GetEnd
.L00000086:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L00000067
.L0000008D:
	subl      $12, %esp
	pushl     %ebx
	call      PyUnicodeEncodeError_GetObject
.L00000096:
	movl      %eax, 24(%esp)
	addl      $16, %esp
	testl     %eax, %eax
	je        .L00000067
.L000000A1:
	movl      12(%eax), %edi
	movl      24(%esp), %eax
	leal      (%edi,%eax,2), %edx
	movl      28(%esp), %eax
	leal      (%edi,%eax,2), %ebx
	xorl      %eax, %eax
	cmpl      %ebx, %edx
	jae       .L000000D6
.L000000B8:
	.p2align 4
.L000000C0:
	leal      6(%eax), %ecx
	addl      $4, %eax
	cmpw      $255, (%edx)
	jbe       .L000000CF
.L000000CD:
	movl      %ecx, %eax
.L000000CF:
	addl      $2, %edx
	cmpl      %ebx, %edx
	jb        .L000000C0
.L000000D6:
	subl      $8, %esp
	pushl     %eax
	pushl     $0
	call      PyUnicodeUCS2_FromUnicode
.L000000E1:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L00000067
.L000000EE:
	movl      24(%esp), %eax
	movl      12(%ebp), %ecx
	leal      (%edi,%eax,2), %ebx
	movl      28(%esp), %eax
	leal      (%edi,%eax,2), %edx
	cmpl      %edx, %ebx
	jb        .L0000017A
.L00000103:
	jmp       .L00000198
.L00000108:
	.p2align 4
.L00000110:
	movl      %eax, %edx
	movl      %eax, %esi
	shrw      $12, %dx
	shrw      $8, %si
	movzwl    %dx, %edx
	andl      $15, %esi
	movzwl    hexdigits(%edx,%edx), %edx
	movzwl    hexdigits(%esi,%esi), %esi
	movw      %dx, 4(%ecx)
	leal      8(%ecx), %edx
	movw      %si, 6(%ecx)
	movl      $117, %esi
.L00000142:
	movw      %si, 2(%ecx)
	movl      %eax, %ecx
	andl      $15, %eax
	shrw      $4, %cx
	movzwl    hexdigits(%eax,%eax), %eax
	addl      $2, %ebx
	andl      $15, %ecx
	movzwl    hexdigits(%ecx,%ecx), %ecx
	movw      %ax, 2(%edx)
	movw      %cx, (%edx)
	movl      28(%esp), %eax
	leal      4(%edx), %ecx
	leal      (%edi,%eax,2), %edx
	cmpl      %edx, %ebx
	jae       .L00000198
.L0000017A:
	movzwl    (%ebx), %eax
	movl      $92, %edx
	movw      %dx, (%ecx)
	cmpw      $255, %ax
	ja        .L00000110
.L0000018B:
	leal      4(%ecx), %edx
	movl      $120, %esi
	jmp       .L00000142
.L00000195:
	.p2align 4,,10
	.p2align 3
.L00000198:
	subl      $4, %esp
	pushl     %eax
	pushl     %ebp
	pushl     $.LC00000000.str1.1
	call      Py_BuildValue
.L000001A7:
	movl      (%ebp), %edi
	addl      $16, %esp
	leal      -1(%edi), %edx
	testl     %edx, %edx
	movl      %edx, (%ebp)
	je        .L00000208
.L000001B7:
	movl      8(%esp), %edi
	movl      (%edi), %esi
	leal      -1(%esi), %edx
	movl      %esi, 12(%esp)
	testl     %edx, %edx
	movl      %edx, (%edi)
	jne       .L00000069
.L000001CE:
	movl      %eax, 12(%esp)
	subl      $12, %esp
	movl      20(%esp), %eax
	movl      4(%eax), %edx
	pushl     %eax
	call      *24(%edx)
.L000001E0:
	addl      $16, %esp
	movl      12(%esp), %eax
	jmp       .L00000069
.L000001EC:
	.p2align 4,,10
	.p2align 3
.L000001F0:
	subl      $12, %esp
	pushl     %ebx
	call      wrong_exception_type
.L000001F9:
	addl      $16, %esp
	jmp       .L00000067
.L00000201:
	.p2align 4,,10
	.p2align 3
.L00000208:
	movl      %eax, 12(%esp)
	movl      4(%ebp), %edx
	subl      $12, %esp
	pushl     %ebp
	call      *24(%edx)
.L00000216:
	addl      $16, %esp
	movl      12(%esp), %eax
	jmp       .L000001B7
	.size	backslashreplace_errors, .-backslashreplace_errors
# ----------------------
.L0000021F:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	PyCodec_RegisterError
	.type	PyCodec_RegisterError, @function
PyCodec_RegisterError:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      _PyThreadState_Current, %eax
	movl      52(%esp), %esi
	movl      4(%eax), %ebx
	movl      20(%ebx), %edi
	testl     %edi, %edi
	je        .L00000270
.L0000023A:
	subl      $12, %esp
	pushl     %esi
	call      PyCallable_Check
.L00000243:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L00000378
.L0000024E:
	subl      $4, %esp
	pushl     %esi
	pushl     56(%esp)
	pushl     28(%ebx)
	call      PyDict_SetItemString
.L0000025E:
	addl      $16, %esp
.L00000261:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000269:
	.p2align 4
.L00000270:
	subl      $12, %esp
	movl      $methods.8510+4, %edi
	pushl     $0
	call      PyList_New
.L0000027F:
	movl      %eax, 20(%ebx)
	call      PyDict_New
.L00000287:
	movl      %eax, 24(%ebx)
	call      PyDict_New
.L0000028F:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, 28(%ebx)
	je        .L000002E2
.L00000299:
	subl      $4, %esp
	pushl     $0
	pushl     $0
	pushl     %edi
	call      PyCFunction_NewEx
.L000002A6:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L000003AD
.L000002B3:
	subl      $8, %esp
	pushl     %ebp
	pushl     -4(%edi)
	call      PyCodec_RegisterError
.L000002BF:
	movl      (%ebp), %ecx
	addl      $16, %esp
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%ebp)
	je        .L00000358
.L000002D3:
	testl     %eax, %eax
	jne       .L00000340
.L000002D7:
	addl      $20, %edi
	cmpl      $methods.8510+104, %edi
	jne       .L00000299
.L000002E2:
	movl      20(%ebx), %ecx
	testl     %ecx, %ecx
	je        .L00000398
.L000002ED:
	movl      24(%ebx), %edx
	testl     %edx, %edx
	je        .L00000398
.L000002F8:
	movl      28(%ebx), %eax
	testl     %eax, %eax
	je        .L00000398
.L00000303:
	pushl     $0
	pushl     $0
	pushl     $0
	pushl     $.LC00000005.str1.1
	call      PyImport_ImportModuleEx
.L00000313:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L000003C2
.L0000031E:
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	jne       .L0000023A
.L0000032D:
	subl      $12, %esp
	movl      4(%eax), %edx
	pushl     %eax
	call      *24(%edx)
.L00000337:
	addl      $16, %esp
	jmp       .L0000023A
.L0000033F:
	.p2align 4,,10
	.p2align 3
.L00000340:
	subl      $12, %esp
	pushl     $.LC00000000.str1.4
	call      Py_FatalError
.L0000034D:
	addl      $16, %esp
	jmp       .L000002D7
.L00000352:
	.p2align 4,,10
	.p2align 3
.L00000358:
	movl      %eax, 12(%esp)
	movl      4(%ebp), %edx
	subl      $12, %esp
	pushl     %ebp
	call      *24(%edx)
.L00000366:
	addl      $16, %esp
	movl      12(%esp), %eax
	jmp       .L000002D3
.L00000372:
	.p2align 4,,10
	.p2align 3
.L00000378:
	subl      $8, %esp
	pushl     $.LC0000000F.str1.1
	pushl     PyExc_TypeError
	call      PyErr_SetString
.L0000038B:
	addl      $16, %esp
	movl      $-1, %eax
	jmp       .L00000261
.L00000398:
	subl      $12, %esp
	pushl     $.LC00000028.str1.4
	call      Py_FatalError
.L000003A5:
	addl      $16, %esp
	jmp       .L00000303
.L000003AD:
	subl      $12, %esp
	pushl     $.LC00000000.str1.4
	call      Py_FatalError
.L000003BA:
	addl      $16, %esp
	jmp       .L000002B3
.L000003C2:
	subl      $12, %esp
	pushl     PyExc_ImportError
	call      PyErr_ExceptionMatches
.L000003D0:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L000003E1
.L000003D7:
	call      PyErr_Clear
.L000003DC:
	jmp       .L0000023A
.L000003E1:
	orl       $-1, %eax
	jmp       .L00000261
	.size	PyCodec_RegisterError, .-PyCodec_RegisterError
# ----------------------
.L000003E9:
	.p2align 4
# ----------------------
	.globl	PyCodec_XMLCharRefReplaceErrors
	.type	PyCodec_XMLCharRefReplaceErrors, @function
PyCodec_XMLCharRefReplaceErrors:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $68, %esp
	movl      88(%esp), %ebx
	pushl     PyExc_UnicodeEncodeError
	pushl     %ebx
	call      PyObject_IsInstance
.L00000407:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L000006E0
.L00000412:
	subl      $8, %esp
	leal      48(%esp), %eax
	pushl     %eax
	pushl     %ebx
	call      PyUnicodeEncodeError_GetStart
.L00000420:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L00000438
.L00000427:
	xorl      %eax, %eax
.L00000429:
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000431:
	.p2align 4,,10
	.p2align 3
.L00000438:
	subl      $8, %esp
	leal      52(%esp), %eax
	pushl     %eax
	pushl     %ebx
	call      PyUnicodeEncodeError_GetEnd
.L00000446:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L00000427
.L0000044D:
	subl      $12, %esp
	pushl     %ebx
	call      PyUnicodeEncodeError_GetObject
.L00000456:
	movl      %eax, 44(%esp)
	addl      $16, %esp
	testl     %eax, %eax
	je        .L00000427
.L00000461:
	movl      12(%eax), %eax
	movl      44(%esp), %edx
	xorl      %ecx, %ecx
	movl      %eax, %edi
	movl      %eax, 20(%esp)
	movl      40(%esp), %eax
	leal      (%edi,%edx,2), %ebx
	leal      (%edi,%eax,2), %eax
	cmpl      %ebx, %eax
	jb        .L0000048A
.L0000047E:
	jmp       .L000004A7
.L00000480:
	addl      $4, %ecx
.L00000483:
	addl      $2, %eax
	cmpl      %ebx, %eax
	jae       .L000004A7
.L0000048A:
	movzwl    (%eax), %edx
	cmpw      $9, %dx
	jbe       .L00000480
.L00000493:
	cmpw      $99, %dx
	ja        .L00000630
.L0000049D:
	addl      $2, %eax
	addl      $5, %ecx
	cmpl      %ebx, %eax
	jb        .L0000048A
.L000004A7:
	subl      $8, %esp
	pushl     %ecx
	pushl     $0
	call      PyUnicodeUCS2_FromUnicode
.L000004B2:
	movl      %eax, 40(%esp)
	addl      $16, %esp
	testl     %eax, %eax
	je        .L00000730
.L000004C1:
	movl      40(%esp), %eax
	movl      20(%esp), %esi
	leal      (%esi,%eax,2), %edi
	movl      24(%esp), %eax
	movl      12(%eax), %ecx
	movl      44(%esp), %eax
	leal      (%esi,%eax,2), %edx
	cmpl      %edx, %edi
	jb        .L000005FD
.L000004E2:
	jmp       .L00000680
.L000004E7:
	.p2align 4
.L000004F0:
	cmpw      $99, %dx
	jbe       .L00000658
.L000004FA:
	cmpw      $999, %dx
	jbe       .L00000670
.L00000505:
	cmpw      $10000, %dx
	sbbl      %esi, %esi
	addl      $4, %esi
	cmpw      $10000, %dx
	sbbl      %ebx, %ebx
	andl      $-9000, %ebx
	addl      $10000, %ebx
.L00000522:
	cltd      
	idivl     %ebx
	addl      $48, %eax
	movl      %edx, 12(%esp)
	movw      %ax, 4(%ecx)
	movl      $1717986919, %eax
	imull     %ebx
	movl      12(%esp), %eax
	sarl      $31, %ebx
	sarl      $2, %edx
	movl      %edx, %ebp
	cltd      
	subl      %ebx, %ebp
	idivl     %ebp
	addl      $48, %eax
	movl      %edx, 16(%esp)
	movw      %ax, 6(%ecx)
	movl      $1717986919, %eax
	imull     %ebp
	sarl      $31, %ebp
	movl      %esi, %eax
	sarl      $2, %edx
	movl      %edx, %ebx
	subl      %ebp, %ebx
	subl      $1, %eax
	movl      %eax, 12(%esp)
	je        .L000005CB
.L0000056F:
	movl      16(%esp), %eax
	cltd      
	idivl     %ebx
	addl      $48, %eax
	movl      %edx, %ebp
	movw      %ax, 8(%ecx)
	movl      $1717986919, %eax
	imull     %ebx
	sarl      $31, %ebx
	sarl      $2, %edx
	subl      %ebx, %edx
	cmpl      $1, 12(%esp)
	movl      %edx, %ebx
	jle       .L000005CB
.L00000597:
	movzwl    %bp, %eax
	cltd      
	idivl     %ebx
	addl      $48, %eax
	movl      %edx, %ebp
	movw      %ax, 10(%ecx)
	movl      $1717986919, %eax
	imull     %ebx
	movl      %ebx, %eax
	sarl      $31, %eax
	sarl      $2, %edx
	movl      %edx, %ebx
	subl      %eax, %ebx
	cmpl      $4, %esi
	jne       .L000005CB
.L000005BE:
	movzwl    %bp, %eax
	cltd      
	idivl     %ebx
	addl      $48, %eax
	movw      %ax, 12(%ecx)
.L000005CB:
	movl      %esi, %eax
	movl      $59, %edx
	addl      $2, %edi
	sarl      $31, %eax
	notl      %eax
	andl      %esi, %eax
	movl      20(%esp), %esi
	leal      2(%eax,%eax), %eax
	addl      8(%esp), %eax
	movw      %dx, (%eax)
	leal      2(%eax), %ecx
	movl      44(%esp), %eax
	leal      (%esi,%eax,2), %edx
	cmpl      %edx, %edi
	jae       .L00000680
.L000005FD:
	leal      4(%ecx), %esi
	movl      $38, %ebx
	movzwl    (%edi), %eax
	movw      %bx, (%ecx)
	movl      %esi, 8(%esp)
	movl      $35, %esi
	movw      %si, 2(%ecx)
	movzwl    (%edi), %edx
	cmpw      $9, %dx
	ja        .L000004F0
.L00000625:
	addl      $48, %eax
	xorl      %esi, %esi
	movw      %ax, 4(%ecx)
	jmp       .L000005CB
.L00000630:
	cmpw      $999, %dx
	ja        .L00000640
.L00000637:
	addl      $6, %ecx
	jmp       .L00000483
.L0000063F:
	.p2align 4,,10
	.p2align 3
.L00000640:
	cmpw      $9999, %dx
	ja        .L00000700
.L0000064B:
	addl      $7, %ecx
	jmp       .L00000483
.L00000653:
	.p2align 4,,10
	.p2align 3
.L00000658:
	movl      $1, %esi
	movl      $10, %ebx
	jmp       .L00000522
.L00000667:
	.p2align 4
.L00000670:
	movl      $2, %esi
	movl      $100, %ebx
	jmp       .L00000522
.L0000067F:
	.p2align 4,,10
	.p2align 3
.L00000680:
	subl      $4, %esp
	pushl     %eax
	movl      32(%esp), %edi
	pushl     %edi
	pushl     $.LC00000000.str1.1
	call      Py_BuildValue
.L00000693:
	movl      (%edi), %esi
	leal      -1(%esi), %edx
	movl      %esi, 24(%esp)
	addl      $16, %esp
	testl     %edx, %edx
	movl      %edx, (%edi)
	je        .L00000710
.L000006A5:
	movl      28(%esp), %edi
	movl      (%edi), %esi
	leal      -1(%esi), %edx
	movl      %esi, 8(%esp)
	testl     %edx, %edx
	movl      %edx, (%edi)
	jne       .L00000429
.L000006BC:
	movl      %eax, 8(%esp)
	subl      $12, %esp
	movl      40(%esp), %eax
	movl      4(%eax), %edx
	pushl     %eax
	call      *24(%edx)
.L000006CE:
	addl      $16, %esp
	movl      8(%esp), %eax
	jmp       .L00000429
.L000006DA:
	.p2align 4,,10
	.p2align 3
.L000006E0:
	subl      $12, %esp
	pushl     %ebx
	call      wrong_exception_type
.L000006E9:
	addl      $16, %esp
	xorl      %eax, %eax
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000006F6:
	.p2align 4
.L00000700:
	addl      $8, %ecx
	jmp       .L00000483
.L00000708:
	.p2align 4
.L00000710:
	movl      %eax, 8(%esp)
	subl      $12, %esp
	movl      36(%esp), %eax
	movl      4(%eax), %edx
	pushl     %eax
	call      *24(%edx)
.L00000722:
	addl      $16, %esp
	movl      8(%esp), %eax
	jmp       .L000006A5
.L0000072E:
	.p2align 4,,10
	.p2align 3
.L00000730:
	movl      28(%esp), %edi
	movl      (%edi), %eax
	movl      %eax, 8(%esp)
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%edi)
	jne       .L00000427
.L00000747:
	subl      $12, %esp
	movl      40(%esp), %edi
	movl      4(%edi), %eax
	pushl     %edi
	call      *24(%eax)
.L00000755:
	addl      $16, %esp
	jmp       .L00000427
	.size	PyCodec_XMLCharRefReplaceErrors, .-PyCodec_XMLCharRefReplaceErrors
# ----------------------
.L0000075D:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.local	xmlcharrefreplace_errors
	.type	xmlcharrefreplace_errors, @function
xmlcharrefreplace_errors:
	movl      8(%esp), %eax
	movl      %eax, 4(%esp)
	jmp       PyCodec_XMLCharRefReplaceErrors
	.size	xmlcharrefreplace_errors, .-xmlcharrefreplace_errors
# ----------------------
.L0000076D:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	PyCodec_BackslashReplaceErrors
	.type	PyCodec_BackslashReplaceErrors, @function
PyCodec_BackslashReplaceErrors:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $52, %esp
	movl      72(%esp), %ebx
	pushl     PyExc_UnicodeEncodeError
	pushl     %ebx
	call      PyObject_IsInstance
.L00000787:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L00000930
.L00000792:
	subl      $8, %esp
	leal      32(%esp), %eax
	pushl     %eax
	pushl     %ebx
	call      PyUnicodeEncodeError_GetStart
.L000007A0:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L000007B8
.L000007A7:
	xorl      %eax, %eax
.L000007A9:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000007B1:
	.p2align 4,,10
	.p2align 3
.L000007B8:
	subl      $8, %esp
	leal      36(%esp), %eax
	pushl     %eax
	pushl     %ebx
	call      PyUnicodeEncodeError_GetEnd
.L000007C6:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L000007A7
.L000007CD:
	subl      $12, %esp
	pushl     %ebx
	call      PyUnicodeEncodeError_GetObject
.L000007D6:
	movl      %eax, 24(%esp)
	addl      $16, %esp
	testl     %eax, %eax
	je        .L000007A7
.L000007E1:
	movl      12(%eax), %edi
	movl      24(%esp), %eax
	leal      (%edi,%eax,2), %edx
	movl      28(%esp), %eax
	leal      (%edi,%eax,2), %ebx
	xorl      %eax, %eax
	cmpl      %ebx, %edx
	jae       .L00000816
.L000007F8:
	.p2align 4
.L00000800:
	leal      6(%eax), %ecx
	addl      $4, %eax
	cmpw      $255, (%edx)
	jbe       .L0000080F
.L0000080D:
	movl      %ecx, %eax
.L0000080F:
	addl      $2, %edx
	cmpl      %ebx, %edx
	jb        .L00000800
.L00000816:
	subl      $8, %esp
	pushl     %eax
	pushl     $0
	call      PyUnicodeUCS2_FromUnicode
.L00000821:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L000007A7
.L0000082E:
	movl      24(%esp), %eax
	movl      12(%ebp), %ecx
	leal      (%edi,%eax,2), %ebx
	movl      28(%esp), %eax
	leal      (%edi,%eax,2), %edx
	cmpl      %edx, %ebx
	jb        .L000008BA
.L00000843:
	jmp       .L000008D8
.L00000848:
	.p2align 4
.L00000850:
	movl      %eax, %edx
	movl      %eax, %esi
	shrw      $12, %dx
	shrw      $8, %si
	movzwl    %dx, %edx
	andl      $15, %esi
	movzwl    hexdigits(%edx,%edx), %edx
	movzwl    hexdigits(%esi,%esi), %esi
	movw      %dx, 4(%ecx)
	leal      8(%ecx), %edx
	movw      %si, 6(%ecx)
	movl      $117, %esi
.L00000882:
	movw      %si, 2(%ecx)
	movl      %eax, %ecx
	andl      $15, %eax
	shrw      $4, %cx
	movzwl    hexdigits(%eax,%eax), %eax
	addl      $2, %ebx
	andl      $15, %ecx
	movzwl    hexdigits(%ecx,%ecx), %ecx
	movw      %ax, 2(%edx)
	movw      %cx, (%edx)
	movl      28(%esp), %eax
	leal      4(%edx), %ecx
	leal      (%edi,%eax,2), %edx
	cmpl      %edx, %ebx
	jae       .L000008D8
.L000008BA:
	movzwl    (%ebx), %eax
	movl      $92, %edx
	movw      %dx, (%ecx)
	cmpw      $255, %ax
	ja        .L00000850
.L000008CB:
	leal      4(%ecx), %edx
	movl      $120, %esi
	jmp       .L00000882
.L000008D5:
	.p2align 4,,10
	.p2align 3
.L000008D8:
	subl      $4, %esp
	pushl     %eax
	pushl     %ebp
	pushl     $.LC00000000.str1.1
	call      Py_BuildValue
.L000008E7:
	movl      (%ebp), %edi
	addl      $16, %esp
	leal      -1(%edi), %edx
	testl     %edx, %edx
	movl      %edx, (%ebp)
	je        .L00000948
.L000008F7:
	movl      8(%esp), %edi
	movl      (%edi), %esi
	leal      -1(%esi), %edx
	movl      %esi, 12(%esp)
	testl     %edx, %edx
	movl      %edx, (%edi)
	jne       .L000007A9
.L0000090E:
	movl      %eax, 12(%esp)
	subl      $12, %esp
	movl      20(%esp), %eax
	movl      4(%eax), %edx
	pushl     %eax
	call      *24(%edx)
.L00000920:
	addl      $16, %esp
	movl      12(%esp), %eax
	jmp       .L000007A9
.L0000092C:
	.p2align 4,,10
	.p2align 3
.L00000930:
	subl      $12, %esp
	pushl     %ebx
	call      wrong_exception_type
.L00000939:
	addl      $16, %esp
	jmp       .L000007A7
.L00000941:
	.p2align 4,,10
	.p2align 3
.L00000948:
	movl      %eax, 12(%esp)
	movl      4(%ebp), %edx
	subl      $12, %esp
	pushl     %ebp
	call      *24(%edx)
.L00000956:
	addl      $16, %esp
	movl      12(%esp), %eax
	jmp       .L000008F7
	.size	PyCodec_BackslashReplaceErrors, .-PyCodec_BackslashReplaceErrors
# ----------------------
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
