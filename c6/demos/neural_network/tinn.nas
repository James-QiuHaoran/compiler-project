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
	push	2000
	pop	sb[7]
	push	sb[6]
	push	sb[7]
	compGT
	j0	L052
	push	"FATAL: no more than 2000 samples!"
	puts
L052:
	push	sb[0]
	push	sb[1]
	add
	pop	sb[2668]
	push	0
	pop	sb[2669]
L055:
	push	sb[2669]
	push	sb[6]
	compLT
	j0	L054
	push	0
	pop	sb[2670]
L058:
	push	sb[2670]
	push	sb[2668]
	compLT
	j0	L057
	geti
	pop	sb[2671]
	push	sb[2670]
	push	sb[0]
	compLT
	j0	L059
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
	jmp	L060
L059:
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
L060:
L056:
	push	sb[2670]
	push	1
	add
	pop	sb[2670]
	jmp	L058
L057:
L053:
	push	sb[2669]
	push	1
	add
	pop	sb[2669]
	jmp	L055
L054:
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
L063:
	push	sb[10163]
	push	sb[5]
	compLT
	j0	L062
	push	"training iteration: #"
	puts_
	push	sb[10163]
	puti
	push	0.000000
	pop	sb[10164]
	push	0
	pop	sb[10165]
L066:
	push	sb[10165]
	push	sb[6]
	compLT
	j0	L065
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
	call	L013, 2
	add
	pop	sb[10164]
L064:
	push	sb[10165]
	push	1
	add
	pop	sb[10165]
	jmp	L066
L065:
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
L061:
	push	sb[10163]
	push	1
	add
	pop	sb[10163]
	jmp	L063
L062:
	end
L017:
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
L025:
	push	fp[-5]
	push	fp[-4]
	sub
	ret
	ret
L051:
	push	sp
	push	4
	add
	pop	sp
	push	"calculate total error"
	puts
	push	0.000000
	pop	fp[0]
	push	0
	pop	fp[2]
L069:
	push	fp[2]
	push	sb[1]
	compLT
	j0	L068
	push	"o["
	puts_
	push	fp[2]
	puti_
	push	"]="
	puts_
	push	sb
	push	10153
	push	0
	push	fp[2]
	add
	add
	add
	pop	ac
	push	ac[0]
	putd
	push	"tg["
	puts_
	push	fp[2]
	puti_
	push	"]="
	puts_
	push	fp[-4]
	push	0
	push	fp[2]
	add
	add
	pop	ac
	push	ac[0]
	putd
	push	fp[0]
	push	fp[-4]
	push	0
	push	fp[2]
	add
	add
	pop	ac
	push	ac[0]
	push	sb
	push	10153
	push	0
	push	fp[2]
	add
	add
	add
	pop	ac
	push	ac[0]
	call	L017, 2
	add
	pop	fp[0]
L067:
	push	fp[2]
	push	1
	add
	pop	fp[2]
	jmp	L069
L068:
	push	fp[0]
	ret
	ret
L018:
	push	fp[-5]
	push	fp[-4]
	compGT
	j0	L070
	push	fp[-5]
	ret
	jmp	L071
L070:
	push	fp[-4]
	ret
L071:
	ret
L036:
	push	0
	push	fp[-4]
	call	L018, 2
	ret
	ret
L026:
	push	1
	ret
	ret
L050:
	push	sp
	push	8
	add
	pop	sp
	push	0
	pop	fp[0]
L074:
	push	fp[0]
	push	sb[3]
	compLT
	j0	L073
	push	0.000000
	pop	fp[2]
	push	0
	pop	sb[10165]
L077:
	push	sb[10165]
	push	sb[1]
	compLT
	j0	L076
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
	call	L025, 2
	pop	fp[4]
	push	sb
	push	10153
	push	0
	push	sb[10165]
	add
	add
	add
	pop	ac
	push	ac[0]
	call	L026, 1
	pop	fp[6]
	push	fp[2]
	push	fp[4]
	push	fp[6]
	mul
	push	sb[10122]
	push	sb[10165]
	push	sb[3]
	mul
	add
	push	fp[0]
	add
	pop	ac
	push	ac[0]
	mul
	add
	pop	fp[2]
	push	sb[10122]
	push	sb[10165]
	push	sb[3]
	mul
	add
	push	fp[0]
	add
	pop	ac
	push	ac[0]
	push	sb[2]
	push	fp[4]
	mul
	push	fp[6]
	mul
	push	sb
	push	10125
	push	0
	push	fp[0]
	add
	add
	add
	pop	ac
	push	ac[0]
	mul
	sub
	push	sb[10122]
	push	sb[10165]
	push	sb[3]
	mul
	add
	push	fp[0]
	add
	pop	ac
	pop	ac[0]
