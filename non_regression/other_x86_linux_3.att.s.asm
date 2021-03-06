	.file	"codecsX.c"
	.section       .text.unlikely,"ax",@progbits
.LCOLDB0:
.Ltext_cold0:
.LCOLDE0:
.LCOLDB1:
.LCOLDE1:
.LCOLDB2:
.LCOLDE2:
.LCOLDB4:
.LCOLDE4:
.LCOLDB9:
.LCOLDE9:
.LCOLDB10:
.LCOLDE10:
.LCOLDB11:
.LCOLDE11:
.LCOLDB12:
.LCOLDE12:
.Letext_cold0:
# ----------------------
	.text
.LHOTB0:
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	replace_errors
	.type	replace_errors, @function
replace_errors:
	.cfi_startproc
	movl      8(%esp), %eax
	movl      %eax, 4(%esp)
	jmp       PyCodec_ReplaceErrors
.LHOTE0:
.LHOTB1:
	.cfi_endproc
	.size	replace_errors, .-replace_errors
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	ignore_errors
	.type	ignore_errors, @function
ignore_errors:
	.cfi_startproc
	movl      8(%esp), %eax
	movl      %eax, 4(%esp)
	jmp       PyCodec_IgnoreErrors
.LHOTE1:
.LHOTB2:
	.cfi_endproc
	.size	ignore_errors, .-ignore_errors
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	strict_errors
	.type	strict_errors, @function
strict_errors:
	.cfi_startproc
	movl      8(%esp), %eax
	movl      %eax, 4(%esp)
	jmp       PyCodec_StrictErrors
.LHOTE2:
.LHOTB4:
	.cfi_endproc
	.size	strict_errors, .-strict_errors
# ----------------------
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"(Oi)"
.LC7:
	.string	"encodings"
.LC8:
	.string	"handler must be callable"
.LC13:
	.string	"strict"
.LC14:
	.string	"strict_errors"
.LC15:
	.string	"ignore"
.LC16:
	.string	"ignore_errors"
.LC17:
	.string	"replace"
.LC18:
	.string	"replace_errors"
.LC19:
	.string	"xmlcharrefreplace"
.LC20:
	.string	"xmlcharrefreplace_errors"
.LC21:
	.string	"backslashreplace"
.LC22:
	.string	"backslashreplace_errors"
# ----------------------
	.text
	.p2align 4,,15
# ----------------------
	.local	backslashreplace_errors
	.type	backslashreplace_errors, @function
backslashreplace_errors:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $52, %esp
	movl      76(%esp), %ebx
	pushl     PyExc_UnicodeEncodeError
	pushl     %ebx
	call      PyObject_IsInstance
	addl      $16, %esp
	testl     %eax, %eax
	je        .L5
	subl      $8, %esp
	leal      32(%esp), %eax
	pushl     %eax
	pushl     %ebx
	call      PyUnicodeEncodeError_GetStart
	addl      $16, %esp
	testl     %eax, %eax
	je        .L32
.L30:
	xorl      %eax, %eax
.L18:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,10
	.p2align 3
.L32:
	subl      $8, %esp
	leal      36(%esp), %eax
	pushl     %eax
	pushl     %ebx
	call      PyUnicodeEncodeError_GetEnd
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L30
	subl      $12, %esp
	pushl     %ebx
	call      PyUnicodeEncodeError_GetObject
	movl      %eax, 24(%esp)
	addl      $16, %esp
	testl     %eax, %eax
	je        .L30
	movl      12(%eax), %edi
	movl      24(%esp), %eax
	leal      (%edi,%eax,2), %edx
	movl      28(%esp), %eax
	leal      (%edi,%eax,2), %ebx
	xorl      %eax, %eax
	cmpl      %ebx, %edx
	jnb       .L9
	.p2align 4,,10
	.p2align 3
.L12:
	leal      6(%eax), %ecx
	addl      $4, %eax
	cmpw      $255, (%edx)
	jbe       .L11
	movl      %ecx, %eax
.L11:
	addl      $2, %edx
	cmpl      %ebx, %edx
	jb        .L12
.L9:
	subl      $8, %esp
	pushl     %eax
	pushl     $0
	call      PyUnicodeUCS2_FromUnicode
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L30
	movl      24(%esp), %eax
	movl      12(%ebp), %ecx
	leal      (%edi,%eax,2), %ebx
	movl      28(%esp), %eax
	leal      (%edi,%eax,2), %edx
	cmpl      %edx, %ebx
	jb        .L16
	jmp       .L13
	.p2align 4,,10
	.p2align 3
