section .text

global display:function
	extern printf

display:
	push rbp
	mov rsp, rbp

	mov rax, [rdi]
	push rax
	push dword "%s"
	call printf

	add rsp, 8
	mov rbp, rsp
	pop rbp
	ret
