	.file	"(extract)dircolors.c"
	.text
	.local	dc_parse_stream
	.type	dc_parse_stream, @function
dc_parse_stream:
	cmpl      $.LC0000003F, %esi
	ret       
	.size	dc_parse_stream, .-dc_parse_stream
# ----------------------
	.section       .rodata
	.align 32
	.local	long_options
	.type	long_options, @object
long_options:
	.long	0
	.size	long_options, 4
# ----------------------
.LC00000004:
	.zero	28
# ----------------------
	.local	G_line
	.type	G_line, @object
G_line:
	.ascii	"s 00;36\000.spx 00;36\000.xspf 00;36\000"
.LC0000003F:
	.byte	0
	.size	G_line, 31
# ----------------------
	.local	ls_codes
	.type	ls_codes, @object
ls_codes:
	.long	0
	.size	ls_codes, 4
# ----------------------
	.ident	"GCC: (Debian 4.4.5-8) 4.4.5"
	.section	.note.GNU-stack,"",@progbits
