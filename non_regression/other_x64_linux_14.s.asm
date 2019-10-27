	.file	"(extract)data.cpp"
	.text
	.align 2
	.p2align 4,,15
# ----------------------
	.globl	_ZN8aspeller10DictionaryD0Ev
	.type	_ZN8aspeller10DictionaryD0Ev, @function
_ZN8aspeller10DictionaryD0Ev:
	pushq     %rbx
	movq      %rdi, %rbx
	call      _ZN8aspeller10DictionaryD1Ev@PLT
	movq      %rbx, %rdi
	popq      %rbx
	jmp       _ZdlPv@PLT
	.size	_ZN8aspeller10DictionaryD0Ev, .-_ZN8aspeller10DictionaryD0Ev
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	_ZThn40_N8aspeller10DictionaryD0Ev
	.type	_ZThn40_N8aspeller10DictionaryD0Ev, @function
_ZThn40_N8aspeller10DictionaryD0Ev:
	subq      $40, %rdi
	jmp       .LTHUNK4
	.size	_ZThn40_N8aspeller10DictionaryD0Ev, .-_ZThn40_N8aspeller10DictionaryD0Ev
# ----------------------
	.p2align 4,,15
# ----------------------
	.globl	_toto
	.type	_toto, @function
_toto:
	pushq     %r15
	pushq     %r14
	movq      (%rbx), %rax
	leaq      .LTHUNK4(%rip), %rdx
	ret       
	.size	_toto, .-_toto
# ----------------------
	.set	.LTHUNK4,_ZN8aspeller10DictionaryD0Ev
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
