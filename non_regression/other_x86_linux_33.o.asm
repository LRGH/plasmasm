	.file	"(extract)email.cpp"
	.section       .text.__x86.get_pc_thunk.cx,"axG",@progbits,__x86.get_pc_thunk.cx,comdat
	.hidden	__x86.get_pc_thunk.cx
	.globl	__x86.get_pc_thunk.cx
	.type	__x86.get_pc_thunk.cx, @function
__x86.get_pc_thunk.cx:
	movl      (%esp), %ecx
	ret       
# ----------------------
	.section       .text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.hidden	__x86.get_pc_thunk.bx
	.globl	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
	movl      (%esp), %ebx
	ret       
# ----------------------
	.section       .text._ZN7acommon7OStreamD2Ev,"axG",@progbits,_ZN7acommon7OStreamD5Ev,comdat
	.weak	_ZN7acommon7OStreamD2Ev
	.type	_ZN7acommon7OStreamD2Ev, @function
_ZN7acommon7OStreamD2Ev:
	call      __x86.get_pc_thunk.cx
.L00000005._ZN7acommon7OStreamD2Ev:
	addl      $_GLOBAL_OFFSET_TABLE_, %ecx
	movl      _ZTVN7acommon7OStreamE@GOT(%ecx), %eax
	leal      8(%eax), %edx
	movl      4(%esp), %eax
	movl      %edx, (%eax)
	ret       
	.size	_ZN7acommon7OStreamD2Ev, .-_ZN7acommon7OStreamD2Ev
# ----------------------
	.section       .text._ZN7acommon16AddableContainerD2Ev,"axG",@progbits,_ZN7acommon16AddableContainerD5Ev,comdat
	.weak	_ZN7acommon16AddableContainerD2Ev
	.type	_ZN7acommon16AddableContainerD2Ev, @function
_ZN7acommon16AddableContainerD2Ev:
	call      __x86.get_pc_thunk.cx
.L00000005._ZN7acommon16AddableContainerD2Ev:
	addl      $_GLOBAL_OFFSET_TABLE_, %ecx
	movl      _ZTVN7acommon16AddableContainerE@GOT(%ecx), %eax
	leal      8(%eax), %edx
	movl      4(%esp), %eax
	movl      %edx, (%eax)
	ret       
	.size	_ZN7acommon16AddableContainerD2Ev, .-_ZN7acommon16AddableContainerD2Ev
# ----------------------
	.section       .text._ZN7acommon7OStream6printlERKNS_10ParmStringE,"axG",@progbits,_ZN7acommon7OStream6printlERKNS_10ParmStringE,comdat
	.weak	_ZN7acommon7OStream6printlERKNS_10ParmStringE
	.type	_ZN7acommon7OStream6printlERKNS_10ParmStringE, @function
_ZN7acommon7OStream6printlERKNS_10ParmStringE:
	pushl     %esi
	subl      $24, %esp
	movl      32(%esp), %esi
	movl      36(%esp), %edx
	movl      (%esi), %eax
	movl      %edx, 4(%esp)
	movl      %esi, (%esp)
	call      *4(%eax)
.L00000018._ZN7acommon7OStream6printlERKNS_10ParmStringE:
	movl      (%esi), %eax
	movl      %esi, (%esp)
	movl      $10, 4(%esp)
	call      *(%eax)
.L00000027._ZN7acommon7OStream6printlERKNS_10ParmStringE:
	addl      $24, %esp
	popl      %esi
	ret       
	.size	_ZN7acommon7OStream6printlERKNS_10ParmStringE, .-_ZN7acommon7OStream6printlERKNS_10ParmStringE
# ----------------------
	.text
	.local	_ZN12_GLOBAL__N_111EmailFilter10QuoteChars5clearEv
	.type	_ZN12_GLOBAL__N_111EmailFilter10QuoteChars5clearEv, @function
_ZN12_GLOBAL__N_111EmailFilter10QuoteChars5clearEv:
	pushl     %ebx
	movl      12(%esp), %edx
	call      __x86.get_pc_thunk.bx
.L0000000A:
	addl      $_GLOBAL_OFFSET_TABLE_, %ebx
	movl      8(%esp), %eax
	movl      4(%edx), %ecx
	movl      %ecx, 8(%edx)
	movl      _ZN7acommonL6no_errE@GOTOFF(%ebx), %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	je        .L0000002A
.L00000026:
	addl      $1, 8(%edx)
.L0000002A:
	popl      %ebx
	ret       $4
	.size	_ZN12_GLOBAL__N_111EmailFilter10QuoteChars5clearEv, .-_ZN12_GLOBAL__N_111EmailFilter10QuoteChars5clearEv
# ----------------------
	.weak	_ZN7acommon7OStreamD1Ev
	.set	_ZN7acommon7OStreamD1Ev,_ZN7acommon7OStreamD2Ev
	.weak	_ZN7acommon16AddableContainerD1Ev
	.set	_ZN7acommon16AddableContainerD1Ev,_ZN7acommon16AddableContainerD2Ev
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
