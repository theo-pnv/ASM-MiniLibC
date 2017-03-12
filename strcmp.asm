section	.text
	global	strcmp:function

	;; int	strcmp(const char *s1, const char *s2)
	;; rdi	s1
	;; rsi	s2
	;; al	s1[i]
	;; dl	s2[i]
	;; return rax = s1[i] - s2[i]
	
strcmp:
	push	rbp
	mov	rbp, rsp

_loop:
	cmp	byte[rdi], 0
	jz	_end
	cmp	byte[rsi], 0
	jz	_end
	mov	al, [rdi]
	mov	dl, [rsi]
	cmp	al, dl
	je	_equal
	jne	_diff
	
_equal:
	inc	rdi
	inc	rsi
	jmp	_loop

_end:
	mov	al, [rdi]
	mov	dl, [rsi]
	jmp	_diff

_diff:
	sub	al, dl
	movsx	rax, al
	mov	rsp, rbp
	pop	rbp
	ret
