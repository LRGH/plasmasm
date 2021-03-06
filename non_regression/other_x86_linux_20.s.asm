	.file	"regexmodule.c"
	.text
	.p2align 4,,15
# ----------------------
	.local	regex_get_syntax
	.type	regex_get_syntax, @function
regex_get_syntax:
	.cfi_startproc
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $24, %esp
	movl      _Py_re_syntax@GOT(%ebx), %eax
	movl      (%eax), %eax
	movl      %eax, (%esp)
	call      PyInt_FromLong@PLT
	addl      $24, %esp
	popl      %ebx
	ret       
	.cfi_endproc
	.size	regex_get_syntax, .-regex_get_syntax
# ----------------------
	.section       .rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"i:set_syntax"
.LC1:
	.string	"O|i:search"
.LC2:
	.string	"t#:search"
.LC3:
	.string	"search offset out of range"
.LC4:
	.string	"match failure"
.LC5:
	.string	"O|i:match"
.LC6:
	.string	"t#"
.LC7:
	.string	"match offset out of range"
.LC9:
	.string	"S|S:symcomp"
.LC10:
	.string	"last"
.LC11:
	.string	"regs"
.LC12:
	.string	"(ii)"
.LC13:
	.string	"translate"
.LC14:
	.string	"groupindex"
.LC15:
	.string	"realpat"
.LC16:
	.string	"givenpat"
.LC17:
	.string	"__members__"
.LC18:
	.string	"S|S:compile"
.LC19:
	.string	"SS:search"
.LC20:
	.string	"(S)"
.LC21:
	.string	"SS:match"
.LC22:
	.string	"not enough arguments"
.LC24:
	.string	"group() index out of range"
.LC26:
	.string	"regex"
.LC28:
	.string	"regex.error"
.LC29:
	.string	"error"
.LC30:
	.string	"casefold"
.LC31:
	.string	"compile"
.LC32:
	.string	"symcomp"
.LC33:
	.string	"match"
.LC34:
	.string	"search"
.LC35:
	.string	"set_syntax"
.LC36:
	.string	"get_syntax"
.LC37:
	.string	"regex.regex"
.LC38:
	.string	"group"
# ----------------------
	.text
	.p2align 4,,15
# ----------------------
	.local	regex_set_syntax
	.type	regex_set_syntax, @function
regex_set_syntax:
	.cfi_startproc
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $40, %esp
	leal      28(%esp), %eax
	movl      %eax, 8(%esp)
	leal      .LC0@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      52(%esp), %eax
	movl      %eax, (%esp)
	call      PyArg_ParseTuple@PLT
	movl      %eax, %edx
	xorl      %eax, %eax
	testl     %edx, %edx
	je        .L4
	movl      28(%esp), %eax
	movl      %eax, (%esp)
	call      _Py_re_set_syntax@PLT
	movl      %eax, 28(%esp)
	movl      cache_pat@GOTOFF(%ebx), %eax
	testl     %eax, %eax
	je        .L6
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	je        .L15
.L6:
	movl      cache_prog@GOTOFF(%ebx), %eax
	movl      $0, cache_pat@GOTOFF(%ebx)
	testl     %eax, %eax
	je        .L9
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	je        .L16
.L9:
	movl      28(%esp), %eax
	movl      $0, cache_prog@GOTOFF(%ebx)
	movl      %eax, (%esp)
	call      PyInt_FromLong@PLT
.L4:
	addl      $40, %esp
	popl      %ebx
	ret       
	.p2align 4,,7
	.p2align 3
.L16:
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
	jmp       .L9
	.p2align 4,,7
	.p2align 3
.L15:
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
	.p2align 4,,4
	jmp       .L6
	.cfi_endproc
	.size	regex_set_syntax, .-regex_set_syntax
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	regobj_search
	.type	regobj_search, @function
regobj_search:
	.cfi_startproc
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $48, %esp
	leal      44(%esp), %eax
	movl      64(%esp), %esi
	movl      %eax, 12(%esp)
	leal      32(%esp), %eax
	movl      %eax, 8(%esp)
	movl      $0, 44(%esp)
	leal      .LC1@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      68(%esp), %eax
	movl      %eax, (%esp)
	call      PyArg_ParseTuple@PLT
	testl     %eax, %eax
	je        .L36
	leal      40(%esp), %eax
	movl      %eax, 12(%esp)
	leal      36(%esp), %eax
	movl      %eax, 8(%esp)
	leal      .LC2@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      PyArg_Parse@PLT
	testl     %eax, %eax
	je        .L36
	movl      44(%esp), %eax
	testl     %eax, %eax
	js        .L21
	movl      40(%esp), %ecx
	cmpl      %ecx, %eax
	jg        .L21
	movl      1100(%esi), %edx
	movl      %ecx, %edi
	subl      %eax, %edi
	testl     %edx, %edx
	je        .L23
	subl      $1, (%edx)
	je        .L24
.L35:
	movl      44(%esp), %eax
	movl      40(%esp), %ecx
.L23:
	movl      $0, 1100(%esi)
	leal      40(%esi), %edx
	movl      %eax, 12(%esp)
	movl      36(%esp), %eax
	movl      %edx, 20(%esp)
	movl      %edi, 16(%esp)
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	leal      8(%esi), %eax
	movl      %eax, (%esp)
	call      _Py_re_search@PLT
	cmpl      $-1, %eax
	jl        .L37
	je        .L26
	movl      32(%esp), %edx
	addl      $1, (%edx)
	movl      32(%esp), %edx
	movl      %edx, 1100(%esi)
.L26:
	movl      %eax, (%esp)
	call      PyInt_FromLong@PLT
.L19:
	addl      $48, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.p2align 4,,7
	.p2align 3
.L21:
	leal      .LC3@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      RegexError@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      PyErr_SetString@PLT
	.p2align 4,,7
	.p2align 3
.L36:
	addl      $48, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.p2align 4,,7
	.p2align 3
.L24:
	movl      1100(%esi), %eax
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
	jmp       .L35
	.p2align 4,,7
	.p2align 3
.L37:
	call      PyErr_Occurred@PLT
	testl     %eax, %eax
	.p2align 4,,6
	jne       .L36
	leal      .LC4@GOTOFF(%ebx), %edx
	movl      %edx, 4(%esp)
	movl      RegexError@GOTOFF(%ebx), %edx
	movl      %eax, 28(%esp)
	movl      %edx, (%esp)
	call      PyErr_SetString@PLT
	movl      28(%esp), %eax
	jmp       .L19
	.cfi_endproc
	.size	regobj_search, .-regobj_search
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	regobj_match
	.type	regobj_match, @function
