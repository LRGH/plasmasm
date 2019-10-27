	.file	"bufferobject.c"
	.section       .rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC0:
	.string	"single-segment buffer object expected"
	.align 4
.LC3:
	.string	"<%s buffer ptr %p, size %d at %p>"
	.align 4
.LC4:
	.string	"<%s buffer for %p, size %d, offset %d at %p>"
	.align 4
.LC8:
	.string	"offset must be zero or positive"
	.align 4
.LC10:
	.string	"accessing non-existent buffer segment"
	.align 4
.LC13:
	.string	"buffer assignment index out of range"
	.align 4
.LC14:
	.string	"right operand must be a single byte"
	.align 4
.LC15:
	.string	"right operand length must match slice length"
	.align 4
.LC16:
	.string	"writable buffers are not hashable"
# ----------------------
	.text
	.p2align 4,,15
# ----------------------
	.local	buffer_repeat
	.type	buffer_repeat, @function
buffer_repeat:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	movl      80(%esp), %ebx
	movl      84(%esp), %edi
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L22
	movl      4(%eax), %edx
	movl      80(%edx), %esi
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%esi)
	cmpl      $1, %eax
	jne       .L23
	movl      24(%ebx), %edx
	movl      4(%esi), %eax
	testl     %edx, %edx
	leal      44(%esp), %edx
	cmovne    (%esi), %eax
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%ebx), %edx
	movl      %edx, (%esp)
	call      *%eax
	testl     %eax, %eax
	js        .L5
	movl      20(%ebx), %edx
	movl      %eax, %ecx
	movl      16(%ebx), %ebp
	cmpl      %edx, %eax
	cmovle    %eax, %edx
	addl      %edx, 44(%esp)
	cmpl      $-1, %ebp
	cmove     %eax, %ebp
	subl      %edx, %ecx
	leal      (%ebp,%edx), %ebx
	cmpl      %ebx, %eax
	cmovl     %ecx, %ebp
.L3:
	xorl      %esi, %esi
	testl     %edi, %edi
	cmovns    %edi, %esi
	movl      %esi, %eax
	imull     %ebp, %eax
	movl      $0, (%esp)
	movl      %eax, 4(%esp)
	call      PyString_FromStringAndSize
	testl     %eax, %eax
	movl      %eax, 28(%esp)
	je        .L5
	addl      $20, %eax
	testl     %esi, %esi
	movl      %eax, 24(%esp)
	je        .L8
	movl      %esi, %ebx
	movl      %eax, %edi
	.p2align 4,,7
	.p2align 3
.L10:
	movl      44(%esp), %eax
	movl      %edi, (%esp)
	addl      %ebp, %edi
	movl      %ebp, 8(%esp)
	movl      %eax, 4(%esp)
	call      memcpy
	subl      $1, %ebx
	jne       .L10
	imull     %ebp, %esi
	addl      %esi, 24(%esp)
	movl      24(%esp), %eax
.L8:
	movb      $0, (%eax)
	movl      28(%esp), %eax
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L23:
	movl      PyExc_TypeError, %eax
	movl      $.LC0, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L5:
	addl      $60, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L22:
	movl      12(%ebx), %eax
	movl      16(%ebx), %ebp
	movl      %eax, 44(%esp)
	jmp       .L3
	.cfi_endproc
	.size	buffer_repeat, .-buffer_repeat
# ----------------------
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"read-only"
.LC2:
	.string	"read-write"
.LC5:
	.string	"buffer()"
.LC6:
	.string	"O|ii:buffer"
.LC7:
	.string	"buffer object expected"
.LC9:
	.string	"size must be zero or positive"
.LC11:
	.string	"buffer is read-only"
.LC12:
	.string	"buffer index out of range"
.LC17:
	.string	"buffer"
# ----------------------
	.text
	.p2align 4,,15
# ----------------------
	.local	buffer_repr
	.type	buffer_repr, @function
buffer_repr:
	.cfi_startproc
	pushl     %ebx
	movl      $.LC1, %edx
	subl      $40, %esp
	movl      48(%esp), %eax
	movl      24(%eax), %ecx
	testl     %ecx, %ecx
	movl      $.LC2, %ecx
	cmove     %ecx, %edx
	movl      8(%eax), %ecx
	testl     %ecx, %ecx
	je        .L30
	movl      %eax, 20(%esp)
	movl      20(%eax), %ebx
	movl      %ebx, 16(%esp)
	movl      16(%eax), %eax
	movl      %ecx, 8(%esp)
	movl      %edx, 4(%esp)
	movl      $.LC4, (%esp)
	movl      %eax, 12(%esp)
	call      PyString_FromFormat
	addl      $40, %esp
	popl      %ebx
	ret       
	.p2align 4,,7
	.p2align 3
.L30:
	movl      %eax, 16(%esp)
	movl      16(%eax), %ecx
	movl      %ecx, 12(%esp)
	movl      12(%eax), %eax
	movl      %edx, 4(%esp)
	movl      $.LC3, (%esp)
	movl      %eax, 8(%esp)
	call      PyString_FromFormat
	addl      $40, %esp
	popl      %ebx
	ret       
	.cfi_endproc
	.size	buffer_repr, .-buffer_repr
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_dealloc
	.type	buffer_dealloc, @function
buffer_dealloc:
	.cfi_startproc
	pushl     %ebx
	subl      $24, %esp
	movl      32(%esp), %ebx
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L33
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	jne       .L33
	movl      8(%ebx), %eax
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
.L33:
	movl      %ebx, 32(%esp)
	addl      $24, %esp
	popl      %ebx
	jmp       PyObject_Free
	.cfi_endproc
	.size	buffer_dealloc, .-buffer_dealloc
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_new
	.type	buffer_new, @function
buffer_new:
	.cfi_startproc
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $48, %esp
	movl      72(%esp), %eax
	movl      $.LC5, (%esp)
	movl      $0, 40(%esp)
	movl      $-1, 44(%esp)
	movl      %eax, 4(%esp)
	call      _PyArg_NoKeywords
	testl     %eax, %eax
	je        .L67
	leal      44(%esp), %eax
	movl      %eax, 16(%esp)
	leal      40(%esp), %eax
	movl      %eax, 12(%esp)
	leal      36(%esp), %eax
	movl      %eax, 8(%esp)
	movl      68(%esp), %eax
	movl      $.LC6, 4(%esp)
	movl      %eax, (%esp)
	call      PyArg_ParseTuple
	testl     %eax, %eax
	je        .L67
	movl      36(%esp), %ecx
	movl      44(%esp), %edi
	movl      40(%esp), %ebx
	movl      4(%ecx), %edx
	movl      80(%edx), %eax
	testl     %eax, %eax
	je        .L40
	movl      (%eax), %esi
	testl     %esi, %esi
	je        .L40
	movl      8(%eax), %eax
	testl     %eax, %eax
	je        .L40
	testl     %ebx, %ebx
	js        .L68
	cmpl      $PyBuffer_Type, %edx
	je        .L69
