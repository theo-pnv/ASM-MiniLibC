section	.text
	global	_strcmp:function

_strcmp:
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
	jg	_greater	;if greater - stop
	jl	_lower		;if lower - stop
	
_equal:				;continue loop
	inc	rdi
	inc	rsi
	jmp	_loop

_greater:
	mov	rax, 1		;return value = diff chars
	mov	rsp, rbp
	pop	rbp
	ret
	
_lower:
	mov	rax, 2		;return value = diff chars
	mov	rsp, rbp
	pop	rbp
	ret	

_end:				;s1 or s2 is \0
	cmp	al, dl		;compare last chars
	jg	_greater
	jl	_lower
	mov	rax, 0		;strings are equal = return 0
	mov	rsp, rbp
	pop	rbp
	ret
