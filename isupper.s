global	_ft_isupper
section	.text
_ft_isupper:
	push rbp
	mov rbp, rsp
	xor rax, rax
	cmp rdi, byte 'A'
	jge check_max
	jmp exit
check_max:
	cmp rdi, byte 'Z'
	jg exit
	mov rax, 1
exit:
	leave
	ret