regobj_match:
	.cfi_startproc
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $52, %esp
	leal      44(%esp), %eax
	movl      64(%esp), %esi
	movl      %eax, 12(%esp)
	leal      32(%esp), %eax
	movl      %eax, 8(%esp)
	movl      $0, 44(%esp)
	leal      .LC5@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      68(%esp), %eax
	movl      %eax, (%esp)
	call      PyArg_ParseTuple@PLT
	testl     %eax, %eax
	je        .L57
	leal      40(%esp), %eax
	movl      %eax, 12(%esp)
	leal      36(%esp), %eax
	movl      %eax, 8(%esp)
	leal      .LC6@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      PyArg_Parse@PLT
	testl     %eax, %eax
	je        .L57
	movl      44(%esp), %edx
	testl     %edx, %edx
	js        .L42
	movl      40(%esp), %ecx
	cmpl      %ecx, %edx
	jg        .L42
	movl      1100(%esi), %eax
	testl     %eax, %eax
	je        .L44
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	je        .L45
.L56:
	movl      44(%esp), %edx
	movl      40(%esp), %ecx
.L44:
	leal      40(%esi), %eax
	movl      $0, 1100(%esi)
	movl      %eax, 16(%esp)
	movl      36(%esp), %eax
	movl      %edx, 12(%esp)
	movl      %ecx, 8(%esp)
	movl      %eax, 4(%esp)
	leal      8(%esi), %eax
	movl      %eax, (%esp)
	call      _Py_re_match@PLT
	cmpl      $-1, %eax
	jl        .L58
	je        .L47
	movl      32(%esp), %edx
	addl      $1, (%edx)
	movl      32(%esp), %edx
	movl      %edx, 1100(%esi)
.L47:
	movl      %eax, (%esp)
	call      PyInt_FromLong@PLT
.L40:
	addl      $52, %esp
	popl      %ebx
	popl      %esi
	ret       
	.p2align 4,,7
	.p2align 3
.L42:
	leal      .LC7@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      RegexError@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      PyErr_SetString@PLT
	.p2align 4,,7
	.p2align 3
.L57:
	addl      $52, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	ret       
	.p2align 4,,7
	.p2align 3
.L45:
	movl      1100(%esi), %eax
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
	jmp       .L56
	.p2align 4,,7
	.p2align 3
.L58:
	call      PyErr_Occurred@PLT
	testl     %eax, %eax
	.p2align 4,,6
	jne       .L57
	leal      .LC4@GOTOFF(%ebx), %edx
	movl      %edx, 4(%esp)
	movl      RegexError@GOTOFF(%ebx), %edx
	movl      %eax, 28(%esp)
	movl      %edx, (%esp)
	call      PyErr_SetString@PLT
	movl      28(%esp), %eax
	jmp       .L40
	.cfi_endproc
	.size	regobj_match, .-regobj_match
# ----------------------
	.section       .rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC8:
	.string	"translation table must be 256 bytes"
	.align 4
.LC23:
	.string	"group() group name doesn't exist"
	.align 4
.LC25:
	.string	"group() only valid after successful match/search"
	.align 4
.LC27:
	.string	"the regex module is deprecated; please use the re module"
# ----------------------
	.text
	.p2align 4,,15
# ----------------------
	.local	newregexobject
	.type	newregexobject, @function
newregexobject:
	.cfi_startproc
	pushl     %ebp
	movl      %edx, %ebp
	pushl     %edi
	movl      %eax, %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $44, %esp
	leal      28(%esp), %eax
	movl      %eax, 12(%esp)
	leal      24(%esp), %eax
	movl      %eax, 8(%esp)
	movl      %edi, (%esp)
	leal      .LC6@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	call      PyArg_Parse@PLT
	testl     %eax, %eax
	je        .L82
	testl     %ebp, %ebp
	je        .L62
	movl      %ebp, (%esp)
	call      PyString_Size@PLT
	cmpl      $256, %eax
	jne       .L83
.L62:
	leal      Regextype@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      _PyObject_New@PLT
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L82
	movl      $0, 8(%eax)
	testl     %ebp, %ebp
	movl      $0, 12(%eax)
	leal      840(%eax), %eax
	movl      %eax, 20(%esi)
	je        .L64
	movl      %ebp, (%esp)
	call      PyString_AsString@PLT
	testl     %eax, %eax
	movl      %eax, 24(%esi)
	je        .L65
	addl      $1, (%ebp)
.L66:
	movl      68(%esp), %eax
	movl      %ebp, 1096(%esi)
	movl      $0, 1100(%esi)
	movl      %eax, 1104(%esi)
	movl      64(%esp), %eax
	addl      $1, (%edi)
	movl      %edi, 1112(%esi)
	addl      $1, (%eax)
	movl      %eax, 1108(%esi)
	leal      8(%esi), %eax
	movl      %eax, 8(%esp)
	movl      28(%esp), %eax
	movl      %eax, 4(%esp)
	movl      24(%esp), %eax
	movl      %eax, (%esp)
	call      _Py_re_compile_pattern@PLT
	movl      %esi, %edx
	testl     %eax, %eax
	je        .L61
	movl      %eax, 4(%esp)
	movl      RegexError@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      PyErr_SetString@PLT
.L65:
	subl      $1, (%esi)
	je        .L84
.L82:
	xorl      %edx, %edx
.L61:
	addl      $44, %esp
	movl      %edx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L64:
	movl      $0, 24(%esi)
	jmp       .L66
	.p2align 4,,7
	.p2align 3
.L84:
	movl      4(%esi), %eax
	movl      %esi, (%esp)
	call      *24(%eax)
	jmp       .L82
	.p2align 4,,7
	.p2align 3
.L83:
	leal      .LC8@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      RegexError@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      PyErr_SetString@PLT
	xorl      %edx, %edx
	jmp       .L61
	.cfi_endproc
	.size	newregexobject, .-newregexobject
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	regex_symcomp
	.type	regex_symcomp, @function