.L33:
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
.L15:
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
	jnb       .L13
.L16:
	movzwl    (%ebx), %eax
	movl      $92, %edx
	movw      %dx, (%ecx)
	cmpw      $255, %ax
	ja        .L33
	leal      4(%ecx), %edx
	movl      $120, %esi
	jmp       .L15
	.p2align 4,,10
	.p2align 3
.L13:
	subl      $4, %esp
	pushl     %eax
	pushl     %ebp
	pushl     $.LC3
	call      Py_BuildValue
	movl      (%ebp), %edi
	addl      $16, %esp
	leal      -1(%edi), %edx
	testl     %edx, %edx
	movl      %edx, (%ebp)
	je        .L34
.L17:
	movl      8(%esp), %edi
	movl      (%edi), %esi
	leal      -1(%esi), %edx
	movl      %esi, 12(%esp)
	testl     %edx, %edx
	movl      %edx, (%edi)
	jne       .L18
	movl      %eax, 12(%esp)
	subl      $12, %esp
	movl      20(%esp), %eax
	movl      4(%eax), %edx
	pushl     %eax
	call      *24(%edx)
	addl      $16, %esp
	movl      12(%esp), %eax
	jmp       .L18
	.p2align 4,,10
	.p2align 3
.L5:
	subl      $12, %esp
	pushl     %ebx
	call      wrong_exception_type
	addl      $16, %esp
	jmp       .L30
	.p2align 4,,10
	.p2align 3
.L34:
	movl      %eax, 12(%esp)
	movl      4(%ebp), %edx
	subl      $12, %esp
	pushl     %ebp
	call      *24(%edx)
	addl      $16, %esp
	movl      12(%esp), %eax
	jmp       .L17
.LHOTE4:
.LHOTB9:
	.cfi_endproc
	.size	backslashreplace_errors, .-backslashreplace_errors
# ----------------------
	.section       .rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC5:
	.string	"can't initialize codec error registry"
	.align 4
.LC6:
	.string	"can't initialize codec registry"
# ----------------------
	.text
	.p2align 4,,15
# ----------------------
	.globl	PyCodec_RegisterError
	.type	PyCodec_RegisterError, @function
PyCodec_RegisterError:
	.cfi_startproc
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
	je        .L58
.L36:
	subl      $12, %esp
	pushl     %esi
	call      PyCallable_Check
	addl      $16, %esp
	testl     %eax, %eax
	je        .L59
	subl      $4, %esp
	pushl     %esi
	pushl     56(%esp)
	pushl     28(%ebx)
	call      PyDict_SetItemString
	addl      $16, %esp
.L47:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,10
	.p2align 3
.L58:
	subl      $12, %esp
	movl      $methods.8510+4, %edi
	pushl     $0
	call      PyList_New
	movl      %eax, 20(%ebx)
	call      PyDict_New
	movl      %eax, 24(%ebx)
	call      PyDict_New
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, 28(%ebx)
	je        .L44
.L53:
	subl      $4, %esp
	pushl     $0
	pushl     $0
	pushl     %edi
	call      PyCFunction_NewEx
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L60
.L40:
	subl      $8, %esp
	pushl     %ebp
	pushl     -4(%edi)
	call      PyCodec_RegisterError
	movl      (%ebp), %ecx
	addl      $16, %esp
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%ebp)
	je        .L61
.L41:
	testl     %eax, %eax
	jne       .L62
.L42:
	addl      $20, %edi
	cmpl      $methods.8510+104, %edi
	jne       .L53
.L44:
	movl      20(%ebx), %ecx
	testl     %ecx, %ecx
	je        .L38
	movl      24(%ebx), %edx
	testl     %edx, %edx
	je        .L38
	movl      28(%ebx), %eax
	testl     %eax, %eax
	je        .L38
.L45:
	pushl     $0
	pushl     $0
	pushl     $0
	pushl     $.LC7
	call      PyImport_ImportModuleEx
	addl      $16, %esp
	testl     %eax, %eax
	je        .L63
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	jne       .L36
	subl      $12, %esp
	movl      4(%eax), %edx
	pushl     %eax
	call      *24(%edx)
	addl      $16, %esp
	jmp       .L36
	.p2align 4,,10
	.p2align 3
.L62:
	subl      $12, %esp
	pushl     $.LC5
	call      Py_FatalError
	addl      $16, %esp
	jmp       .L42
	.p2align 4,,10
	.p2align 3
