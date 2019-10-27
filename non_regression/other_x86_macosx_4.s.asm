	.section       __TEXT,__text,regular,pure_instructions
	.align 4, 0x90
	.globl	_md5_init_ctx
_md5_init_ctx:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %eax
	movl      $1732584193, (%eax)
	movl      $-271733879, 4(%eax)
	movl      $-1732584194, 8(%eax)
	movl      $271733878, 12(%eax)
	movl      $0, 20(%eax)
	movl      $0, 16(%eax)
	movl      $0, 24(%eax)
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_md5_read_ctx
_md5_read_ctx:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %eax
	movl      12(%ebp), %eax
	movl      8(%ebp), %ecx
	movl      (%ecx), %edx
	movl      %edx, -4(%ebp)
	movl      %edx, (%eax)
	movl      4(%ecx), %edx
	movl      %edx, -4(%ebp)
	movl      %edx, 4(%eax)
	movl      8(%ecx), %edx
	movl      %edx, -4(%ebp)
	movl      %edx, 8(%eax)
	movl      12(%ecx), %ecx
	movl      %ecx, -4(%ebp)
	movl      %ecx, 12(%eax)
	addl      $4, %esp
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_md5_finish_ctx
_md5_finish_ctx:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $28, %esp
	call      L2$pb
L2$pb:
	popl      %eax
	movl      %eax, -20(%ebp)
	movl      8(%ebp), %edi
	movl      24(%edi), %ecx
	cmpl      $56, %ecx
	movl      $16, %edx
	movl      $32, %ebx
	cmovb     %edx, %ebx
	movl      16(%edi), %edx
	addl      %ecx, %edx
	movl      %edx, 16(%edi)
	jae       LBB2_2
	incl      20(%edi)
LBB2_2:
	leal      0(,%edx,8), %eax
	leal      28(%edi), %esi
	movl      %eax, 20(%edi,%ebx,4)
	movl      20(%edi), %eax
	shldl     $3, %edx, %eax
	movl      %eax, 24(%edi,%ebx,4)
	leal      28(%edi,%ecx), %eax
	leal      -8(,%ebx,4), %edx
	subl      %ecx, %edx
	movl      %edx, 8(%esp)
	movl      -20(%ebp), %ecx
	leal      _fillbuf-L2$pb(%ecx), %ecx
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _memcpy
	shll      $2, %ebx
	movl      %edi, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      %esi, (%esp)
	call      _md5_process_block
	movl      (%edi), %ecx
	movl      %ecx, -16(%ebp)
	movl      12(%ebp), %eax
	movl      %ecx, (%eax)
	movl      4(%edi), %ecx
	movl      %ecx, -16(%ebp)
	movl      %ecx, 4(%eax)
	movl      8(%edi), %ecx
	movl      %ecx, -16(%ebp)
	movl      %ecx, 8(%eax)
	movl      12(%edi), %ecx
	movl      %ecx, -16(%ebp)
	movl      %ecx, 12(%eax)
	addl      $28, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_md5_process_block
_md5_process_block:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $88, %esp
	movl      16(%ebp), %edi
	movl      12(%ebp), %eax
	movl      %eax, %ecx
	andl      $-4, %ecx
	addl      8(%ebp), %ecx
	movl      %ecx, -100(%ebp)
	movl      (%edi), %edx
	movl      %edx, -92(%ebp)
	movl      4(%edi), %esi
	addl      16(%edi), %eax
	movl      8(%edi), %ebx
	movl      12(%edi), %edx
	movl      %eax, 16(%edi)
	sbbl      %eax, %eax
	andl      $1, %eax
	addl      %eax, 20(%edi)
	movl      %ecx, %eax
	movl      8(%ebp), %ecx
	jmp       LBB3_2
	.align 4, 0x90