regex_symcomp:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $204, %esp
	movl      %gs:20, %eax
	movl      %eax, 188(%esp)
	xorl      %eax, %eax
	leal      52(%esp), %eax
	movl      %eax, 12(%esp)
	leal      48(%esp), %eax
	movl      %eax, 8(%esp)
	movl      $0, 52(%esp)
	leal      .LC9@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      228(%esp), %eax
	movl      %eax, (%esp)
	call      PyArg_ParseTuple@PLT
	testl     %eax, %eax
	je        .L158
	call      PyDict_New@PLT
	testl     %eax, %eax
	movl      %eax, 28(%esp)
	je        .L158
	movl      _Py_re_syntax@GOT(%ebx), %eax
	movl      48(%esp), %edi
	movl      (%eax), %eax
	movl      %edi, (%esp)
	movl      %eax, 20(%esp)
	call      PyString_AsString@PLT
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L121
	movl      %edi, (%esp)
	call      PyString_Size@PLT
	testl     %eax, %eax
	js        .L121
	leal      (%ebp,%eax), %esi
	cmpl      %esi, %ebp
	je        .L160
	movl      %eax, 4(%esp)
	movl      $0, (%esp)
	call      PyString_FromStringAndSize@PLT
	testl     %eax, %eax
	movl      %eax, 56(%esp)
	je        .L121
	movl      %eax, (%esp)
	call      PyString_AsString@PLT
	testl     %eax, %eax
	je        .L121
	cmpl      %esi, %ebp
	jnb       .L125
	movl      20(%esp), %edi
	xorl      %edx, %edx
	movl      $0, 32(%esp)
	andl      $1, %edi
	movl      %edi, 24(%esp)
	jmp       .L93
	.p2align 4,,7
	.p2align 3
.L94:
	cmpb      $91, %cl
	je        .L161
	cmpb      $92, %cl
	jne       .L95
	movb      $92, (%eax)
	addl      $1, %ebp
	addl      $1, %eax
	movl      $1, %edx
.L112:
	cmpl      %ebp, %esi
	jbe       .L125
.L93:
	movzbl    (%ebp), %ecx
	cmpb      $40, %cl
	jne       .L94
	movl      24(%esp), %edi
	xorl      $1, %edi
	cmpl      %edi, %edx
	je        .L162
.L95:
	movb      %cl, (%eax)
	addl      $1, %ebp
	addl      $1, %eax
	xorl      %edx, %edx
	jmp       .L112
.L171:
	movl      %edx, %eax
	movl      %ebp, %edx
	movl      %eax, %ebp
.L104:
	subl      $1, (%edx)
	je        .L163
.L105:
	testl     %ebp, %ebp
	je        .L107
	subl      $1, (%ebp)
	je        .L164
.L107:
	movl      56(%esp), %eax
	testl     %eax, %eax
	je        .L121
	subl      $1, (%eax)
	jne       .L121
.L159:
	movl      56(%esp), %eax
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
	.p2align 4,,7
	.p2align 3
.L121:
	movl      28(%esp), %edx
	movl      (%edx), %eax
	movl      %eax, 20(%esp)
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%edx)
	jne       .L158
	movl      28(%esp), %edx
	movl      4(%edx), %eax
	movl      %edx, (%esp)
	call      *24(%eax)
	.p2align 4,,7
	.p2align 3
.L158:
	xorl      %eax, %eax
.L87:
	movl      188(%esp), %edx
	xorl      %gs:20, %edx
	jne       .L165
	addl      $204, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L161:
	testl     %edx, %edx
	jne       .L95
	movb      $91, (%eax)
	movzbl    1(%ebp), %ecx
	leal      1(%ebp), %edi
	movl      %edi, 20(%esp)
	leal      2(%eax), %edi
	movb      %cl, 1(%eax)
	movl      20(%esp), %ecx
	cmpl      %ecx, %esi
	jbe       .L92
	cmpb      $93, 1(%ebp)
	jne       .L118
	jmp       .L117
	.p2align 4,,7
	.p2align 3
.L167:
	cmpb      $93, (%ecx)
	.p2align 4,,4
	je        .L166
.L118:
	addl      $1, %ecx
	movzbl    (%ecx), %eax
	addl      $1, %edi
	cmpl      %esi, %ecx
	movb      %al, -1(%edi)
	jne       .L167
.L92:
	movl      56(%esp), %eax
	movl      %eax, (%esp)
	call      PyString_AsString@PLT
	testl     %eax, %eax
	je        .L168
	subl      %eax, %edi
	leal      56(%esp), %eax
	movl      %edi, 4(%esp)
	movl      %eax, (%esp)
	call      _PyString_Resize@PLT
	movl      56(%esp), %esi
	testl     %esi, %esi
	je        .L121
.L91:
	movl      28(%esp), %eax
	movl      52(%esp), %edx
	movl      %eax, 4(%esp)
	movl      48(%esp), %eax
	movl      %eax, (%esp)
	movl      %esi, %eax
	call      newregexobject
	subl      $1, (%esi)
	jne       .L87
	movl      4(%esi), %edx
	movl      %eax, 20(%esp)
	movl      %esi, (%esp)
	call      *24(%edx)
	movl      20(%esp), %eax
	jmp       .L87
	.p2align 4,,7
	.p2align 3
.L162:
	leal      1(%eax), %edi
	movb      $40, (%eax)
	leal      1(%ebp), %eax
	cmpl      %eax, %esi
	movl      %eax, 20(%esp)
	jbe       .L92
	addl      $1, 32(%esp)
	cmpb      $60, 1(%ebp)
	je        .L169
.L97:
	movl      %edi, %eax
	movl      20(%esp), %ebp
	xorl      %edx, %edx
	jmp       .L93
	.p2align 4,,7
	.p2align 3
.L166:
	movl      %ecx, 20(%esp)
.L117:
	movl      20(%esp), %ebp
	movl      %edi, %eax
	addl      $1, %ebp
	jmp       .L112
.L160:
	addl      $1, (%edi)
	movl      %edi, %esi
	jmp       .L91
.L169:
	leal      2(%ebp), %ecx
	cmpl      %ecx, %esi
	jbe       .L92
	movzbl    2(%ebp), %edx
	cmpb      $62, %dl
	je        .L97
	movl      %ecx, 44(%esp)
	movl      %edx, 36(%esp)
	call      __ctype_b_loc@PLT
	movl      36(%esp), %edx
	movl      44(%esp), %ecx
	movl      %edi, 36(%esp)
	movl      (%eax), %eax
	movl      %eax, %ebp
	leal      60(%esp), %eax
	movl      %eax, 40(%esp)
	jmp       .L123
	.p2align 4,,7
	.p2align 3
