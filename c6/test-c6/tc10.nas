	push	-12.500000
	call	L000, 1
	putd
	end
L000:
	push	sp
	push	6
	add
	pop	sp
	push	100
	pop	fp[0]
	push	1.000000
	pop	fp[2]
	push	fp[0]
	pop	fp[4]
L006:
	push	fp[4]
	push	0
	compGT
	j0	L005
	push	1
	push	fp[-4]
	push	fp[2]
	mul
	push	fp[4]
	realdiv
	add
	pop	fp[2]
L004:
	push	fp[4]
	push	1
	sub
	pop	fp[4]
	jmp	L006
L005:
	push	fp[2]
	ret
	ret
