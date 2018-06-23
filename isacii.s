global	_ft_isascii
section	.text
_ft_isascii:
	push rbp
	mov rbp, rsp
	xor rax, rax
	cmp rdi, byte 0x00
	jge check_max
	jmp exit
check_max:
	cmp rdi, byte 0x7f
	jg exit
	mov rax, 1
exit:
	leave
	ret