.L45:
	cmpl      $-1, %edi
	jl        .L51
	movl      %ecx, %esi
	.p2align 4,,7
	.p2align 3
.L50:
	movl      PyBuffer_Type+16, %eax
	movl      %eax, (%esp)
	call      PyObject_Malloc
	movl      $PyBuffer_Type, 4(%esp)
	movl      %eax, (%esp)
	call      PyObject_Init
	testl     %eax, %eax
	je        .L67
	addl      $1, (%esi)
	movl      %esi, 8(%eax)
	movl      $0, 12(%eax)
	movl      %edi, 16(%eax)
	movl      %ebx, 20(%eax)
	movl      $1, 24(%eax)
	movl      $-1, 28(%eax)
	addl      $48, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.p2align 4,,7
	.p2align 3
.L69:
	movl      8(%ecx), %esi
	testl     %esi, %esi
	je        .L45
	movl      16(%ecx), %eax
	cmpl      $-1, %eax
	je        .L46
	xorl      %edx, %edx
	subl      %ebx, %eax
	cmovns    %eax, %edx
	cmpl      %edx, %edi
	jg        .L47
	cmpl      $-1, %edi
	jne       .L46
.L47:
	addl      20(%ecx), %ebx
	movl      %edx, %edi
.L48:
	testl     %ebx, %ebx
	jns       .L50
.L68:
	movl      PyExc_ValueError, %eax
	movl      $.LC8, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
	.p2align 4,,7
	.p2align 3
.L67:
	xorl      %eax, %eax
.L65:
	addl      $48, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.p2align 4,,7
	.p2align 3
.L46:
	addl      20(%ecx), %ebx
	cmpl      $-1, %edi
	jge       .L48
.L51:
	movl      PyExc_ValueError, %eax
	movl      $.LC9, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
	xorl      %eax, %eax
	jmp       .L65
	.p2align 4,,7
	.p2align 3
.L40:
	movl      PyExc_TypeError, %eax
	movl      $.LC7, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
	xorl      %eax, %eax
	jmp       .L65
	.cfi_endproc
	.size	buffer_new, .-buffer_new
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_length
	.type	buffer_length, @function
buffer_length:
	.cfi_startproc
	pushl     %esi
	pushl     %ebx
	subl      $36, %esp
	movl      48(%esp), %ebx
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L81
	movl      4(%eax), %edx
	movl      80(%edx), %esi
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%esi)
	cmpl      $1, %eax
	jne       .L82
	movl      24(%ebx), %edx
	movl      4(%esi), %eax
	testl     %edx, %edx
	leal      28(%esp), %edx
	cmovne    (%esi), %eax
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%ebx), %edx
	movl      %edx, (%esp)
	call      *%eax
	testl     %eax, %eax
	js        .L74
	movl      20(%ebx), %ecx
	movl      %eax, %esi
	movl      16(%ebx), %edx
	cmpl      %ecx, %eax
	cmovle    %eax, %ecx
	cmpl      $-1, %edx
	cmove     %eax, %edx
	subl      %ecx, %esi
	leal      (%edx,%ecx), %ebx
	cmpl      %ebx, %eax
	cmovl     %esi, %edx
.L72:
	addl      $36, %esp
	movl      %edx, %eax
	popl      %ebx
	popl      %esi
	ret       
	.p2align 4,,7
	.p2align 3
.L82:
	movl      PyExc_TypeError, %eax
	movl      $.LC0, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L74:
	addl      $36, %esp
	movl      $-1, %eax
	popl      %ebx
	popl      %esi
	ret       
	.p2align 4,,7
	.p2align 3
.L81:
	movl      16(%ebx), %edx
	jmp       .L72
	.cfi_endproc
	.size	buffer_length, .-buffer_length
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_getsegcount
	.type	buffer_getsegcount, @function
buffer_getsegcount:
	.cfi_startproc
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $32, %esp
	movl      48(%esp), %ebx
	movl      52(%esp), %esi
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L95
	movl      4(%eax), %edx
	movl      80(%edx), %edi
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%edi)
	cmpl      $1, %eax
	jne       .L96
	movl      24(%ebx), %edx
	movl      4(%edi), %eax
	testl     %edx, %edx
	leal      28(%esp), %edx
	cmovne    (%edi), %eax
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%ebx), %edx
	movl      %edx, (%esp)
	call      *%eax
	testl     %eax, %eax
	js        .L87
	movl      20(%ebx), %ecx
	movl      %eax, %edi
	movl      16(%ebx), %edx
	cmpl      %ecx, %eax
	cmovle    %eax, %ecx
	addl      %ecx, 28(%esp)
	cmpl      $-1, %edx
	cmove     %eax, %edx
	subl      %ecx, %edi
	leal      (%edx,%ecx), %ebx
	cmpl      %ebx, %eax
	cmovl     %edi, %edx
.L85:
	testl     %esi, %esi
	movl      $1, %eax
	je        .L93
	movl      %edx, (%esi)
	movl      $1, %eax
.L93:
	addl      $32, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.p2align 4,,7
	.p2align 3
.L96:
	movl      PyExc_TypeError, %eax
	movl      $.LC0, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L87:
	addl      $32, %esp
	movl      $-1, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.p2align 4,,7
	.p2align 3
.L95:
	movl      12(%ebx), %eax
	movl      16(%ebx), %edx
	movl      %eax, 28(%esp)
	jmp       .L85
	.cfi_endproc
	.size	buffer_getsegcount, .-buffer_getsegcount
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_getreadbuf
	.type	buffer_getreadbuf, @function
buffer_getreadbuf:
	.cfi_startproc
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $16, %esp
	movl      36(%esp), %ecx
	movl      32(%esp), %ebx
	movl      40(%esp), %esi
	testl     %ecx, %ecx
	jne       .L109
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L110
	movl      4(%eax), %edx
	movl      80(%edx), %edi
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%edi)
	cmpl      $1, %eax
	jne       .L111
	movl      24(%ebx), %edx
	movl      4(%edi), %eax
	testl     %edx, %edx
	cmovne    (%edi), %eax
	movl      %esi, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%ebx), %edx
	movl      %edx, (%esp)
	call      *%eax
	testl     %eax, %eax
	js        .L103
	movl      20(%ebx), %ecx
	cmpl      %ecx, %eax
	cmovle    %eax, %ecx
	addl      %ecx, (%esi)
	movl      %eax, %esi
	movl      16(%ebx), %edx
	cmpl      $-1, %edx
	cmove     %eax, %edx
	subl      %ecx, %esi
	leal      (%edx,%ecx), %ebx
	cmpl      %ebx, %eax
	cmovl     %esi, %edx
