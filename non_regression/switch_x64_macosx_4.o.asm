	.macosx_version_min 10, 12
	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_ellrootno_global
_ellrootno_global:
	pushq     %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $24, %rsp
	movq      %rsi, %rax
	movq      %rdi, %r14
	movq      %rax, 16(%rsp)
	leaq      16(%rsp), %rdx
	movl      $2, %esi
	movq      %rax, %rdi
	call      _Z_lvalrem
L0000002B:
	movq      $-1, %rbx
	testq     %rax, %rax
	je        L00000045
L00000037:
	movq      %r14, %rdi
	call      _ellrootno_2
L0000003F:
	movq      %rax, %rbx
	negq      %rbx
L00000045:
	movq      16(%rsp), %rdi
	leaq      16(%rsp), %rdx
	movl      $3, %esi
	call      _Z_lvalrem
L00000059:
	testq     %rax, %rax
	je        L0000006A
L0000005E:
	movq      %r14, %rdi
	call      _ellrootno_3
L00000066:
	imulq     %rax, %rbx
L0000006A:
	movq      16(%rsp), %rdi
	call      _Z_factor
L00000074:
	movq      8(%rax), %r13
	movl      $1, %ebp
	testl     $16777214, (%r13)
	je        L0000011E
L0000008B:
	movq      16(%rax), %rax
	movq      %rax, 8(%rsp)
	movl      $16777215, %edx
	.align 4, 0x90
L000000A0:
	movq      (%r13,%rbp,8), %r12
	movq      8(%rsp), %rax
	movq      (%rax,%rbp,8), %rax
	movq      8(%rax), %rcx
	andq      %rdx, %rcx
	cmpq      $2, %rcx
	movl      $16777215, %r15d
	movl      $0, %edx
	je        L000000FB
L000000C6:
	cmpq      $3, %rcx
	jne       L000000E0
L000000CC:
	movq      16(%rax), %rdx
	jmp       L000000F5
L000000D2:
	.align 4, 0x90
L000000E0:
	movl      $15, %edi
	xorl      %eax, %eax
	leaq      LC00001172(%rip), %rsi
	call      _pari_err
L000000F3:
	xorl      %edx, %edx
L000000F5:
	movl      $16777215, %r15d
L000000FB:
	movq      %r14, %rdi
	movq      %r12, %rsi
	call      _ellrootno_p
L00000106:
	imulq     %rax, %rbx
	incq      %rbp
	movq      (%r13), %rax
	andq      %r15, %rax
	cmpq      %rax, %rbp
	movl      $16777215, %edx
	jl        L000000A0
L0000011E:
	movq      %rbx, %rax
	addq      $24, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
_ellrootno_2:
	pushq     %r14
	pushq     %rbx
	subq      $88, %rsp
	movq      %rdi, %rbx
	leaq      56(%rsp), %rax
	movq      %rax, 16(%rsp)
	leaq      48(%rsp), %rax
	movq      %rax, 8(%rsp)
	leaq      64(%rsp), %rax
	movq      %rax, (%rsp)
	leaq      40(%rsp), %rcx
	leaq      72(%rsp), %r8
	leaq      32(%rsp), %r9
	movl      $2, %esi
	movl      $64, %edx
	xorl      %eax, %eax
	call      _val_init
L00000177:
	movl      $1, %eax
	cmpq      $0, 48(%rsp)
	je        L000006AA
L00000188:
	leaq      80(%rsp), %rdx
	movl      $2, %esi
	movq      %rbx, %rdi
	call      _neron
L0000019A:
	movq      %rax, %rdi
	movq      80(%rsp), %rcx
	cmpq      $5, %rcx
	jl        L000001D8
L000001A8:
	movq      16(%rbx), %rdi
	movl      $2, %esi
	call      _umodiu
L000001B6:
	movq      %rax, %r14
	movq      24(%rbx), %rdi
	movl      $2, %esi
	call      _umodiu
L000001C7:
	addl      %r14d, %eax
	addl      %eax, %eax
	andq      $2, %rax
	decq      %rax
	jmp       L000006AA
L000001D8:
	cmpq      $-10, %rcx
	jg        L00000208
L000001DE:
	movq      $-1, %rax
	cmpq      $2, %rdi
	jne       L000006AA
L000001EF:
	movq      64(%rsp), %rsi
L000001F4:
	movq      $-1, %rdi
L000001FB:
	call      _kross
L00000200:
	negq      %rax
	jmp       L000006AA
L00000208:
	movl      $1, %eax
	addq      $9, %rcx
	cmpq      $12, %rcx
	ja        L000005C4
L0000021B:
	movq      72(%rsp), %rsi
	movq      64(%rsp), %rdx
	leaq      (%rsi,%rdx,2), %r8
	leaq      L000006E0(%rip), %rbx
	movslq    (%rbx,%rcx,4), %rcx
	addq      %rbx, %rcx
	jmp       *%rcx
L00000239:
	movq      $-1, %rax
	cmpq      $2, %rdi
	jne       L000006AA
