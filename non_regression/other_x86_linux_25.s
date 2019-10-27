	.file	"(extract)pyexpat.c"
	.file 1 "/home/user/Desktop/Python-2.4.5/Modules/pyexpat.c"
	.section	.rodata.str1.1
.LC60:
	.string	"(NO&)"
.LC61:
	.string	"ProcessingInstruction"
	.text
	.p2align 4,,15
	.type	my_ProcessingInstructionHandler, @function
my_ProcessingInstructionHandler:
.LFB162:
	.loc 1 641 0
	.cfi_startproc
.LVL1294:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %esi
.LVL1295:
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB1229:
.LBB1230:
	.loc 1 146 0
	movl	48(%esi), %eax
.LBE1230:
.LBE1229:
	.loc 1 641 0
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L1304
.LVL1296:
.LBB1231:
.LBB1232:
	.loc 1 481 0
	movl	32(%esi), %edx
	testl	%edx, %edx
	je	.L1310
	movl	40(%esi), %eax
	testl	%eax, %eax
	jne	.L1342
.LVL1297:
.L1310:
.LBE1232:
.LBE1231:
.LBB1234:
.LBB1235:
.LBB1236:
.LBB1237:
	.loc 1 418 0
	movl	12(%esi), %ebp
	leal	conv_string_to_unicode@GOTOFF(%ebx), %eax
	leal	conv_string_to_utf8@GOTOFF(%ebx), %edi
	testl	%ebp, %ebp
	cmovne	%eax, %edi
	movl	68(%esp), %eax
	movl	%eax, (%esp)
	call	*%edi
.LVL1298:
	.loc 1 421 0
	testl	%eax, %eax
	.loc 1 418 0
	movl	%eax, %ecx
.LVL1299:
	.loc 1 421 0
	je	.L1315
	.loc 1 423 0
	movl	44(%esi), %eax
.LVL1300:
	movl	%ecx, %ebp
	movl	%ecx, 28(%esp)
	testl	%eax, %eax
	je	.L1313
	.loc 1 425 0
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	PyDict_GetItem@PLT
.LVL1301:
	.loc 1 426 0
	movl	28(%esp), %ecx
	testl	%eax, %eax
	.loc 1 425 0
	movl	%eax, %edx
.LVL1302:
	.loc 1 426 0
	je	.L1343
	.loc 1 432 0
	addl	$1, (%eax)
	.loc 1 433 0
	movl	0(%ebp), %eax
.LVL1303:
	subl	$1, %eax
	testl	%eax, %eax
	movl	%eax, 0(%ebp)
	movl	%edx, %ebp
.LVL1304:
	je	.L1344
.LVL1305:
.L1313:
.LBE1237:
.LBE1236:
	.loc 1 641 0
	movl	72(%esp), %eax
	movl	%edi, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%eax, 12(%esp)
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	Py_BuildValue@PLT
.LVL1306:
	testl	%eax, %eax
	movl	%eax, %edi
.LVL1307:
	je	.L1345
	movl	48(%esi), %eax
.LVL1308:
	leal	.LC61@GOTOFF(%ebx), %edx
	movl	$1, 24(%esi)
	movl	8(%eax), %ebp
	movl	$2, %eax
	movl	$645, (%esp)
	call	getcode
.LVL1309:
	leal	8(%esi), %edx
	movl	%edx, 4(%esp)
	movl	%edi, (%esp)
	movl	%ebp, %edx
	call	call_with_frame.isra.9
.LVL1310:
	movl	$0, 24(%esi)
	movl	(%edi), %ecx
	leal	-1(%ecx), %edx
	testl	%edx, %edx
	movl	%edx, (%edi)
	je	.L1346
.LVL1311:
.L1323:
	testl	%eax, %eax
	je	.L1347
	movl	(%eax), %ecx
	leal	-1(%ecx), %edx
	testl	%edx, %edx
	movl	%edx, (%eax)
	je	.L1348
.LVL1312:
.L1304:
.LBE1235:
.LBE1234:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
.LVL1313:
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.LVL1314:
	.p2align 4,,7
	.p2align 3
.L1342:
	.cfi_restore_state
.LBB1250:
.LBB1233:
	.loc 1 483 0
	movl	%eax, (%esp)
.LVL1315:
	movl	%esi, %eax
	call	call_character_handler
.LVL1316:
	.loc 1 484 0
	movl	$0, 40(%esi)
.LBE1233:
.LBE1250:
	.loc 1 641 0
	testl	%eax, %eax
	jns	.L1310
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
.LVL1317:
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.LVL1318:
	.p2align 4,,7
	.p2align 3
.L1348:
	.cfi_restore_state
.LBB1251:
.LBB1248:
	movl	4(%eax), %edx
	movl	%eax, (%esp)
	call	*24(%edx)
