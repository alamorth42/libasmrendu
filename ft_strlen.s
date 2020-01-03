section .text

	global _ft_strlen

_ft_strlen:
	xor	rax, rax
boucle:
	mov	cl, BYTE [rdi + rax]
	inc	rax
	test	cl, cl
	jnz	boucle 
	dec	rax
end:
	ret