.L61:
	movl      %eax, 12(%esp)
	movl      4(%ebp), %edx
	subl      $12, %esp
	pushl     %ebp
	call      *24(%edx)
	addl      $16, %esp
	movl      12(%esp), %eax
	jmp       .L41
	.p2align 4,,10
	.p2align 3
.L59:
	subl      $8, %esp
	pushl     $.LC8
	pushl     PyExc_TypeError
	call      PyErr_SetString
	addl      $16, %esp
	movl      $-1, %eax
	jmp       .L47
.L38:
	subl      $12, %esp
	pushl     $.LC6
	call      Py_FatalError
	addl      $16, %esp
	jmp       .L45
.L60:
	subl      $12, %esp
	pushl     $.LC5
	call      Py_FatalError
	addl      $16, %esp
	jmp       .L40
.L63:
	subl      $12, %esp
	pushl     PyExc_ImportError
	call      PyErr_ExceptionMatches
	addl      $16, %esp
	testl     %eax, %eax
	je        .L50
	call      PyErr_Clear
	jmp       .L36
.L50:
	orl       $-1, %eax
	jmp       .L47
.LHOTE9:
.LHOTB10:
	.cfi_endproc
	.size	PyCodec_RegisterError, .-PyCodec_RegisterError
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	PyCodec_XMLCharRefReplaceErrors
	.type	PyCodec_XMLCharRefReplaceErrors, @function
PyCodec_XMLCharRefReplaceErrors:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $68, %esp
	movl      88(%esp), %ebx
	pushl     PyExc_UnicodeEncodeError
	pushl     %ebx
	call      PyObject_IsInstance
	addl      $16, %esp
	testl     %eax, %eax
	je        .L65
	subl      $8, %esp
	leal      48(%esp), %eax
	pushl     %eax
	pushl     %ebx
	call      PyUnicodeEncodeError_GetStart
	addl      $16, %esp
	testl     %eax, %eax
	je        .L99
.L98:
	xorl      %eax, %eax
.L93:
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,10
	.p2align 3
.L99:
	subl      $8, %esp
	leal      52(%esp), %eax
	pushl     %eax
	pushl     %ebx
	call      PyUnicodeEncodeError_GetEnd
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L98
	subl      $12, %esp
	pushl     %ebx
	call      PyUnicodeEncodeError_GetObject
	movl      %eax, 44(%esp)
	addl      $16, %esp
	testl     %eax, %eax
	je        .L98
	movl      12(%eax), %eax
	movl      44(%esp), %edx
	xorl      %ecx, %ecx
	movl      %eax, %edi
	movl      %eax, 20(%esp)
	movl      40(%esp), %eax
	leal      (%edi,%edx,2), %ebx
	leal      (%edi,%eax,2), %eax
	cmpl      %ebx, %eax
	jb        .L75
	jmp       .L69
	.p2align 4,,10
	.p2align 3
.L100:
	addl      $4, %ecx
.L71:
	addl      $2, %eax
	cmpl      %ebx, %eax
	jnb       .L69
.L75:
	movzwl    (%eax), %edx
	cmpw      $9, %dx
	jbe       .L100
	cmpw      $99, %dx
	ja        .L72
	addl      $2, %eax
	addl      $5, %ecx
	cmpl      %ebx, %eax
	jb        .L75
.L69:
	subl      $8, %esp
	pushl     %ecx
	pushl     $0
	call      PyUnicodeUCS2_FromUnicode
	movl      %eax, 40(%esp)
	addl      $16, %esp
	testl     %eax, %eax
	je        .L101
	movl      40(%esp), %eax
	movl      20(%esp), %esi
	leal      (%esi,%eax,2), %edi
	movl      24(%esp), %eax
	movl      12(%eax), %ecx
	movl      44(%esp), %eax
	leal      (%esi,%eax,2), %edx
	cmpl      %edx, %edi
	jb        .L80
	jmp       .L77
	.p2align 4,,10
	.p2align 3
.L102:
	cmpw      $99, %dx
	jbe       .L87
	cmpw      $999, %dx
	jbe       .L88
	cmpw      $10000, %dx
	sbbl      %esi, %esi
	addl      $4, %esi
	cmpw      $10000, %dx
	sbbl      %ebx, %ebx
	andl      $-9000, %ebx
	addl      $10000, %ebx
.L79:
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
	je        .L83
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
	jle       .L83
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
	jne       .L83
	movzwl    %bp, %eax
	cltd      
	idivl     %ebx
	addl      $48, %eax
	movw      %ax, 12(%ecx)