L075:
	push	sb[10165]
	push	1
	add
	pop	sb[10165]
	jmp	L077
L076:
	push	0
	pop	sb[10165]
L080:
	push	sb[10165]
	push	sb[0]
	compLT
	j0	L079
	push	sb
	push	2674
	push	0
	push	fp[0]
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
	push	fp[2]
	mul
	push	sb
	push	10125
	push	0
	push	fp[0]
	add
	add
	add
	pop	ac
	push	ac[0]
	call	L026, 1
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
	push	fp[0]
	push	sb[0]
	mul
	push	sb[10165]
	add
	add
	add
	add
	pop	ac
	pop	ac[0]
L078:
	push	sb[10165]
	push	1
	add
	pop	sb[10165]
	jmp	L080
L079:
L072:
	push	fp[0]
	push	1
	add
	pop	fp[0]
	jmp	L074
L073:
	ret
L049:
	push	sp
	push	4
	add
	pop	sp
	push	0
	pop	fp[0]
L083:
	push	fp[0]
	push	sb[3]
	compLT
	j0	L082
	push	0.000000
	pop	fp[2]
	push	0
	pop	sb[10165]
L086:
	push	sb[10165]
	push	sb[0]
	compLT
	j0	L085
	push	fp[2]
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
	push	fp[0]
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
	pop	fp[2]
L084:
	push	sb[10165]
	push	1
	add
	pop	sb[10165]
	jmp	L086
L085:
	push	fp[2]
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
	call	L036, 1
	push	sb
	push	10125
	push	0
	push	fp[0]
	add
	add
	add
	pop	ac
	pop	ac[0]
L081:
	push	fp[0]
	push	1
	add
	pop	fp[0]
	jmp	L083
L082:
	push	0
	pop	fp[0]
L089:
	push	fp[0]
	push	sb[1]
	compLT
	j0	L088
	push	0.000000
	pop	fp[2]
	push	0
	pop	sb[10165]
L092:
	push	sb[10165]
	push	sb[3]
	compLT
	j0	L091
	push	fp[2]
	push	sb
	push	10125
	push	0
	push	sb[10165]
	add
	add
	add
	pop	ac
	push	ac[0]
	push	sb[10122]
	push	fp[0]
	push	sb[3]
	mul
	add
	push	sb[10165]
	add
	pop	ac
	push	ac[0]
	mul
	add
	pop	fp[2]
L090:
	push	sb[10165]
	push	1
	add
	pop	sb[10165]
	jmp	L092
L091:
	push	fp[2]
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
	call	L036, 1
	push	sb
	push	10153
	push	0
	push	fp[0]
	add
	add
	add
	pop	ac
	pop	ac[0]
L087:
	push	fp[0]
	push	1
	add
	pop	fp[0]
	jmp	L089
L088:
	push	sb[10153]
	ret
	ret
L006:
	push	sp
	push	2
	add
	pop	sp
	push	0
	pop	fp[0]
L095:
	push	fp[0]
	push	sb[2673]
	compLT
	j0	L094
	push	0.100000
	push	sb
	push	2674
	push	0
	push	fp[0]
	add
	add
	add
	pop	ac
	pop	ac[0]
L093:
	push	fp[0]
	push	1
	add
	pop	fp[0]
	jmp	L095
L094:
	push	0
	pop	fp[0]
L098:
	push	fp[0]
	push	sb[2672]
	compLT
	j0	L097
	push	0.100000
	push	sb
	push	10123
	push	0
	push	fp[0]
	add
	add
	add
	pop	ac
	pop	ac[0]
L096:
	push	fp[0]
	push	1
	add
	pop	fp[0]
	jmp	L098
L097:
	ret
	call	L049, 0
	ret
L013:
	push	fp[-5]
	push	fp[-4]
	call	L049, 2
	push	fp[-5]
	push	fp[-4]
	call	L050, 2
	push	fp[-4]
	call	L051, 1
	ret
	ret
