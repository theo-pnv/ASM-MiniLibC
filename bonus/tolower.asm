; ID TL

global tolower:function

; int 	tolower(int c);
; rdi:	c

tolower:
	push rbp
	mov rbp, rsp
	mov rax, rdi

	cmp rdi, 'A'
	jl TL_end	; jmp if lesser
	cmp rdi, 'Z'
	jg TL_end	; jmp if greater
	add rax, 32

TL_end:
	mov rsp, rbp
	pop rbp
	ret