.L101:
	movl      %edx, %eax
.L107:
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.p2align 4,,7
	.p2align 3
.L111:
	movl      PyExc_TypeError, %eax
	movl      $.LC0, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L103:
	addl      $16, %esp
	movl      $-1, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.p2align 4,,7
	.p2align 3
.L110:
	movl      12(%ebx), %eax
	movl      %eax, (%esi)
	movl      16(%ebx), %edx
	jmp       .L101
	.p2align 4,,7
	.p2align 3
.L109:
	movl      PyExc_SystemError, %eax
	movl      $.LC10, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
	movl      $-1, %eax
	jmp       .L107
	.cfi_endproc
	.size	buffer_getreadbuf, .-buffer_getreadbuf
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_getcharbuf
	.type	buffer_getcharbuf, @function
buffer_getcharbuf:
	.cfi_startproc
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $32, %esp
	movl      52(%esp), %ecx
	movl      48(%esp), %ebx
	testl     %ecx, %ecx
	jne       .L125
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L126
	movl      4(%eax), %edx
	movl      80(%edx), %esi
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%esi)
	cmpl      $1, %eax
	jne       .L127
	movl      24(%ebx), %edx
	movl      4(%esi), %eax
	testl     %edx, %edx
	leal      28(%esp), %edx
	cmovne    (%esi), %eax
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%ebx), %edx
	movl      %edx, (%esp)
	call      *%eax
	testl     %eax, %eax
	js        .L118
	movl      20(%ebx), %ecx
	movl      %eax, %edi
	movl      16(%ebx), %edx
	movl      28(%esp), %esi
	cmpl      %ecx, %eax
	cmovle    %eax, %ecx
	cmpl      $-1, %edx
	cmove     %eax, %edx
	subl      %ecx, %edi
	leal      (%edx,%ecx), %ebx
	addl      %ecx, %esi
	cmpl      %ebx, %eax
	cmovl     %edi, %edx
.L116:
	movl      56(%esp), %eax
	movl      %esi, (%eax)
	movl      %edx, %eax
.L123:
	addl      $32, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.p2align 4,,7
	.p2align 3
.L127:
	movl      PyExc_TypeError, %eax
	movl      $.LC0, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L118:
	addl      $32, %esp
	movl      $-1, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.p2align 4,,7
	.p2align 3
.L126:
	movl      12(%ebx), %esi
	movl      16(%ebx), %edx
	jmp       .L116
	.p2align 4,,7
	.p2align 3
.L125:
	movl      PyExc_SystemError, %eax
	movl      $.LC10, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
	movl      $-1, %eax
	jmp       .L123
	.cfi_endproc
	.size	buffer_getcharbuf, .-buffer_getcharbuf
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_getwritebuf
	.type	buffer_getwritebuf, @function
buffer_getwritebuf:
	.cfi_startproc
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $16, %esp
	movl      32(%esp), %ebx
	movl      40(%esp), %esi
	movl      24(%ebx), %edi
	testl     %edi, %edi
	jne       .L142
	movl      36(%esp), %ecx
	testl     %ecx, %ecx
	jne       .L143
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L144
	movl      4(%eax), %edx
	movl      80(%edx), %edi
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%edi)
	cmpl      $1, %eax
	jne       .L145
	movl      24(%ebx), %edx
	movl      4(%edi), %eax
	testl     %edx, %edx
	cmovne    (%edi), %eax
	movl      %esi, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%ebx), %edx
	movl      %edx, (%esp)
	call      *%eax
	testl     %eax, %eax
	js        .L136
	movl      20(%ebx), %ecx
	cmpl      %ecx, %eax
	cmovle    %eax, %ecx
	addl      %ecx, (%esi)
	movl      %eax, %esi
	movl      16(%ebx), %edx
	cmpl      $-1, %edx
	cmove     %eax, %edx
	subl      %ecx, %esi
	leal      (%ecx,%edx), %ebx
	cmpl      %ebx, %eax
	cmovl     %esi, %edx
.L134:
	movl      %edx, %eax
.L140:
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.p2align 4,,7
	.p2align 3
.L145:
	movl      PyExc_TypeError, %eax
	movl      $.LC0, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L136:
	addl      $16, %esp
	movl      $-1, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.p2align 4,,7
	.p2align 3
.L144:
	movl      12(%ebx), %eax
	movl      %eax, (%esi)
	movl      16(%ebx), %edx
	jmp       .L134
	.p2align 4,,7
	.p2align 3
.L142:
	movl      PyExc_TypeError, %eax
	movl      $.LC11, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
	movl      $-1, %eax
	jmp       .L140
	.p2align 4,,7
	.p2align 3
.L143:
	movl      PyExc_SystemError, %eax
	movl      $.LC10, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
	movl      $-1, %eax
	jmp       .L140
	.cfi_endproc
	.size	buffer_getwritebuf, .-buffer_getwritebuf
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_str
	.type	buffer_str, @function
buffer_str:
	.cfi_startproc
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $32, %esp
	movl      48(%esp), %ebx
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L158
	movl      4(%eax), %edx
	movl      80(%edx), %esi
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%esi)
	cmpl      $1, %eax
	jne       .L159
	movl      24(%ebx), %edx
	movl      4(%esi), %eax
	testl     %edx, %edx
	leal      28(%esp), %edx
	cmovne    (%esi), %eax
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%ebx), %edx
	movl      %edx, (%esp)
	call      *%eax
	testl     %eax, %eax
	js        .L150
	movl      20(%ebx), %ecx
	movl      %eax, %edi
	movl      16(%ebx), %edx
	movl      28(%esp), %esi
	cmpl      %ecx, %eax
	cmovle    %eax, %ecx
	addl      %ecx, %esi
	cmpl      $-1, %edx
	cmove     %eax, %edx
	subl      %ecx, %edi
	leal      (%edx,%ecx), %ebx
	cmpl      %ebx, %eax
	movl      %esi, 28(%esp)
	cmovl     %edi, %edx
.L148:
	movl      %esi, (%esp)
	movl      %edx, 4(%esp)
	call      PyString_FromStringAndSize
	addl      $32, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.p2align 4,,7
	.p2align 3
