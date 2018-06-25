global	_ft_memset
section	.text
_ft_memset:
	push rbp
	mov rbp, rsp
	mov rax, rsi
	mov rcx, rdx
	push rdi
	rep stosb
	pop rdi
	mov rax, rdi
	leave
	ret
