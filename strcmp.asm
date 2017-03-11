section	.text
	global	strcmp:function

strcmp:
	push	rbp
	mov	rbp, rsp

_loop:				;rdi = s1 - rsi = s2
	cmp	byte[rdi], 0	;s1: while \0
	jz	_end
	cmp	byte[rsi], 0	;s2: while \0
	jz	_end
	mov	al, [rdi]	;move char s1 in al
	mov	dl, [rsi]	;move char s2 in dl
	cmp	al, dl		;compare chars
	je	_equal		;if equal we go on
	jne	_diff		;not equal = stop
	
_equal:				;continue loop
	inc	rdi
	inc	rsi
	jmp	_loop

_diff:
	sub	al, dl		;diff s1[i] - s2[i]
	movsx	rax, al		;move diff result in ret register
	mov	rsp, rbp
	pop	rbp
	ret
	
_end:				;s1 or s2 is \0
	cmp	al, dl		;compare last chars
	jne	_diff
	mov	rax, 0		;strings are equal = return 0
	mov	rsp, rbp
	pop	rbp
	ret