.L114:
	movzbl    (%ecx), %edx
	cmpb      $62, %dl
	je        .L170
.L123:
	movzbl    %dl, %edi
	testb     $8, (%ebp,%edi,2)
	jne       .L113
	cmpb      $95, %dl
	jne       .L154
.L113:
	addl      $1, %ecx
	addl      $1, %eax
	cmpl      %esi, %ecx
	movb      %dl, -1(%eax)
	jne       .L114
	movl      36(%esp), %edi
	jmp       .L92
.L168:
	movl      56(%esp), %edx
	subl      $1, (%edx)
	jne       .L121
	jmp       .L159
.L170:
	movb      $0, (%eax)
	movl      40(%esp), %eax
	movl      %ecx, 44(%esp)
	movl      36(%esp), %edi
	movl      %eax, (%esp)
	call      PyString_FromString@PLT
	movl      %eax, %ebp
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      PyInt_FromLong@PLT
	testl     %eax, %eax
	movl      %eax, %edx
	je        .L100
	testl     %ebp, %ebp
	je        .L100
	movl      %eax, 8(%esp)
	movl      %eax, 20(%esp)
	movl      28(%esp), %eax
	movl      %ebp, 4(%esp)
	movl      %eax, (%esp)
	call      PyDict_SetItem@PLT
	movl      20(%esp), %edx
	movl      44(%esp), %ecx
	testl     %eax, %eax
	jne       .L171
	subl      $1, (%ebp)
	je        .L172
.L110:
	subl      $1, (%edx)
	je        .L173
.L111:
	leal      1(%ecx), %ebp
	movl      %edi, %eax
	xorl      %edx, %edx
	jmp       .L112
.L154:
	movl      36(%esp), %edi
	jmp       .L97
.L173:
	movl      4(%edx), %eax
	movl      %ecx, 20(%esp)
	movl      %edx, (%esp)
	call      *24(%eax)
	movl      20(%esp), %ecx
	jmp       .L111
.L172:
	movl      4(%ebp), %eax
	movl      %edx, 36(%esp)
	movl      %ecx, 20(%esp)
	movl      %ebp, (%esp)
	call      *24(%eax)
	movl      36(%esp), %edx
	movl      20(%esp), %ecx
	jmp       .L110
.L125:
	movl      %eax, %edi
	jmp       .L92
.L100:
	movl      %edx, %eax
	movl      %ebp, %edx
	testl     %edx, %edx
	movl      %eax, %ebp
	jne       .L104
	jmp       .L105
.L165:
	call      __stack_chk_fail_local
.L163:
	movl      4(%edx), %eax
	movl      %edx, (%esp)
	call      *24(%eax)
	jmp       .L105
.L164:
	movl      4(%ebp), %eax
	movl      %ebp, (%esp)
	call      *24(%eax)
	.p2align 4,,4
	jmp       .L107
	.cfi_endproc
	.size	regex_symcomp, .-regex_symcomp
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	reg_dealloc
	.type	reg_dealloc, @function
reg_dealloc:
	.cfi_startproc
	pushl     %esi
	pushl     %ebx
	subl      $20, %esp
	movl      32(%esp), %esi
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      8(%esi), %eax
	testl     %eax, %eax
	je        .L175
	movl      %eax, (%esp)
	call      free@PLT
.L175:
	movl      1096(%esi), %eax
	testl     %eax, %eax
	je        .L177
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	je        .L195
.L177:
	movl      1100(%esi), %eax
	testl     %eax, %eax
	je        .L180
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	je        .L196
.L180:
	movl      1104(%esi), %eax
	testl     %eax, %eax
	je        .L183
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	je        .L197
.L183:
	movl      1108(%esi), %eax
	testl     %eax, %eax
	je        .L186
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	je        .L198
.L186:
	movl      1112(%esi), %eax
	testl     %eax, %eax
	je        .L189
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	jne       .L189
	movl      1112(%esi), %eax
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
.L189:
	movl      %esi, (%esp)
	call      PyObject_Free@PLT
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	ret       
	.p2align 4,,7
	.p2align 3
.L198:
	movl      1108(%esi), %eax
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
	jmp       .L186
	.p2align 4,,7
	.p2align 3
.L197:
	movl      1104(%esi), %eax
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
	jmp       .L183
	.p2align 4,,7
	.p2align 3
.L196:
	movl      1100(%esi), %eax
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
	jmp       .L180
	.p2align 4,,7
	.p2align 3
.L195:
	movl      1096(%esi), %eax
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
	jmp       .L177
	.cfi_endproc
	.size	reg_dealloc, .-reg_dealloc
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	regobj_getattr
	.type	regobj_getattr, @function
regobj_getattr:
	.cfi_startproc
	pushl     %ebp
	movl      $5, %ecx
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $28, %esp
	movl      52(%esp), %esi
	leal      .LC11@GOTOFF(%ebx), %edi
	repz cmpsb     
	jne       .L200
	movl      48(%esp), %eax
	movl      1100(%eax), %edx
	testl     %edx, %edx
	je        .L220
	movl      filler.9451@GOTOFF(%ebx), %eax
	testl     %eax, %eax
	je        .L203
.L206:
	movl      $100, (%esp)
	call      PyTuple_New@PLT
	testl     %eax, %eax
	movl      %eax, %edi
	je        .L260
	movl      48(%esp), %eax
	xorl      %ebp, %ebp
	leal      40(%eax), %esi
	leal      .LC12@GOTOFF(%ebx), %eax
	movl      %eax, 12(%esp)
	jmp       .L213
	.p2align 4,,7
	.p2align 3
.L262:
	cmpl      $-1, %ecx
	jne       .L208
	movl      filler.9451@GOTOFF(%ebx), %eax
	addl      $1, (%eax)
.L209:
	movl      %eax, 8(%esp)
	movl      %ebp, 4(%esp)
	movl      %edi, (%esp)
	call      PyTuple_SetItem@PLT
	testl     %eax, %eax
	js        .L228
	addl      $1, %ebp
	addl      $4, %esi
	cmpl      $100, %ebp
	je        .L232
