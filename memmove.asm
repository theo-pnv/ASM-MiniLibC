; ID MM

global memmove:function

section .text

; void	*memmove(void *dest, const void *src, size_t n);
; rdi:	dest
; rsi:	src
; rdx:	n

memmove:
	push rbp
	mov rbp, rsp
	xor rcx, rcx
	mov rax, rdi
	cmp rsi, rdi
	jnc MM_copy_beg

MM_calc_len:
	cmp byte[rdi + rcx], 0
	jz MM_copy_end
	inc rcx
	jmp MM_calc_len

MM_copy_end:
	cmp byte[rcx], 0
	jz MM_end
	mov bl, [rsi + rcx]
	mov [rdi + rcx], bl
	dec rcx
	jmp MM_copy_end

MM_copy_beg:
	cmp rcx, rdx
	je MM_end
	mov bl, [rsi + rcx]
	mov [rdi + rcx], bl
	inc rcx
	jmp MM_copy_beg

MM_end:
	mov rsp, rbp
	pop rbp
	ret
