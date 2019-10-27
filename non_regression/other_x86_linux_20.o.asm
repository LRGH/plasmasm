	.file	"regexmodule.c"
	.section       .text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.hidden	__x86.get_pc_thunk.bx
	.globl	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
	movl      (%esp), %ebx
	ret       
# ----------------------
	.section       .data.rel.ro.local,"wa",@progbits
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
	.section       .rodata.str1.4,"aMS",@progbits,1
.LC8:
	.string	"translation table must be 256 bytes"
.LC23:
	.string	"group() group name doesn't exist"
# ----------------------
.LC00000045.str1.4:
	.zero	3
	.align 4
.LC25:
	.string	"group() only valid after successful match/search"
# ----------------------
.LC00000079.str1.4:
	.zero	3
	.align 4
.LC27:
	.string	"the regex module is deprecated; please use the re module"
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
.LC00000133.str1.1:
	.string	"compile"
.LC0000013B.str1.1:
	.string	"symcomp"
.LC00000143.str1.1:
	.string	"match"
.LC00000149.str1.1:
	.string	"search"
.LC00000150.str1.1:
	.string	"set_syntax"
.LC0000015B.str1.1:
	.string	"get_syntax"
.LC00000166.str1.1:
	.string	"regex.regex"
.LC00000172.str1.1:
	.string	"group"
# ----------------------
	.section       .data.rel.local,"wa",@progbits
	.local	regex_global_methods
	.type	regex_global_methods, @object
regex_global_methods:
	.long	.LC00000133.str1.1
	.long	regex_compile
	.long	1
	.long	0
	.long	.LC0000013B.str1.1
	.long	regex_symcomp
	.long	1
	.long	0
	.long	.LC00000143.str1.1
	.long	regex_match
	.long	1
	.long	0
	.long	.LC00000149.str1.1
	.long	regex_search
	.long	1
	.long	0
	.long	.LC00000150.str1.1
	.long	regex_set_syntax
	.long	1
	.long	0
	.long	.LC0000015B.str1.1
	.long	regex_get_syntax
	.long	4
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.size	regex_global_methods, 112
# ----------------------
.LD00000070.rel.local:
	.zero	16
# ----------------------
	.local	Regextype
	.type	Regextype, @object
Regextype:
	.long	1
	.zero	8
	.long	.LC00000166.str1.1
	.long	1116
	.long	0
	.long	reg_dealloc
	.long	0
	.long	regobj_getattr
	.zero	156
	.size	Regextype, 192
# ----------------------
	.local	reg_methods
	.type	reg_methods, @object
reg_methods:
	.long	.LC00000143.str1.1
	.long	regobj_match
	.long	1
	.long	0
	.long	.LC00000149.str1.1
	.long	regobj_search
	.long	1
	.long	0
	.long	.LC00000172.str1.1
	.long	regobj_group
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.size	reg_methods, 64
# ----------------------
	.text
	.local	regex_get_syntax
	.type	regex_get_syntax, @function
regex_get_syntax:
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L00000006:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $24, %esp
	movl      _Py_re_syntax@GOT(%ebx), %eax
	movl      (%eax), %eax
	movl      %eax, (%esp)
	call      PyInt_FromLong@PLT
.L0000001F:
	addl      $24, %esp
	popl      %ebx
	ret       
	.size	regex_get_syntax, .-regex_get_syntax
# ----------------------
.L00000024:
	.p2align 4
# ----------------------
	.local	regex_set_syntax
	.type	regex_set_syntax, @function
regex_set_syntax:
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L00000036:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $40, %esp
	leal      28(%esp), %eax
	movl      %eax, 8(%esp)
	leal      .LC0@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      52(%esp), %eax
	movl      %eax, (%esp)
	call      PyArg_ParseTuple@PLT
.L0000005D:
	movl      %eax, %edx
	xorl      %eax, %eax
	testl     %edx, %edx
	je        .L000000BF
.L00000065:
	movl      28(%esp), %eax
	movl      %eax, (%esp)
	call      _Py_re_set_syntax@PLT
.L00000071:
	movl      %eax, 28(%esp)
	movl      cache_pat@GOTOFF(%ebx), %eax
	testl     %eax, %eax
	je        .L0000008A
.L0000007F:
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	je        .L000000D8
.L0000008A:
	movl      cache_prog@GOTOFF(%ebx), %eax
	movl      $0, cache_pat@GOTOFF(%ebx)
	testl     %eax, %eax
	je        .L000000A9
.L0000009E:
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	je        .L000000C8
.L000000A9:
	movl      28(%esp), %eax
	movl      $0, cache_prog@GOTOFF(%ebx)
	movl      %eax, (%esp)
	call      PyInt_FromLong@PLT
.L000000BF:
	addl      $40, %esp
	popl      %ebx
	ret       
.L000000C4:
	.p2align 3
.L000000C8:
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
.L000000D1:
	jmp       .L000000A9
.L000000D3:
	.p2align 3
.L000000D8:
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
.L000000E1:
	jmp       .L0000008A
	.size	regex_set_syntax, .-regex_set_syntax
# ----------------------
.L000000E3:
	.p2align 4
# ----------------------
	.local	regobj_search
	.type	regobj_search, @function
regobj_search:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L000000F8:
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
.L00000133:
	testl     %eax, %eax
	je        .L00000208
.L0000013B:
	leal      40(%esp), %eax
	movl      %eax, 12(%esp)
	leal      36(%esp), %eax
	movl      %eax, 8(%esp)
	leal      .LC2@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      PyArg_Parse@PLT
.L00000161:
	testl     %eax, %eax
	je        .L00000208
.L00000169:
	movl      44(%esp), %eax
	testl     %eax, %eax
	js        .L000001F0
.L00000171:
	movl      40(%esp), %ecx
	cmpl      %ecx, %eax
	jg        .L000001F0
.L00000179:
	movl      1100(%esi), %edx
	movl      %ecx, %edi
	subl      %eax, %edi
	testl     %edx, %edx
	je        .L00000198
.L00000187:
	subl      $1, (%edx)
	je        .L00000218
.L00000190:
	movl      44(%esp), %eax
	movl      40(%esp), %ecx
.L00000198:
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
.L000001C8:
	cmpl      $-1, %eax
	jl        .L00000230
.L000001CD:
	je        .L000001E0
.L000001CF:
	movl      32(%esp), %edx
	addl      $1, (%edx)
	movl      32(%esp), %edx
	movl      %edx, 1100(%esi)
