section	.text
	global	strstr:function

	;; char	*strstr(const char *haystack, const char *needle)
	
strstr:
	push	rbp
	mov	rbp, rsp

_reset:	
	xor	rcx, rcx

_loop:
	cmp	byte[rsi + rcx], 0
	jz	_found
	cmp	byte[rdi + rcx], 0
	jz	_not_found
	mov	al, [rdi + rcx]
	mov	dl, [rsi + rcx]
	cmp	al, dl
	je	_equal
	inc	rdi
	jmp	_loop
	
_equal:
	inc	rcx
	cmp	al, dl
	jne	_reset
	je	_loop

_not_found:
	mov	rax, 0
	mov	rsp, rbp
	pop	rbp
	ret

_found:
	mov	rax, rdi
	mov	rsp, rbp
	pop	rbp
	ret
