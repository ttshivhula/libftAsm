global	_ft_memcpy
section	.text
_ft_memcpy:
	push rbp
	mov rbp, rsp
	push rdi
	mov rcx, rdx
	rep movsb
	pop rdi
	mov rax, rdi
	leave
	ret
