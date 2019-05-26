	push	sp
	push	2
	add
	pop	sp
	push	1
	pop	sb[0]
	push	2
	pop	sb[1]
	push	sb[0]
	push	sb[1]
	realdiv
	putd
	end
