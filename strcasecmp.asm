section	.text
	global	strcasecmp:function

	;; int	strcasecmp(const char *s1, const char *s2)
	
strcasecmp:
	push	rbp
	mov	rbp, rsp

_loop:
	cmp	byte[rdi], 0
	jz	_end
	cmp	byte[rsi], 0
	jz	_end
	mov	al, [rdi]
	mov	dl, [rsi]
	jmp	_test_s1up1

_test_s1up1:
	cmp	al, 90
	jle	_test_s1up2
	ja	_test_s2up1
	
_test_s1up2:	
	cmp	al, 65
	jae	_to_lowers1
	jl	_test_s2up1

_to_lowers1:
	add	al, 32
	jmp	_test_s2up1

_test_s2up1:
	cmp	dl, 90
	jle	_test_s2up2
	ja	_loop2
	
_test_s2up2:	
	cmp	dl, 65
	jae	_to_lowers2
	jl	_loop2

_to_lowers2:
	add	dl, 32
	jmp	_loop2

_loop2:
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