.L000001E0:
	movl      %eax, (%esp)
	call      PyInt_FromLong@PLT
.L000001E8:
	addl      $48, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L000001EF:
	.p2align 3
.L000001F0:
	leal      .LC3@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      RegexError@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      PyErr_SetString@PLT
.L00000208:
	addl      $48, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L00000211:
	.p2align 3
.L00000218:
	movl      1100(%esi), %eax
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
.L00000227:
	jmp       .L00000190
.L0000022C:
	.p2align 3
.L00000230:
	call      PyErr_Occurred@PLT
.L00000235:
	testl     %eax, %eax
	jne       .L00000208
.L00000239:
	leal      .LC4@GOTOFF(%ebx), %edx
	movl      %edx, 4(%esp)
	movl      RegexError@GOTOFF(%ebx), %edx
	movl      %eax, 28(%esp)
	movl      %edx, (%esp)
	call      PyErr_SetString@PLT
.L00000255:
	movl      28(%esp), %eax
	jmp       .L000001E8
	.size	regobj_search, .-regobj_search
# ----------------------
.L0000025B:
	.p2align 3
# ----------------------
	.local	regobj_match
	.type	regobj_match, @function
regobj_match:
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L00000267:
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
.L000002A2:
	testl     %eax, %eax
	je        .L00000370
.L000002AA:
	leal      40(%esp), %eax
	movl      %eax, 12(%esp)
	leal      36(%esp), %eax
	movl      %eax, 8(%esp)
	leal      .LC6@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      PyArg_Parse@PLT
.L000002D0:
	testl     %eax, %eax
	je        .L00000370
.L000002D8:
	movl      44(%esp), %edx
	testl     %edx, %edx
	js        .L00000358
.L000002E0:
	movl      40(%esp), %ecx
	cmpl      %ecx, %edx
	jg        .L00000358
.L000002E8:
	movl      1100(%esi), %eax
	testl     %eax, %eax
	je        .L00000305
.L000002F2:
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	je        .L00000378
.L000002FD:
	movl      44(%esp), %edx
	movl      40(%esp), %ecx
.L00000305:
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
.L00000331:
	cmpl      $-1, %eax
	jl        .L00000390
.L00000336:
	je        .L00000349
.L00000338:
	movl      32(%esp), %edx
	addl      $1, (%edx)
	movl      32(%esp), %edx
	movl      %edx, 1100(%esi)
.L00000349:
	movl      %eax, (%esp)
	call      PyInt_FromLong@PLT
.L00000351:
	addl      $52, %esp
	popl      %ebx
	popl      %esi
	ret       
.L00000357:
	.p2align 3
.L00000358:
	leal      .LC7@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      RegexError@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      PyErr_SetString@PLT
.L00000370:
	addl      $52, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	ret       
.L00000378:
	movl      1100(%esi), %eax
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
.L00000387:
	jmp       .L000002FD
.L0000038C:
	.p2align 3
.L00000390:
	call      PyErr_Occurred@PLT
.L00000395:
	testl     %eax, %eax
	jne       .L00000370
.L00000399:
	leal      .LC4@GOTOFF(%ebx), %edx
	movl      %edx, 4(%esp)
	movl      RegexError@GOTOFF(%ebx), %edx
	movl      %eax, 28(%esp)
	movl      %edx, (%esp)
	call      PyErr_SetString@PLT
.L000003B5:
	movl      28(%esp), %eax
	jmp       .L00000351
	.size	regobj_match, .-regobj_match
# ----------------------
.L000003BB:
	.p2align 3
# ----------------------
	.local	newregexobject
	.type	newregexobject, @function
newregexobject:
	pushl     %ebp
	movl      %edx, %ebp
	pushl     %edi
	movl      %eax, %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L000003CD:
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
.L000003F8:
	testl     %eax, %eax
	je        .L000004C9
.L00000400:
	testl     %ebp, %ebp
	je        .L00000417
.L00000404:
	movl      %ebp, (%esp)
	call      PyString_Size@PLT
.L0000040C:
	cmpl      $256, %eax
	jne       .L000004F8
.L00000417:
	leal      Regextype@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      _PyObject_New@PLT
.L00000425:
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L000004C9
.L0000042F:
	movl      $0, 8(%eax)
	testl     %ebp, %ebp
	movl      $0, 12(%eax)
	leal      840(%eax), %eax
	movl      %eax, 20(%esi)
	je        .L000004D8
.L0000044E:
	movl      %ebp, (%esp)
	call      PyString_AsString@PLT
.L00000456:
	testl     %eax, %eax
	movl      %eax, 24(%esi)
	je        .L000004C4
.L0000045D:
	addl      $1, (%ebp)
.L00000461:
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
.L000004AC:
	movl      %esi, %edx
	testl     %eax, %eax
	je        .L000004CB
.L000004B2:
	movl      %eax, 4(%esp)
	movl      RegexError@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      PyErr_SetString@PLT
.L000004C4:
	subl      $1, (%esi)
	je        .L000004E8
.L000004C9:
	xorl      %edx, %edx
.L000004CB:
	addl      $44, %esp
	movl      %edx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000004D5:
	.p2align 3
.L000004D8:
	movl      $0, 24(%esi)
	jmp       .L00000461
.L000004E4:
	.p2align 3
.L000004E8:
	movl      4(%esi), %eax
	movl      %esi, (%esp)
	call      *24(%eax)
.L000004F1:
	jmp       .L000004C9
.L000004F3:
	.p2align 3
.L000004F8:
	leal      .LC8@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      RegexError@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      PyErr_SetString@PLT
.L00000510:
	xorl      %edx, %edx
	jmp       .L000004CB
	.size	newregexobject, .-newregexobject
# ----------------------
.L00000514:
	.p2align 4
# ----------------------
	.local	regex_symcomp
	.type	regex_symcomp, @function
regex_symcomp:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L00000529:
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
.L00000575:
	testl     %eax, %eax
	je        .L000006B8
.L0000057D:
	call      PyDict_New@PLT
.L00000582:
	testl     %eax, %eax
	movl      %eax, 28(%esp)
	je        .L000006B8
.L0000058E:
	movl      _Py_re_syntax@GOT(%ebx), %eax
	movl      48(%esp), %edi
	movl      (%eax), %eax
	movl      %edi, (%esp)
	movl      %eax, 20(%esp)
	call      PyString_AsString@PLT
.L000005A6:
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L00000698
.L000005B0:
	movl      %edi, (%esp)
	call      PyString_Size@PLT
.L000005B8:
	testl     %eax, %eax
	js        .L00000698