.L159:
	movl      PyExc_TypeError, %eax
	movl      $.LC0, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L150:
	addl      $32, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.p2align 4,,7
	.p2align 3
.L158:
	movl      12(%ebx), %esi
	movl      16(%ebx), %edx
	movl      %esi, 28(%esp)
	jmp       .L148
	.cfi_endproc
	.size	buffer_str, .-buffer_str
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_item
	.type	buffer_item, @function
buffer_item:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %ebx
	movl      68(%esp), %esi
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L176
	movl      4(%eax), %edx
	movl      80(%edx), %edi
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%edi)
	cmpl      $1, %eax
	jne       .L177
	movl      24(%ebx), %edx
	movl      4(%edi), %eax
	testl     %edx, %edx
	leal      28(%esp), %edx
	cmovne    (%edi), %eax
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%ebx), %edx
	movl      %edx, (%esp)
	call      *%eax
	testl     %eax, %eax
	js        .L164
	movl      20(%ebx), %ecx
	movl      %eax, %ebp
	movl      16(%ebx), %edx
	movl      28(%esp), %edi
	cmpl      %ecx, %eax
	cmovle    %eax, %ecx
	addl      %ecx, %edi
	cmpl      $-1, %edx
	cmove     %eax, %edx
	subl      %ecx, %ebp
	leal      (%edx,%ecx), %ebx
	cmpl      %ebx, %eax
	movl      %edi, 28(%esp)
	cmovl     %ebp, %edx
.L162:
	testl     %esi, %esi
	js        .L169
	cmpl      %edx, %esi
	jge       .L169
	addl      %edi, %esi
	movl      %esi, (%esp)
	movl      $1, 4(%esp)
	call      PyString_FromStringAndSize
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L177:
	movl      PyExc_TypeError, %eax
	movl      $.LC0, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L164:
	addl      $44, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L176:
	movl      12(%ebx), %edi
	movl      16(%ebx), %edx
	movl      %edi, 28(%esp)
	jmp       .L162
	.p2align 4,,7
	.p2align 3
.L169:
	movl      PyExc_IndexError, %eax
	movl      $.LC12, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
	addl      $44, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.cfi_endproc
	.size	buffer_item, .-buffer_item
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_slice
	.type	buffer_slice, @function
buffer_slice:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %ebx
	movl      68(%esp), %esi
	movl      72(%esp), %ebp
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L190
	movl      4(%eax), %edx
	movl      80(%edx), %edi
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%edi)
	cmpl      $1, %eax
	jne       .L191
	movl      24(%ebx), %edx
	movl      4(%edi), %eax
	testl     %edx, %edx
	leal      28(%esp), %edx
	cmovne    (%edi), %eax
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%ebx), %edx
	movl      %edx, (%esp)
	call      *%eax
	testl     %eax, %eax
	js        .L182
	movl      20(%ebx), %ecx
	movl      16(%ebx), %edx
	movl      28(%esp), %edi
	cmpl      %ecx, %eax
	cmovle    %eax, %ecx
	addl      %ecx, %edi
	cmpl      $-1, %edx
	cmove     %eax, %edx
	leal      (%edx,%ecx), %ebx
	movl      %ebx, 12(%esp)
	movl      %eax, %ebx
	subl      %ecx, %ebx
	cmpl      12(%esp), %eax
	movl      %edi, 28(%esp)
	cmovl     %ebx, %edx
.L180:
	xorl      %eax, %eax
	testl     %esi, %esi
	cmovs     %eax, %esi
	testl     %ebp, %ebp
	cmovs     %eax, %ebp
	cmpl      %ebp, %edx
	cmovg     %ebp, %edx
	cmpl      %esi, %edx
	cmovl     %esi, %edx
	subl      %esi, %edx
	addl      %edi, %esi
	movl      %esi, (%esp)
	movl      %edx, 4(%esp)
	call      PyString_FromStringAndSize
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L191:
	movl      PyExc_TypeError, %eax
	movl      $.LC0, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L182:
	addl      $44, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L190:
	movl      12(%ebx), %edi
	movl      16(%ebx), %edx
	movl      %edi, 28(%esp)
	jmp       .L180
	.cfi_endproc
	.size	buffer_slice, .-buffer_slice
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_compare
	.type	buffer_compare, @function
buffer_compare:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %ebx
	movl      68(%esp), %esi
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L221
	movl      4(%eax), %edx
	movl      80(%edx), %edi
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%edi)
	cmpl      $1, %eax
	jne       .L220
	movl      24(%ebx), %ecx
	leal      24(%esp), %edx
	movl      4(%edi), %eax
	testl     %ecx, %ecx
	cmovne    (%edi), %eax
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%ebx), %edx
	movl      %edx, (%esp)
	call      *%eax
	testl     %eax, %eax
	js        .L196
	movl      20(%ebx), %edx
	movl      %eax, %edi
	movl      16(%ebx), %ebx
	cmpl      %edx, %eax
	cmovle    %eax, %edx
	addl      %edx, 24(%esp)
	cmpl      $-1, %ebx
	cmove     %eax, %ebx
	subl      %edx, %edi
	leal      (%ebx,%edx), %ecx
	cmpl      %ecx, %eax
	movl      8(%esi), %eax
	cmovl     %edi, %ebx
	testl     %eax, %eax
	je        .L222
.L218:
	movl      4(%eax), %edx
	movl      80(%edx), %edi
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%edi)
	cmpl      $1, %eax
	jne       .L220
	movl      24(%esi), %edx
	movl      4(%edi), %eax
	testl     %edx, %edx
	leal      28(%esp), %edx
	cmovne    (%edi), %eax
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%esi), %edx
	movl      %edx, (%esp)
	call      *%eax
	testl     %eax, %eax
	js        .L196
	movl      20(%esi), %edx
	movl      %eax, %ebp
	movl      28(%esp), %ecx
	movl      16(%esi), %esi
	cmpl      %edx, %eax
	cmovle    %eax, %edx
	addl      %edx, %ecx
	cmpl      $-1, %esi
	cmove     %eax, %esi
	subl      %edx, %ebp
	leal      (%esi,%edx), %edi
	cmpl      %edi, %eax
	movl      %ecx, 28(%esp)
	cmovl     %ebp, %esi
.L200:
	cmpl      %ebx, %esi
	movl      %ebx, %eax
	cmovle    %esi, %eax
	testl     %eax, %eax
	jle       .L204
	movl      %eax, 8(%esp)
	movl      24(%esp), %eax
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      memcmp
	testl     %eax, %eax
	je        .L204
	addl      $44, %esp
	sarl      $31, %eax
	popl      %ebx
	orl       $1, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L220:
	movl      PyExc_TypeError, %eax
	movl      $.LC0, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L196:
	movl      $-1, %eax
