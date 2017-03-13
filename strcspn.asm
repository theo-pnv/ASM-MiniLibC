section	.text
	global	strcspn:function

	;; size_t	strcspn(const char *s, const char *reject)
	;; rdi		s1
	;; rsi		s2
	;; rcx		i
	;; al		s1[i]
	;; dl		s2[i]
	
strcspn:
	push	rbp
	mov	rbp, rsp
	xor	rcx, rcx
	
_loop:
	cmp	byte[rdi], 0
	jz	_end
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
	inc	rcx
	jmp	_loop

_end:
	mov	rax, rcx
	mov	rsp, rbp
	pop	rbp
	ret
