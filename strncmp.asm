section	.text
	global	strncmp:function

	;; int	strncmp(const char *s1, const char *s2, size_t n)
	;; rdi	s1
	;; rsi	s2
	;; rcx	n
	;; al	s1[i]
	;; dl	s2[i]
	;; return rax = s1[i] - s2[i]
	
strncmp:
	push	rbp
	mov	rbp, rsp
	
_loop:
	cmp	byte[rdi], 0
	jz	_end
	cmp	byte[rsi], 0
	jz	_end
	mov	al, [rdi]
	mov	dl, [rsi]
	cmp	rcx, 0
	jl	_diff
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