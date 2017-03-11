;; ID RX

global rindex:function
section .text

rindex:
	push rbp
	mov rbp, rsp
	mov rdx, rdi	; rdx now points to the beginning of string
	call RX_to_end

RX_to_end:		; Move pointer to last byte of string
	cmp byte[rdi], 0
	jz RX_loop
	inc rdi
	jmp RX_to_end

RX_loop:		; Look for the wanted char, beginning from the end
	cmp [rdi], sil
	jz RX_found
	cmp rdi, rdx	; Check if rdi is back to 1st char of string
	jz RX_not_found
	dec rdi
	jmp RX_loop

RX_not_found:		; Return NULL if not found
	xor rax, rax
	jmp RX_end

RX_found:		; Put correct pointer in returning register
	mov rax, rdi
	jmp RX_end

RX_end:
	mov rsp, rbp
	pop rbp
	ret
