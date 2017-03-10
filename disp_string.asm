section .text

global display:function

display:
	mov rdx, 6
	mov rcx, str
	mov rbx, 1

	mov rax, 4
	int 0x80
	ret