L0000024A:
	movq      56(%rsp), %rsi
	jmp       L000001F4
L00000251:
	movq      $-1, %rax
	cmpq      $2, %rdi
	jne       L000006AA
L00000262:
	imulq     56(%rsp), %rdx
	jmp       L00000628
L0000026D:
	movl      $1, %eax
	cmpq      $1, %rdi
	je        L000006AA
L0000027C:
	jmp       L00000449
L00000281:
	movl      $1, %eax
	cmpq      $1, %rdi
	je        L000006AA
L00000290:
	cmpq      $3, %rdi
	jne       L0000042D
L0000029A:
	movq      %rsi, %rax
	sarq      $63, %rax
	shrq      $60, %rax
	addq      %rsi, %rax
	andq      $-16, %rax
	movq      %rsi, %rcx
	subq      %rax, %rcx
	movl      $1, %eax
	cmpq      $11, %rcx
	je        L000006AA
L000002C1:
	leaq      (%rsi,%rdx,4), %rax
	movq      %rax, %rcx
	sarq      $63, %rcx
	shrq      $60, %rcx
	addq      %rax, %rcx
	andq      $-16, %rcx
	subq      %rcx, %rax
	cmpq      $3, %rax
	jmp       L0000069A
L000002E3:
	cmpq      $1, %rdi
	jne       L00000314
L000002E9:
	movq      %r8, %rax
	sarq      $63, %rax
	shrq      $59, %rax
	addq      %r8, %rax
	andq      $-32, %rax
	subq      %rax, %r8
	cmpq      $23, %r8
	jmp       L0000069A
L00000307:
	decq      %rdi
	cmpq      $3, %rdi
	jbe       L000003DC
L00000314:
	leaq      (%rdx,%rsi,2), %rsi
	movl      $2, %edi
	jmp       L000001FB
L00000322:
	cmpq      $1, %rdi
	jne       L00000628
L0000032C:
	movq      $-2, %rdi
	jmp       L0000062F
L00000338:
	decq      %rdi
	cmpq      $3, %rdi
	ja        L00000628
L00000345:
	leaq      L00000724(%rip), %rax
	movslq    (%rax,%rdi,4), %rcx
	addq      %rax, %rcx
	jmp       *%rcx
L00000355:
	movl      $2, %edi
	movq      %r8, %rsi
	jmp       L000001FB
L00000362:
	decq      %rdi
	cmpq      $4, %rdi
	ja        L00000628
L0000036F:
	leaq      L00000748(%rip), %rax
	movslq    (%rax,%rdi,4), %rcx
	addq      %rax, %rcx
	jmp       *%rcx
L0000037F:
	movl      $1, %eax
	movq      40(%rsp), %rcx
	cmpq      $5, %rcx
	je        L000006AA
L00000393:
	cmpq      $4, %rcx
	jne       L000005C4
L0000039D:
	movq      $-1, %rdi
	call      _kross
L000003A9:
	jmp       L000006AA
L000003AE:
	decq      %rdi
	cmpq      $4, %rdi
	ja        L00000628
L000003BB:
	leaq      L00000734(%rip), %rax
	movslq    (%rax,%rdi,4), %rcx
	addq      %rax, %rcx
	jmp       *%rcx
L000003CB:
	imulq     %rsi, %rdx
L000003CF:
	movl      $2, %edi
	movq      %rdx, %rsi
	jmp       L000001FB
L000003DC:
	leaq      L00000714(%rip), %rax
	movslq    (%rax,%rdi,4), %rcx
	addq      %rax, %rcx
	jmp       *%rcx
L000003EC:
	addq      %rdx, %rdx
	subq      %rdx, %rsi
	movq      %rsi, %rax
	sarq      $63, %rax
	shrq      $58, %rax
	addq      %rsi, %rax
	andq      $-64, %rax
	movq      %rsi, %rcx
	subq      %rax, %rcx
	addq      $64, %rcx
	subq      %rax, %rsi
	cmovs     %rcx, %rsi
	movl      $1, %eax
	cmpq      $3, %rsi
	je        L000006AA
L00000424:
	cmpq      $19, %rsi
	jmp       L0000069A
L0000042D:
	cmpq      $2, %rdi
	jne       L00000449
L00000433:
	movl      $1, %eax
	cmpq      $10, 32(%rsp)
	jne       L000005C4
L00000444:
	jmp       L000006AA
L00000449:
	movq      32(%rsp), %rax
	leal      -8(%rax), %ecx
	shlq      %cl, %rdx
	addl      %edx, %esi
	andq      $15, %rsi
	cmpq      $10, %rax
	jne       L00000478
L00000460:
	movl      $1, %eax
	cmpq      $9, %rsi
	je        L000006AA
L0000046F:
	cmpq      $13, %rsi
	jmp       L0000069A
L00000478:
	movl      $1, %eax
	cmpq      $9, %rsi
	je        L000006AA
L00000487:
	cmpq      $5, %rsi
	jmp       L0000069A