.L000005C0:
	leal      (%ebp,%eax), %esi
	cmpl      %esi, %ebp
	je        .L000007DA
.L000005CC:
	movl      %eax, 4(%esp)
	movl      $0, (%esp)
	call      PyString_FromStringAndSize@PLT
.L000005DC:
	testl     %eax, %eax
	movl      %eax, 56(%esp)
	je        .L00000698
.L000005E8:
	movl      %eax, (%esp)
	call      PyString_AsString@PLT
.L000005F0:
	testl     %eax, %eax
	je        .L00000698
.L000005F8:
	cmpl      %esi, %ebp
	jae       .L0000090C
.L00000600:
	movl      20(%esp), %edi
	xorl      %edx, %edx
	movl      $0, 32(%esp)
	andl      $1, %edi
	movl      %edi, 24(%esp)
	jmp       .L0000063C
.L00000617:
	.p2align 3
.L00000618:
	cmpb      $91, %cl
	je        .L000006E0
.L00000621:
	cmpb      $92, %cl
	jne       .L00000654
.L00000626:
	movb      $92, (%eax)
	addl      $1, %ebp
	addl      $1, %eax
	movl      $1, %edx
.L00000634:
	cmpl      %ebp, %esi
	jbe       .L0000090C
.L0000063C:
	movzbl    (%ebp), %ecx
	cmpb      $40, %cl
	jne       .L00000618
.L00000645:
	movl      24(%esp), %edi
	xorl      $1, %edi
	cmpl      %edi, %edx
	je        .L00000798
.L00000654:
	movb      %cl, (%eax)
	addl      $1, %ebp
	addl      $1, %eax
	xorl      %edx, %edx
	jmp       .L00000634
.L00000660:
	movl      %edx, %eax
	movl      %ebp, %edx
	movl      %eax, %ebp
.L00000666:
	subl      $1, (%edx)
	je        .L0000092B
.L0000066F:
	testl     %ebp, %ebp
	je        .L0000067D
.L00000673:
	subl      $1, (%ebp)
	je        .L00000939
.L0000067D:
	movl      56(%esp), %eax
	testl     %eax, %eax
	je        .L00000698
.L00000685:
	subl      $1, (%eax)
	jne       .L00000698
.L0000068A:
	movl      56(%esp), %eax
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
.L00000697:
	.p2align 3
.L00000698:
	movl      28(%esp), %edx
	movl      (%edx), %eax
	movl      %eax, 20(%esp)
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%edx)
	jne       .L000006B8
.L000006AB:
	movl      28(%esp), %edx
	movl      4(%edx), %eax
	movl      %edx, (%esp)
	call      *24(%eax)
.L000006B8:
	xorl      %eax, %eax
.L000006BA:
	movl      188(%esp), %edx
	xorl      %gs:20, %edx
	jne       .L00000926
.L000006CE:
	addl      $204, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000006D9:
	.p2align 4
.L000006E0:
	testl     %edx, %edx
	jne       .L00000654
.L000006E8:
	movb      $91, (%eax)
	movzbl    1(%ebp), %ecx
	leal      1(%ebp), %edi
	movl      %edi, 20(%esp)
	leal      2(%eax), %edi
	movb      %cl, 1(%eax)
	movl      20(%esp), %ecx
	cmpl      %ecx, %esi
	jbe       .L00000729
.L00000704:
	cmpb      $93, 1(%ebp)
	jne       .L00000719
.L0000070A:
	jmp       .L000007CC
.L0000070F:
	.p2align 3
.L00000710:
	cmpb      $93, (%ecx)
	je        .L000007C8
.L00000719:
	addl      $1, %ecx
	movzbl    (%ecx), %eax
	addl      $1, %edi
	cmpl      %esi, %ecx
	movb      %al, -1(%edi)
	jne       .L00000710
.L00000729:
	movl      56(%esp), %eax
	movl      %eax, (%esp)
	call      PyString_AsString@PLT
.L00000735:
	testl     %eax, %eax
	je        .L00000851
.L0000073D:
	subl      %eax, %edi
	leal      56(%esp), %eax
	movl      %edi, 4(%esp)
	movl      %eax, (%esp)
	call      _PyString_Resize@PLT
.L0000074F:
	movl      56(%esp), %esi
	testl     %esi, %esi
	je        .L00000698
.L0000075B:
	movl      28(%esp), %eax
	movl      52(%esp), %edx
	movl      %eax, 4(%esp)
	movl      48(%esp), %eax
	movl      %eax, (%esp)
	movl      %esi, %eax
	call      newregexobject
.L00000775:
	subl      $1, (%esi)
	jne       .L000006BA
.L0000077E:
	movl      4(%esi), %edx
	movl      %eax, 20(%esp)
	movl      %esi, (%esp)
	call      *24(%edx)
.L0000078B:
	movl      20(%esp), %eax
	jmp       .L000006BA
.L00000794:
	.p2align 3
.L00000798:
	leal      1(%eax), %edi
	movb      $40, (%eax)
	leal      1(%ebp), %eax
	cmpl      %eax, %esi
	movl      %eax, 20(%esp)
	jbe       .L00000729
.L000007A9:
	addl      $1, 32(%esp)
	cmpb      $60, 1(%ebp)
	je        .L000007E4
.L000007B4:
	movl      %edi, %eax
	movl      20(%esp), %ebp
	xorl      %edx, %edx
	jmp       .L0000063C
.L000007C1:
	.p2align 3
.L000007C8:
	movl      %ecx, 20(%esp)
.L000007CC:
	movl      20(%esp), %ebp
	movl      %edi, %eax
	addl      $1, %ebp
	jmp       .L00000634
.L000007DA:
	addl      $1, (%edi)
	movl      %edi, %esi
	jmp       .L0000075B
.L000007E4:
	leal      2(%ebp), %ecx
	cmpl      %ecx, %esi
	jbe       .L00000729
.L000007EF:
	movzbl    2(%ebp), %edx
	cmpb      $62, %dl
	je        .L000007B4
.L000007F8:
	movl      %ecx, 44(%esp)
	movl      %edx, 36(%esp)
	call      __ctype_b_loc@PLT
.L00000805:
	movl      36(%esp), %edx
	movl      44(%esp), %ecx
	movl      %edi, 36(%esp)
	movl      (%eax), %eax
	movl      %eax, %ebp
	leal      60(%esp), %eax
	movl      %eax, 40(%esp)
	jmp       .L00000828
.L0000081F:
	.p2align 3
