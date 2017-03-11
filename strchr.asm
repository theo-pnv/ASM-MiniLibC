;; ID SC

section .text
global _strchr:function

_strchr:
	push rbp
	mov rbp, rsp
	mov rax, [rsp + 16]	; rax = char *
	mov rdx, [rsp + 24]	; rdx = int
	xor rcx, rcx

SC_loop:
	cmp byte[rax + rcx], 0
	jz SC_not_found
	cmp [rax + rcx], rdx
	je SC_found
	inc rcx
	jmp SC_loop

SC_found:
	add rax, rcx
	jmp SC_end

SC_not_found:
	mov rax, 0
	jmp SC_end

SC_end:
	mov rsp, rbp
	pop rbp
	ret