LBB3_1:
	movl      %ecx, -16(%ebp)
	movl      %ebx, -96(%ebp)
	movl      %edx, -24(%ebp)
	movl      %esi, -20(%ebp)
	movl      %ebx, %eax
	xorl      %edx, %eax
	andl      %esi, %eax
	xorl      %edx, %eax
	addl      -92(%ebp), %eax
	movl      (%ecx), %edx
	movl      %edx, -84(%ebp)
	movl      4(%ecx), %edi
	movl      %edi, -36(%ebp)
	leal      -680876936(%edx,%eax), %edx
	roll      $7, %edx
	addl      %esi, %edx
	movl      %esi, %eax
	xorl      %ebx, %eax
	andl      %edx, %eax
	xorl      %ebx, %eax
	movl      -24(%ebp), %ecx
	leal      (%ecx,%edi), %ecx
	leal      -389564586(%eax,%ecx), %esi
	roll      $12, %esi
	addl      %edx, %esi
	movl      %edx, %eax
	xorl      -20(%ebp), %eax
	andl      %esi, %eax
	xorl      -20(%ebp), %eax
	movl      -16(%ebp), %ecx
	movl      8(%ecx), %ecx
	movl      %ecx, -28(%ebp)
	leal      (%ebx,%ecx), %ecx
	leal      606105819(%eax,%ecx), %ecx
	roll      $17, %ecx
	addl      %esi, %ecx
	movl      %esi, %eax
	xorl      %edx, %eax
	andl      %ecx, %eax
	xorl      %edx, %eax
	movl      -16(%ebp), %edi
	movl      12(%edi), %ebx
	movl      %ebx, -48(%ebp)
	movl      -20(%ebp), %edi
	leal      (%edi,%ebx), %edi
	leal      -1044525330(%eax,%edi), %eax
	roll      $22, %eax
	addl      %ecx, %eax
	movl      %ecx, %edi
	xorl      %esi, %edi
	andl      %eax, %edi
	xorl      %esi, %edi
	movl      -16(%ebp), %ebx
	movl      16(%ebx), %ebx
	movl      %ebx, -32(%ebp)
	addl      %ebx, %edx
	leal      -176418897(%edi,%edx), %edx
	roll      $7, %edx
	addl      %eax, %edx
	movl      %eax, %edi
	xorl      %ecx, %edi
	andl      %edx, %edi
	xorl      %ecx, %edi
	movl      -16(%ebp), %ebx
	movl      20(%ebx), %ebx
	movl      %ebx, -60(%ebp)
	addl      %ebx, %esi
	leal      1200080426(%edi,%esi), %esi
	roll      $12, %esi
	addl      %edx, %esi
	movl      %edx, %edi
	xorl      %eax, %edi
	andl      %esi, %edi
	xorl      %eax, %edi
	movl      -16(%ebp), %ebx
	movl      24(%ebx), %ebx
	movl      %ebx, -44(%ebp)
	addl      %ebx, %ecx
	leal      -1473231341(%edi,%ecx), %ecx
	roll      $17, %ecx
	addl      %esi, %ecx
	movl      %esi, %edi
	xorl      %edx, %edi
	andl      %ecx, %edi
	xorl      %edx, %edi
	movl      -16(%ebp), %ebx
	movl      28(%ebx), %ebx
	movl      %ebx, -72(%ebp)
	addl      %ebx, %eax
	leal      -45705983(%edi,%eax), %eax
	roll      $22, %eax
	addl      %ecx, %eax
	movl      %ecx, %edi
	xorl      %esi, %edi
	andl      %eax, %edi
	xorl      %esi, %edi
	movl      -16(%ebp), %ebx
	movl      32(%ebx), %ebx
	movl      %ebx, -56(%ebp)
	addl      %ebx, %edx
	leal      1770035416(%edi,%edx), %edx
	roll      $7, %edx
	addl      %eax, %edx
	movl      %eax, %edi
	xorl      %ecx, %edi
	andl      %edx, %edi
	xorl      %ecx, %edi
	movl      -16(%ebp), %ebx
	movl      36(%ebx), %ebx
	movl      %ebx, -40(%ebp)
	addl      %ebx, %esi
	leal      -1958414417(%edi,%esi), %esi
	roll      $12, %esi
	addl      %edx, %esi
	movl      %edx, %edi
	xorl      %eax, %edi
	andl      %esi, %edi
	xorl      %eax, %edi
	movl      -16(%ebp), %ebx
	movl      40(%ebx), %ebx
	movl      %ebx, -68(%ebp)
	addl      %ebx, %ecx
	leal      -42063(%edi,%ecx), %ecx
	roll      $17, %ecx
	addl      %esi, %ecx
	movl      %esi, %edi
	xorl      %edx, %edi
	andl      %ecx, %edi
	xorl      %edx, %edi
	movl      -16(%ebp), %ebx
	movl      44(%ebx), %ebx
	movl      %ebx, -52(%ebp)
	addl      %ebx, %eax
	leal      -1990404162(%edi,%eax), %eax
	roll      $22, %eax
	addl      %ecx, %eax
	movl      %ecx, %edi
	xorl      %esi, %edi
	andl      %eax, %edi
	xorl      %esi, %edi
	movl      -16(%ebp), %ebx
	movl      48(%ebx), %ebx
	movl      %ebx, -76(%ebp)
	addl      %ebx, %edx
	leal      1804603682(%edi,%edx), %edi
	roll      $7, %edi
	addl      %eax, %edi
	movl      %eax, %edx
	xorl      %ecx, %edx
	andl      %edi, %edx
	xorl      %ecx, %edx
	movl      -16(%ebp), %ebx
	movl      52(%ebx), %ebx
	movl      %ebx, -64(%ebp)
	addl      %ebx, %esi
	leal      -40341101(%edx,%esi), %esi
	roll      $12, %esi
	addl      %edi, %esi
	movl      %edi, %ebx
	xorl      %eax, %ebx
	andl      %esi, %ebx
	xorl      %eax, %ebx
	movl      -16(%ebp), %edx
	movl      56(%edx), %edx
	movl      %edx, -80(%ebp)
	addl      %edx, %ecx
	leal      -1502002290(%ebx,%ecx), %ebx
	roll      $17, %ebx
	addl      %esi, %ebx
	movl      %esi, %ecx
	xorl      %edi, %ecx
	andl      %ebx, %ecx
	xorl      %edi, %ecx
	movl      -16(%ebp), %edx
	movl      60(%edx), %edx
	movl      %edx, -88(%ebp)
	addl      %edx, %eax
	leal      1236535329(%ecx,%eax), %eax
	roll      $22, %eax
	addl      %ebx, %eax
	movl      %eax, %ecx
	xorl      %ebx, %ecx
	andl      %esi, %ecx
	xorl      %ebx, %ecx
	addl      -36(%ebp), %edi
	leal      -165796510(%ecx,%edi), %edi
	roll      $5, %edi
	addl      %eax, %edi
	movl      %edi, %ecx
	xorl      %eax, %ecx
	andl      %ebx, %ecx
	xorl      %eax, %ecx
	addl      -44(%ebp), %esi
	leal      -1069501632(%ecx,%esi), %esi
	roll      $9, %esi
	addl      %edi, %esi
	movl      %esi, %ecx
	xorl      %edi, %ecx
	andl      %eax, %ecx
	xorl      %edi, %ecx
	addl      -52(%ebp), %ebx
	leal      643717713(%ecx,%ebx), %ebx
	roll      $14, %ebx
	addl      %esi, %ebx
	movl      %ebx, %ecx
	xorl      %esi, %ecx
	andl      %edi, %ecx
	xorl      %esi, %ecx
	addl      -84(%ebp), %eax
	leal      -373897302(%ecx,%eax), %eax
	roll      $20, %eax
	addl      %ebx, %eax
	movl      %eax, %ecx
	xorl      %ebx, %ecx
	andl      %esi, %ecx
	xorl      %ebx, %ecx
	addl      -60(%ebp), %edi
	leal      -701558691(%ecx,%edi), %edi
	roll      $5, %edi
	addl      %eax, %edi
	movl      %edi, %ecx
	xorl      %eax, %ecx
	andl      %ebx, %ecx
	xorl      %eax, %ecx
	addl      -68(%ebp), %esi
	leal      38016083(%ecx,%esi), %esi
	roll      $9, %esi
	addl      %edi, %esi
	movl      %esi, %ecx
	xorl      %edi, %ecx
	andl      %eax, %ecx
	xorl      %edi, %ecx
	addl      %edx, %ebx
	leal      -660478335(%ecx,%ebx), %ebx
	roll      $14, %ebx
	addl      %esi, %ebx
	movl      %ebx, %ecx
	xorl      %esi, %ecx
	andl      %edi, %ecx
	xorl      %esi, %ecx
	addl      -32(%ebp), %eax
	leal      -405537848(%ecx,%eax), %eax
	roll      $20, %eax
	addl      %ebx, %eax
	movl      %eax, %ecx
	xorl      %ebx, %ecx
	andl      %esi, %ecx
	xorl      %ebx, %ecx
	addl      -40(%ebp), %edi
	leal      568446438(%ecx,%edi), %edi
	roll      $5, %edi
	addl      %eax, %edi
	movl      %edi, %ecx
	xorl      %eax, %ecx
	andl      %ebx, %ecx
	xorl      %eax, %ecx
	addl      -80(%ebp), %esi
	leal      -1019803690(%ecx,%esi), %esi
	roll      $9, %esi
	addl      %edi, %esi
	movl      %esi, %ecx
	xorl      %edi, %ecx
	andl      %eax, %ecx
	xorl      %edi, %ecx
	addl      -48(%ebp), %ebx
	leal      -187363961(%ecx,%ebx), %ebx
	roll      $14, %ebx
	addl      %esi, %ebx
	movl      %ebx, %ecx
	xorl      %esi, %ecx
	andl      %edi, %ecx
	xorl      %esi, %ecx
	addl      -56(%ebp), %eax
	leal      1163531501(%ecx,%eax), %eax
	roll      $20, %eax
	addl      %ebx, %eax
	movl      %eax, %ecx
	xorl      %ebx, %ecx
	andl      %esi, %ecx
	xorl      %ebx, %ecx
	addl      -64(%ebp), %edi
	leal      -1444681467(%ecx,%edi), %edi
	roll      $5, %edi
	addl      %eax, %edi
	movl      %edi, %ecx
	xorl      %eax, %ecx
	andl      %ebx, %ecx
	xorl      %eax, %ecx
	addl      -28(%ebp), %esi
	leal      -51403784(%ecx,%esi), %esi
	roll      $9, %esi
	addl      %edi, %esi
	movl      %esi, %ecx
	xorl      %edi, %ecx
	andl      %eax, %ecx
	xorl      %edi, %ecx
	addl      -72(%ebp), %ebx
	leal      1735328473(%ecx,%ebx), %edx
	roll      $14, %edx
	addl      %esi, %edx
	movl      %edx, %ebx
	xorl      %esi, %ebx
	movl      %ebx, %ecx
	andl      %edi, %ecx
	xorl      %esi, %ecx
	addl      -76(%ebp), %eax
	leal      -1926607734(%ecx,%eax), %eax
	roll      $20, %eax
	addl      %edx, %eax
	xorl      %eax, %ebx
	addl      -60(%ebp), %edi
	leal      -378558(%ebx,%edi), %ecx
	roll      $4, %ecx
	addl      %eax, %ecx
	movl      %eax, %edi
	xorl      %edx, %edi
	xorl      %ecx, %edi
	addl      -56(%ebp), %esi
	leal      -2022574463(%edi,%esi), %esi
	roll      $11, %esi
	addl      %ecx, %esi
	movl      %ecx, %edi
	xorl      %eax, %edi
	xorl      %esi, %edi
	addl      -52(%ebp), %edx
	leal      1839030562(%edi,%edx), %edi
	roll      $16, %edi
	addl      %esi, %edi
	movl      %esi, %edx
	xorl      %ecx, %edx
	xorl      %edi, %edx
	addl      -80(%ebp), %eax
	leal      -35309556(%edx,%eax), %ebx
	roll      $23, %ebx
	addl      %edi, %ebx
	movl      %edi, %eax
	xorl      %esi, %eax
	xorl      %ebx, %eax
	addl      -36(%ebp), %ecx
	leal      -1530992060(%eax,%ecx), %eax
	roll      $4, %eax
	addl      %ebx, %eax
	movl      %ebx, %ecx
	xorl      %edi, %ecx
	xorl      %eax, %ecx
	addl      -32(%ebp), %esi
	leal      1272893353(%ecx,%esi), %esi
	roll      $11, %esi
	addl      %eax, %esi
	movl      %eax, %ecx
	xorl      %ebx, %ecx
	xorl      %esi, %ecx
	addl      -72(%ebp), %edi
	leal      -155497632(%ecx,%edi), %edi
	roll      $16, %edi
	addl      %esi, %edi
	movl      %esi, %ecx
	xorl      %eax, %ecx
	xorl      %edi, %ecx
	addl      -68(%ebp), %ebx
	leal      -1094730640(%ecx,%ebx), %ebx
	roll      $23, %ebx
	addl      %edi, %ebx
	movl      %edi, %ecx
	xorl      %esi, %ecx
	xorl      %ebx, %ecx
	addl      -64(%ebp), %eax
	leal      681279174(%ecx,%eax), %eax
	roll      $4, %eax
	addl      %ebx, %eax
	movl      %ebx, %ecx
	xorl      %edi, %ecx
	xorl      %eax, %ecx
	movl      -84(%ebp), %edx
	addl      %edx, %esi
	leal      -358537222(%ecx,%esi), %esi
	roll      $11, %esi
	addl      %eax, %esi
	movl      %eax, %ecx
	xorl      %ebx, %ecx
	xorl      %esi, %ecx
	addl      -48(%ebp), %edi
	leal      -722521979(%ecx,%edi), %edi
	roll      $16, %edi
	addl      %esi, %edi
	movl      %esi, %ecx
	xorl      %eax, %ecx
	xorl      %edi, %ecx
	addl      -44(%ebp), %ebx
	leal      76029189(%ecx,%ebx), %ebx
	roll      $23, %ebx
	addl      %edi, %ebx
	movl      %edi, %ecx
	xorl      %esi, %ecx
	xorl      %ebx, %ecx
	addl      -40(%ebp), %eax
	leal      -640364487(%ecx,%eax), %eax
	roll      $4, %eax
	addl      %ebx, %eax
	movl      %ebx, %ecx
	xorl      %edi, %ecx
	xorl      %eax, %ecx
	addl      -76(%ebp), %esi
	leal      -421815835(%ecx,%esi), %esi
	roll      $11, %esi
	addl      %eax, %esi
	movl      %eax, %ecx
	xorl      %ebx, %ecx
	xorl      %esi, %ecx
	addl      -88(%ebp), %edi
	leal      530742520(%ecx,%edi), %edi
	roll      $16, %edi
	addl      %esi, %edi
	movl      %esi, %ecx
	xorl      %eax, %ecx
	xorl      %edi, %ecx
	addl      -28(%ebp), %ebx
	leal      -995338651(%ecx,%ebx), %ecx
	addl      %edx, %eax
	roll      $23, %ecx
	addl      %edi, %ecx
	movl      -72(%ebp), %edx
	addl      %esi, %edx
	notl      %esi
	orl       %ecx, %esi
	xorl      %edi, %esi
	leal      -198630844(%esi,%eax), %esi
	roll      $6, %esi
	addl      %ecx, %esi
	movl      -80(%ebp), %ebx
	addl      %edi, %ebx
	notl      %edi
	orl       %esi, %edi
	xorl      %ecx, %edi
	leal      1126891415(%edi,%edx), %eax
	roll      $10, %eax
	addl      %esi, %eax
	movl      -60(%ebp), %edx
	addl      %ecx, %edx
	notl      %ecx
	orl       %eax, %ecx
	xorl      %esi, %ecx
	leal      -1416354905(%ecx,%ebx), %ecx
	roll      $15, %ecx
	addl      %eax, %ecx
	movl      -76(%ebp), %edi
	addl      %esi, %edi
	notl      %esi
	orl       %ecx, %esi
	xorl      %eax, %esi
	leal      -57434055(%esi,%edx), %edx
	roll      $21, %edx
	addl      %ecx, %edx
	movl      -48(%ebp), %esi
	addl      %eax, %esi
	notl      %eax
	orl       %edx, %eax
	xorl      %ecx, %eax
	leal      1700485571(%eax,%edi), %eax
	roll      $6, %eax
	addl      %edx, %eax
	movl      -68(%ebp), %edi
	addl      %ecx, %edi
	notl      %ecx
	orl       %eax, %ecx
	xorl      %edx, %ecx
	leal      -1894986606(%ecx,%esi), %ecx
	roll      $10, %ecx
	addl      %eax, %ecx
	movl      -36(%ebp), %esi
	addl      %edx, %esi
	notl      %edx
	orl       %ecx, %edx
	xorl      %eax, %edx
	leal      -1051523(%edx,%edi), %edx
	roll      $15, %edx
	addl      %ecx, %edx
	movl      -56(%ebp), %edi
	addl      %eax, %edi
	notl      %eax
	orl       %edx, %eax
	xorl      %ecx, %eax
	leal      -2054922799(%eax,%esi), %eax
	roll      $21, %eax
	addl      %edx, %eax
	movl      -88(%ebp), %ebx
	addl      %ecx, %ebx
	notl      %ecx
	orl       %eax, %ecx
	xorl      %edx, %ecx
	leal      1873313359(%ecx,%edi), %ecx
	roll      $6, %ecx
	addl      %eax, %ecx
	movl      -44(%ebp), %esi
	addl      %edx, %esi
	notl      %edx
	orl       %ecx, %edx
	xorl      %eax, %edx
	leal      -30611744(%edx,%ebx), %edx
	roll      $10, %edx
	addl      %ecx, %edx
	movl      -64(%ebp), %edi
	addl      %eax, %edi
	notl      %eax
	orl       %edx, %eax
	xorl      %ecx, %eax
	leal      -1560198380(%eax,%esi), %esi
	roll      $15, %esi
	addl      %edx, %esi
	movl      -32(%ebp), %eax
	addl      %ecx, %eax
	notl      %ecx
	orl       %esi, %ecx
	xorl      %edx, %ecx
	leal      1309151649(%ecx,%edi), %ecx
	roll      $21, %ecx
	addl      %esi, %ecx
	movl      -52(%ebp), %edi
	addl      %edx, %edi
	notl      %edx
	orl       %ecx, %edx
	xorl      %esi, %edx
	leal      -145523070(%edx,%eax), %eax
	roll      $6, %eax
	addl      %ecx, %eax
	movl      -28(%ebp), %ebx
	addl      %esi, %ebx
	notl      %esi
	orl       %eax, %esi
	xorl      %ecx, %esi
	leal      -1120210379(%esi,%edi), %edx
	movl      -20(%ebp), %esi
	roll      $10, %edx
	addl      %eax, %edx
	movl      -40(%ebp), %edi
	addl      %ecx, %edi
	notl      %ecx
	orl       %edx, %ecx
	xorl      %eax, %ecx
	leal      718787259(%ecx,%ebx), %ecx
	roll      $15, %ecx
	addl      %edx, %ecx
	addl      %eax, -92(%ebp)
	notl      %eax
	orl       %ecx, %eax
	xorl      %edx, %eax
	leal      -343485551(%eax,%edi), %eax
	roll      $21, %eax
	addl      %ecx, %esi
	addl      %eax, %esi
	movl      -100(%ebp), %eax
	movl      -96(%ebp), %edi
	addl      %ecx, %edi
	movl      %edi, %ebx
	movl      -16(%ebp), %ecx
	addl      %edx, -24(%ebp)
	movl      -24(%ebp), %edx
	addl      $64, %ecx