.L213:
	movl      400(%esi), %eax
	movl      (%esi), %ecx
	cmpl      $-1, %eax
	je        .L262
.L208:
	movl      %eax, 8(%esp)
	movl      12(%esp), %eax
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      Py_BuildValue@PLT
	testl     %eax, %eax
	jne       .L209
.L228:
	subl      $1, (%edi)
	je        .L263
.L260:
	xorl      %eax, %eax
.L265:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L200:
	movl      52(%esp), %esi
	leal      .LC10@GOTOFF(%ebx), %ebp
	movl      $5, %ecx
	movl      %ebp, %edi
	repz cmpsb     
	jne       .L214
	movl      48(%esp), %eax
	movl      1100(%eax), %eax
	testl     %eax, %eax
	je        .L220
	addl      $1, (%eax)
	movl      48(%esp), %eax
	movl      1100(%eax), %eax
.L202:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L214:
	movl      52(%esp), %esi
	movl      $10, %ecx
	leal      .LC13@GOTOFF(%ebx), %edi
	repz cmpsb     
	je        .L264
	movl      52(%esp), %esi
	movl      $11, %ecx
	leal      .LC14@GOTOFF(%ebx), %edi
	repz cmpsb     
	jne       .L219
	movl      48(%esp), %eax
	movl      1104(%eax), %eax
	testl     %eax, %eax
	je        .L220
	addl      $1, (%eax)
	movl      48(%esp), %eax
	movl      1104(%eax), %eax
	jmp       .L202
	.p2align 4,,7
	.p2align 3
.L220:
	movl      _Py_NoneStruct@GOT(%ebx), %eax
	addl      $1, (%eax)
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L264:
	movl      48(%esp), %eax
	movl      1096(%eax), %eax
	testl     %eax, %eax
	je        .L220
	addl      $1, (%eax)
	movl      48(%esp), %eax
	movl      1096(%eax), %eax
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L263:
	movl      4(%edi), %eax
	movl      %edi, (%esp)
	call      *24(%eax)
	xorl      %eax, %eax
	jmp       .L265
	.p2align 4,,7
	.p2align 3
.L219:
	movl      52(%esp), %esi
	movl      $8, %ecx
	leal      .LC15@GOTOFF(%ebx), %edi
	repz cmpsb     
	je        .L266
	movl      52(%esp), %esi
	movl      $9, %ecx
	leal      .LC16@GOTOFF(%ebx), %edi
	repz cmpsb     
	jne       .L222
	movl      48(%esp), %eax
	movl      1108(%eax), %eax
	testl     %eax, %eax
	je        .L220
	addl      $1, (%eax)
	movl      48(%esp), %eax
	movl      1108(%eax), %eax
	jmp       .L202
	.p2align 4,,7
	.p2align 3
.L232:
	movl      %edi, %eax
	jmp       .L202
	.p2align 4,,7
	.p2align 3
.L203:
	leal      .LC12@GOTOFF(%ebx), %eax
	movl      $-1, 8(%esp)
	movl      $-1, 4(%esp)
	movl      %eax, (%esp)
	call      Py_BuildValue@PLT
	testl     %eax, %eax
	movl      %eax, filler.9451@GOTOFF(%ebx)
	jne       .L206
	xorl      %eax, %eax
	jmp       .L265
	.p2align 4,,7
	.p2align 3
.L266:
	movl      48(%esp), %eax
	movl      1112(%eax), %eax
	testl     %eax, %eax
	je        .L220
	addl      $1, (%eax)
	movl      48(%esp), %eax
	movl      1112(%eax), %eax
	jmp       .L202
.L222:
	movl      52(%esp), %esi
	movl      $12, %ecx
	leal      .LC17@GOTOFF(%ebx), %edi
	repz cmpsb     
	jne       .L223
	movl      $6, (%esp)
	call      PyList_New@PLT
	testl     %eax, %eax
	movl      %eax, %edi
	je        .L260
	xorl      %esi, %esi
	jmp       .L230
	.p2align 4,,7
	.p2align 3
.L225:
	movl      %eax, 8(%esp)
	movl      %esi, 4(%esp)
	movl      %edi, (%esp)
	call      PyList_SetItem@PLT
	testl     %eax, %eax
	js        .L228
	addl      $1, %esi
	movl      members@GOTOFF(%ebx,%esi,4), %ebp
	testl     %ebp, %ebp
	je        .L232
.L230:
	movl      %ebp, (%esp)
	call      PyString_FromString@PLT
	testl     %eax, %eax
	jne       .L225
	.p2align 4,,3
	jmp       .L228
.L223:
	movl      52(%esp), %eax
	movl      %eax, 8(%esp)
	movl      48(%esp), %eax
	movl      %eax, 4(%esp)
	leal      reg_methods@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      Py_FindMethod@PLT
	jmp       .L202
	.cfi_endproc
	.size	regobj_getattr, .-regobj_getattr
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	update_cache
	.type	update_cache, @function
update_cache:
	.cfi_startproc
	pushl     %edi
	movl      %eax, %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $48, %esp
	movl      %eax, 4(%esp)
	movl      $1, (%esp)
	call      PyTuple_Pack@PLT
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L277
	movl      cache_pat@GOTOFF(%ebx), %eax
	cmpl      %eax, %edi
	je        .L278
	testl     %eax, %eax
	je        .L271
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	je        .L283
.L271:
	movl      cache_prog@GOTOFF(%ebx), %eax
	movl      $0, cache_pat@GOTOFF(%ebx)
	testl     %eax, %eax
	je        .L274
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	je        .L284
.L274:
	leal      44(%esp), %eax
	movl      %eax, 12(%esp)
	leal      40(%esp), %eax
	movl      %eax, 8(%esp)
	leal      .LC18@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	movl      $0, 40(%esp)
	movl      $0, 44(%esp)
	call      PyArg_ParseTuple@PLT
	testl     %eax, %eax
	je        .L276
	movl      40(%esp), %eax
	movl      44(%esp), %edx
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      newregexobject
	testl     %eax, %eax
	movl      %eax, cache_prog@GOTOFF(%ebx)
	je        .L279
	addl      $1, (%edi)
	xorl      %eax, %eax
	movl      %edi, cache_pat@GOTOFF(%ebx)
.L269:
	movl      (%esi), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%esi)
	je        .L285
.L281:
	addl      $48, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.p2align 4,,7
	.p2align 3
