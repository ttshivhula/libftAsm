extern	_length
global	_ft_strcat
section	.text
_ft_strcat:
	push rbp
	mov rbp, rsp
	xor r8, r8
destlen:
	push rsi
	push rdi
	call _length
	pop rdi
	pop rsi
cat:
	cmp [rsi + r8], byte 0x0
	je exit
	mov r11, [rsi + r8]
	mov [rdi + rax], r11
	inc r8
	inc rax
	jmp cat
exit:
	mov [rdi + rax], byte 0x0
	mov rax, rdi
	leave
	ret