L00000490:
	cmpq      $8, 32(%rsp)
	jne       L000006B2
L0000049C:
	movl      $2, %edi
	jmp       L000005A6
L000004A6:
	movq      %rdx, %rax
	sarq      $63, %rax
	shrq      $61, %rax
	addq      %rdx, %rax
	andq      $-8, %rax
	subq      %rax, %rdx
	movl      $1, %eax
	cmpq      $7, %rdx
	je        L000006AA
L000004CA:
	movq      %r8, %rax
	sarq      $63, %rax
	shrq      $59, %rax
	addq      %r8, %rax
	andq      $-32, %rax
	subq      %rax, %r8
	cmpq      $11, %r8
	jmp       L0000069A
L000004E8:
	movl      $1, %eax
	cmpq      $6, 40(%rsp)
	jne       L000005C4
L000004F9:
	jmp       L000006AA
L000004FE:
	movq      40(%rsp), %rcx
	cmpq      $7, %rcx
	jge       L00000628
L0000050D:
	movq      $-1, %rax
	cmpq      $6, %rcx
	jne       L000006AA
L0000051E:
	imulq     %rsi, %rdx
	movq      $-1, %rdi
	movq      %rdx, %rsi
	jmp       L000001FB
L00000531:
	movq      $-1, %rdi
	call      _kross
L0000053D:
	leaq      (%rax,%rax), %rdi
	movq      64(%rsp), %rsi
	call      _kross
L0000054B:
	jmp       L000006AA
L00000550:
	movq      $-1, %rdi
	call      _kross
L0000055C:
	movq      %rax, %rbx
	negq      %rbx
	movq      72(%rsp), %rsi
	movq      $-1, %rdi
	call      _kross
L00000573:
	leaq      (%rax,%rax), %rdi
	negq      %rdi
	movq      64(%rsp), %rsi
	imulq     72(%rsp), %rsi
	call      _kross
L0000058A:
	imulq     %rbx, %rax
	jmp       L000006AA
L00000593:
	cmpq      $11, 32(%rsp)
	jne       L000006C0
L0000059F:
	movq      $-2, %rdi
L000005A6:
	movq      %r8, %rsi
	call      _kross
L000005AE:
	jmp       L000006AA
L000005B3:
	movl      $1, %eax
	cmpq      $7, 32(%rsp)
	je        L000006AA
L000005C4:
	movq      $-1, %rax
	jmp       L000006AA
L000005D0:
	movq      %rdx, %rax
	sarq      $63, %rax
	shrq      $61, %rax
	addq      %rdx, %rax
	andq      $-8, %rax
	movq      %rdx, %rcx
	subq      %rax, %rcx
	movl      $1, %eax
	cmpq      $5, %rcx
	je        L000006AA
L000005F7:
	imulq     %rsi, %rdx
	movq      %rdx, %rax
	sarq      $63, %rax
	shrq      $61, %rax
	addq      %rdx, %rax
	andq      $-8, %rax
	subq      %rax, %rdx
	cmpq      $5, %rdx
	jmp       L0000069A
L00000619:
	movq      40(%rsp), %rcx
	cmpq      $6, %rcx
	jl        L000006CC
L00000628:
	movq      $-1, %rdi
L0000062F:
	movq      %rdx, %rsi
	call      _kross
L00000637:
	jmp       L000006AA
L00000639:
	movl      32(%rsp), %ecx
	addl      $-5, %ecx
	shlq      %cl, %rdx
	subl      %edx, %esi
	andq      $15, %rsi
	movl      $1, %eax
	cmpq      $7, %rsi
	je        L000006AA
L00000654:
	cmpq      $11, %rsi
	jmp       L0000069A
L0000065A:
	movq      %rdx, %rax
	sarq      $63, %rax
	shrq      $61, %rax
	addq      %rdx, %rax
	andq      $-8, %rax
	movq      %rdx, %rcx
	subq      %rax, %rcx
	movl      $1, %eax
	cmpq      $3, %rcx
	je        L000006AA
L0000067D:
	leaq      (%rdx,%rsi,2), %rax
	movq      %rax, %rcx
	sarq      $63, %rcx
	shrq      $61, %rcx
	addq      %rax, %rcx
	andq      $-8, %rcx
	subq      %rcx, %rax
	cmpq      $7, %rax
L0000069A:
	movl      $1, %ecx
	movq      $-1, %rax
	cmove     %rcx, %rax
L000006AA:
	addq      $88, %rsp
	popq      %rbx
	popq      %r14
	ret       
L000006B2:
	movq      $-2, %rdi
	call      _kross
L000006BE:
	jmp       L000006AA
L000006C0:
	movq      $-2, %rdi
	jmp       L000001FB
L000006CC:
	movq      $-1, %rax
	cmpq      $5, %rcx
	jne       L000006AA
L000006D9:
	jmp       L000001F4
L000006DE:
	.align 4, 0x90
