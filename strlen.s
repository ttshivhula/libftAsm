global	_ft_strlen
section	.text
_ft_strlen:
	push rbp
	mov rbp, rsp
	mov r8, 0xffffffff
	mov rcx, r8
	mov rax, 0
	repne scasb
	sub rcx, r8
	mov rax, rcx
	mov r8, -1
	mul r8
	dec rax
	leave
	ret
