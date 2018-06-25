global	_ft_isblank
section	.text
_ft_isblank:
	push rbp
	mov rbp, rsp
	xor rax, rax
	cmp rdi, byte 32
	je equal
	cmp rdi, byte 9
	je equal
	jmp exit
equal:
	mov rax, 1
exit:
	leave
	ret
