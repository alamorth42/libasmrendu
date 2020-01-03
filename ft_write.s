section .text

	global _ft_write

_ft_write:
	MOV	RAX, 0x2000004
	SYSCALL
	ret
