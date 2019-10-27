	.file	"(extract)dircolors.c"
	.text
	.p2align 4,,15
	.type	dc_parse_stream, @function
dc_parse_stream:
	cmpl	$G_line+31, %esi
	ret
	.size	dc_parse_stream, .-dc_parse_stream
	.section	.rodata
	.align 32
	.type	long_options, @object
	.size	long_options, 4
long_options:
	.long	0
	.align 32
	.type	G_line, @object
	.size	G_line, 31
G_line:
	.byte	115
	.byte	32
	.byte	48
	.byte	48
	.byte	59
	.byte	51
	.byte	54
	.byte	0
	.byte	46
	.byte	115
	.byte	112
	.byte	120
	.byte	32
	.byte	48
	.byte	48
	.byte	59
	.byte	51
	.byte	54
	.byte	0
	.byte	46
	.byte	120
	.byte	115
	.byte	112
	.byte	102
	.byte	32
	.byte	48
	.byte	48
	.byte	59
	.byte	51
	.byte	54
	.byte	0
	.align 32
	.type	ls_codes, @object
	.size	ls_codes, 4
ls_codes:
	.long	0
	.ident	"GCC: (Debian 4.4.5-8) 4.4.5"
	.section	.note.GNU-stack,"",@progbits