# ----------------------
L000006E0:
	.long	L00000239-L000006E0
	.long	L00000251-L000006E0
	.long	L0000026D-L000006E0
	.long	L00000281-L000006E0
	.long	L000002E3-L000006E0
	.long	L000005C4-L000006E0
	.long	L00000307-L000006E0
	.long	L00000322-L000006E0
	.long	L00000338-L000006E0
	.long	L000005C4-L000006E0
	.long	L000006AA-L000006E0
	.long	L00000362-L000006E0
	.long	L000003AE-L000006E0
# ----------------------
L00000714:
	.long	L000003EC-L00000714
	.long	L00000531-L00000714
	.long	L00000550-L00000714
	.long	L00000593-L00000714
# ----------------------
L00000724:
	.long	L00000355-L00000724
	.long	L000004A6-L00000724
	.long	L000004E8-L00000724
	.long	L000004FE-L00000724
# ----------------------
L00000734:
	.long	L000003CB-L00000734
	.long	L000003CF-L00000734
	.long	L00000639-L00000734
	.long	L0000065A-L00000734
	.long	L00000490-L00000734
# ----------------------
L00000748:
	.long	L0000037F-L00000748
	.long	L000005B3-L00000748
	.long	L000005D0-L00000748
	.long	L00000619-L00000748
	.long	L00000490-L00000748
L0000075C:
	.align 4, 0x90
_ellrootno_3:
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	subq      $80, %rsp
	movq      %rdi, %rbx
	leaq      48(%rsp), %rax
	movq      %rax, 16(%rsp)
	leaq      40(%rsp), %rax
	movq      %rax, 8(%rsp)
	leaq      56(%rsp), %rax
	movq      %rax, (%rsp)
	leaq      32(%rsp), %rcx
	leaq      64(%rsp), %r8
	leaq      24(%rsp), %r9
	movl      $3, %esi
	movl      $81, %edx
	xorl      %eax, %eax
	call      _val_init
L000007AD:
	movl      $1, %eax
	cmpq      $0, 40(%rsp)
	je        L0000085F
L000007BE:
	leaq      72(%rsp), %rdx
	movl      $3, %esi
	movq      %rbx, %rdi
	call      _neron
L000007D0:
	movq      %rax, %r15
	movq      56(%rsp), %rdi
	movl      $3, %esi
	call      _kross
L000007E2:
	movq      %rax, %r12
	movq      72(%rsp), %rbx
	cmpq      $4, %rbx
	jle       L000007F5
L000007F0:
	movq      %r12, %rax
	jmp       L0000085F
L000007F5:
	movq      56(%rsp), %r14
	movq      $2049638230412172402, %rcx
	movq      %r14, %rax
	imulq     %rcx
	movq      %rdx, %r13
	movq      64(%rsp), %rdi
	movl      $3, %esi
	call      _kross
L0000081C:
	movq      %rax, %rcx
	movl      $1, %eax
	addq      $4, %rbx
	cmpq      $8, %rbx
	ja        L00000858
L0000082E:
	movq      %r13, %rdx
	shrq      $63, %rdx
	addq      %r13, %rdx
	leaq      (%rdx,%rdx,8), %rdx
	subq      %rdx, %r14
	leaq      L00000980(%rip), %rdx
	movslq    (%rdx,%rbx,4), %rsi
	addq      %rdx, %rsi
	jmp       *%rsi
L0000084F:
	decq      %r15
	cmpq      $3, %r15
	jbe       L000008C5
L00000858:
	movq      $-1, %rax
L0000085F:
	addq      $80, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	ret       
L0000086D:
	movl      $1, %eax
	leaq      -1(%r15), %rdx
	cmpq      $3, %rdx
	ja        L0000091E
L00000880:
	leaq      L000009B4(%rip), %rsi
	movslq    (%rsi,%rdx,4), %rdx
	addq      %rsi, %rdx
	jmp       *%rdx
L00000890:
	movl      $1, %eax
	cmpq      $4, %r14
	je        L0000085F
L0000089B:
	cmpq      $6, %r14
	movl      $1, %ecx
	movq      $-1, %rax
	cmovg     %rcx, %rax
	jmp       L0000085F
L000008B1:
	cmpq      $3, %r15
	je        L000008F5
L000008B7:
	cmpq      $2, %r15
	jne       L00000900
L000008BD:
	negq      %rcx
	movq      %rcx, %rax
	jmp       L0000085F
L000008C5:
	leaq      L000009A4(%rip), %rax
	movslq    (%rax,%r15,4), %rcx
	addq      %rax, %rcx
	movq      %r12, %rax
	jmp       *%rcx
L000008D8:
	cmpq      $4, 32(%rsp)
	jne       L00000957
L000008E0:
	movl      $1, %eax
	cmpq      $4, %r14
	je        L0000085F
L000008EF:
	cmpq      $8, %r14
	jmp       L0000096A
L000008F5:
	negq      %r12
	movq      %r12, %rax
	jmp       L0000085F
L00000900:
	cmpq      $1, %r15
	jne       L0000091E
