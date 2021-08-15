	.global start

	.text

start:
	pop	%rdi
	movq	%rsp,%rsi
	call	main
	movl	%eax,%edi
	movl	$0x3c,%eax
	syscall