.L285:
	movl      4(%esi), %edx
	movl      %eax, 28(%esp)
	movl      %esi, (%esp)
	call      *24(%edx)
	movl      28(%esp), %eax
	addl      $48, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.p2align 4,,7
	.p2align 3
.L284:
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
	jmp       .L274
	.p2align 4,,7
	.p2align 3
.L283:
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
	.p2align 4,,4
	jmp       .L271
	.p2align 4,,7
	.p2align 3
.L276:
	movl      $0, cache_prog@GOTOFF(%ebx)
	movl      $-1, %eax
	jmp       .L269
	.p2align 4,,7
	.p2align 3
.L278:
	xorl      %eax, %eax
	jmp       .L269
.L277:
	movl      $-1, %eax
	jmp       .L281
.L279:
	orl       $-1, %eax
	jmp       .L269
	.cfi_endproc
	.size	update_cache, .-update_cache
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	regex_search
	.type	regex_search, @function
regex_search:
	.cfi_startproc
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $52, %esp
	leal      44(%esp), %eax
	movl      %eax, 12(%esp)
	leal      40(%esp), %eax
	movl      %eax, 8(%esp)
	leal      .LC19@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      68(%esp), %eax
	movl      %eax, (%esp)
	call      PyArg_ParseTuple@PLT
	testl     %eax, %eax
	je        .L289
	movl      40(%esp), %eax
	call      update_cache
	testl     %eax, %eax
	js        .L289
	movl      44(%esp), %eax
	movl      %eax, 4(%esp)
	leal      .LC20@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      Py_BuildValue@PLT
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L289
	movl      %eax, 4(%esp)
	movl      cache_prog@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      regobj_search
	movl      (%esi), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%esi)
	je        .L295
	addl      $52, %esp
	popl      %ebx
	popl      %esi
	ret       
	.p2align 4,,7
	.p2align 3
.L289:
	addl      $52, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	ret       
	.p2align 4,,7
	.p2align 3
.L295:
	movl      4(%esi), %edx
	movl      %eax, 28(%esp)
	movl      %esi, (%esp)
	call      *24(%edx)
	movl      28(%esp), %eax
	addl      $52, %esp
	popl      %ebx
	popl      %esi
	ret       
	.cfi_endproc
	.size	regex_search, .-regex_search
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	regex_match
	.type	regex_match, @function
regex_match:
	.cfi_startproc
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $52, %esp
	leal      44(%esp), %eax
	movl      %eax, 12(%esp)
	leal      40(%esp), %eax
	movl      %eax, 8(%esp)
	leal      .LC21@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      68(%esp), %eax
	movl      %eax, (%esp)
	call      PyArg_ParseTuple@PLT
	testl     %eax, %eax
	je        .L299
	movl      40(%esp), %eax
	call      update_cache
	testl     %eax, %eax
	js        .L299
	movl      44(%esp), %eax
	movl      %eax, 4(%esp)
	leal      .LC20@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      Py_BuildValue@PLT
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L299
	movl      %eax, 4(%esp)
	movl      cache_prog@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      regobj_match
	movl      (%esi), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%esi)
	je        .L305
	addl      $52, %esp
	popl      %ebx
	popl      %esi
	ret       
	.p2align 4,,7
	.p2align 3
.L299:
	addl      $52, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	ret       
	.p2align 4,,7
	.p2align 3
.L305:
	movl      4(%esi), %edx
	movl      %eax, 28(%esp)
	movl      %esi, (%esp)
	call      *24(%edx)
	movl      28(%esp), %eax
	addl      $52, %esp
	popl      %ebx
	popl      %esi
	ret       
	.cfi_endproc
	.size	regex_match, .-regex_match
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	regobj_group
	.type	regobj_group, @function
regobj_group:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      68(%esp), %eax
	movl      64(%esp), %edi
	movl      %eax, (%esp)
	call      PyTuple_Size@PLT
	testl     %eax, %eax
	movl      %eax, 20(%esp)
	js        .L378
	je        .L379
	cmpl      $1, 20(%esp)
	je        .L380
	movl      20(%esp), %eax
	movl      %eax, (%esp)
	call      PyTuple_New@PLT
	testl     %eax, %eax
	movl      %eax, 24(%esp)
	je        .L378
	xorl      %esi, %esi
	jmp       .L338
	.p2align 4,,7
	.p2align 3
.L342:
	movl      _Py_NoneStruct@GOT(%ebx), %eax
	addl      $1, (%eax)
.L337:
	movl      %eax, 8(%esp)
	movl      24(%esp), %eax
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      PyTuple_SetItem@PLT
	testl     %eax, %eax
	js        .L339
	addl      $1, %esi
	cmpl      %esi, 20(%esp)
	jle       .L381
.L338:
	movl      68(%esp), %eax
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      PyTuple_GetItem@PLT
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L339
	movl      4(%eax), %eax
	cmpl      PyString_Type@GOT(%ebx), %eax
	je        .L328
	movl      PyString_Type@GOT(%ebx), %ecx
	movl      %eax, (%esp)
	movl      %ecx, 4(%esp)
	call      PyType_IsSubtype@PLT
	testl     %eax, %eax
	je        .L329
.L328:
	movl      1104(%edi), %eax
	testl     %eax, %eax
	je        .L326
	movl      %ebp, 4(%esp)
	movl      %eax, (%esp)
	call      PyDict_GetItem@PLT
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L326
.L329:
	movl      %ebp, (%esp)
	call      PyInt_AsLong@PLT
	cmpl      $-1, %eax
	movl      %eax, %edx
	je        .L382
	cmpl      $99, %eax
	ja        .L333
	movl      1100(%edi), %eax
	testl     %eax, %eax
	je        .L383
	leal      (%edi,%edx,4), %edx
	movl      440(%edx), %ecx
	movl      40(%edx), %ebp
	testl     %ecx, %ecx
	js        .L342
	movl      %ebp, %edx
	shrl      $31, %edx
	testb     %dl, %dl
	jne       .L342
	movl      %eax, (%esp)
	movl      %ecx, 28(%esp)
	call      PyString_AsString@PLT
	testl     %eax, %eax
	je        .L339
	movl      28(%esp), %ecx
	subl      %ebp, %ecx
	addl      %eax, %ebp
	movl      %ecx, 4(%esp)
	movl      %ebp, (%esp)
	call      PyString_FromStringAndSize@PLT
	testl     %eax, %eax
	jne       .L337
	jmp       .L339
	.p2align 4,,7
	.p2align 3