.L216:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L204:
	cmpl      %ebx, %esi
	movl      $-1, %eax
	jg        .L216
	xorl      %eax, %eax
	cmpl      %esi, %ebx
	setg      %al
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L221:
	movl      12(%ebx), %eax
	movl      16(%ebx), %ebx
	movl      %eax, 24(%esp)
	movl      8(%esi), %eax
	testl     %eax, %eax
	jne       .L218
.L222:
	movl      12(%esi), %ecx
	movl      16(%esi), %esi
	movl      %ecx, 28(%esp)
	jmp       .L200
	.cfi_endproc
	.size	buffer_compare, .-buffer_compare
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_ass_item
	.type	buffer_ass_item, @function
buffer_ass_item:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %ebx
	movl      72(%esp), %edi
	movl      24(%ebx), %esi
	testl     %esi, %esi
	jne       .L250
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L251
	movl      4(%eax), %edx
	movl      80(%edx), %ebp
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%ebp)
	cmpl      $1, %eax
	jne       .L252
	movl      24(%ebx), %ecx
	leal      24(%esp), %edx
	movl      4(%ebp), %eax
	testl     %ecx, %ecx
	cmovne    (%ebp), %eax
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%ebx), %edx
	movl      %edx, (%esp)
	call      *%eax
	testl     %eax, %eax
	js        .L229
	movl      20(%ebx), %ecx
	movl      %eax, %ebp
	movl      16(%ebx), %edx
	cmpl      %ecx, %eax
	cmovle    %eax, %ecx
	addl      %ecx, 24(%esp)
	cmpl      $-1, %edx
	cmove     %eax, %edx
	subl      %ecx, %ebp
	leal      (%ecx,%edx), %ebx
	cmpl      %ebx, %eax
	cmovl     %ebp, %edx
.L227:
	movl      68(%esp), %eax
	testl     %eax, %eax
	js        .L237
	cmpl      %edx, 68(%esp)
	jge       .L237
	testl     %edi, %edi
	je        .L233
	movl      4(%edi), %eax
	movl      80(%eax), %ebx
	testl     %ebx, %ebx
	je        .L233
	movl      (%ebx), %edx
	testl     %edx, %edx
	je        .L233
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L233
	movl      $0, 4(%esp)
	movl      %edi, (%esp)
	call      *%eax
	cmpl      $1, %eax
	jne       .L253
	leal      28(%esp), %eax
	movl      %eax, 8(%esp)
	movl      $0, 4(%esp)
	movl      %edi, (%esp)
	call      *(%ebx)
	testl     %eax, %eax
	js        .L229
	cmpl      $1, %eax
	jne       .L254
	movl      28(%esp), %eax
	movl      68(%esp), %ecx
	movzbl    (%eax), %edx
	movl      24(%esp), %eax
	movb      %dl, (%eax,%ecx)
.L247:
	addl      $44, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L252:
	movl      PyExc_TypeError, %eax
	movl      $.LC0, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L229:
	addl      $44, %esp
	movl      $-1, %esi
	popl      %ebx
	movl      %esi, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L251:
	movl      12(%ebx), %eax
	movl      16(%ebx), %edx
	movl      %eax, 24(%esp)
	jmp       .L227
	.p2align 4,,7
	.p2align 3
.L253:
	movl      PyExc_TypeError, %eax
	movl      $-1, %esi
	movl      $.LC0, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
	jmp       .L247
	.p2align 4,,7
	.p2align 3
.L237:
	movl      PyExc_IndexError, %eax
	movl      $-1, %esi
	movl      $.LC13, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
	jmp       .L247
	.p2align 4,,7
	.p2align 3
.L250:
	movl      PyExc_TypeError, %eax
	movl      $-1, %esi
	movl      $.LC11, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
	jmp       .L247
	.p2align 4,,7
	.p2align 3
.L254:
	movl      PyExc_TypeError, %eax
	movl      $-1, %esi
	movl      $.LC14, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
	jmp       .L247
	.p2align 4,,7
	.p2align 3
.L233:
	call      PyErr_BadArgument
	movl      $-1, %esi
	.p2align 4,,3
	jmp       .L247
	.cfi_endproc
	.size	buffer_ass_item, .-buffer_ass_item
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_concat
	.type	buffer_concat, @function
buffer_concat:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      68(%esp), %ebx
	movl      64(%esp), %edi
	movl      4(%ebx), %eax
	movl      80(%eax), %esi
	testl     %esi, %esi
	je        .L256
	movl      (%esi), %ecx
	testl     %ecx, %ecx
	je        .L256
	movl      8(%esi), %eax
	testl     %eax, %eax
	je        .L256
	movl      $0, 4(%esp)
	movl      %ebx, (%esp)
	call      *%eax
	cmpl      $1, %eax
	jne       .L276
	movl      8(%edi), %eax
	testl     %eax, %eax
	je        .L277
	movl      4(%eax), %edx
	movl      80(%edx), %ebp
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%ebp)
	cmpl      $1, %eax
	jne       .L278
	movl      24(%edi), %edx
	movl      4(%ebp), %eax
	testl     %edx, %edx
	leal      24(%esp), %edx
	cmovne    (%ebp), %eax
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%edi), %edx
	movl      %edx, (%esp)
	call      *%eax
	testl     %eax, %eax
	js        .L263
	movl      20(%edi), %edx
	movl      %eax, %ebp
	movl      16(%edi), %edi
	cmpl      %edx, %eax
	cmovle    %eax, %edx
	addl      %edx, 24(%esp)
	cmpl      $-1, %edi
	cmove     %eax, %edi
	subl      %edx, %ebp
	leal      (%edi,%edx), %ecx
	cmpl      %ecx, %eax
	cmovl     %ebp, %edi
.L261:
	testl     %edi, %edi
	jne       .L279
	addl      $1, (%ebx)
	movl      %ebx, %eax