.L00000820:
	movzbl    (%ecx), %edx
	cmpb      $62, %dl
	je        .L00000863
.L00000828:
	movzbl    %dl, %edi
	testb     $8, (%ebp,%edi,2)
	jne       .L0000083B
.L00000832:
	cmpb      $95, %dl
	jne       .L000008D5
.L0000083B:
	addl      $1, %ecx
	addl      $1, %eax
	cmpl      %esi, %ecx
	movb      %dl, -1(%eax)
	jne       .L00000820
.L00000848:
	movl      36(%esp), %edi
	jmp       .L00000729
.L00000851:
	movl      56(%esp), %edx
	subl      $1, (%edx)
	jne       .L00000698
.L0000085E:
	jmp       .L0000068A
.L00000863:
	movb      $0, (%eax)
	movl      40(%esp), %eax
	movl      %ecx, 44(%esp)
	movl      36(%esp), %edi
	movl      %eax, (%esp)
	call      PyString_FromString@PLT
.L0000087A:
	movl      %eax, %ebp
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      PyInt_FromLong@PLT
.L00000888:
	testl     %eax, %eax
	movl      %eax, %edx
	je        .L00000913
.L00000892:
	testl     %ebp, %ebp
	je        .L00000913
.L00000896:
	movl      %eax, 8(%esp)
	movl      %eax, 20(%esp)
	movl      28(%esp), %eax
	movl      %ebp, 4(%esp)
	movl      %eax, (%esp)
	call      PyDict_SetItem@PLT
.L000008AE:
	movl      20(%esp), %edx
	movl      44(%esp), %ecx
	testl     %eax, %eax
	jne       .L00000660
.L000008BE:
	subl      $1, (%ebp)
	je        .L000008F1
.L000008C4:
	subl      $1, (%edx)
	je        .L000008DE
.L000008C9:
	leal      1(%ecx), %ebp
	movl      %edi, %eax
	xorl      %edx, %edx
	jmp       .L00000634
.L000008D5:
	movl      36(%esp), %edi
	jmp       .L000007B4
.L000008DE:
	movl      4(%edx), %eax
	movl      %ecx, 20(%esp)
	movl      %edx, (%esp)
	call      *24(%eax)
.L000008EB:
	movl      20(%esp), %ecx
	jmp       .L000008C9
.L000008F1:
	movl      4(%ebp), %eax
	movl      %edx, 36(%esp)
	movl      %ecx, 20(%esp)
	movl      %ebp, (%esp)
	call      *24(%eax)
.L00000902:
	movl      36(%esp), %edx
	movl      20(%esp), %ecx
	jmp       .L000008C4
.L0000090C:
	movl      %eax, %edi
	jmp       .L00000729
.L00000913:
	movl      %edx, %eax
	movl      %ebp, %edx
	testl     %edx, %edx
	movl      %eax, %ebp
	jne       .L00000666
.L00000921:
	jmp       .L0000066F
.L00000926:
	call      __stack_chk_fail_local
.L0000092B:
	movl      4(%edx), %eax
	movl      %edx, (%esp)
	call      *24(%eax)
.L00000934:
	jmp       .L0000066F
.L00000939:
	movl      4(%ebp), %eax
	movl      %ebp, (%esp)
	call      *24(%eax)
.L00000942:
	jmp       .L0000067D
	.size	regex_symcomp, .-regex_symcomp
# ----------------------
.L00000947:
	.p2align 4
# ----------------------
	.local	reg_dealloc
	.type	reg_dealloc, @function
reg_dealloc:
	pushl     %esi
	pushl     %ebx
	subl      $20, %esp
	movl      32(%esp), %esi
	call      __x86.get_pc_thunk.bx
.L0000095E:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      8(%esi), %eax
	testl     %eax, %eax
	je        .L00000973
.L0000096B:
	movl      %eax, (%esp)
	call      free@PLT
.L00000973:
	movl      1096(%esi), %eax
	testl     %eax, %eax
	je        .L0000098C
.L0000097D:
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	je        .L00000A50
.L0000098C:
	movl      1100(%esi), %eax
	testl     %eax, %eax
	je        .L000009A5
.L00000996:
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	je        .L00000A38
.L000009A5:
	movl      1104(%esi), %eax
	testl     %eax, %eax
	je        .L000009BA
.L000009AF:
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	je        .L00000A20
.L000009BA:
	movl      1108(%esi), %eax
	testl     %eax, %eax
	je        .L000009CF
.L000009C4:
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	je        .L00000A08
.L000009CF:
	movl      1112(%esi), %eax
	testl     %eax, %eax
	je        .L000009F3
.L000009D9:
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	jne       .L000009F3
.L000009E4:
	movl      1112(%esi), %eax
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
.L000009F3:
	movl      %esi, (%esp)
	call      PyObject_Free@PLT
.L000009FB:
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	ret       
.L00000A01:
	.p2align 3
.L00000A08:
	movl      1108(%esi), %eax
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
.L00000A17:
	jmp       .L000009CF
.L00000A19:
	.p2align 4
.L00000A20:
	movl      1104(%esi), %eax
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
.L00000A2F:
	jmp       .L000009BA
.L00000A31:
	.p2align 3
.L00000A38:
	movl      1100(%esi), %eax
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
.L00000A47:
	jmp       .L000009A5
.L00000A4C:
	.p2align 3
.L00000A50:
	movl      1096(%esi), %eax
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
.L00000A5F:
	jmp       .L0000098C
	.size	reg_dealloc, .-reg_dealloc
# ----------------------
.L00000A64:
	.p2align 4
# ----------------------
	.local	regobj_getattr
	.type	regobj_getattr, @function
regobj_getattr:
	pushl     %ebp
	movl      $5, %ecx
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L00000A7E:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $28, %esp
	movl      52(%esp), %esi
	leal      .LC11@GOTOFF(%ebx), %edi
	repz cmpsb     
	jne       .L00000B50
.L00000A99:
	movl      48(%esp), %eax
	movl      1100(%eax), %edx
	testl     %edx, %edx
	je        .L00000BD0
.L00000AAB:
	movl      filler.9451@GOTOFF(%ebx), %eax
	testl     %eax, %eax
	je        .L00000C78
.L00000AB9:
	movl      $100, (%esp)
	call      PyTuple_New@PLT
.L00000AC5:
	testl     %eax, %eax
	movl      %eax, %edi
	je        .L00000B3F
