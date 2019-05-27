	push	sp
	push	10169
	add
	pop	sp
	push	0
	pop	sb[0]
	push	256
	pop	sb[1]
	push	10
	pop	sb[2]
	push	1.000000
	pop	sb[3]
	push	28
	pop	sb[4]
	push	0.990000
	pop	sb[5]
	push	128
	pop	sb[6]
	push	"please enter number of samples"
	puts
	geti
	pop	sb[7]
	push	2000
	pop	sb[8]
	push	sb[7]
	push	sb[8]
	compGT
	j0	L058
	push	"FATAL: no more than 2000 samples!"
	puts
L058:
	push	sb[1]
	push	sb[2]
	add
	pop	sb[2669]
	push	0
	pop	sb[2670]
L061:
	push	sb[2670]
	push	sb[7]
	compLT
	j0	L060
	push	0
	pop	sb[2671]
L064:
	push	sb[2671]
	push	sb[2669]
	compLT
	j0	L063
	geti
	pop	sb[2672]
	push	sb[2671]
	push	sb[1]
	compLT
	j0	L065
	push	sb[2672]
	push	sb
	push	9
	push	0
	push	sb[2670]
	add
	push	256
	mul
	push	sb[2671]
	add
	add
	add
	pop	ac
	pop	ac[0]
	jmp	L066
L065:
	push	sb[2672]
	push	sb
	push	2569
	push	0
	push	sb[2670]
	add
	push	10
	mul
	push	sb[2671]
	push	sb[1]
	sub
	add
	add
	add
	pop	ac
	pop	ac[0]
L066:
L062:
	push	sb[2671]
	push	1
	add
	pop	sb[2671]
	jmp	L064
L063:
L059:
	push	sb[2670]
	push	1
	add
	pop	sb[2670]
	jmp	L061
L060:
	push	"finish loading!"
	puts
	push	2
	pop	sb[2673]
	push	sb[4]
	push	sb[1]
	push	sb[2]
	add
	mul
	pop	sb[2674]
	push	sb
	push	2675
	add
	push	sb[4]
	push	sb[1]
	mul
	add
	pop	sb[10123]
	call	L006, 0
	push	0
	pop	sb[10164]
L069:
	push	sb[10164]
	push	sb[6]
	compLT
	j0	L068
	push	"training iteration: #"
	puts_
	push	sb[10164]
	puti
	push	0.000000
	pop	sb[10165]
	push	0
	pop	sb[10166]
L072:
	push	sb[10166]
	push	sb[7]
	compLT
	j0	L071
	push	sb
	push	9
	push	0
	push	sb[10166]
	add
	push	256
	mul
	add
	add
	pop	sb[10167]
	push	sb
	push	2569
	push	0
	push	sb[10166]
	add
	push	10
	mul
	add
	add
	pop	sb[10168]
	push	sb[10165]
	push	sb[10167]
	push	sb[10168]
	call	L013, 2
	add
	pop	sb[10165]
L070:
	push	sb[10166]
	push	1
	add
	pop	sb[10166]
	jmp	L072
L071:
	push	"error rate = "
	puts_
	push	sb[10165]
	push	sb[7]
	realdiv
	putd
	push	"learning rate = "
	puts_
	push	sb[3]
	putd
	push	sb[3]
	push	sb[5]
	mul
	pop	sb[3]
L067:
	push	sb[10164]
	push	1
	add
	pop	sb[10164]
	jmp	L069
L068:
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
L031:
	push	fp[-5]
	push	fp[-4]
	sub
	ret
	ret
L057:
	push	sp
	push	4
	add
	pop	sp
	push	sb[0]
	push	1
	compEQ
	j0	L073
	push	"calculate total error"
	puts
L073:
	push	0.000000
	pop	fp[0]
	push	0
	pop	fp[2]
L076:
	push	fp[2]
	push	sb[2]
	compLT
	j0	L075
	push	sb[0]
	push	1
	compEQ
	j0	L077
	push	"o["
	puts_
	push	fp[2]
	puti_
	push	"]="
	puts_
	push	sb
	push	10154
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
L077:
	push	fp[0]
	push	fp[-4]
	push	0
	push	fp[2]
	add
	add
	pop	ac
	push	ac[0]
	push	sb
	push	10154
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
L074:
	push	fp[2]
	push	1
	add
	pop	fp[2]
	jmp	L076
L075:
	push	fp[0]
	ret
	ret