.L83:
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
	jnb       .L77
.L80:
	leal      4(%ecx), %esi
	movl      $38, %ebx
	movzwl    (%edi), %eax
	movw      %bx, (%ecx)
	movl      %esi, 8(%esp)
	movl      $35, %esi
	movw      %si, 2(%ecx)
	movzwl    (%edi), %edx
	cmpw      $9, %dx
	ja        .L102
	addl      $48, %eax
	xorl      %esi, %esi
	movw      %ax, 4(%ecx)
	jmp       .L83
	.p2align 4,,10
	.p2align 3
.L72:
	cmpw      $999, %dx
	ja        .L73
	addl      $6, %ecx
	jmp       .L71
	.p2align 4,,10
	.p2align 3
.L73:
	cmpw      $9999, %dx
	ja        .L74
	addl      $7, %ecx
	jmp       .L71
	.p2align 4,,10
	.p2align 3
.L87:
	movl      $1, %esi
	movl      $10, %ebx
	jmp       .L79
	.p2align 4,,10
	.p2align 3
.L88:
	movl      $2, %esi
	movl      $100, %ebx
	jmp       .L79
	.p2align 4,,10
	.p2align 3
.L77:
	subl      $4, %esp
	pushl     %eax
	movl      32(%esp), %edi
	pushl     %edi
	pushl     $.LC3
	call      Py_BuildValue
	movl      (%edi), %esi
	leal      -1(%esi), %edx
	movl      %esi, 24(%esp)
	addl      $16, %esp
	testl     %edx, %edx
	movl      %edx, (%edi)
	je        .L103
.L81:
	movl      28(%esp), %edi
	movl      (%edi), %esi
	leal      -1(%esi), %edx
	movl      %esi, 8(%esp)
	testl     %edx, %edx
	movl      %edx, (%edi)
	jne       .L93
	movl      %eax, 8(%esp)
	subl      $12, %esp
	movl      40(%esp), %eax
	movl      4(%eax), %edx
	pushl     %eax
	call      *24(%edx)
	addl      $16, %esp
	movl      8(%esp), %eax
	jmp       .L93
	.p2align 4,,10
	.p2align 3
.L65:
	subl      $12, %esp
	pushl     %ebx
	call      wrong_exception_type
	addl      $16, %esp
	xorl      %eax, %eax
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,10
	.p2align 3
.L74:
	addl      $8, %ecx
	jmp       .L71
	.p2align 4,,10
	.p2align 3
.L103:
	movl      %eax, 8(%esp)
	subl      $12, %esp
	movl      36(%esp), %eax
	movl      4(%eax), %edx
	pushl     %eax
	call      *24(%edx)
	addl      $16, %esp
	movl      8(%esp), %eax
	jmp       .L81
	.p2align 4,,10
	.p2align 3
.L101:
	movl      28(%esp), %edi
	movl      (%edi), %eax
	movl      %eax, 8(%esp)
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%edi)
	jne       .L98
	subl      $12, %esp
	movl      40(%esp), %edi
	movl      4(%edi), %eax
	pushl     %edi
	call      *24(%eax)
	addl      $16, %esp
	jmp       .L98
.LHOTE10:
.LHOTB11:
	.cfi_endproc
	.size	PyCodec_XMLCharRefReplaceErrors, .-PyCodec_XMLCharRefReplaceErrors
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	xmlcharrefreplace_errors
	.type	xmlcharrefreplace_errors, @function
xmlcharrefreplace_errors:
	.cfi_startproc
	movl      8(%esp), %eax
	movl      %eax, 4(%esp)
	jmp       PyCodec_XMLCharRefReplaceErrors
.LHOTE11:
.LHOTB12:
	.cfi_endproc
	.size	xmlcharrefreplace_errors, .-xmlcharrefreplace_errors
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	PyCodec_BackslashReplaceErrors
	.type	PyCodec_BackslashReplaceErrors, @function
PyCodec_BackslashReplaceErrors:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $52, %esp
	movl      72(%esp), %ebx
	pushl     PyExc_UnicodeEncodeError
	pushl     %ebx
	call      PyObject_IsInstance
	addl      $16, %esp
	testl     %eax, %eax
	je        .L106
	subl      $8, %esp
	leal      32(%esp), %eax
	pushl     %eax
	pushl     %ebx
	call      PyUnicodeEncodeError_GetStart
	addl      $16, %esp
	testl     %eax, %eax
	je        .L132
.L131:
	xorl      %eax, %eax
.L119:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,10
	.p2align 3