L00000906:
	movq      48(%rsp), %rdi
	movl      $3, %esi
	call      _kross
L00000915:
	imulq     %r12, %rax
	jmp       L0000085F
L0000091E:
	cmpq      $2, %r15
	movl      $1, %eax
	cmove     %rax, %r12
	movq      %r12, %rax
	jmp       L0000085F
L00000933:
	negq      %r12
	imulq     %r12, %rcx
	movq      %rcx, %rax
	jmp       L0000085F
L00000942:
	movl      $1, %eax
	cmpq      $2, %r14
	je        L0000085F
L00000951:
	cmpq      $7, %r14
	jmp       L0000096A
L00000957:
	movl      $1, %eax
	cmpq      $1, %r14
	je        L0000085F
L00000966:
	cmpq      $2, %r14
L0000096A:
	movl      $1, %ecx
	movq      $-1, %rax
	cmove     %rcx, %rax
	jmp       L0000085F
L0000097F:
	.align 4, 0x90
# ----------------------
L00000980:
	.long	L0000084F-L00000980
	.long	L0000085F-L00000980
	.long	L0000091E-L00000980
	.long	L00000858-L00000980
	.long	L00000858-L00000980
	.long	L0000085F-L00000980
	.long	L0000086D-L00000980
	.long	L0000085F-L00000980
	.long	L000008B1-L00000980
# ----------------------
L000009A4:
	.long	L000008D8-L000009A4
	.long	L000008F5-L000009A4
	.long	L00000942-L000009A4
	.long	L0000085F-L000009A4
# ----------------------
L000009B4:
	.long	L00000890-L000009B4
	.long	L00000933-L000009B4
	.long	L0000085F-L000009B4
	.long	L000008F5-L000009B4
L000009C4:
	.align 4, 0x90
_ellrootno_p:
	pushq     %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	pushq     %rax
	movq      %rsi, %rbp
	movq      %rdi, %rbx
	movl      $1, %eax
	testq     %rdx, %rdx
	je        L00000BC2
L000009EF:
	cmpq      $1, %rdx
	jne       L00000BD1
L000009F9:
	movq      88(%rbx), %rbx
	movq      (%rbx), %r10
	movq      %r10, %r13
	andq      $16777215, %r13
	movq      _avma@GOTPCREL(%rip), %r15
	movq      (%r15), %r12
	leaq      0(,%r13,8), %rax
	movq      %r12, %r14
	subq      %rax, %r14
	movq      _bot@GOTPCREL(%rip), %rax
	movq      %r12, %rcx
	subq      (%rax), %rcx
	shrq      $3, %rcx
	cmpq      %r13, %rcx
	jae       L00000A52
L00000A38:
	movl      $14, %edi
	xorl      %eax, %eax
	movq      %r14, (%rsp)
	movq      %r10, %r14
	call      _pari_err
L00000A4B:
	movq      %r14, %r10
	movq      (%rsp), %r14
L00000A52:
	movq      %r14, (%r15)
	movq      $-16777217, %rax
	andq      (%rbx), %rax
	movq      %rax, (%r14)
	cmpq      $2, %r13
	jb        L00000B93
L00000A6C:
	movq      %r10, %rcx
	andq      $16777215, %rcx
	movq      %rcx, %rdi
	negq      %rdi
	cmpq      $-3, %rdi
	movq      $-2, %rsi
	movq      $-2, %rax
	cmovg     %rdi, %rax
	addq      %rcx, %rax
	cmpq      $-1, %rax
	movq      %r13, %rdx
	je        L00000B5E
L00000AA2:
	incq      %rax
	cmpq      $-3, %rdi
	cmovg     %rdi, %rsi
	xorl      %r9d, %r9d
	movq      %rax, %r8
	andq      $-4, %r8
	movq      %r13, %rdx
	je        L00000B59
L00000AC0:
	movq      %rsi, %rdx
	notq      %rdx
	leaq      (%rbx,%rdx,8), %r11
	leaq      -8(%r12), %rdx
	xorl      %r9d, %r9d
	cmpq      %r11, %rdx
	ja        L00000AEE
L00000AD7:
	leaq      -8(%rbx,%rcx,8), %rdx
	addq      %rcx, %rsi
	notq      %rsi
	leaq      (%r12,%rsi,8), %rsi
	cmpq      %rsi, %rdx
	movq      %r13, %rdx
	jbe       L00000B59
L00000AEE:
	movq      %r13, %rdx
	subq      %r8, %rdx
	cmpq      $-3, %rdi
	movq      $-2, %rsi
	cmovg     %rdi, %rsi
	leaq      1(%rsi,%rcx), %rsi
	andq      $-4, %rsi
	movdqa    LC00001140(%rip), %xmm0
	.align 4, 0x90
