section	.text
	global	strcmp:function

	;; int	strcmp(const char *s1, const char *s2)	
strcmp:
	push	rbp
	mov	rbp, rsp

_loop:
	mov	al, [rdi]
	mov	dl, [rsi]
	cmp	byte[rdi], 0
	jz	_diff
	cmp	byte[rsi], 0
	jz	_diff
	cmp	al, dl
	jne	_diff
	inc	rdi
	inc	rsi
	jmp	_loop
	
_diff:
	sub	al, dl
	movsx	rax, al
	mov	rsp, rbp
	pop	rbp
	ret