LBB3_2:
	cmpl      %eax, %ecx
	jb        LBB3_1
	movl      16(%ebp), %eax
	movl      -92(%ebp), %ecx
	movl      %ecx, (%eax)
	movl      %esi, 4(%eax)
	movl      %ebx, 8(%eax)
	movl      %edx, 12(%eax)
	addl      $88, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_md5_stream
_md5_stream:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $172, %esp
	movl      $32840, (%esp)
	call      _malloc
	movl      %eax, %esi
	movl      $1, %eax
	testl     %esi, %esi
	je        LBB4_12
	movl      8(%ebp), %edi
	movl      $1732584193, -168(%ebp)
	movl      $-271733879, -164(%ebp)
	movl      $-1732584194, -160(%ebp)
	movl      $271733878, -156(%ebp)
	movl      $0, -148(%ebp)
	movl      $0, -152(%ebp)
	movl      $0, -144(%ebp)
	jmp       LBB4_2
	.align 4, 0x90
LBB4_7:
	leal      -168(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      %esi, (%esp)
	movl      $32768, 4(%esp)
	call      _md5_process_block
LBB4_2:
	xorl      %ebx, %ebx
LBB4_3:
	leal      (%esi,%ebx), %eax
	movl      $32768, %ecx
	subl      %ebx, %ecx
	movl      %edi, 12(%esp)
	movl      %ecx, 8(%esp)
	movl      %eax, (%esp)
	movl      $1, 4(%esp)
	call      _fread
	addl      %eax, %ebx
	cmpl      $32768, %ebx
	je        LBB4_7
	movswl    12(%edi), %ecx
	testl     %eax, %eax
	je        LBB4_5
	testb     $32, %cl
	je        LBB4_3
	jmp       LBB4_9
LBB4_5:
	testb     $64, %cl
	jne       LBB4_6
LBB4_9:
	testl     %ebx, %ebx
	leal      -168(%ebp), %edi
	je        LBB4_11
	movl      %edi, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      %esi, (%esp)
	call      _md5_process_bytes
LBB4_11:
	movl      12(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _md5_finish_ctx
	movl      %esi, (%esp)
	call      _free
	xorl      %eax, %eax
	jmp       LBB4_12
LBB4_6:
	movl      %esi, (%esp)
	call      _free
	movl      $1, %eax
LBB4_12:
	addl      $172, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_md5_process_bytes
_md5_process_bytes:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %edi
	pushl     %esi
	subl      $28, %esp
	movl      16(%ebp), %ebx
	movl      12(%ebp), %eax
	movl      8(%ebp), %ecx
	movl      24(%ebx), %esi
	testl     %esi, %esi
	je        LBB5_4
	movl      %ebx, %edi
	movl      $128, %ebx
	subl      %esi, %ebx
	cmpl      %eax, %ebx
	cmova     %eax, %ebx
	leal      28(%edi,%esi), %eax
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	movl      %ebx, 8(%esp)
	call      _memcpy
	movl      24(%edi), %eax
	addl      %ebx, %eax
	movl      %eax, 24(%edi)
	cmpl      $65, %eax
	jb        LBB5_3
	leal      28(%edi), %ecx
	movl      %ecx, -16(%ebp)
	andl      $-64, %eax
	movl      %edi, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      _md5_process_block
	movl      24(%edi), %eax
	andl      $63, %eax
	movl      %eax, 24(%edi)
	addl      %ebx, %esi
	andl      $-64, %esi
	movl      -16(%ebp), %ecx
	addl      %ecx, %esi
	movl      %eax, 8(%esp)
	movl      %esi, 4(%esp)
	movl      %ecx, (%esp)
	call      _memcpy
LBB5_3:
	movl      8(%ebp), %eax
	movl      %eax, %ecx
	addl      %ebx, %ecx
	movl      12(%ebp), %eax
	subl      %ebx, %eax
	movl      %edi, %ebx
LBB5_4:
	cmpl      $64, %eax
	jb        LBB5_10
	testb     $3, %cl
	je        LBB5_15
	movl      $64, %edi
	cmpl      $65, %eax
	jb        LBB5_11
	leal      28(%ebx), %ebx
	leal      -65(%eax), %edx
	andl      $-64, %edx
	movl      %edx, -24(%ebp)
	leal      64(%edx), %edx
	movl      %edx, -28(%ebp)
	movl      %ecx, %esi
	movl      %ecx, -16(%ebp)
	movl      %eax, %edi
	movl      %eax, -20(%ebp)
	.align 4, 0x90
LBB5_8:
	movsd     56(%esi), %xmm0
	movsd     %xmm0, 56(%ebx)
	movsd     48(%esi), %xmm0
	movsd     %xmm0, 48(%ebx)
	movsd     40(%esi), %xmm0
	movsd     %xmm0, 40(%ebx)
	movsd     32(%esi), %xmm0
	movsd     %xmm0, 32(%ebx)
	movsd     24(%esi), %xmm0
	movsd     %xmm0, 24(%ebx)
	movsd     16(%esi), %xmm0
	movsd     %xmm0, 16(%ebx)
	movsd     (%esi), %xmm0
	movsd     8(%esi), %xmm1
	movsd     %xmm1, 8(%ebx)
	movsd     %xmm0, (%ebx)
	movl      16(%ebp), %eax
	movl      %eax, 8(%esp)
	movl      %ebx, (%esp)
	movl      $64, 4(%esp)
	call      _md5_process_block
	addl      $64, %esi
	addl      $-64, %edi
	cmpl      $64, %edi
	ja        LBB5_8
	movl      -20(%ebp), %eax
	addl      $-64, %eax
	subl      -24(%ebp), %eax
	movl      -16(%ebp), %ecx
	addl      -28(%ebp), %ecx
	movl      16(%ebp), %ebx
	jmp       LBB5_10
LBB5_15:
	movl      %eax, %esi
	andl      $-64, %esi
	movl      %ebx, 8(%esp)
	movl      %esi, 4(%esp)
	movl      %ecx, (%esp)
	movl      %ecx, -16(%ebp)
	movl      %eax, %edi
	call      _md5_process_block
	movl      %edi, %eax
	movl      -16(%ebp), %ecx
	addl      %esi, %ecx
	andl      $63, %eax
LBB5_10:
	testl     %eax, %eax
	movl      %eax, %edi
	je        LBB5_14
LBB5_11:
	movl      24(%ebx), %esi
	leal      28(%ebx,%esi), %eax
	movl      %edi, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _memcpy
	addl      %edi, %esi
	cmpl      $64, %esi
	jb        LBB5_13
	leal      28(%ebx), %edi
	movl      %ebx, 8(%esp)
	movl      %edi, (%esp)
	movl      $64, 4(%esp)
	call      _md5_process_block
	addl      $-64, %esi
	leal      92(%ebx), %eax
	movl      %esi, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      _memcpy
LBB5_13:
	movl      %esi, 24(%ebx)
LBB5_14:
	addl      $28, %esp
	popl      %esi
	popl      %edi
	popl      %ebx
	popl      %ebp
	ret       
# ----------------------
	.align 4, 0x90
	.globl	_md5_buffer
_md5_buffer:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	subl      $176, %esp
	movl      16(%ebp), %esi
	movl      8(%ebp), %eax
	movl      12(%ebp), %ecx
	movl      $1732584193, -168(%ebp)
	movl      $-271733879, -164(%ebp)
	movl      $-1732584194, -160(%ebp)
	movl      $271733878, -156(%ebp)
	movl      $0, -148(%ebp)
	movl      $0, -152(%ebp)
	movl      $0, -144(%ebp)
	leal      -168(%ebp), %edi
	movl      %edi, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      %eax, (%esp)
	call      _md5_process_bytes
	movl      %esi, 4(%esp)
	movl      %edi, (%esp)
	call      _md5_finish_ctx
	addl      $176, %esp
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
	.section       __TEXT,__const
_fillbuf:
	.asciz	"\200\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
# ----------------------

.subsections_via_symbols