.L273:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L278:
	movl      PyExc_TypeError, %eax
	movl      $.LC0, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L263:
	addl      $44, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L279:
	leal      28(%esp), %eax
	movl      %eax, 8(%esp)
	movl      $0, 4(%esp)
	movl      %ebx, (%esp)
	call      *(%esi)
	testl     %eax, %eax
	movl      %eax, %esi
	js        .L263
	leal      (%eax,%edi), %ebp
	movl      %ebp, 4(%esp)
	movl      $0, (%esp)
	call      PyString_FromStringAndSize
	movl      %edi, 8(%esp)
	leal      20(%eax), %edx
	movl      %eax, %ebx
	movl      24(%esp), %eax
	movl      %edx, (%esp)
	movl      %edx, 12(%esp)
	movl      %eax, 4(%esp)
	call      memcpy
	movl      12(%esp), %edx
	movl      28(%esp), %eax
	movl      %esi, 8(%esp)
	addl      %edx, %edi
	movl      %edi, (%esp)
	movl      %eax, 4(%esp)
	call      memcpy
	movl      %ebx, %eax
	movb      $0, 20(%ebx,%ebp)
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L276:
	movl      PyExc_TypeError, %eax
	movl      $.LC0, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
	addl      $44, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L277:
	movl      12(%edi), %eax
	movl      16(%edi), %edi
	movl      %eax, 24(%esp)
	jmp       .L261
	.p2align 4,,7
	.p2align 3
.L256:
	call      PyErr_BadArgument
	xorl      %eax, %eax
	jmp       .L273
	.cfi_endproc
	.size	buffer_concat, .-buffer_concat
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_ass_slice
	.type	buffer_ass_slice, @function
buffer_ass_slice:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %ebx
	movl      76(%esp), %edi
	movl      24(%ebx), %esi
	testl     %esi, %esi
	jne       .L312
	testl     %edi, %edi
	je        .L283
	movl      4(%edi), %eax
	movl      80(%eax), %ebp
	testl     %ebp, %ebp
	je        .L283
	movl      (%ebp), %eax
	testl     %eax, %eax
	je        .L283
	movl      8(%ebp), %eax
	testl     %eax, %eax
	je        .L283
	movl      $0, 4(%esp)
	movl      %edi, (%esp)
	call      *%eax
	cmpl      $1, %eax
	jne       .L313
	movl      8(%ebx), %eax
	testl     %eax, %eax
	je        .L314
	movl      4(%eax), %edx
	movl      80(%edx), %edx
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	movl      %edx, 12(%esp)
	call      *8(%edx)
	movl      12(%esp), %edx
	cmpl      $1, %eax
	jne       .L315
	movl      24(%ebx), %ecx
	movl      4(%edx), %eax
	testl     %ecx, %ecx
	cmovne    (%edx), %eax
	leal      24(%esp), %edx
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%ebx), %edx
	movl      %edx, (%esp)
	call      *%eax
	testl     %eax, %eax
	js        .L289
	movl      20(%ebx), %edx
	movl      16(%ebx), %ebx
	cmpl      %edx, %eax
	cmovle    %eax, %edx
	addl      %edx, 24(%esp)
	cmpl      $-1, %ebx
	cmove     %eax, %ebx
	leal      (%ebx,%edx), %ecx
	movl      %ecx, 12(%esp)
	movl      %eax, %ecx
	subl      %edx, %ecx
	cmpl      12(%esp), %eax
	cmovl     %ecx, %ebx
.L287:
	leal      28(%esp), %eax
	movl      %eax, 8(%esp)
	movl      $0, 4(%esp)
	movl      %edi, (%esp)
	call      *(%ebp)
	testl     %eax, %eax
	js        .L289
	movl      68(%esp), %ecx
	xorl      %edx, %edx
	testl     %ecx, %ecx
	js        .L292
	cmpl      68(%esp), %ebx
	movl      %ebx, %edx
	cmovg     68(%esp), %edx
.L292:
	xorl      %ecx, %ecx
	cmpl      72(%esp), %edx
	jg        .L293
	cmpl      72(%esp), %ebx
	movl      %ebx, %ecx
	cmovg     72(%esp), %ecx
	subl      %edx, %ecx
.L293:
	cmpl      %ecx, %eax
	jne       .L316
	testl     %eax, %eax
	je        .L303
	movl      %eax, 8(%esp)
	movl      28(%esp), %eax
	addl      24(%esp), %edx
	movl      %eax, 4(%esp)
	movl      %edx, (%esp)
	call      memcpy
.L303:
	addl      $44, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L315:
	movl      PyExc_TypeError, %eax
	movl      $.LC0, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
.L289:
	addl      $44, %esp
	movl      $-1, %esi
	popl      %ebx
	movl      %esi, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L314:
	movl      12(%ebx), %eax
	movl      16(%ebx), %ebx
	movl      %eax, 24(%esp)
	jmp       .L287
	.p2align 4,,7
	.p2align 3
.L313:
	movl      PyExc_TypeError, %eax
	movl      $-1, %esi
	movl      $.LC0, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
	jmp       .L303
	.p2align 4,,7
	.p2align 3
.L316:
	movl      PyExc_TypeError, %eax
	movl      $-1, %esi
	movl      $.LC15, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
	jmp       .L303
	.p2align 4,,7
	.p2align 3
.L283:
	call      PyErr_BadArgument
	movl      $-1, %esi
	.p2align 4,,3
	jmp       .L303
	.p2align 4,,7
	.p2align 3
.L312:
	movl      PyExc_TypeError, %eax
	movl      $-1, %esi
	movl      $.LC11, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
	jmp       .L303
	.cfi_endproc
	.size	buffer_ass_slice, .-buffer_ass_slice
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	buffer_hash
	.type	buffer_hash, @function
buffer_hash:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %esi
	movl      28(%esi), %ebx
	cmpl      $-1, %ebx
	je        .L335
.L333:
	addl      $44, %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L335:
	movl      24(%esi), %ecx
	testl     %ecx, %ecx
	je        .L336
	movl      8(%esi), %eax
	testl     %eax, %eax
	je        .L337
	movl      4(%eax), %edx
	movl      80(%edx), %edi
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      *8(%edi)
	cmpl      $1, %eax
	jne       .L338
	movl      24(%esi), %edx
	movl      4(%edi), %eax
	testl     %edx, %edx
	leal      28(%esp), %edx
	cmovne    (%edi), %eax
	movl      %edx, 8(%esp)
	movl      $0, 4(%esp)
	movl      8(%esi), %edx
	movl      %edx, (%esp)
	call      *%eax
	testl     %eax, %eax
	js        .L333
	movl      20(%esi), %ecx
	movl      %eax, %ebp
	movl      28(%esp), %edx
	movl      16(%esi), %ebx
	cmpl      %ecx, %eax
	cmovle    %eax, %ecx
	addl      %ecx, %edx
	cmpl      $-1, %ebx
	cmove     %eax, %ebx
	subl      %ecx, %ebp
	leal      (%ebx,%ecx), %edi
	cmpl      %edi, %eax
	movl      %edx, 28(%esp)
	cmovl     %ebp, %ebx
