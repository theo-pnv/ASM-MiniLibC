; ID TU

global _toupper:function

; int 	toupper(int c);
; rdi:	c

_toupper:
	push rbp
	mov rbp, rsp
	mov rax, rdi

	cmp rdi, 'a'
	jl TU_end
	cmp rdi, 'z'
	jg TU_end
	sub rax, 32

TU_end:
	mov rsp, rbp
	pop rbp
	ret