.L00000ACB:
	movl      48(%esp), %eax
	xorl      %ebp, %ebp
	leal      40(%eax), %esi
	leal      .LC12@GOTOFF(%ebx), %eax
	movl      %eax, 12(%esp)
	jmp       .L00000B11
.L00000AE0:
	cmpl      $-1, %ecx
	jne       .L00000B1E
.L00000AE5:
	movl      filler.9451@GOTOFF(%ebx), %eax
	addl      $1, (%eax)
.L00000AEE:
	movl      %eax, 8(%esp)
	movl      %ebp, 4(%esp)
	movl      %edi, (%esp)
	call      PyTuple_SetItem@PLT
.L00000AFE:
	testl     %eax, %eax
	js        .L00000B36
.L00000B02:
	addl      $1, %ebp
	addl      $4, %esi
	cmpl      $100, %ebp
	je        .L00000C70
.L00000B11:
	movl      400(%esi), %eax
	movl      (%esi), %ecx
	cmpl      $-1, %eax
	je        .L00000AE0
.L00000B1E:
	movl      %eax, 8(%esp)
	movl      12(%esp), %eax
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      Py_BuildValue@PLT
.L00000B32:
	testl     %eax, %eax
	jne       .L00000AEE
.L00000B36:
	subl      $1, (%edi)
	je        .L00000C10
.L00000B3F:
	xorl      %eax, %eax
.L00000B41:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000B49:
	.p2align 4
.L00000B50:
	movl      52(%esp), %esi
	leal      .LC10@GOTOFF(%ebx), %ebp
	movl      $5, %ecx
	movl      %ebp, %edi
	repz cmpsb     
	jne       .L00000B88
.L00000B65:
	movl      48(%esp), %eax
	movl      1100(%eax), %eax
	testl     %eax, %eax
	je        .L00000BD0
.L00000B73:
	addl      $1, (%eax)
	movl      48(%esp), %eax
	movl      1100(%eax), %eax
.L00000B80:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000B88:
	movl      52(%esp), %esi
	movl      $10, %ecx
	leal      .LC13@GOTOFF(%ebx), %edi
	repz cmpsb     
	je        .L00000BE8
.L00000B9B:
	movl      52(%esp), %esi
	movl      $11, %ecx
	leal      .LC14@GOTOFF(%ebx), %edi
	repz cmpsb     
	jne       .L00000C20
.L00000BAE:
	movl      48(%esp), %eax
	movl      1104(%eax), %eax
	testl     %eax, %eax
	je        .L00000BD0
.L00000BBC:
	addl      $1, (%eax)
	movl      48(%esp), %eax
	movl      1104(%eax), %eax
	jmp       .L00000B80
.L00000BCB:
	.p2align 3
.L00000BD0:
	movl      _Py_NoneStruct@GOT(%ebx), %eax
	addl      $1, (%eax)
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000BE1:
	.p2align 3
.L00000BE8:
	movl      48(%esp), %eax
	movl      1096(%eax), %eax
	testl     %eax, %eax
	je        .L00000BD0
.L00000BF6:
	addl      $1, (%eax)
	movl      48(%esp), %eax
	movl      1096(%eax), %eax
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000C0B:
	.p2align 3
.L00000C10:
	movl      4(%edi), %eax
	movl      %edi, (%esp)
	call      *24(%eax)
.L00000C19:
	xorl      %eax, %eax
	jmp       .L00000B41
.L00000C20:
	movl      52(%esp), %esi
	movl      $8, %ecx
	leal      .LC15@GOTOFF(%ebx), %edi
	repz cmpsb     
	je        .L00000CB0
.L00000C33:
	movl      52(%esp), %esi
	movl      $9, %ecx
	leal      .LC16@GOTOFF(%ebx), %edi
	repz cmpsb     
	jne       .L00000CD4
.L00000C4A:
	movl      48(%esp), %eax
	movl      1108(%eax), %eax
	testl     %eax, %eax
	je        .L00000BD0
.L00000C5C:
	addl      $1, (%eax)
	movl      48(%esp), %eax
	movl      1108(%eax), %eax
	jmp       .L00000B80
.L00000C6E:
	.p2align 3
.L00000C70:
	movl      %edi, %eax
	jmp       .L00000B80
.L00000C77:
	.p2align 3
.L00000C78:
	leal      .LC12@GOTOFF(%ebx), %eax
	movl      $-1, 8(%esp)
	movl      $-1, 4(%esp)
	movl      %eax, (%esp)
	call      Py_BuildValue@PLT
.L00000C96:
	testl     %eax, %eax
	movl      %eax, filler.9451@GOTOFF(%ebx)
	jne       .L00000AB9
.L00000CA4:
	xorl      %eax, %eax
	jmp       .L00000B41
.L00000CAB:
	.p2align 3
.L00000CB0:
	movl      48(%esp), %eax
	movl      1112(%eax), %eax
	testl     %eax, %eax
	je        .L00000BD0
.L00000CC2:
	addl      $1, (%eax)
	movl      48(%esp), %eax
	movl      1112(%eax), %eax
	jmp       .L00000B80
.L00000CD4:
	movl      52(%esp), %esi
	movl      $12, %ecx
	leal      .LC17@GOTOFF(%ebx), %edi
	repz cmpsb     
	jne       .L00000D45
.L00000CE7:
	movl      $6, (%esp)
	call      PyList_New@PLT
.L00000CF3:
	testl     %eax, %eax
	movl      %eax, %edi
	je        .L00000B3F
.L00000CFD:
	xorl      %esi, %esi
	jmp       .L00000D32
.L00000D01:
	.p2align 3
.L00000D08:
	movl      %eax, 8(%esp)
	movl      %esi, 4(%esp)
	movl      %edi, (%esp)
	call      PyList_SetItem@PLT
.L00000D18:
	testl     %eax, %eax
	js        .L00000B36
.L00000D20:
	addl      $1, %esi
	movl      members@GOTOFF(%ebx,%esi,4), %ebp
	testl     %ebp, %ebp
	je        .L00000C70
.L00000D32:
	movl      %ebp, (%esp)
	call      PyString_FromString@PLT
.L00000D3A:
	testl     %eax, %eax
	jne       .L00000D08
.L00000D3E:
	.p2align 3
	jmp       .L00000B36
.L00000D45:
	movl      52(%esp), %eax
	movl      %eax, 8(%esp)
	movl      48(%esp), %eax
	movl      %eax, 4(%esp)
	leal      reg_methods@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      Py_FindMethod@PLT
.L00000D63:
	jmp       .L00000B80
	.size	regobj_getattr, .-regobj_getattr
