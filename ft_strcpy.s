section .text

	global _ft_strcpy
	extern _ft_strlen

_ft_strcpy:
	mov	rcx, rdi
	mov	rdi, rsi
	call	_ft_strlen
	mov	rdi, rcx
	mov	rdx, rax
boucle:
	test	rdx, rdx
	jz	end
	dec	rdx
	mov	cl, BYTE [rsi + rdx]
	mov	BYTE [rdi + rdx], cl
	jmp	boucle
end:
	mov	BYTE [rdi + rax], 0
	mov	rax, rdi
	ret
