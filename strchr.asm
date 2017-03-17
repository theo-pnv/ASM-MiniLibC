;; ID SC

global _strchr:function

section .text

; char *strchr(const char *s, int c)
; rdi: s
; sil: c

_strchr:
	push rbp
	mov rbp, rsp

SC_loop:
	cmp byte[rdi], 0
	jz SC_not_found
	cmp [rdi], sil
	je SC_found
	inc rdi
	jmp SC_loop

SC_not_found:
	mov rax, rdi
	jmp SC_end

SC_found:
	mov rax, rdi
	jmp SC_end

SC_end:
	mov rsp, rbp
	pop rbp
	ret