# ----------------------
.L00000D68:
	.p2align 4
# ----------------------
	.local	update_cache
	.type	update_cache, @function
update_cache:
	pushl     %edi
	movl      %eax, %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L00000D7A:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	subl      $48, %esp
	movl      %eax, 4(%esp)
	movl      $1, (%esp)
	call      PyTuple_Pack@PLT
.L00000D93:
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L00000EAC
.L00000D9D:
	movl      cache_pat@GOTOFF(%ebx), %eax
	cmpl      %eax, %edi
	je        .L00000EA8
.L00000DAB:
	testl     %eax, %eax
	je        .L00000DBE
.L00000DAF:
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	je        .L00000E80
.L00000DBE:
	movl      cache_prog@GOTOFF(%ebx), %eax
	movl      $0, cache_pat@GOTOFF(%ebx)
	testl     %eax, %eax
	je        .L00000DE1
.L00000DD2:
	movl      (%eax), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	je        .L00000E70
.L00000DE1:
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
.L00000E13:
	testl     %eax, %eax
	je        .L00000E90
.L00000E17:
	movl      40(%esp), %eax
	movl      44(%esp), %edx
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      newregexobject
.L00000E2F:
	testl     %eax, %eax
	movl      %eax, cache_prog@GOTOFF(%ebx)
	je        .L00000EB3
.L00000E39:
	addl      $1, (%edi)
	xorl      %eax, %eax
	movl      %edi, cache_pat@GOTOFF(%ebx)
.L00000E44:
	movl      (%esi), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%esi)
	je        .L00000E58
.L00000E4F:
	addl      $48, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L00000E56:
	.p2align 3
.L00000E58:
	movl      4(%esi), %edx
	movl      %eax, 28(%esp)
	movl      %esi, (%esp)
	call      *24(%edx)
.L00000E65:
	movl      28(%esp), %eax
	addl      $48, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L00000E70:
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
.L00000E79:
	jmp       .L00000DE1
.L00000E7E:
	.p2align 3
.L00000E80:
	movl      4(%eax), %edx
	movl      %eax, (%esp)
	call      *24(%edx)
.L00000E89:
	jmp       .L00000DBE
.L00000E8E:
	.p2align 3
.L00000E90:
	movl      $0, cache_prog@GOTOFF(%ebx)
	movl      $-1, %eax
	jmp       .L00000E44
.L00000EA1:
	.p2align 3
.L00000EA8:
	xorl      %eax, %eax
	jmp       .L00000E44
.L00000EAC:
	movl      $-1, %eax
	jmp       .L00000E4F
.L00000EB3:
	orl       $-1, %eax
	jmp       .L00000E44
	.size	update_cache, .-update_cache
# ----------------------
.L00000EB8:
	.p2align 4
# ----------------------
	.local	regex_search
	.type	regex_search, @function
regex_search:
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L00000EC7:
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
.L00000EF6:
	testl     %eax, %eax
	je        .L00000F48
.L00000EFA:
	movl      40(%esp), %eax
	call      update_cache
.L00000F03:
	testl     %eax, %eax
	js        .L00000F48
.L00000F07:
	movl      44(%esp), %eax
	movl      %eax, 4(%esp)
	leal      .LC20@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      Py_BuildValue@PLT
.L00000F1D:
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L00000F48
.L00000F23:
	movl      %eax, 4(%esp)
	movl      cache_prog@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      regobj_search
.L00000F35:
	movl      (%esi), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%esi)
	je        .L00000F50
.L00000F40:
	addl      $52, %esp
	popl      %ebx
	popl      %esi
	ret       
.L00000F46:
	.p2align 3
.L00000F48:
	addl      $52, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	ret       
.L00000F50:
	movl      4(%esi), %edx
	movl      %eax, 28(%esp)
	movl      %esi, (%esp)
	call      *24(%edx)
.L00000F5D:
	movl      28(%esp), %eax
	addl      $52, %esp
	popl      %ebx
	popl      %esi
	ret       
	.size	regex_search, .-regex_search
# ----------------------
.L00000F67:
	.p2align 4
# ----------------------
	.local	regex_match
	.type	regex_match, @function
regex_match:
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L00000F77:
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
.L00000FA6:
	testl     %eax, %eax
	je        .L00000FF8
.L00000FAA:
	movl      40(%esp), %eax
	call      update_cache
.L00000FB3:
	testl     %eax, %eax
	js        .L00000FF8
.L00000FB7:
	movl      44(%esp), %eax
	movl      %eax, 4(%esp)
	leal      .LC20@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      Py_BuildValue@PLT
.L00000FCD:
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L00000FF8
.L00000FD3:
	movl      %eax, 4(%esp)
	movl      cache_prog@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      regobj_match
.L00000FE5:
	movl      (%esi), %ecx
	leal      -1(%ecx), %edx
	testl     %edx, %edx
	movl      %edx, (%esi)
	je        .L00001000
.L00000FF0:
	addl      $52, %esp
	popl      %ebx
	popl      %esi
	ret       
.L00000FF6:
	.p2align 3
.L00000FF8:
	addl      $52, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	ret       
.L00001000:
	movl      4(%esi), %edx
	movl      %eax, 28(%esp)
	movl      %esi, (%esp)
	call      *24(%edx)
.L0000100D:
	movl      28(%esp), %eax
	addl      $52, %esp
	popl      %ebx
	popl      %esi
	ret       
	.size	regex_match, .-regex_match
# ----------------------
.L00001017:
	.p2align 4
# ----------------------
	.local	regobj_group
	.type	regobj_group, @function
regobj_group:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	call      __x86.get_pc_thunk.bx
.L0000102C:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      68(%esp), %eax
	movl      64(%esp), %edi
	movl      %eax, (%esp)
	call      PyTuple_Size@PLT
.L00001042:
	testl     %eax, %eax
	movl      %eax, 20(%esp)
	js        .L000011C8
.L0000104E:
	je        .L0000130B
.L00001054:
	cmpl      $1, 20(%esp)
	je        .L000011D8
.L0000105F:
	movl      20(%esp), %eax
	movl      %eax, (%esp)
	call      PyTuple_New@PLT
.L0000106B:
	testl     %eax, %eax
	movl      %eax, 24(%esp)
	je        .L000011C8
.L00001077:
	xorl      %esi, %esi
	jmp       .L000010B2
.L0000107B:
	.p2align 3
.L00001080:
	movl      _Py_NoneStruct@GOT(%ebx), %eax
	addl      $1, (%eax)