.L321:
	movzbl    (%edx), %eax
	sall      $7, %eax
	testl     %ebx, %ebx
	jle       .L328
	leal      (%edx,%ebx), %edi
	.p2align 4,,7
	.p2align 3
.L329:
	addl      $1, %edx
	imull     $1000003, %eax, %ecx
	movzbl    -1(%edx), %eax
	xorl      %ecx, %eax
	cmpl      %edi, %edx
	jne       .L329
.L328:
	xorl      %ebx, %eax
	movl      $-2, %edx
	cmpl      $-1, %eax
	cmove     %edx, %eax
	movl      %eax, 28(%esi)
	movl      %eax, %ebx
	addl      $44, %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L338:
	movl      PyExc_TypeError, %eax
	movl      $.LC0, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
	addl      $44, %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L337:
	movl      12(%esi), %edx
	movl      16(%esi), %ebx
	movl      %edx, 28(%esp)
	jmp       .L321
.L336:
	movl      PyExc_TypeError, %eax
	movl      $.LC16, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
	jmp       .L333
	.cfi_endproc
	.size	buffer_hash, .-buffer_hash
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	PyBuffer_FromObject
	.type	PyBuffer_FromObject, @function
PyBuffer_FromObject:
	.cfi_startproc
	pushl     %esi
	pushl     %ebx
	subl      $20, %esp
	movl      32(%esp), %ecx
	movl      36(%esp), %ebx
	movl      4(%ecx), %edx
	movl      80(%edx), %eax
	testl     %eax, %eax
	je        .L340
	movl      (%eax), %esi
	testl     %esi, %esi
	je        .L340
	movl      8(%eax), %eax
	testl     %eax, %eax
	je        .L340
	testl     %ebx, %ebx
	js        .L364
	cmpl      $PyBuffer_Type, %edx
	je        .L365
.L345:
	cmpl      $-1, 40(%esp)
	jl        .L351
	movl      %ecx, %esi
	jmp       .L350
	.p2align 4,,7
	.p2align 3
.L365:
	movl      8(%ecx), %esi
	testl     %esi, %esi
	je        .L345
	movl      16(%ecx), %eax
	cmpl      $-1, %eax
	je        .L346
	xorl      %edx, %edx
	subl      %ebx, %eax
	cmovns    %eax, %edx
	cmpl      %edx, 40(%esp)
	jg        .L347
	cmpl      $-1, 40(%esp)
	jne       .L346
.L347:
	addl      20(%ecx), %ebx
	movl      %edx, 40(%esp)
	jmp       .L348
	.p2align 4,,7
	.p2align 3
.L346:
	addl      20(%ecx), %ebx
	cmpl      $-1, 40(%esp)
	jl        .L351
.L348:
	testl     %ebx, %ebx
	js        .L364
.L350:
	movl      PyBuffer_Type+16, %eax
	movl      %eax, (%esp)
	call      PyObject_Malloc
	movl      $PyBuffer_Type, 4(%esp)
	movl      %eax, (%esp)
	call      PyObject_Init
	testl     %eax, %eax
	je        .L352
	addl      $1, (%esi)
	movl      %esi, 8(%eax)
	movl      40(%esp), %esi
	movl      $0, 12(%eax)
	movl      %ebx, 20(%eax)
	movl      $1, 24(%eax)
	movl      %esi, 16(%eax)
	movl      $-1, 28(%eax)
.L362:
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	ret       
	.p2align 4,,7
	.p2align 3
.L340:
	movl      PyExc_TypeError, %eax
	movl      $.LC7, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
	xorl      %eax, %eax
	jmp       .L362
	.p2align 4,,7
	.p2align 3
.L364:
	movl      PyExc_ValueError, %eax
	movl      $.LC8, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
	xorl      %eax, %eax
	jmp       .L362
.L352:
	xorl      %eax, %eax
	jmp       .L362
.L351:
	movl      PyExc_ValueError, %eax
	movl      $.LC9, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
	xorl      %eax, %eax
	jmp       .L362
	.cfi_endproc
	.size	PyBuffer_FromObject, .-PyBuffer_FromObject
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	PyBuffer_FromReadWriteObject
	.type	PyBuffer_FromReadWriteObject, @function
PyBuffer_FromReadWriteObject:
	.cfi_startproc
	pushl     %esi
	pushl     %ebx
	subl      $20, %esp
	movl      32(%esp), %ecx
	movl      36(%esp), %ebx
	movl      4(%ecx), %edx
	movl      80(%edx), %eax
	testl     %eax, %eax
	je        .L367
	movl      4(%eax), %esi
	testl     %esi, %esi
	je        .L367
	movl      8(%eax), %eax
	testl     %eax, %eax
	je        .L367
	testl     %ebx, %ebx
	js        .L391
	cmpl      $PyBuffer_Type, %edx
	je        .L392
.L372:
	cmpl      $-1, 40(%esp)
	jl        .L378
	movl      %ecx, %esi
	jmp       .L377
	.p2align 4,,7
	.p2align 3
.L392:
	movl      8(%ecx), %esi
	testl     %esi, %esi
	je        .L372
	movl      16(%ecx), %eax
	cmpl      $-1, %eax
	je        .L373
	xorl      %edx, %edx
	subl      %ebx, %eax
	cmovns    %eax, %edx
	cmpl      %edx, 40(%esp)
	jg        .L374
	cmpl      $-1, 40(%esp)
	jne       .L373
.L374:
	addl      20(%ecx), %ebx
	movl      %edx, 40(%esp)
	jmp       .L375
	.p2align 4,,7
	.p2align 3
.L373:
	addl      20(%ecx), %ebx
	cmpl      $-1, 40(%esp)
	jl        .L378
.L375:
	testl     %ebx, %ebx
	js        .L391
.L377:
	movl      PyBuffer_Type+16, %eax
	movl      %eax, (%esp)
	call      PyObject_Malloc
	movl      $PyBuffer_Type, 4(%esp)
	movl      %eax, (%esp)
	call      PyObject_Init
	testl     %eax, %eax
	je        .L379
	addl      $1, (%esi)
	movl      %esi, 8(%eax)
	movl      40(%esp), %esi
	movl      $0, 12(%eax)
	movl      %ebx, 20(%eax)
	movl      $0, 24(%eax)
	movl      %esi, 16(%eax)
	movl      $-1, 28(%eax)
.L389:
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	ret       
	.p2align 4,,7
	.p2align 3
.L367:
	movl      PyExc_TypeError, %eax
	movl      $.LC7, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
	xorl      %eax, %eax
	jmp       .L389
	.p2align 4,,7
	.p2align 3
