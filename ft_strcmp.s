section .text

	global _ft_strcmp

_ft_strcmp:
	xor	al, al
	xor	rcx, rcx
boucle:
	mov	bh, BYTE [rdi + rcx]
	mov	cl, BYTE [rsi + rcx]
	mov	al, bh
	sub	al, cl
	test	bh, bh
	jz	end
	inc	rcx
	test	al, al
	jz	boucle
end:
	movsx	rax, al
	ret
