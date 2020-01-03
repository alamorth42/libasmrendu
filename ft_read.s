section .text

	global _ft_read

_ft_read:
	MOV	RAX, 0x2000003
	SYSCALL
	ret
