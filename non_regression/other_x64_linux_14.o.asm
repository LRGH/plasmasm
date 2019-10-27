	.file	"(extract)data.cpp"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
	.globl	_ZN8aspeller10DictionaryD0Ev
	.type	_ZN8aspeller10DictionaryD0Ev, @function
_ZN8aspeller10DictionaryD0Ev:
	pushq     %rbx
	movq      %rdi, %rbx
	call      _ZN8aspeller10DictionaryD1Ev@PLT
.L00000009:
	movq      %rbx, %rdi
	popq      %rbx
	jmp       _ZdlPv@PLT
	.size	_ZN8aspeller10DictionaryD0Ev, .-_ZN8aspeller10DictionaryD0Ev
# ----------------------
.L00000012:
	.p2align 4
# ----------------------
	.globl	_ZThn40_N8aspeller10DictionaryD0Ev
	.type	_ZThn40_N8aspeller10DictionaryD0Ev, @function
_ZThn40_N8aspeller10DictionaryD0Ev:
	subq      $40, %rdi
	jmp       .LTHUNK12
	.size	_ZThn40_N8aspeller10DictionaryD0Ev, .-_ZThn40_N8aspeller10DictionaryD0Ev
# ----------------------
.L00000026:
	.p2align 4
# ----------------------
	.globl	_toto
	.type	_toto, @function
_toto:
	pushq     %r15
	pushq     %r14
	movq      (%rbx), %rax
	leaq      .LTHUNK13(%rip), %rdx
	ret       
	.size	_toto, .-_toto
# ----------------------
	.set	.LTHUNK12,_ZN8aspeller10DictionaryD0Ev
	.set	.LTHUNK13,_ZN8aspeller10DictionaryD0Ev
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