.L00001089:
	movl      %eax, 8(%esp)
	movl      24(%esp), %eax
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      PyTuple_SetItem@PLT
.L0000109D:
	testl     %eax, %eax
	js        .L000011B1
.L000010A5:
	addl      $1, %esi
	cmpl      %esi, 20(%esp)
	jle       .L000012B0
.L000010B2:
	movl      68(%esp), %eax
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      PyTuple_GetItem@PLT
.L000010C2:
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L000011B1
.L000010CC:
	movl      4(%eax), %eax
	cmpl      PyString_Type@GOT(%ebx), %eax
	je        .L000010ED
.L000010D7:
	movl      PyString_Type@GOT(%ebx), %ecx
	movl      %eax, (%esp)
	movl      %ecx, 4(%esp)
	call      PyType_IsSubtype@PLT
.L000010E9:
	testl     %eax, %eax
	je        .L00001111
.L000010ED:
	movl      1104(%edi), %eax
	testl     %eax, %eax
	je        .L00001290
.L000010FB:
	movl      %ebp, 4(%esp)
	movl      %eax, (%esp)
	call      PyDict_GetItem@PLT
.L00001107:
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L00001290
.L00001111:
	movl      %ebp, (%esp)
	call      PyInt_AsLong@PLT
.L00001119:
	cmpl      $-1, %eax
	movl      %eax, %edx
	je        .L00001188
.L00001120:
	cmpl      $99, %eax
	ja        .L00001199
.L00001125:
	movl      1100(%edi), %eax
	testl     %eax, %eax
	je        .L000012EE
.L00001133:
	leal      (%edi,%edx,4), %edx
	movl      440(%edx), %ecx
	movl      40(%edx), %ebp
	testl     %ecx, %ecx
	js        .L00001080
.L00001147:
	movl      %ebp, %edx
	shrl      $31, %edx
	testb     %dl, %dl
	jne       .L00001080
.L00001154:
	movl      %eax, (%esp)
	movl      %ecx, 28(%esp)
	call      PyString_AsString@PLT
.L00001160:
	testl     %eax, %eax
	je        .L000011B1
.L00001164:
	movl      28(%esp), %ecx
	subl      %ebp, %ecx
	addl      %eax, %ebp
	movl      %ecx, 4(%esp)
	movl      %ebp, (%esp)
	call      PyString_FromStringAndSize@PLT
.L00001178:
	testl     %eax, %eax
	jne       .L00001089
.L00001180:
	jmp       .L000011B1
.L00001182:
	.p2align 3
.L00001188:
	.p2align 4
	call      PyErr_Occurred@PLT
.L00001195:
	testl     %eax, %eax
	jne       .L000011B1
.L00001199:
	leal      .LC24@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      RegexError@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      PyErr_SetString@PLT
.L000011B1:
	movl      24(%esp), %edi
	movl      (%edi), %eax
	movl      %eax, 20(%esp)
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%edi)
	je        .L00001280
.L000011C8:
	xorl      %eax, %eax
.L000011CA:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000011D2:
	.p2align 3
.L000011D8:
	movl      68(%esp), %eax
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      PyTuple_GetItem@PLT
.L000011EC:
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L000011C8
.L000011F2:
	movl      4(%eax), %eax
	movl      PyString_Type@GOT(%ebx), %edx
	cmpl      %edx, %eax
	je        .L0000120F
.L000011FF:
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      PyType_IsSubtype@PLT
.L0000120B:
	testl     %eax, %eax
	je        .L00001233
.L0000120F:
	movl      1104(%edi), %eax
	testl     %eax, %eax
	je        .L00001356
.L0000121D:
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      PyDict_GetItem@PLT
.L00001229:
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L00001356
.L00001233:
	movl      %esi, (%esp)
	call      PyInt_AsLong@PLT
.L0000123B:
	cmpl      $-1, %eax
	movl      %eax, %edx
	je        .L0000132A
.L00001246:
	cmpl      $99, %eax
	ja        .L00001337
.L0000124F:
	movl      1100(%edi), %eax
	testl     %eax, %eax
	je        .L0000135E
.L0000125D:
	leal      (%edi,%edx,4), %edx
	movl      440(%edx), %edi
	movl      40(%edx), %esi
	testl     %edi, %edi
	jns       .L000012C0
.L0000126D:
	movl      _Py_NoneStruct@GOT(%ebx), %eax
	addl      $1, (%eax)
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0000127E:
	.p2align 3
.L00001280:
	movl      4(%edi), %eax
	movl      %edi, (%esp)
	call      *24(%eax)
.L00001289:
	jmp       .L000011C8
.L0000128E:
	.p2align 3
.L00001290:
	leal      .LC23@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      RegexError@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      PyErr_SetString@PLT
.L000012A8:
	jmp       .L000011B1
.L000012AD:
	.p2align 3
.L000012B0:
	movl      24(%esp), %eax
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000012BC:
	.p2align 3
.L000012C0:
	movl      %esi, %edx
	shrl      $31, %edx
	testb     %dl, %dl
	jne       .L0000126D
.L000012C9:
	movl      %eax, (%esp)
	call      PyString_AsString@PLT
.L000012D1:
	testl     %eax, %eax
	je        .L000011C8
.L000012D9:
	subl      %esi, %edi
	addl      %esi, %eax
	movl      %edi, 4(%esp)
	movl      %eax, (%esp)
	call      PyString_FromStringAndSize@PLT
.L000012E9:
	jmp       .L000011CA
.L000012EE:
	leal      .LC25@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      RegexError@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      PyErr_SetString@PLT
.L00001306:
	jmp       .L000011B1
.L0000130B:
	leal      .LC22@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      PyExc_TypeError@GOT(%ebx), %eax
	movl      (%eax), %eax
	movl      %eax, (%esp)
	call      PyErr_SetString@PLT
.L00001325:
	jmp       .L000011C8
.L0000132A:
	call      PyErr_Occurred@PLT
.L0000132F:
	testl     %eax, %eax
	jne       .L000011C8
.L00001337:
	leal      .LC24@GOTOFF(%ebx), %eax
.L0000133D:
	movl      %eax, 4(%esp)
	movl      RegexError@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      PyErr_SetString@PLT
.L0000134F:
	xorl      %eax, %eax
	jmp       .L000011CA
.L00001356:
	leal      .LC23@GOTOFF(%ebx), %eax
	jmp       .L0000133D
.L0000135E:
	leal      .LC25@GOTOFF(%ebx), %edx
	movl      %edx, 4(%esp)
	movl      RegexError@GOTOFF(%ebx), %edx
	movl      %eax, 20(%esp)
	movl      %edx, (%esp)
	call      PyErr_SetString@PLT