L021:
	push	sp
	push	6
	add
	pop	sp
	push	100
	pop	fp[0]
	push	1.000000
	pop	fp[2]
	push	fp[0]
	push	1
	sub
	pop	fp[4]
L080:
	push	fp[4]
	push	0
	compGT
	j0	L079
	push	1
	push	fp[-4]
	push	fp[2]
	mul
	push	fp[4]
	realdiv
	add
	pop	fp[2]
L078:
	push	fp[4]
	push	1
	sub
	pop	fp[4]
	jmp	L080
L079:
	push	fp[2]
	ret
	ret
L042:
	push	sb[0]
	push	1
	compEQ
	j0	L081
	push	"sigmoid input ="
	puts_
	push	fp[-4]
	putd
	push	"sigmoid output ="
	puts_
	push	1.000000
	push	1.000000
	push	fp[-4]
	neg
	call	L021, 1
	add
	realdiv
	putd
L081:
	push	1.000000
	push	1.000000
	push	fp[-4]
	neg
	call	L021, 1
	add
	realdiv
	ret
	ret
L032:
	push	fp[-4]
	push	1.000000
	push	fp[-4]
	sub
	mul
	ret
	ret
	push	sp
	push	2
	add
	pop	sp
	push	"printing out weights..."
	puts
	push	0
	pop	fp[0]
L085:
	push	fp[0]
	push	sb[2674]
	compLT
	j0	L084
	push	sb
	push	2675
	push	0
	push	fp[0]
	add
	add
	add
	pop	ac
	push	ac[0]
	putd
L083:
	push	fp[0]
	push	1
	add
	pop	fp[0]
	jmp	L085
L084:
	push	"finish printing out weights"
	puts
	ret
L056:
	push	sp
	push	8
	add
	pop	sp
	push	0
	pop	fp[0]
L088:
	push	fp[0]
	push	sb[4]
	compLT
	j0	L087
	push	0.000000
	pop	fp[2]
	push	0
	pop	sb[10166]
L091:
	push	sb[10166]
	push	sb[2]
	compLT
	j0	L090
	push	sb
	push	10154
	push	0
	push	sb[10166]
	add
	add
	add
	pop	ac
	push	ac[0]
	push	fp[-4]
	push	0
	push	sb[10166]
	add
	add
	pop	ac
	push	ac[0]
	call	L031, 2
	pop	fp[4]
	push	sb
	push	10154
	push	0
	push	sb[10166]
	add
	add
	add
	pop	ac
	push	ac[0]
	call	L032, 1
	pop	fp[6]
	push	fp[2]
	push	fp[4]
	push	fp[6]
	mul
	push	sb[10123]
	push	sb[10166]
	push	sb[4]
	mul
	add
	push	fp[0]
	add
	pop	ac
	push	ac[0]
	mul
	add
	pop	fp[2]
	push	sb[10123]
	push	sb[10166]
	push	sb[4]
	mul
	add
	push	fp[0]
	add
	pop	ac
	push	ac[0]
	push	sb[3]
	push	fp[4]
	mul
	push	fp[6]
	mul
	push	sb
	push	10126
	push	0
	push	fp[0]
	add
	add
	add
	pop	ac
	push	ac[0]
	mul
	sub
	push	sb[10123]
	push	sb[10166]
	push	sb[4]
	mul
	add
	push	fp[0]
	add
	pop	ac
	pop	ac[0]
L089:
	push	sb[10166]
	push	1
	add
	pop	sb[10166]
	jmp	L091
L090:
	push	0
	pop	sb[10166]
L094:
	push	sb[10166]
	push	sb[1]
	compLT
	j0	L093
	push	sb
	push	2675
	push	0
	push	fp[0]
	push	sb[1]
	mul
	push	sb[10166]
	add
	add
	add
	add
	pop	ac
	push	ac[0]
	push	sb[3]
	push	fp[2]
	mul
	push	sb
	push	10126
	push	0
	push	fp[0]
	add
	add
	add
	pop	ac
	push	ac[0]
	call	L032, 1
	mul
	push	fp[-5]
	push	0
	push	sb[10166]
	add
	add
	pop	ac
	push	ac[0]
	mul
	sub
	push	sb
	push	2675
	push	0
	push	fp[0]
	push	sb[1]
	mul
	push	sb[10166]
	add
	add
	add
	add
	pop	ac
	pop	ac[0]
L092:
	push	sb[10166]
	push	1
	add
	pop	sb[10166]
	jmp	L094
