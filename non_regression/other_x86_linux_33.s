	.file	"(extract)email.cpp"
	.section	.text._ZN7acommon7OStream6printlERKNS_10ParmStringE,"axG",@progbits,_ZN7acommon7OStream6printlERKNS_10ParmStringE,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN7acommon7OStream6printlERKNS_10ParmStringE
	.type	_ZN7acommon7OStream6printlERKNS_10ParmStringE, @function
_ZN7acommon7OStream6printlERKNS_10ParmStringE:
.LFB491:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %esi
	movl	36(%esp), %edx
	movl	(%esi), %eax
	movl	%edx, 4(%esp)
	movl	%esi, (%esp)
	call	*4(%eax)
	movl	(%esi), %eax
	movl	%esi, (%esp)
	movl	$10, 4(%esp)
	call	*(%eax)
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE491:
	.size	_ZN7acommon7OStream6printlERKNS_10ParmStringE, .-_ZN7acommon7OStream6printlERKNS_10ParmStringE
	.section	.text._ZN7acommon7OStreamD2Ev,"axG",@progbits,_ZN7acommon7OStreamD5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN7acommon7OStreamD2Ev
	.type	_ZN7acommon7OStreamD2Ev, @function
_ZN7acommon7OStreamD2Ev:
.LFB497:
	.cfi_startproc
	call	__x86.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	movl	_ZTVN7acommon7OStreamE@GOT(%ecx), %eax
	leal	8(%eax), %edx
	movl	4(%esp), %eax
	movl	%edx, (%eax)
	ret
	.cfi_endproc
.LFE497:
	.size	_ZN7acommon7OStreamD2Ev, .-_ZN7acommon7OStreamD2Ev
	.weak	_ZN7acommon7OStreamD1Ev
	.set	_ZN7acommon7OStreamD1Ev,_ZN7acommon7OStreamD2Ev
	.section	.text._ZN7acommon16AddableContainerD2Ev,"axG",@progbits,_ZN7acommon16AddableContainerD5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN7acommon16AddableContainerD2Ev
	.type	_ZN7acommon16AddableContainerD2Ev, @function
_ZN7acommon16AddableContainerD2Ev:
.LFB1254:
	.cfi_startproc
	call	__x86.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	movl	_ZTVN7acommon16AddableContainerE@GOT(%ecx), %eax
	leal	8(%eax), %edx
	movl	4(%esp), %eax
	movl	%edx, (%eax)
	ret
	.cfi_endproc
.LFE1254:
	.size	_ZN7acommon16AddableContainerD2Ev, .-_ZN7acommon16AddableContainerD2Ev
	.weak	_ZN7acommon16AddableContainerD1Ev
	.set	_ZN7acommon16AddableContainerD1Ev,_ZN7acommon16AddableContainerD2Ev
	.text
	.align 2
	.p2align 4,,15
	.type	_ZN12_GLOBAL__N_111EmailFilter10QuoteChars5clearEv, @function
_ZN12_GLOBAL__N_111EmailFilter10QuoteChars5clearEv:
.LFB1266:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	12(%esp), %edx
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%esp), %eax
	movl	4(%edx), %ecx
	movl	%ecx, 8(%edx)
	movl	_ZN7acommonL6no_errE@GOTOFF(%ebx), %edx
	testl	%edx, %edx
	movl	%edx, (%eax)
	je	.L7
	addl	$1, 8(%edx)
.L7:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret	$4
	.cfi_endproc
.LFE1266:
	.size	_ZN12_GLOBAL__N_111EmailFilter10QuoteChars5clearEv, .-_ZN12_GLOBAL__N_111EmailFilter10QuoteChars5clearEv
	.section	.text.__x86.get_pc_thunk.cx,"axG",@progbits,__x86.get_pc_thunk.cx,comdat
	.globl	__x86.get_pc_thunk.cx
	.hidden	__x86.get_pc_thunk.cx
	.type	__x86.get_pc_thunk.cx, @function
__x86.get_pc_thunk.cx:
.LFB1622:
	.cfi_startproc
	movl	(%esp), %ecx
	ret
	.cfi_endproc
.LFE1622:
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB1623:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE1623:
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