L00000B20:
	movd      %rcx, %xmm1
	pshufd    $68, %xmm1, %xmm1
	paddq     %xmm0, %xmm1
	movd      %xmm1, %rdi
	movups    -8(%rbx,%rdi,8), %xmm1
	movups    -24(%rbx,%rdi,8), %xmm2
	subq      %r13, %rdi
	movups    %xmm1, -8(%r12,%rdi,8)
	movups    %xmm2, -24(%r12,%rdi,8)
	addq      $-4, %rcx
	addq      $-4, %rsi
	jne       L00000B20
L00000B56:
	movq      %r8, %r9
L00000B59:
	cmpq      %r9, %rax
	je        L00000B93
L00000B5E:
	notl      %r10d
	movq      $2305843009196916736, %rax
	orq       %r10, %rax
	leaq      (%r12,%rax,8), %rax
	.align 4, 0x90
L00000B80:
	movq      -8(%rbx,%rdx,8), %rcx
	movq      %rcx, (%rax,%rdx,8)
	leaq      -1(%rdx), %rdx
	cmpq      $1, %rdx
	jg        L00000B80
L00000B93:
	movl      $1, %eax
	subq      %r13, %rax
	movq      (%r12,%rax,8), %rcx
	cmpq      $1073741824, %rcx
	jb        L00000BB4
L00000BA8:
	movl      $-2147483648, %edx
	xorq      %rdx, %rcx
	movq      %rcx, (%r12,%rax,8)
L00000BB4:
	movq      %r14, %rdi
	movq      %rbp, %rsi
	call      _kronecker
L00000BBF:
	negq      %rax
L00000BC2:
	addq      $8, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00000BD1:
	movq      104(%rbx), %r15
	movq      %r15, %rdi
	call      _gequal0
L00000BDD:
	testl     %eax, %eax
	jne       L00000BF1
L00000BE1:
	movq      %r15, %rdi
	movq      %rbp, %rsi
	call      _Q_pval
L00000BEC:
	testq     %rax, %rax
	js        L00000C44
L00000BF1:
	movq      96(%rbx), %rdi
	movq      %rbp, %rsi
	call      _Z_pval
L00000BFD:
	movl      $12, %edi
	movq      %rax, %rsi
	call      _ugcd
L00000C0A:
	movq      %rax, %rcx
	movl      $12, %eax
	xorl      %edx, %edx
	divq      %rcx
	movl      $2, %edi
	cmpq      $4, %rax
	je        L00000C2B
L00000C22:
	andq      $1, %rax
	leaq      1(%rax,%rax), %rdi
L00000C2B:
	negq      %rdi
L00000C2E:
	movq      %rbp, %rsi
	addq      $8, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	jmp       _krosi
L00000C44:
	movq      $-1, %rdi
	jmp       L00000C2E
# ----------------------
	.align 4, 0x90
	.globl	_ellrootno
_ellrootno:
	pushq     %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	pushq     %rax
	movq      %rsi, %r12
	movq      %rdi, %rbx
	movq      _avma@GOTPCREL(%rip), %r13
	movq      (%r13), %rbp
	call      _checksmallell
L00000C71:
	leaq      (%rsp), %rsi
	movq      %rbx, %rdi
	call      _ell_to_small_red
L00000C7D:
	movq      %rax, %r14
	testq     %r12, %r12
	je        L00000C91
L00000C85:
	movq      %r12, %rdi
	call      _gequal1
L00000C8D:
	testl     %eax, %eax
	je        L00000CB6
L00000C91:
	movq      (%rsp), %rsi
	movq      %r14, %rdi
	call      _ellrootno_global
L00000C9D:
	movq      %rax, %r15
L00000CA0:
	movq      %rbp, (%r13)
	movq      %r15, %rax
	addq      $8, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L00000CB6:
	movq      $-33554432, %rax
	andq      (%r12), %rax
	cmpq      $33554432, %rax
	jne       L00000CD3
L00000CC9:
	movq      8(%r12), %rax
	testq     %rax, %rax
	jns       L00000CEB
L00000CD3:
	leaq      LC00001150(%rip), %rsi
	movl      $11, %edi
	xorl      %eax, %eax
	call      _pari_err
L00000CE6:
	movq      8(%r12), %rax
L00000CEB:
	andq      $16777215, %rax
	cmpq      $2, %rax
	je        L00000D24
L00000CF7:
	cmpq      $3, %rax
	ja        L00000D05
L00000CFD:
	cmpq      $4, 16(%r12)
	jb        L00000D24
L00000D05:
	movq      (%rsp), %rdi
	movq      %r12, %rsi
	call      _Z_pval
L00000D11:
	movq      %r14, %rdi
	movq      %r12, %rsi
	movq      %rax, %rdx
	call      _ellrootno_p
L00000D1F:
	jmp       L00000C9D
L00000D24:
	movl      $16777215, %eax
	andq      8(%r12), %rax
	movq      $-1, %r15
	cmpq      $2, %rax
	je        L00000CA0
L00000D3F:
	cmpq      $3, %rax
	jne       L00000D5D
L00000D45:
	movq      16(%r12), %rax
	cmpq      $3, %rax
	jne       L00000D75
