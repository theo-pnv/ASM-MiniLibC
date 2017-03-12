; ID MC

global memcpy:function

section .text

; void	*memcpy(void *dest, const void *src, size_t n)
; rdi:	dest
; rsi	src
; rdx	n

memcpy:
	push rbp
	mov rbp, rsp
	xor rcx, rcx
	mov rax, rdi

MC_loop:
	cmp rcx, rdx
	je MC_end
	mov bl, [rsi + rcx]
	mov [rdi + rcx], bl
	inc rcx
	jmp MC_loop

MC_end:
	mov rsp, rbp
	pop rbp
	ret
