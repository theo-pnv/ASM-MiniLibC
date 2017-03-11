;; ID SC

global _strchr:function

section .text

_strchr:
	push rbp
	mov rbp, rsp

; rdi: pointer to passed string
; [rdi]: current character of the string
; sil: Source Index (Low) register containing the 2nd argument

SC_loop:
	cmp byte[rdi], 0
	jz SC_end
	cmp [rdi], sil
	je SC_end
	inc rdi
	jmp SC_loop

SC_end:
	mov rax, rdi
	mov rsp, rbp
	pop rbp
	ret
