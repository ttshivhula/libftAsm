global	_ft_isprint
section	.text
_ft_isprint:
	push rbp
	mov rbp, rsp
	xor rax, rax
	cmp rdi, byte 32
	jge check_max
	jmp exit
check_max:
	cmp rdi, byte 126
	jg exit
	mov rax, 1
exit:
	leave
	ret
