	.global main

	.text

main:
	push	%rbp
	movq	%rsp,%rbp
	add	$0xffffffffffffffa0,%rbp
	movl	%edi,0xffffffffffffffa0(%rbp)
	movq	%rsi,0xffffffffffffffa8(%rbp)
	movl	$0x50,0xffffffffffffffa4(%rbp)
l:
	lea	0xffffffffffffffb0(%rbp),%rdi
	movl	0xffffffffffffffa4(%rbp),%esi
	call	_read
	lea	0xffffffffffffffb0(%rbp),%rdx
	movb	(%rdx),%dl
	cmp	$0x2d,%dl
	je	e
	movl	%eax,%esi
	lea	0xffffffffffffffb0(%rbp),%rdi
	call    _write
	jmp	l
e:
	xor	%eax,%eax
	add	$0x60,%rbp
	leave
	ret