.L382:
	.p2align 4,,9
	call      PyErr_Occurred@PLT
	testl     %eax, %eax
	.p2align 4,,6
	jne       .L339
.L333:
	leal      .LC24@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      RegexError@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      PyErr_SetString@PLT
.L339:
	movl      24(%esp), %edi
	movl      (%edi), %eax
	movl      %eax, 20(%esp)
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%edi)
	je        .L384
.L378:
	xorl      %eax, %eax
.L308:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L380:
	movl      68(%esp), %eax
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      PyTuple_GetItem@PLT
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L378
	movl      4(%eax), %eax
	movl      PyString_Type@GOT(%ebx), %edx
	cmpl      %edx, %eax
	je        .L315
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      PyType_IsSubtype@PLT
	testl     %eax, %eax
	je        .L316
.L315:
	movl      1104(%edi), %eax
	testl     %eax, %eax
	je        .L313
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      PyDict_GetItem@PLT
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L313
.L316:
	movl      %esi, (%esp)
	call      PyInt_AsLong@PLT
	cmpl      $-1, %eax
	movl      %eax, %edx
	je        .L385
	cmpl      $99, %eax
	ja        .L320
	movl      1100(%edi), %eax
	testl     %eax, %eax
	je        .L386
	leal      (%edi,%edx,4), %edx
	movl      440(%edx), %edi
	movl      40(%edx), %esi
	testl     %edi, %edi
	jns       .L387
.L341:
	movl      _Py_NoneStruct@GOT(%ebx), %eax
	addl      $1, (%eax)
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L384:
	movl      4(%edi), %eax
	movl      %edi, (%esp)
	call      *24(%eax)
	jmp       .L378
	.p2align 4,,7
	.p2align 3
.L326:
	leal      .LC23@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      RegexError@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      PyErr_SetString@PLT
	jmp       .L339
	.p2align 4,,7
	.p2align 3
.L381:
	movl      24(%esp), %eax
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L387:
	movl      %esi, %edx
	shrl      $31, %edx
	testb     %dl, %dl
	jne       .L341
	movl      %eax, (%esp)
	call      PyString_AsString@PLT
	testl     %eax, %eax
	je        .L378
	subl      %esi, %edi
	addl      %esi, %eax
	movl      %edi, 4(%esp)
	movl      %eax, (%esp)
	call      PyString_FromStringAndSize@PLT
	jmp       .L308
.L383:
	leal      .LC25@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      RegexError@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      PyErr_SetString@PLT
	jmp       .L339
.L379:
	leal      .LC22@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      PyExc_TypeError@GOT(%ebx), %eax
	movl      (%eax), %eax
	movl      %eax, (%esp)
	call      PyErr_SetString@PLT
	jmp       .L378
.L385:
	call      PyErr_Occurred@PLT
	testl     %eax, %eax
	.p2align 4,,6
	jne       .L378
.L320:
	leal      .LC24@GOTOFF(%ebx), %eax
.L377:
	movl      %eax, 4(%esp)
	movl      RegexError@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      PyErr_SetString@PLT
	xorl      %eax, %eax
	jmp       .L308
.L313:
	leal      .LC23@GOTOFF(%ebx), %eax
	jmp       .L377
.L386:
	leal      .LC25@GOTOFF(%ebx), %edx
	movl      %edx, 4(%esp)
	movl      RegexError@GOTOFF(%ebx), %edx
	movl      %eax, 20(%esp)
	movl      %edx, (%esp)
	call      PyErr_SetString@PLT
	movl      20(%esp), %eax
	jmp       .L308
	.cfi_endproc
	.size	regobj_group, .-regobj_group
# ----------------------
	.p2align 4,,15
# ----------------------
	.local	regex_compile
	.type	regex_compile, @function
regex_compile:
	.cfi_startproc
	pushl     %ebp
	xorl      %ebp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $60, %esp
	leal      36(%esp), %eax
	movl      %eax, 12(%esp)
	leal      32(%esp), %eax
	movl      %eax, 8(%esp)
	movl      $0, 32(%esp)
	movl      $0, 36(%esp)
	leal      .LC18@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      84(%esp), %eax
	movl      %eax, (%esp)
	call      PyArg_ParseTuple@PLT
	testl     %eax, %eax
	je        .L389
	movl      32(%esp), %esi
	leal      44(%esp), %eax
	movl      %eax, 12(%esp)
	leal      40(%esp), %eax
	movl      36(%esp), %edi
	movl      %eax, 8(%esp)
	leal      .LC6@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      PyArg_Parse@PLT
	testl     %eax, %eax
	je        .L414
	testl     %edi, %edi
	je        .L392
	movl      %edi, (%esp)
	call      PyString_Size@PLT
	cmpl      $256, %eax
	jne       .L415
.L392:
	leal      Regextype@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      _PyObject_New@PLT
	testl     %eax, %eax
	movl      %eax, %edx
	je        .L414
	movl      $0, 8(%eax)
	testl     %edi, %edi
	movl      $0, 12(%eax)
	leal      840(%eax), %eax
	movl      %eax, 20(%edx)
	je        .L394
	movl      %edi, (%esp)
	movl      %edx, 28(%esp)
	call      PyString_AsString@PLT
	movl      28(%esp), %edx
	testl     %eax, %eax
	movl      %eax, 24(%edx)
	je        .L395
	addl      $1, (%edi)
.L396:
	leal      8(%edx), %eax
	movl      %edi, 1096(%edx)
	movl      $0, 1100(%edx)
	movl      $0, 1104(%edx)
	addl      $1, (%esi)
	movl      %esi, 1112(%edx)
	addl      $1, (%esi)
	movl      %esi, 1108(%edx)
	movl      %eax, 8(%esp)
	movl      44(%esp), %eax
	movl      %edx, 28(%esp)
	movl      %eax, 4(%esp)
	movl      40(%esp), %eax
	movl      %eax, (%esp)
	call      _Py_re_compile_pattern@PLT
	movl      28(%esp), %edx
	movl      %edx, %ebp
	testl     %eax, %eax
	je        .L389
	movl      %eax, 4(%esp)
	movl      RegexError@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      PyErr_SetString@PLT
	movl      28(%esp), %edx
