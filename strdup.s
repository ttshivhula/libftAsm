global _ft_strdup

section .text
	extern _malloc
	extern _ft_memcpy
	extern _ft_strlen
_ft_strdup:
	push rbp
	mov rbp, rsp
	mov r13, rdi
	call _ft_strlen
	mov r14, rax
	mov rdi, rax
	inc rdi
	call _malloc
	cmp rax, 0
	je end
	mov		[rax + r14], byte 0
	mov rdi, rax
	mov rsi, r13
	mov rdx, r14
	call _ft_memcpy
end:
	leave
	ret
