section	.text
	global	strncmp:function

	;; int	strncmp(const char *s1, const char *s2, size_t n)
	
strncmp:
	push	rbp
	mov	rbp, rsp
	xor	rcx, rcx
	inc	rcx
	
_loop:
	mov	al, [rdi]
	mov	r8b, [rsi]
	cmp	rcx, rdx
	je	_diff
	cmp	byte[rdi], 0
	jz	_diff
	cmp	byte[rsi], 0
	jz	_diff
	cmp	al, r8b
	jne	_diff
	inc	rdi
	inc	rsi
	inc	rcx
	je	_diff
	jmp	_loop

_diff:
	sub	al, r8b
	movsx	rax, al
	mov	rsp, rbp
	pop	rbp
	ret