.L395:
	subl      $1, (%edx)
	je        .L416
.L414:
	xorl      %ebp, %ebp
.L389:
	addl      $60, %esp
	movl      %ebp, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L394:
	movl      $0, 24(%edx)
	jmp       .L396
	.p2align 4,,7
	.p2align 3
.L416:
	movl      4(%edx), %eax
	xorl      %ebp, %ebp
	movl      %edx, (%esp)
	call      *24(%eax)
	jmp       .L389
	.p2align 4,,7
	.p2align 3
.L415:
	leal      .LC8@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      RegexError@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      PyErr_SetString@PLT
	jmp       .L389
	.cfi_endproc
	.size	regex_compile, .-regex_compile
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	initregex
	.type	initregex, @function
initregex:
	.cfi_startproc
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $44, %esp
	movl      $1012, 16(%esp)
	movl      $0, 12(%esp)
	movl      $0, 8(%esp)
	movl      PyType_Type@GOT(%ebx), %eax
	movl      %eax, Regextype@GOTOFF+4(%ebx)
	leal      regex_global_methods@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	leal      .LC26@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      Py_InitModule4@PLT
	testl     %eax, %eax
	je        .L417
	movl      %eax, (%esp)
	call      PyModule_GetDict@PLT
	movl      %eax, 24(%esp)
	movl      %eax, %edi
	leal      .LC27@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      PyExc_DeprecationWarning@GOT(%ebx), %eax
	movl      (%eax), %eax
	movl      %eax, (%esp)
	call      PyErr_Warn@PLT
	testl     %eax, %eax
	js        .L417
	leal      .LC28@GOTOFF(%ebx), %eax
	movl      $0, 8(%esp)
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_NewException@PLT
	testl     %eax, %eax
	movl      %eax, RegexError@GOTOFF(%ebx)
	je        .L417
	movl      %eax, 8(%esp)
	leal      .LC29@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      PyDict_SetItemString@PLT
	testl     %eax, %eax
	je        .L436
.L419:
.L417:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.p2align 4,,7
	.p2align 3
.L436:
	movl      $256, 4(%esp)
	movl      $0, (%esp)
	call      PyString_FromStringAndSize@PLT
	testl     %eax, %eax
	movl      %eax, 28(%esp)
	je        .L417
	movl      %eax, (%esp)
	call      PyString_AsString@PLT
	testl     %eax, %eax
	movl      %eax, %edi
	je        .L417
	call      __ctype_b_loc@PLT
	xorl      %esi, %esi
	movl      %eax, %ebp
	jmp       .L424
	.p2align 4,,7
	.p2align 3
.L438:
	call      __ctype_tolower_loc@PLT
	movl      (%eax), %eax
	movl      (%eax,%esi,4), %eax
	movb      %al, (%edi,%esi)
	addl      $1, %esi
	cmpl      $256, %esi
	je        .L437
.L424:
	movl      (%ebp), %eax
	testb     $1, 1(%eax,%esi,2)
	jne       .L438
	movl      %esi, %eax
	movb      %al, (%edi,%esi)
	addl      $1, %esi
	cmpl      $256, %esi
	jne       .L424
.L437:
	leal      .LC30@GOTOFF(%ebx), %eax
	movl      28(%esp), %edi
	movl      %eax, 4(%esp)
	movl      24(%esp), %eax
	movl      %edi, 8(%esp)
	movl      %eax, (%esp)
	call      PyDict_SetItemString@PLT
	testl     %eax, %eax
	js        .L417
	movl      (%edi), %eax
	movl      %eax, 24(%esp)
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%edi)
	je        .L439
.L425:
	call      PyErr_Occurred@PLT
	jmp       .L417
.L439:
	movl      28(%esp), %ecx
	movl      4(%ecx), %eax
	movl      %ecx, (%esp)
	call      *24(%eax)
	jmp       .L425
	.cfi_endproc
	.size	initregex, .-initregex
# ----------------------
	.local	filler.9451
	.comm	filler.9451,4,4
# ----------------------
	.section       .data.rel.local,"aw",@progbits
	.align 32
	.local	regex_global_methods
	.type	regex_global_methods, @object
regex_global_methods:
	.long	.LC31
	.long	regex_compile
	.long	1
	.zero	4
	.long	.LC32
	.long	regex_symcomp
	.long	1
	.zero	4
	.long	.LC33
	.long	regex_match
	.long	1
	.zero	4
	.long	.LC34
	.long	regex_search
	.long	1
	.zero	4
	.long	.LC35
	.long	regex_set_syntax
	.long	1
	.zero	4
	.long	.LC36
	.long	regex_get_syntax
	.long	4
	.zero	4
	.long	0
	.long	0
	.zero	8
	.size	regex_global_methods, 112
# ----------------------
	.local	cache_prog
	.comm	cache_prog,4,4
# ----------------------
	.local	cache_pat
	.comm	cache_pat,4,4
# ----------------------
	.align 32
	.local	Regextype
	.type	Regextype, @object
Regextype:
	.long	1
	.long	0
	.long	0
	.long	.LC37
	.long	1116
	.long	0
	.long	reg_dealloc
	.long	0
	.long	regobj_getattr
	.long	0
	.long	0
	.long	0
	.zero	144
	.size	Regextype, 192
# ----------------------
	.section       .data.rel.ro.local,"aw",@progbits
	.align 4
	.local	members
	.type	members, @object
members:
	.long	.LC10
	.long	.LC11
	.long	.LC13
	.long	.LC14
	.long	.LC15
	.long	.LC16
	.long	0
	.size	members, 28
# ----------------------
	.section       .data.rel.local,"aw",@progbits
	.align 32
	.local	reg_methods
	.type	reg_methods, @object
reg_methods:
	.long	.LC33
	.long	regobj_match
	.long	1
	.zero	4
	.long	.LC34
	.long	regobj_search
	.long	1
	.zero	4
	.long	.LC38
	.long	regobj_group
	.long	1
	.zero	4
	.long	0
	.long	0
	.zero	8
	.size	reg_methods, 64
# ----------------------
	.local	RegexError
	.comm	RegexError,4,4
# ----------------------
	.section       .text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.hidden	__x86.get_pc_thunk.bx
	.globl	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
	.cfi_startproc
	movl      (%esp), %ebx
	ret       
	.cfi_endproc
# ----------------------
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