L093:
L086:
	push	fp[0]
	push	1
	add
	pop	fp[0]
	jmp	L088
L087:
	ret
L055:
	push	sp
	push	4
	add
	pop	sp
	push	sb[0]
	push	1
	compEQ
	j0	L095
	push	"forward propagation"
	puts
L095:
	push	0
	pop	fp[0]
L098:
	push	fp[0]
	push	sb[4]
	compLT
	j0	L097
	push	0.000000
	pop	fp[2]
	push	0
	pop	sb[10166]
L101:
	push	sb[10166]
	push	sb[1]
	compLT
	j0	L100
	push	fp[2]
	push	fp[-5]
	push	0
	push	sb[10166]
	add
	add
	pop	ac
	push	ac[0]
	push	sb
	push	2675
	push	0
	push	fp[0]
	push	sb[1]
	mul
	push	sb[10166]
	add
	add
	add
	add
	pop	ac
	push	ac[0]
	mul
	add
	pop	fp[2]
L099:
	push	sb[10166]
	push	1
	add
	pop	sb[10166]
	jmp	L101
L100:
	push	fp[2]
	push	sb
	push	10124
	push	0
	push	0
	add
	add
	add
	pop	ac
	push	ac[0]
	add
	call	L042, 1
	push	sb
	push	10126
	push	0
	push	fp[0]
	add
	add
	add
	pop	ac
	pop	ac[0]
	push	sb[0]
	push	1
	compEQ
	j0	L102
	push	"h["
	puts_
	push	fp[0]
	puti_
	push	"]="
	puts_
	push	sb
	push	10126
	push	0
	push	fp[0]
	add
	add
	add
	pop	ac
	push	ac[0]
	putd
L102:
L096:
	push	fp[0]
	push	1
	add
	pop	fp[0]
	jmp	L098
L097:
	push	0
	pop	fp[0]
L105:
	push	fp[0]
	push	sb[2]
	compLT
	j0	L104
	push	0.000000
	pop	fp[2]
	push	0
	pop	sb[10166]
L108:
	push	sb[10166]
	push	sb[4]
	compLT
	j0	L107
	push	fp[2]
	push	sb
	push	10126
	push	0
	push	sb[10166]
	add
	add
	add
	pop	ac
	push	ac[0]
	push	sb[10123]
	push	fp[0]
	push	sb[4]
	mul
	add
	push	sb[10166]
	add
	pop	ac
	push	ac[0]
	mul
	add
	pop	fp[2]
L106:
	push	sb[10166]
	push	1
	add
	pop	sb[10166]
	jmp	L108
L107:
	push	fp[2]
	push	sb
	push	10124
	push	0
	push	1
	add
	add
	add
	pop	ac
	push	ac[0]
	add
	call	L042, 1
	push	sb
	push	10154
	push	0
	push	fp[0]
	add
	add
	add
	pop	ac
	pop	ac[0]
	push	sb[0]
	push	1
	compEQ
	j0	L109
	push	"o["
	puts_
	push	fp[0]
	puti_
	push	"]="
	puts_
	push	sb
	push	10154
	push	0
	push	fp[0]
	add
	add
	add
	pop	ac
	push	ac[0]
	putd
L109:
L103:
	push	fp[0]
	push	1
	add
	pop	fp[0]
	jmp	L105
L104:
	ret
L006:
	push	sp
	push	2
	add
	pop	sp
	push	0
	pop	fp[0]
L112:
	push	fp[0]
	push	sb[2674]
	compLT
	j0	L111
	push	0.100000
	push	sb
	push	2675
	push	0
	push	fp[0]
	add
	add
	add
	pop	ac
	pop	ac[0]
L110:
	push	fp[0]
	push	1
	add
	pop	fp[0]
	jmp	L112
L111:
	push	0
	pop	fp[0]
L115:
	push	fp[0]
	push	sb[2673]
	compLT
	j0	L114
	push	0.100000
	push	sb
	push	10124
	push	0
	push	fp[0]
	add
	add
	add
	pop	ac
	pop	ac[0]
L113:
	push	fp[0]
	push	1
	add
	pop	fp[0]
	jmp	L115
L114:
	ret
	call	L055, 0
	ret
L013:
	push	fp[-5]
	push	fp[-4]
	call	L055, 2
	push	fp[-5]
	push	fp[-4]
	call	L056, 2
	push	fp[-4]
	call	L057, 1
	ret
	ret
