global	_ft_islower
section	.text
_ft_islower:
	push rbp
	mov rbp, rsp
	xor rax, rax
	cmp rdi, byte 'a'
	jge check_max
	jmp exit
check_max:
	cmp rdi, byte 'z'
	jg exit
	mov rax, 1
exit:
	leave
	ret