L00000D50:
	movq      %r14, %rdi
	call      _ellrootno_3
L00000D58:
	jmp       L00000C9D
L00000D5D:
	leaq      LC00001172(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      _pari_err
L00000D70:
	jmp       L00000CA0
L00000D75:
	cmpq      $2, %rax
	jne       L00000CA0
L00000D7F:
	movq      %r14, %rdi
	call      _ellrootno_2
L00000D87:
	jmp       L00000C9D
L00000D8C:
	.align 4, 0x90
_neron:
	pushq     %rbp
	pushq     %r15
	pushq     %r14
	pushq     %r13
	pushq     %r12
	pushq     %rbx
	pushq     %rax
	movq      %rdx, %r14
	movq      %rsi, %r13
	movq      %rdi, %rbx
	movq      _avma@GOTPCREL(%rip), %rax
	movq      (%rax), %rax
	movq      %rax, (%rsp)
	movq      16, %rcx
	movq      8(%rcx), %rax
	xorl      %r15d, %r15d
	movq      %rax, %rbp
	sarq      $30, %rbp
	je        L00000DFF
L00000DCA:
	movq      16(%rcx), %r12
	andq      $16777212, %rax
	cmpq      $3, %rax
	ja        L00000DDF
L00000DDA:
	testq     %r12, %r12
	jns       L00000DF2
L00000DDF:
	leaq      LC0000115A(%rip), %rsi
	movl      $15, %edi
	xorl      %eax, %eax
	call      _pari_err
L00000DF2:
	movq      %r12, %r15
	negq      %r15
	testq     %rbp, %rbp
	cmovg     %r12, %r15
L00000DFF:
	movq      %r15, (%r14)
	movq      80(%rbx), %rbp
	movq      88(%rbx), %r14
	movq      96(%rbx), %r12
	movq      %rbp, %rdi
	call      _gequal0
L00000E16:
	movl      $12, %ebx
	testl     %eax, %eax
	jne       L00000E2D
L00000E1F:
	movq      %rbp, %rdi
	movq      %r13, %rsi
	call      _Z_lval
L00000E2A:
	movq      %rax, %rbx
L00000E2D:
	movq      %r14, %rdi
	call      _gequal0
L00000E35:
	movl      $12, %ebp
	testl     %eax, %eax
	jne       L00000E4C
L00000E3E:
	movq      %r14, %rdi
	movq      %r13, %rsi
	call      _Z_lval
L00000E49:
	movq      %rax, %rbp
L00000E4C:
	movq      %r12, %rdi
	movq      %r13, %rsi
	call      _Z_lval
L00000E57:
	movq      %rax, %rcx
	movq      _avma@GOTPCREL(%rip), %rax
	movq      (%rsp), %rdx
	movq      %rdx, (%rax)
	cmpq      $2, %r13
	jne       L00000EAF
L00000E6E:
	movl      $1, %eax
	cmpq      $4, %r15
	jg        L00001090
L00000E7D:
	addq      $7, %r15
	cmpq      $11, %r15
	ja        L00000FD1
L00000E8B:
	leaq      L00001104(%rip), %rax
	movslq    (%rax,%r15,4), %rdx
	addq      %rax, %rdx
	jmp       *%rdx
L00000E9B:
	movl      $2, %eax
	cmpq      $12, %rcx
	jne       L00000FD1
L00000EAA:
	jmp       L00001090
L00000EAF:
	movq      %r15, %rdx
	negq      %rdx
	cmovl     %r15, %rdx
	movl      $1, %eax
	cmpq      $4, %rdx
	jg        L00001090
L00000EC8:
	addq      $4, %r15
	cmpq      $7, %r15
	ja        L00000F5C
L00000ED6:
	movl      $65, %eax
	btq       %r15, %rax
	jb        L00000EFB
L00000EE1:
	movl      $130, %eax
	btq       %r15, %rax
	jae       L00000F42
L00000EEC:
	addq      %rbp, %rbp
	addq      $3, %rcx
	cmpq      %rcx, %rbp
	jmp       L00001087
L00000EFB:
	movq      $3074457345618258603, %rdx
	movq      %rcx, %rax
	imulq     %rdx
	movq      %rdx, %rax
	shrq      $63, %rax
	addq      %rdx, %rax
	addq      %rax, %rax
	leaq      (%rax,%rax,2), %rax
	subq      %rax, %rcx
	movl      $3, %eax
	cmpq      $4, %rcx
	je        L00001090
L00000F2E:
	cmpq      $5, %rcx
	jne       L0000109F
L00000F38:
	movl      $4, %eax
	jmp       L00001090
L00000F42:
	movl      $40, %eax
	btq       %r15, %rax
	jae       L00000F5C
L00000F4D:
	andq      $1, %rbx
	incq      %rbx
	movq      %rbx, %rax
	jmp       L00001090
L00000F5C:
	movq      $3074457345618258603, %rdx
	movq      %rcx, %rax
	imulq     %rdx
	movq      %rdx, %rax
	shrq      $63, %rax
	addq      %rdx, %rax
	addq      %rax, %rax
	leaq      (%rax,%rax,2), %rax
	movq      %rcx, %rdx
	subq      %rax, %rdx
	cmpq      $1, %rdx
	sete      %dl
	cmpq      %rax, %rcx
	movzbl    %dl, %eax
	leaq      1(%rax,%rax), %rcx
	movl      $2, %eax
	cmovne    %rcx, %rax
	jmp       L00001090
L00000FA3:
	movl      $2, %eax
	cmpq      $12, %rcx
	je        L00001090
L00000FB2:
	cmpq      $13, %rcx
	jne       L00000FD1
L00000FB8:
	movl      $3, %eax
	jmp       L00001090
L00000FC2:
	movl      $2, %eax
	cmpq      $7, %rbp
	je        L00001090
L00000FD1:
	cmpq      $6, %rbx
	sete      %al
	jmp       L0000108A
L00000FDD:
	cmpq      $7, %rbp
	sete      %al
	jmp       L0000108A
L00000FE9:
	movq      %rcx, %rdx
	addq      $-12, %rdx
	movl      $1, %eax
	cmpq      $4, %rdx
	jae       L00001090
L00000FFF:
	leaq      l_switch.table(%rip), %rax
	movq      -96(%rax,%rcx,8), %rax
	jmp       L00001090
L00001010:
	cmpq      $14, %rcx
	sete      %al
	movzbl    %al, %eax
	leaq      1(%rax,%rax), %rdx
	cmpq      $12, %rcx
	movl      $2, %eax
	cmovne    %rdx, %rax
	jmp       L00001090
L0000102E:
	movl      $2, %eax
	cmpq      $9, %rcx
	je        L00001090
L00001039:
	cmpq      $10, %rcx
	jne       L000010D6
L00001043:
	movl      $4, %eax
	jmp       L00001090
L0000104A:
	testq     %rbp, %rbp
	jmp       L00001087
L0000104F:
	movl      $1, %eax
	cmpq      $4, %rcx
	je        L00001090
L0000105A:
	cmpq      $7, %rcx
	jne       L000010E7
L00001064:
	movl      $3, %eax
	jmp       L00001090
L0000106B:
	movl      $3, %eax
	cmpq      $6, %rcx
	je        L00001090
L00001076:
	cmpq      $9, %rcx
	jne       L000010C9
L0000107C:
	movl      $5, %eax
	jmp       L00001090
L00001083:
	cmpq      $4, %rbx
L00001087:
	setg      %al
L0000108A:
	movzbl    %al, %eax
	incq      %rax
L00001090:
	addq      $8, %rsp
	popq      %rbx
	popq      %r12
	popq      %r13
	popq      %r14
	popq      %r15
	popq      %rbp
	ret       
L0000109F:
	movq      $6148914691236517206, %rcx
	movq      %rbp, %rax
	imulq     %rcx
	movq      %rdx, %rax
	shrq      $63, %rax
	addq      %rdx, %rax
	leaq      (%rax,%rax,2), %rax
	subq      %rax, %rbp
	cmpq      $1, %rbp
	sete      %al
	jmp       L0000108A
L000010C9:
	cmpq      $8, %rcx
	jne       L000010F8
L000010CF:
	movl      $4, %eax
	jmp       L00001090
L000010D6:
	cmpq      $4, %rbx
	setg      %al
	movzbl    %al, %eax
	leaq      1(%rax,%rax), %rax
	jmp       L00001090
L000010E7:
	cmpq      $4, %rbx
	setne     %al
	movzbl    %al, %eax
	leaq      2(%rax,%rax), %rax
	jmp       L00001090
L000010F8:
	cmpq      $5, %rbx
	sete      %al
	jmp       L0000108A
L00001101:
	.align 4, 0x90
# ----------------------
L00001104:
	.long	L00000E9B-L00001104
	.long	L00000FA3-L00001104
	.long	L00000FC2-L00001104
	.long	L00000FDD-L00001104
	.long	L00000FE9-L00001104
	.long	L00001010-L00001104
	.long	L0000102E-L00001104
	.long	L00000FD1-L00001104
	.long	L0000104A-L00001104
	.long	L0000104F-L00001104
	.long	L0000106B-L00001104
	.long	L00001083-L00001104
# ----------------------
	.section       __TEXT,__literal16,16byte_literals
	.align 4
LC00001140:
	.long	-1
	.long	-1
	.long	-2
	.long	-1
# ----------------------
	.section       __TEXT,__cstring,cstring_literals
LC00001150:
	.string	"ellrootno"
LC0000115A:
	.string	"t_INT-->long assignment"
LC00001172:
	.string	"t_INT-->ulong assignment"
# ----------------------
	.section       __TEXT,__const,regular
	.align 4
l_switch.table:
	.long	2
	.long	0
	.long	1
	.long	0
	.long	3
	.long	0
	.long	4
	.long	0
# ----------------------

.subsections_via_symbols
