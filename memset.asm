; ID MS

global memset:function

section .text

; void	*memset(void *str, int c, size_t n)
; rdi:	str
; sil:	c
; rdx:	n
; return rax

memset:
	push rbp
	mov rbp, rsp
	mov rax, rdi
	xor rcx, rcx

MS_loop:
	cmp rcx, rdx
	je end
	cmp byte[rdi], 0
	je end
	mov [rdi], sil
	inc rdi
	inc rcx
	jmp MS_loop

end:
	mov rsp, rbp
	pop rbp
	ret
