;; ID SC

global strchr:function

section .text

strchr:
	push rbp
	mov rbp, rsp

; rdi: pointer to passed string
; [rdi]: current character of the string
; sil: Source Index (Low) register containing the 2nd argument

SC_loop:
	cmp byte[rdi], 0
	jz SC_not_found
	cmp [rdi], sil
	je SC_found
	inc rdi
	jmp SC_loop

SC_not_found:
	mov rax, 0
	jmp SC_end

SC_found:
	mov rax, rdi
	jmp SC_end

SC_end:
	mov rsp, rbp
	pop rbp
	ret
