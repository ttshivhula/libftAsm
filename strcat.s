extern	strlen
global	ft_strcat
section	.text
ft_strcat:
	push rbp
	mov rbp, rsp
	xor r8, r8
destlen:
	push rdi
	call strlen
	pop rdi
cat:
	cmp [rsi + r8], byte 0
	je exit
	mov r11, [rsi + r8]
	mov [rdi + rax], r11
	inc r8
	inc rax
	jmp cat
exit:
	mov [rdi + rax], byte 0
	mov rax, rdi
	leave
	ret