.LVL1319:
.LBE1248:
.LBE1251:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
.LVL1320:
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
.LVL1321:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.LVL1322:
	.p2align 4,,7
	.p2align 3
.L1346:
	.cfi_restore_state
.LBB1252:
.LBB1249:
	movl	4(%edi), %edx
	movl	%eax, 28(%esp)
	movl	%edi, (%esp)
	call	*24(%edx)
.LVL1323:
	movl	28(%esp), %eax
	jmp	.L1323
.LVL1324:
	.p2align 4,,7
	.p2align 3
.L1344:
.LBB1239:
.LBB1238:
	.loc 1 433 0
	movl	4(%ecx), %eax
	movl	%ecx, (%esp)
	call	*24(%eax)
.LVL1325:
	jmp	.L1313
.LVL1326:
.L1343:
	.loc 1 427 0
	movl	%ebp, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	44(%esi), %eax
.LVL1327:
	movl	%eax, (%esp)
	call	PyDict_SetItem@PLT
.LVL1328:
	testl	%eax, %eax
	je	.L1313
.LVL1329:
	.p2align 4,,7
	.p2align 3
.L1315:
	.loc 1 418 0
	xorl	%ebp, %ebp
	jmp	.L1313
.LVL1330:
	.p2align 4,,7
	.p2align 3
.L1345:
.LBE1238:
.LBE1239:
.LBB1240:
.LBB1241:
.LBB1242:
.LBB1243:
	.loc 1 2027 0
	movl	handler_info@GOTOFF(%ebx), %edi
	testl	%edi, %edi
	je	.L1329
	leal	4+handler_info@GOTOFF(%ebx), %edi
	xorl	%ebp, %ebp
	jmp	.L1322
.LVL1331:
	.p2align 4,,7
	.p2align 3
.L1319:
	.loc 1 2034 0
	movl	$0, 4(%esp)
	movl	8(%esi), %edx
	addl	$4, %ebp
	movl	%edi, 28(%esp)
	movl	%edx, (%esp)
	call	*(%edi)
.LVL1332:
	.loc 1 2027 0
	movl	28(%esp), %eax
	addl	$20, %edi
	movl	16(%eax), %ecx
	testl	%ecx, %ecx
	je	.L1329
.L1322:
	.loc 1 2031 0
	movl	48(%esi), %edx
	addl	%ebp, %edx
	movl	(%edx), %eax
.LVL1333:
	.loc 1 2032 0
	movl	$0, (%edx)
	.loc 1 2033 0
	testl	%eax, %eax
	je	.L1319
	movl	(%eax), %ecx
	leal	-1(%ecx), %edx
	testl	%edx, %edx
	movl	%edx, (%eax)
	jne	.L1319
	movl	4(%eax), %edx
	movl	%eax, (%esp)
	call	*24(%edx)
.LVL1334:
	jmp	.L1319
	.p2align 4,,7
	.p2align 3
.L1329:
.LBE1243:
.LBE1242:
.LBE1241:
.LBE1240:
.LBB1244:
.LBB1245:
	.loc 1 244 0
	leal	error_external_entity_ref_handler@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%esi), %eax
	movl	%eax, (%esp)
	call	XML_SetExternalEntityRefHandler@PLT
.LVL1335:
	jmp	.L1304
.LVL1336:
.L1347:
.LBB1246:
.LBB1247:
	.loc 1 2027 0
	movl	handler_info@GOTOFF(%ebx), %edx
	testl	%edx, %edx
	je	.L1329
	leal	4+handler_info@GOTOFF(%ebx), %edi
.LVL1337:
	xorl	%ebp, %ebp
	jmp	.L1330
.LVL1338:
	.p2align 4,,7
	.p2align 3
.L1327:
	.loc 1 2034 0
	movl	$0, 4(%esp)
	movl	8(%esi), %edx
	addl	$4, %ebp
	movl	%edi, 28(%esp)
	movl	%edx, (%esp)
	call	*(%edi)
.LVL1339:
	.loc 1 2027 0
	movl	28(%esp), %eax
	addl	$20, %edi
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1329
.L1330:
	.loc 1 2031 0
	movl	48(%esi), %edx
	addl	%ebp, %edx
	movl	(%edx), %eax
.LVL1340:
	.loc 1 2032 0
	movl	$0, (%edx)
	.loc 1 2033 0
	testl	%eax, %eax
	je	.L1327
	movl	(%eax), %ecx
	leal	-1(%ecx), %edx
	testl	%edx, %edx
	movl	%edx, (%eax)
	jne	.L1327
	movl	4(%eax), %edx
	movl	%eax, (%esp)
	call	*24(%edx)
.LVL1341:
	jmp	.L1327
.LBE1247:
.LBE1246:
.LBE1245:
.LBE1244:
.LBE1249:
.LBE1252:
	.cfi_endproc
.LFE162:
	.size	my_ProcessingInstructionHandler, .-my_ProcessingInstructionHandler
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
