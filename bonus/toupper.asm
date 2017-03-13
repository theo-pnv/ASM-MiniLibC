; ID TU

global toupper:function

; int 	toupper(int c);
; rdi:	c

toupper:
	push rbp
	mov rbp, rsp
	mov rax, rdi

	cmp rdi, 'a'
	jc TU_end
	cmp rdi, 'z'
	jnc TU_end
	dec rdi, 32

TU_end:
	mov rsp, rbp
	pop rbp
	ret
