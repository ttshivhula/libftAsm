global	_ft_strcmp
section	.text
_ft_strcmp:
	push rbp
	mov rbp, rsp
	xor r8, r8
cmp:
	cmp [rdi + r8], byte 0
	je results
	cmp [rsi + r8], byte 0
	je results
	mov r9, [rsi + r8]
	cmp [rdi + r8], r9
	jne results
	inc r8
results:
	mov r10, [rdi + r8]
	mov r11, [rsi + r8]
	sub r10, r11
	mov rax, r10
	leave
	ret
