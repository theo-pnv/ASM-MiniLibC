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
	cmp rdx, 0
	je MM_end
	cmp rsi, rdi
	jnb MM_copy_beg
	add rcx, rdx	;; Place r8 at src + n
	dec rcx

MM_copy_end:
	mov bl, [rsi + rcx]
	mov [rdi + rcx], bl
	cmp rcx, 0
	jz MM_end
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
