global	_ft_isdigit
section	.text
_ft_isdigit:
	push rbp
	mov rbp, rsp
	xor rax, rax
	cmp rdi, byte '0'
	jge check_max
	jmp exit
check_max:
	cmp rdi, byte '9'
	jg exit
	mov rax, 1
exit:
	leave
	ret
