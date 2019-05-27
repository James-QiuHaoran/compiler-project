	push	sp
	push	10168
	add
	pop	sp
	push	256
	pop	sb[0]
	push	10
	pop	sb[1]
	push	1.000000
	pop	sb[2]
	push	28
	pop	sb[3]
	push	0.990000
	pop	sb[4]
	push	128
	pop	sb[5]
	push	"please enter number of samples"
	puts
	geti
	pop	sb[6]
	push	"rows = "
	puts_
	push	sb[6]
	puti
	push	2000
	pop	sb[7]
	push	sb[6]
	push	sb[7]
	compGT
	j0	L053
	push	"FATAL: no more than 2000 samples!"
	puts
L053:
	push	sb[0]
	push	sb[1]
	add
	pop	sb[2668]
	push	0
	pop	sb[2669]
L056:
	push	sb[2669]
	push	sb[6]
	compLT
	j0	L055
	push	0
	pop	sb[2670]
L059:
	push	sb[2670]
	push	sb[2668]
	compLT
	j0	L058
	geti
	pop	sb[2671]
	push	"col = "
	puts_
	push	sb[2670]
	puti
	push	sb[2670]
	push	sb[0]
	compLT
	j0	L060
	push	sb[2671]
	push	sb
	push	8
	push	0
	push	sb[2669]
	add
	push	256
	mul
	push	sb[2670]
	add
	add
	add
	pop	ac
	pop	ac[0]
	jmp	L061
L060:
	push	sb[2671]
	push	sb
	push	2568
	push	0
	push	sb[2669]
	add
	push	10
	mul
	push	sb[2670]
	push	sb[0]
	sub
	add
	add
	add
	pop	ac
	pop	ac[0]
L061:
L057:
	push	sb[2670]
	push	1
	add
	pop	sb[2670]
	jmp	L059
L058:
L054:
	push	sb[2669]
	push	1
	add
	pop	sb[2669]
	jmp	L056
L055:
	push	"finish loading!"
	puts
	push	2
	pop	sb[2672]
	push	sb[3]
	push	sb[0]
	push	sb[1]
	add
	mul
	pop	sb[2673]
	push	sb
	push	2674
	add
	push	sb[3]
	push	sb[0]
	mul
	add
	pop	sb[10122]
	call	L006, 0
	push	0
	pop	sb[10163]
L064:
	push	sb[10163]
	push	sb[5]
	compLT
	j0	L063
	call	L010, 0
	push	0.000000
	pop	sb[10164]
	push	0
	pop	sb[10165]
L067:
	push	sb[10165]
	push	sb[6]
	compLT
	j0	L066
	push	sb
	push	8
	push	0
	push	sb[10165]
	add
	push	256
	mul
	add
	add
	pop	sb[10166]
	push	sb
	push	2568
	push	0
	push	sb[10165]
	add
	push	10
	mul
	add
	add
	pop	sb[10167]
	push	sb[10164]
	push	sb[10166]
	push	sb[10167]
	call	L014, 2
	add
	pop	sb[10164]
L065:
	push	sb[10165]
	push	1
	add
	pop	sb[10165]
	jmp	L067
L066:
	push	"error rate = "
	puts_
	push	sb[10164]
	push	sb[6]
	realdiv
	putd
	push	"learning rate = "
	puts_
	push	sb[2]
	putd
	push	sb[2]
	push	sb[4]
	mul
	pop	sb[2]
L062:
	push	sb[10163]
	push	1
	add
	pop	sb[10163]
	jmp	L064
L063:
	end
L018:
	push	0.500000
	push	fp[-5]
	push	fp[-4]
	sub
	mul
	push	fp[-5]
	push	fp[-4]
	sub
	mul
	ret
	ret
L026:
	push	fp[-5]
	push	fp[-4]
	sub
	ret
	ret
L052:
	push	sp
	push	2
	add
	pop	sp
	push	0.000000
	pop	fp[0]
	push	0
	pop	sb[10163]
L070:
	push	sb[10163]
	push	sb[1]
	compLT
	j0	L069
	push	fp[0]
	push	fp[-4]
	push	0
	push	sb[10163]
	add
	add
	pop	ac
	push	ac[0]
	push	sb
	push	10153
	push	0
	push	sb[10163]
	add
	add
	add
	pop	ac
	push	ac[0]
	call	L018, 2
	add
	pop	fp[0]
L068:
	push	sb[10163]
	push	1
	add
	pop	sb[10163]
	jmp	L070
L069:
	push	fp[0]
	ret
	ret
L019:
	push	fp[-5]
	push	fp[-4]
	compGT
	j0	L071
	push	fp[-5]
	ret
	jmp	L072
L071:
	push	fp[-4]
	ret
L072:
	ret
L037:
	push	0
	push	fp[-4]
	call	L019, 2
	ret
	ret
L027:
	push	1
	ret
	ret
L051:
	push	sp
	push	6
	add
	pop	sp
	push	0
	pop	sb[10163]
L075:
	push	sb[10163]
	push	sb[3]
	compLT
	j0	L074
	push	0.000000
	pop	fp[0]
	push	0
	pop	sb[10165]
