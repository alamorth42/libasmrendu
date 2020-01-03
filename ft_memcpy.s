section .text

	global _ft_memcpy

_ft_memcpy:
	test	rdx, rdx 
	jz	end 
	dec	rdx 
	mov	cl, BYTE [rsi + rdx] 
	mov	BYTE [rdi + rdx], cl 
	jmp	_ft_memcpy 
end:
	mov	rax, rdi 
	ret
