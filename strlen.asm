global _strlen:function

_strlen:
	push rbp	; Save base pointer
	mov rsp, rbp	; Get stack pointer
	xor rcx, rcx	; Init counter to 0

loop:
	cmp byte[rdi + rcx], 0	;
	jz end			; If curr == 0 jump to end
	inc rcx			; Else inc counter
	jmp loop

end:
	mov rax, rcx	; Store counter in returning register
	mov rsp, rbp
	pop rbp
	ret
