section	.text
	global	strpbrk:function

	;; size_t	strpbrk(const char *s, const char *accept)

strpbrk:
	push	rbp
	mov	rbp, rsp
	
_loop:
	cmp	byte[rdi], 0
	jz	_null
	mov	al, [rdi]	
	mov	r8, rsi
	jmp	_loop_s2

_loop_s2:
	cmp	byte[r8], 0
	jz	_not_found
	mov	dl, [r8]
	cmp	al, dl
	je	_end
	inc	r8
	jmp	_loop_s2

_not_found:
	inc	rdi
	jmp	_loop

_null:
	mov	rax, 0
	mov	rsp, rbp
	pop	rbp
	ret	

_end:
	mov	rax, rdi
	mov	rsp, rbp
	pop	rbp
	ret
