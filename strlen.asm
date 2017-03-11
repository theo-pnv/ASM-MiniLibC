;; ID SL

section .text
global strlen:function

strlen:
	push rbp	; Save previous frame's base pointer
	mov rbp, rsp	; Update base pointer to current top stack point (rsp)
	xor rcx, rcx	; Init counter to 0

SL_loop:
	cmp byte[rdi + rcx], 0	; 1st param + counter == '\0' ?
	jz SL_end		; YES: go to end
	inc rcx			; NO: counter++
	jmp SL_loop

SL_end:
	mov rax, rcx	; Store counter in returning register
	mov rsp, rbp	; Remove all current frame items (stack pointer reinitialized)
	pop rbp		; Put previous frame's base pointer into rbp
	ret