L078:
	push	sb[10165]
	push	sb[1]
	compLT
	j0	L077
	push	sb
	push	10153
	push	0
	push	sb[10165]
	add
	add
	add
	pop	ac
	push	ac[0]
	push	fp[-4]
	push	0
	push	sb[10165]
	add
	add
	pop	ac
	push	ac[0]
	call	L026, 2
	pop	fp[2]
	push	sb
	push	10153
	push	0
	push	sb[10165]
	add
	add
	add
	pop	ac
	push	ac[0]
	call	L027, 1
	pop	fp[4]
	push	fp[0]
	push	fp[2]
	push	fp[4]
	mul
	push	sb
	push	10122
	push	0
	push	sb[10165]
	push	sb[3]
	mul
	push	sb[10163]
	add
	add
	add
	add
	pop	ac
	push	ac[0]
	mul
	add
	pop	fp[0]
	push	sb
	push	10122
	push	0
	push	sb[10165]
	push	sb[3]
	mul
	push	sb[10163]
	add
	add
	add
	add
	pop	ac
	push	ac[0]
	push	sb[2]
	push	fp[2]
	mul
	push	fp[4]
	mul
	push	sb
	push	10125
	push	0
	push	sb[10163]
	add
	add
	add
	pop	ac
	push	ac[0]
	mul
	sub
	push	sb
	push	10122
	push	0
	push	sb[10165]
	push	sb[3]
	mul
	push	sb[10163]
	add
	add
	add
	add
	pop	ac
	pop	ac[0]
L076:
	push	sb[10165]
	push	1
	add
	pop	sb[10165]
	jmp	L078
L077:
	push	0
	pop	sb[10165]
L081:
	push	sb[10165]
	push	sb[0]
	compLT
	j0	L080
	push	sb
	push	2674
	push	0
	push	sb[10163]
	push	sb[0]
	mul
	push	sb[10165]
	add
	add
	add
	add
	pop	ac
	push	ac[0]
	push	sb[2]
	push	fp[0]
	mul
	push	sb
	push	10125
	push	0
	push	sb[10163]
	add
	add
	add
	pop	ac
	push	ac[0]
	call	L027, 1
	mul
	push	fp[-5]
	push	0
	push	sb[10165]
	add
	add
	pop	ac
	push	ac[0]
	mul
	sub
	push	sb
	push	2674
	push	0
	push	sb[10163]
	push	sb[0]
	mul
	push	sb[10165]
	add
	add
	add
	add
	pop	ac
	pop	ac[0]
L079:
	push	sb[10165]
	push	1
	add
	pop	sb[10165]
	jmp	L081
L080:
L073:
	push	sb[10163]
	push	1
	add
	pop	sb[10163]
	jmp	L075
L074:
	ret
L050:
	push	sp
	push	2
	add
	pop	sp
	push	0
	pop	sb[10163]
L084:
	push	sb[10163]
	push	sb[3]
	compLT
	j0	L083
	push	0.000000
	pop	fp[0]
	push	0
	pop	sb[10165]
L087:
	push	sb[10165]
	push	sb[0]
	compLT
	j0	L086
	push	fp[0]
	push	fp[-5]
	push	0
	push	sb[10165]
	add
	add
	pop	ac
	push	ac[0]
	push	sb
	push	2674
	push	0
	push	sb[10163]
	push	sb[0]
	mul
	push	sb[10165]
	add
	add
	add
	add
	pop	ac
	push	ac[0]
	mul
	add
	pop	fp[0]
L085:
	push	sb[10165]
	push	1
	add
	pop	sb[10165]
	jmp	L087
L086:
	push	fp[0]
	push	sb
	push	10123
	push	0
	push	0
	add
	add
	add
	pop	ac
	push	ac[0]
	add
	call	L037, 1
	push	sb
	push	10125
	push	0
	push	sb[10163]
	add
	add
	add
	pop	ac
	pop	ac[0]
L082:
	push	sb[10163]
	push	1
	add
	pop	sb[10163]
	jmp	L084
L083:
	push	0
	pop	sb[10163]
L090:
	push	sb[10163]
	push	sb[1]
	compLT
	j0	L089
	push	0.000000
	pop	fp[0]
	push	0
	pop	sb[10165]
L093:
	push	sb[10165]
	push	sb[3]
	compLT
	j0	L092
	push	fp[0]
	push	sb
	push	10125
	push	0
	push	sb[10165]
	add
	add
	add
	pop	ac
	push	ac[0]
	push	sb
	push	10122
	push	0
	push	sb[10163]
	push	sb[3]
	mul
	push	sb[10165]
	add
	add
	add
	add
	pop	ac
	push	ac[0]
	mul
	add
	pop	fp[0]
L091:
	push	sb[10165]
	push	1
	add
	pop	sb[10165]
	jmp	L093
L092:
	push	fp[0]
	push	sb
	push	10123
	push	0
	push	1
	add
	add
	add
	pop	ac
	push	ac[0]
	add
	call	L037, 1
	push	sb
	push	10153
	push	0
	push	sb[10163]
	add
	add
	add
	pop	ac
	pop	ac[0]
L088:
	push	sb[10163]
	push	1
	add
	pop	sb[10163]
	jmp	L090
L089:
	push	sb[10153]
	ret
	ret
L006:
	push	0
	pop	sb[10163]
L096:
	push	sb[10163]
	push	sb[2673]
	compLT
	j0	L095
	push	0.100000
	push	sb
	push	2674
	push	0
	push	sb[10163]
	add
	add
	add
	pop	ac
	pop	ac[0]
L094:
	push	sb[10163]
	push	1
	add
	pop	sb[10163]
	jmp	L096
L095:
	push	0
	pop	sb[10163]
L099:
	push	sb[10163]
	push	sb[2672]
	compLT
	j0	L098
	push	0.100000
	push	sb
	push	10123
	push	0
	push	sb[10163]
	add
	add
	add
	pop	ac
	pop	ac[0]
L097:
	push	sb[10163]
	push	1
	add
	pop	sb[10163]
	jmp	L099
L098:
	ret
	call	L050, 0
	ret
L014:
	push	fp[-5]
	push	fp[-4]
	call	L050, 2
	push	fp[-5]
	push	fp[-4]
	call	L051, 2
	push	fp[-4]
	call	L052, 1
	ret
	ret
