	.file	"(extract)plotport.c"
	.section       .rodata
	.align 4
	.globl	XX_LOWER
	.type	XX_LOWER, @object
XX_LOWER:
	.byte	46
	.size	XX_LOWER, 1
# ----------------------
	.globl	XX_UPPER
	.type	XX_UPPER, @object
XX_UPPER:
	.byte	39
	.size	XX_UPPER, 1
# ----------------------
	.globl	YY
	.type	YY, @object
YY:
	.byte	124
	.size	YY, 1
# ----------------------
	.globl	BLANK
	.type	BLANK, @object
BLANK:
	.byte	32
.LC00000004:
	.long	.L0000001C
	.long	.L00000044
	.long	.L00000098
	.long	.L0000001C
	.long	.L000000E4
	.long	.L0000001C
	.long	.L00000194
	.long	.L0000001C
	.long	.L00000038
	.size	BLANK, 1
# ----------------------
	.text
	.local	gtofp
	.type	gtofp, @function
gtofp:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      %eax, %edi
	movl      (%eax), %eax
	shrl      $25, %eax
	cmpl      $8, %eax
	movl      %edx, %esi
	ja        .L0000001C
.L00000015:
	jmp       *.LC00000004(,%eax,4)
.L0000001C:
	subl      $8, %esp
	pushl     $.LC662
	pushl     $11
	call      pari_err
.L0000002B:
	xorl      %eax, %eax
.L0000002D:
	addl      $16, %esp
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000038:
	subl      $8, %esp
	pushl     %edx
	pushl     %edi
	call      quadtofp
.L00000042:
	jmp       .L0000002D
.L00000044:
	movl      avma, %eax
	movl      %eax, %ebx
	subl      bot, %eax
	leal      0(,%edx,4), %edx
	shrl      $2, %eax
	subl      %edx, %ebx
	cmpl      %esi, %eax
	jb        .L274
.L00000065:
	testl     $-16777216, %esi
	movl      %ebx, avma
	jne       .L275
.L00000077:
	subl      $8, %esp
	orl       $67108864, %esi
	movl      %esi, (%ebx)
	pushl     %ebx
	pushl     %edi
	call      affir
.L00000089:
	addl      $16, %esp
.L0000008C:
	movl      %ebx, %eax
.L0000008E:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L00000096:
	.p2align 3
.L00000098:
	movl      avma, %ebp
	movl      %ebp, %ebx
	subl      bot, %ebp
	leal      0(,%edx,4), %ecx
	shrl      $2, %ebp
	subl      %ecx, %ebx
	cmpl      %edx, %ebp
	jb        .L276
.L000000BA:
	testl     $-16777216, %esi
	movl      %ebx, avma
	jne       .L277
.L000000CC:
	subl      $8, %esp
	orl       $67108864, %esi
	movl      %esi, (%ebx)
	pushl     %ebx
	pushl     %edi
	call      affrr
.L000000DE:
	addl      $16, %esp
	jmp       .L0000008C
.L000000E3:
	.p2align 2
.L000000E4:
	movl      4(%edi), %ebx
	movl      avma, %ecx
	movl      %ebx, 40(%esp)
	movl      %ecx, %ebx
	subl      bot, %ecx
	movl      8(%edi), %ebp
	shrl      $2, %ecx
	leal      0(,%edx,4), %edi
	subl      %edi, %ebx
	cmpl      %edx, %ecx
	jb        .L278
.L00000110:
	testl     $-16777216, %esi
	movl      %ebx, avma
	jne       .L279
.L00000122:
	movl      %esi, %ecx
	orl       $67108864, %ecx
	movl      %ecx, (%ebx)
	movl      avma, %edx
	movl      %edx, 36(%esp)
	subl      $8, %esp
	pushl     %ebx
	pushl     52(%esp)
	call      affir
.L00000143:
	movl      4(%ebp), %eax
	andl      $16777215, %eax
	addl      $16, %esp
	cmpl      $3, %eax
	jg        .L31
.L00000157:
	je        .L280
.L0000015D:
	subl      $8, %esp
	pushl     %ebx
	subl      $12, %esp
	pushl     8(%ebp)
	pushl     %ebx
	call      divrs
.L0000016D:
	addl      $20, %esp
	pushl     %eax
	call      affrr
.L00000176:
	movl      4(%ebp), %esi
	addl      $16, %esp
	testl     %esi, %esi
	js        .L281
.L00000184:
	movl      36(%esp), %eax
	movl      %eax, avma
	movl      %ebx, %eax
	jmp       .L0000008E
.L00000194:
	movl      8(%edi), %ebp
	movl      (%ebp), %eax
	shrl      $25, %eax
	decl      %eax
	movl      4(%edi), %ebx
	je        .L283
.L000001A7:
	movl      (%ebx), %ecx
	shrl      $25, %ecx
	decl      %ecx
	je        .L284
.L000001B3:
	movl      avma, %ebx
	movl      %ebx, %ebp
	subl      bot, %ebp
	shrl      $2, %ebp
	leal      -12(%ebx), %edx
	cmpl      $3, %ebp
	movl      %edx, 20(%esp)
	jb        .L285
.L000001D4:
	movl      20(%esp), %eax
	movl      %eax, avma
	movl      $201326595, -12(%ebx)
	movl      4(%edi), %ebp
	movl      (%ebp), %eax
	shrl      $25, %eax
	cmpl      $2, %eax
	je        .L189
.L000001F6:
	jle       .L286
.L000001FC:
	cmpl      $4, %eax
	je        .L287
.L00000205:
	subl      $8, %esp
	pushl     $.LC660
	pushl     $11
	call      pari_err
.L00000214:
	addl      $16, %esp
	xorl      %eax, %eax
	movl      20(%esp), %ebx
	movl      %eax, 4(%ebx)
	movl      8(%edi), %edi
	movl      (%edi), %eax
	shrl      $25, %eax
	cmpl      $2, %eax
	je        .L229
.L00000231:
	jg        .L237
.L00000237:
	decl      %eax
	je        .L288
.L0000023E:
	subl      $8, %esp
	pushl     $.LC660
	pushl     $11
	call      pari_err
.L0000024D:
	addl      $16, %esp
	xorl      %eax, %eax
	movl      20(%esp), %ebx
	movl      %eax, 8(%ebx)
	addl      $44, %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	gtofp, .-gtofp
# ----------------------
	.local	current_color
	.comm	current_color,72,32
# ----------------------
	.comm	pari_plot,52,32
# ----------------------
	.comm	pari_psplot,52,32
# ----------------------
	.comm	rectgraph,72,32
# ----------------------
	.ident	"GCC: (GNU) 3.4.6 20060404 (Red Hat 3.4.6-11)"
	.section	.note.GNU-stack,"",@progbits