.L391:
	movl      PyExc_ValueError, %eax
	movl      $.LC8, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
	xorl      %eax, %eax
	jmp       .L389
.L379:
	xorl      %eax, %eax
	jmp       .L389
.L378:
	movl      PyExc_ValueError, %eax
	movl      $.LC9, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
	xorl      %eax, %eax
	jmp       .L389
	.cfi_endproc
	.size	PyBuffer_FromReadWriteObject, .-PyBuffer_FromReadWriteObject
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	PyBuffer_FromMemory
	.type	PyBuffer_FromMemory, @function
PyBuffer_FromMemory:
	.cfi_startproc
	pushl     %ebx
	subl      $24, %esp
	movl      36(%esp), %ebx
	cmpl      $-1, %ebx
	jl        .L398
	movl      PyBuffer_Type+16, %eax
	movl      %eax, (%esp)
	call      PyObject_Malloc
	movl      $PyBuffer_Type, 4(%esp)
	movl      %eax, (%esp)
	call      PyObject_Init
	testl     %eax, %eax
	je        .L396
	movl      32(%esp), %edx
	movl      $0, 8(%eax)
	movl      %ebx, 16(%eax)
	movl      $0, 20(%eax)
	movl      %edx, 12(%eax)
	movl      $1, 24(%eax)
	movl      $-1, 28(%eax)
.L395:
	addl      $24, %esp
	popl      %ebx
	ret       
	.p2align 4,,7
	.p2align 3
.L396:
	xorl      %eax, %eax
	jmp       .L395
	.p2align 4,,7
	.p2align 3
.L398:
	movl      PyExc_ValueError, %eax
	movl      $.LC9, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
	xorl      %eax, %eax
	jmp       .L395
	.cfi_endproc
	.size	PyBuffer_FromMemory, .-PyBuffer_FromMemory
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	PyBuffer_FromReadWriteMemory
	.type	PyBuffer_FromReadWriteMemory, @function
PyBuffer_FromReadWriteMemory:
	.cfi_startproc
	pushl     %ebx
	subl      $24, %esp
	movl      36(%esp), %ebx
	cmpl      $-1, %ebx
	jl        .L404
	movl      PyBuffer_Type+16, %eax
	movl      %eax, (%esp)
	call      PyObject_Malloc
	movl      $PyBuffer_Type, 4(%esp)
	movl      %eax, (%esp)
	call      PyObject_Init
	testl     %eax, %eax
	je        .L402
	movl      32(%esp), %edx
	movl      $0, 8(%eax)
	movl      %ebx, 16(%eax)
	movl      $0, 20(%eax)
	movl      %edx, 12(%eax)
	movl      $0, 24(%eax)
	movl      $-1, 28(%eax)
.L401:
	addl      $24, %esp
	popl      %ebx
	ret       
	.p2align 4,,7
	.p2align 3
.L402:
	xorl      %eax, %eax
	jmp       .L401
	.p2align 4,,7
	.p2align 3
.L404:
	movl      PyExc_ValueError, %eax
	movl      $.LC9, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
	xorl      %eax, %eax
	jmp       .L401
	.cfi_endproc
	.size	PyBuffer_FromReadWriteMemory, .-PyBuffer_FromReadWriteMemory
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	PyBuffer_New
	.type	PyBuffer_New, @function
PyBuffer_New:
	.cfi_startproc
	pushl     %ebx
	subl      $24, %esp
	movl      32(%esp), %ebx
	testl     %ebx, %ebx
	js        .L412
	movl      $2147483647, %eax
	subl      %ebx, %eax
	cmpl      $31, %eax
	jbe       .L411
	leal      32(%ebx), %eax
	movl      %eax, (%esp)
	call      PyObject_Malloc
	testl     %eax, %eax
	je        .L411
	leal      32(%eax), %edx
	movl      $PyBuffer_Type, 4(%eax)
	movl      $1, (%eax)
	movl      $0, 8(%eax)
	movl      %edx, 12(%eax)
	movl      %ebx, 16(%eax)
	movl      $0, 20(%eax)
	movl      $0, 24(%eax)
	movl      $-1, 28(%eax)
.L407:
	addl      $24, %esp
	popl      %ebx
	ret       
	.p2align 4,,7
	.p2align 3
.L411:
	addl      $24, %esp
	popl      %ebx
	jmp       PyErr_NoMemory
	.p2align 4,,7
	.p2align 3
.L412:
	movl      PyExc_ValueError, %eax
	movl      $.LC9, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_SetString
	xorl      %eax, %eax
	jmp       .L407
	.cfi_endproc
	.size	PyBuffer_New, .-PyBuffer_New
# ----------------------
	.data
	.align 32
	.globl	PyBuffer_Type
	.type	PyBuffer_Type, @object
PyBuffer_Type:
	.long	1
	.long	PyType_Type
	.long	0
	.long	.LC17
	.long	32
	.long	0
	.long	buffer_dealloc
	.long	0
	.long	0
	.long	0
	.long	buffer_compare
	.long	buffer_repr
	.long	0
	.long	buffer_as_sequence
	.long	0
	.long	buffer_hash
	.long	0
	.long	buffer_str
	.long	PyObject_GenericGetAttr
	.long	0
	.long	buffer_as_buffer
	.long	491
	.long	buffer_doc
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	buffer_new
	.zero	32
	.size	PyBuffer_Type, 192
# ----------------------
	.align 4
	.local	buffer_as_buffer
	.type	buffer_as_buffer, @object
buffer_as_buffer:
	.long	buffer_getreadbuf
	.long	buffer_getwritebuf
	.long	buffer_getsegcount
	.long	buffer_getcharbuf
	.size	buffer_as_buffer, 16
# ----------------------
	.align 32
	.local	buffer_as_sequence
	.type	buffer_as_sequence, @object
buffer_as_sequence:
	.long	buffer_length
	.long	buffer_concat
	.long	buffer_repeat
	.long	buffer_item
	.long	buffer_slice
	.long	buffer_ass_item
	.long	buffer_ass_slice
	.zero	12
	.size	buffer_as_sequence, 40
# ----------------------
	.align 32
	.local	buffer_doc
	.type	buffer_doc, @object
buffer_doc:
	.ascii	"buffer(object [, offset[, size]])\n\nCre"
	.string	"ate a new buffer object which references the given object.\nThe buffer will reference a slice of the target object from the\nstart of the object (or at the specified offset). The slice will\nextend to the end of the target object (or with the specified size)."
	.size	buffer_doc, 295
# ----------------------
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