.L0000137A:
	movl      20(%esp), %eax
	jmp       .L000011CA
	.size	regobj_group, .-regobj_group
# ----------------------
.L00001383:
	.p2align 4
# ----------------------
	.local	regex_compile
	.type	regex_compile, @function
regex_compile:
	pushl     %ebp
	xorl      %ebp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L0000139B:
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
.L000013DA:
	testl     %eax, %eax
	je        .L000014EE
.L000013E2:
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
.L0000140C:
	testl     %eax, %eax
	je        .L000014EC
.L00001414:
	testl     %edi, %edi
	je        .L0000142B
.L00001418:
	movl      %edi, (%esp)
	call      PyString_Size@PLT
.L00001420:
	cmpl      $256, %eax
	jne       .L00001518
.L0000142B:
	leal      Regextype@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      _PyObject_New@PLT
.L00001439:
	testl     %eax, %eax
	movl      %eax, %edx
	je        .L000014EC
.L00001443:
	movl      $0, 8(%eax)
	testl     %edi, %edi
	movl      $0, 12(%eax)
	leal      840(%eax), %eax
	movl      %eax, 20(%edx)
	je        .L000014F8
.L00001462:
	movl      %edi, (%esp)
	movl      %edx, 28(%esp)
	call      PyString_AsString@PLT
.L0000146E:
	movl      28(%esp), %edx
	testl     %eax, %eax
	movl      %eax, 24(%edx)
	je        .L000014E7
.L00001479:
	addl      $1, (%edi)
.L0000147C:
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
.L000014C7:
	movl      28(%esp), %edx
	movl      %edx, %ebp
	testl     %eax, %eax
	je        .L000014EE
.L000014D1:
	movl      %eax, 4(%esp)
	movl      RegexError@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      PyErr_SetString@PLT
.L000014E3:
	movl      28(%esp), %edx
.L000014E7:
	subl      $1, (%edx)
	je        .L00001508
.L000014EC:
	xorl      %ebp, %ebp
.L000014EE:
	addl      $60, %esp
	movl      %ebp, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L000014F8:
	movl      $0, 24(%edx)
	jmp       .L0000147C
.L00001504:
	.p2align 3
.L00001508:
	movl      4(%edx), %eax
	xorl      %ebp, %ebp
	movl      %edx, (%esp)
	call      *24(%eax)
.L00001513:
	jmp       .L000014EE
.L00001515:
	.p2align 3
.L00001518:
	leal      .LC8@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      RegexError@GOTOFF(%ebx), %eax
	movl      %eax, (%esp)
	call      PyErr_SetString@PLT
.L00001530:
	jmp       .L000014EE
	.size	regex_compile, .-regex_compile
# ----------------------
.L00001532:
	.p2align 4
# ----------------------
	.globl	initregex
	.type	initregex, @function
initregex:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	call      __x86.get_pc_thunk.bx
.L00001549:
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
.L0000158E:
	testl     %eax, %eax
	je        .L00001600
.L00001592:
	movl      %eax, (%esp)
	call      PyModule_GetDict@PLT
.L0000159A:
	movl      %eax, 24(%esp)
	movl      %eax, %edi
	leal      .LC27@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      PyExc_DeprecationWarning@GOT(%ebx), %eax
	movl      (%eax), %eax
	movl      %eax, (%esp)
	call      PyErr_Warn@PLT
.L000015BA:
	testl     %eax, %eax
	js        .L00001600
.L000015BE:
	leal      .LC28@GOTOFF(%ebx), %eax
	movl      $0, 8(%esp)
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      PyErr_NewException@PLT
.L000015DC:
	testl     %eax, %eax
	movl      %eax, RegexError@GOTOFF(%ebx)
	je        .L00001600
.L000015E6:
	movl      %eax, 8(%esp)
	leal      .LC29@GOTOFF(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      PyDict_SetItemString@PLT
.L000015FC:
	testl     %eax, %eax
	je        .L00001608
.L00001600:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00001608:
	movl      $256, 4(%esp)
	movl      $0, (%esp)
	call      PyString_FromStringAndSize@PLT
.L0000161C:
	testl     %eax, %eax
	movl      %eax, 28(%esp)
	je        .L00001600
.L00001624:
	movl      %eax, (%esp)
	call      PyString_AsString@PLT
.L0000162C:
	testl     %eax, %eax
	movl      %eax, %edi
	je        .L00001600
.L00001632:
	call      __ctype_b_loc@PLT
.L00001637:
	xorl      %esi, %esi
	movl      %eax, %ebp
	jmp       .L00001658
.L0000163D:
	.p2align 3
.L00001640:
	call      __ctype_tolower_loc@PLT
.L00001645:
	movl      (%eax), %eax
	movl      (%eax,%esi,4), %eax
	movb      %al, (%edi,%esi)
	addl      $1, %esi
	cmpl      $256, %esi
	je        .L00001672
.L00001658:
	movl      (%ebp), %eax
	testb     $1, 1(%eax,%esi,2)
	jne       .L00001640
.L00001662:
	movl      %esi, %eax
	movb      %al, (%edi,%esi)
	addl      $1, %esi
	cmpl      $256, %esi
	jne       .L00001658
.L00001672:
	leal      .LC30@GOTOFF(%ebx), %eax
	movl      28(%esp), %edi
	movl      %eax, 4(%esp)
	movl      24(%esp), %eax
	movl      %edi, 8(%esp)
	movl      %eax, (%esp)
	call      PyDict_SetItemString@PLT
.L00001690:
	testl     %eax, %eax
	js        .L00001600
.L00001698:
	movl      (%edi), %eax
	movl      %eax, 24(%esp)
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, (%edi)
	je        .L000016B1
.L000016A7:
	call      PyErr_Occurred@PLT
.L000016AC:
	jmp       .L00001600
.L000016B1:
	movl      28(%esp), %ecx
	movl      4(%ecx), %eax
	movl      %ecx, (%esp)
	call      *24(%eax)
.L000016BE:
	jmp       .L000016A7
	.size	initregex, .-initregex
# ----------------------
	.local	filler.9451
	.comm	filler.9451,4,4
# ----------------------
	.local	cache_prog
	.comm	cache_prog,4,4
# ----------------------
	.local	cache_pat
	.comm	cache_pat,4,4
# ----------------------
	.local	RegexError
	.comm	RegexError,4,4
# ----------------------
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