.L132:
	subl      $8, %esp
	leal      36(%esp), %eax
	pushl     %eax
	pushl     %ebx
	call      PyUnicodeEncodeError_GetEnd
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L131
	subl      $12, %esp
	pushl     %ebx
	call      PyUnicodeEncodeError_GetObject
	movl      %eax, 24(%esp)
	addl      $16, %esp
	testl     %eax, %eax
	je        .L131
	movl      12(%eax), %edi
	movl      24(%esp), %eax
	leal      (%edi,%eax,2), %edx
	movl      28(%esp), %eax
	leal      (%edi,%eax,2), %ebx
	xorl      %eax, %eax
	cmpl      %ebx, %edx
	jnb       .L110
	.p2align 4,,10
	.p2align 3
.L113:
	leal      6(%eax), %ecx
	addl      $4, %eax
	cmpw      $255, (%edx)
	jbe       .L112
	movl      %ecx, %eax
.L112:
	addl      $2, %edx
	cmpl      %ebx, %edx
	jb        .L113
.L110:
	subl      $8, %esp
	pushl     %eax
	pushl     $0
	call      PyUnicodeUCS2_FromUnicode
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L131
	movl      24(%esp), %eax
	movl      12(%ebp), %ecx
	leal      (%edi,%eax,2), %ebx
	movl      28(%esp), %eax
	leal      (%edi,%eax,2), %edx
	cmpl      %edx, %ebx
	jb        .L117
	jmp       .L114
	.p2align 4,,10
	.p2align 3
.L133:
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
.L116:
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
	jnb       .L114
.L117:
	movzwl    (%ebx), %eax
	movl      $92, %edx
	movw      %dx, (%ecx)
	cmpw      $255, %ax
	ja        .L133
	leal      4(%ecx), %edx
	movl      $120, %esi
	jmp       .L116
	.p2align 4,,10
	.p2align 3
.L114:
	subl      $4, %esp
	pushl     %eax
	pushl     %ebp
	pushl     $.LC3
	call      Py_BuildValue
	movl      (%ebp), %edi
	addl      $16, %esp
	leal      -1(%edi), %edx
	testl     %edx, %edx
	movl      %edx, (%ebp)
	je        .L134
.L118:
	movl      8(%esp), %edi
	movl      (%edi), %esi
	leal      -1(%esi), %edx
	movl      %esi, 12(%esp)
	testl     %edx, %edx
	movl      %edx, (%edi)
	jne       .L119
	movl      %eax, 12(%esp)
	subl      $12, %esp
	movl      20(%esp), %eax
	movl      4(%eax), %edx
	pushl     %eax
	call      *24(%edx)
	addl      $16, %esp
	movl      12(%esp), %eax
	jmp       .L119
	.p2align 4,,10
	.p2align 3
.L106:
	subl      $12, %esp
	pushl     %ebx
	call      wrong_exception_type
	addl      $16, %esp
	jmp       .L131
	.p2align 4,,10
	.p2align 3
.L134:
	movl      %eax, 12(%esp)
	movl      4(%ebp), %edx
	subl      $12, %esp
	pushl     %ebp
	call      *24(%edx)
	addl      $16, %esp
	movl      12(%esp), %eax
	jmp       .L118
.LHOTE12:
	.cfi_endproc
	.size	PyCodec_BackslashReplaceErrors, .-PyCodec_BackslashReplaceErrors
# ----------------------
	.data
	.align 64
	.local	methods.8510
	.type	methods.8510, @object
methods.8510:
	.long	.LC13
	.long	.LC14
	.long	strict_errors
	.long	8
	.zero	4
	.long	.LC15
	.long	.LC16
	.long	ignore_errors
	.long	8
	.zero	4
	.long	.LC17
	.long	.LC18
	.long	replace_errors
	.long	8
	.zero	4
	.long	.LC19
	.long	.LC20
	.long	xmlcharrefreplace_errors
	.long	8
	.zero	4
	.long	.LC21
	.long	.LC22
	.long	backslashreplace_errors
	.long	8
	.zero	4
	.size	methods.8510, 100
# ----------------------
	.section       .rodata
	.align 32
	.local	hexdigits
	.type	hexdigits, @object
hexdigits:
	.value	48
	.value	49
	.value	50
	.value	51
	.value	52
	.value	53
	.value	54
	.value	55
	.value	56
	.value	57
	.value	97
	.value	98
	.value	99
	.value	100
	.value	101
	.value	102
	.size	hexdigits, 32
# ----------------------
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
