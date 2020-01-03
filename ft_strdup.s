section .text

	global _ft_strdup
	extern _ft_strlen
	extern _ft_memcpy
	extern _malloc

_ft_strdup:
	call	_ft_strlen
	inc	rax
	mov	r15, rax
	push	rdi
	mov	rdi, rax
	call	_malloc
	pop	rdi
	mov	rsi, rdi
	mov	rdi, rax
	mov	rdx, r15
	call	_ft_memcpy
	ret
