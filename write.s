	.global _write

	.text

_write:
	push	%rbp
	movq	%rsp,%rbp
	add	$0xfffffffffffffff0,%rsp
	movq	%rdi,0xfffffffffffffff0(%rbp)
	movl	%esi,0xfffffffffffffffc(%rbp)
	movl	$1,%eax
	movl	$1,%edi
	movq	0xfffffffffffffff0(%rbp),%rsi
	movl	0xfffffffffffffffc(%rbp),%edx
	syscall
	add	$0x10,%rsp
	leave
	ret
