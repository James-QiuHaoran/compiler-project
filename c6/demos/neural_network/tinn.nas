	push	sp
	push	539514
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
	j0	L075
	push	"FATAL: no more than 2000 samples!"
	puts
L075:
	push	sb[1]
	push	sb[2]
	add
	pop	sb[532009]
	push	0
	pop	sb[532010]
L078:
	push	sb[532010]
	push	sb[7]
	compLT
	j0	L077
	push	0
	pop	sb[532011]
L081:
	push	sb[532011]
	push	sb[532009]
	compLT
	j0	L080
	geti
	pop	sb[532012]
	push	sb[532011]
	push	sb[1]
	compLT
	j0	L082
	push	sb[532012]
	push	sb
	push	9
	push	0
	push	sb[532010]
	add
	push	256
	mul
	push	sb[532011]
	add
	add
	add
	pop	ac
	pop	ac[0]
	jmp	L083
L082:
	push	sb[532012]
	push	sb
	push	512009
	push	0
	push	sb[532010]
	add
	push	10
	mul
	push	sb[532011]
	push	sb[1]
	sub
	add
	add
	add
	pop	ac
	pop	ac[0]
L083:
L079:
	push	sb[532011]
	push	1
	add
	pop	sb[532011]
	jmp	L081
L080:
L076:
	push	sb[532010]
	push	1
	add
	pop	sb[532010]
	jmp	L078
L077:
	push	"finish loading!"
	puts
	push	2
	pop	sb[532013]
	push	sb[4]
	push	sb[1]
	push	sb[2]
	add
	mul
	pop	sb[532014]
	push	sb
	push	532015
	add
	push	sb[4]
	push	sb[1]
	mul
	add
	pop	sb[539463]
	call	L006, 0
	push	0
	pop	sb[539504]
L086:
	push	sb[539504]
	push	sb[6]
	compLT
	j0	L085
	push	"training iteration: #"
	puts_
	push	sb[539504]
	puti
	push	0.000000
	pop	sb[539505]
	push	0
	pop	sb[539506]
L089:
	push	sb[539506]
	push	sb[7]
	compLT
	j0	L088
	push	sb
	push	9
	push	0
	push	sb[539506]
	add
	push	256
	mul
	add
	add
	pop	sb[539507]
	push	sb
	push	512009
	push	0
	push	sb[539506]
	add
	push	10
	mul
	add
	add
	pop	sb[539508]
	push	sb[539505]
	push	sb[539507]
	push	sb[539508]
	call	L013, 2
	add
	pop	sb[539505]
L087:
	push	sb[539506]
	push	1
	add
	pop	sb[539506]
	jmp	L089
L088:
	push	"error rate = "
	puts_
	push	sb[539505]
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
L084:
	push	sb[539504]
	push	1
	add
	pop	sb[539504]
	jmp	L086
L085:
	push	0
	pop	sb[539509]
	push	0
	pop	sb[539510]
L092:
	push	sb[539510]
	push	sb[7]
	compLT
	j0	L091
	push	sb[0]
	push	1
	compEQ
	j0	L093
	push	"Test case #"
	puts_
	push	sb[539510]
	puti
L093:
	push	sb
	push	9
	push	0
	push	sb[539510]
	add
	push	256
	mul
	add
	add
	pop	sb[539507]
	push	sb
	push	512009
	push	0
	push	sb[539510]
	add
	push	10
	mul
	add
	add
	pop	sb[539508]
	push	sb[539507]
	call	L017, 1
	push	0
	pop	sb[539511]
	push	0
	pop	sb[539512]
	push	0
	pop	sb[539504]
L096:
	push	sb[539504]
	push	sb[2]
	compLT
	j0	L095
	push	sb[539508]
	push	sb[539504]
	add
	pop	ac
	push	ac[0]
	push	sb[539511]
	compGT
	j0	L097
	push	sb[539508]
	push	sb[539504]
	add
	pop	ac
	push	ac[0]
	pop	sb[539511]
	push	sb[539504]
	pop	sb[539512]
L097:
L094:
	push	sb[539504]
	push	1
	add
	pop	sb[539504]
	jmp	L096
L095:
	push	0
	pop	sb[539511]
	push	0
	pop	sb[539513]
	push	0
	pop	sb[539504]
L100:
	push	sb[539504]
	push	sb[2]
	compLT
	j0	L099
	push	sb
	push	539494
	push	0
	push	sb[539504]
	add
	add
	add
	pop	ac
	push	ac[0]
	push	sb[539511]
	compGT
	j0	L101
	push	sb
	push	539494
	push	0
	push	sb[539504]
	add
	add
	add
	pop	ac
	push	ac[0]
	pop	sb[539511]
	push	sb[539504]
	pop	sb[539513]
L101:
L098:
	push	sb[539504]
	push	1
	add
	pop	sb[539504]
	jmp	L100
L099:
	push	sb[539512]
	push	sb[539513]
	compEQ
	j0	L102
	push	sb[539509]
	push	1
	add
	pop	sb[539509]
L102:
	push	sb[0]
	push	1
	compEQ
	j0	L103
	push	"Real value = "
	puts_
	push	sb[539512]
	puti
	push	"Predicted value = "
	puts_
	push	sb[539513]
	puti
	push	"Real value:"
	puts
	push	0
	pop	sb[539504]
L106:
	push	sb[539504]
	push	sb[2]
	compLT
	j0	L105
	push	sb[539508]
	push	sb[539504]
	add
	pop	ac
	push	ac[0]
	putd
L104:
	push	sb[539504]
	push	1
	add
	pop	sb[539504]
	jmp	L106
L105:
	push	"Predicted value:"
	puts
	push	0
	pop	sb[539504]
L109:
	push	sb[539504]
	push	sb[2]
	compLT
	j0	L108
	push	sb
	push	539494
	push	0
	push	sb[539504]
	add
	add
	add
	pop	ac
	push	ac[0]
	putd
L107:
	push	sb[539504]
	push	1
	add
	pop	sb[539504]
	jmp	L109
L108:
L103:
L090:
	push	sb[539510]
	push	1
	add
	pop	sb[539510]
	jmp	L092
L091:
	push	"######### Result #########"
	puts
	push	"Number of correct predictions = "
	puts_
	push	sb[539509]
	puti
	push	"Number of wrong predictions = "
	puts_
	push	sb[7]
	push	sb[539509]
	sub
	puti
	push	"Prediction accuracy = "
	puts_
	push	sb[539509]
	push	sb[7]
	realdiv
	putd
	end
L033:
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
L047:
	push	fp[-5]
	push	fp[-4]
	sub
	ret
	ret
L074:
	push	sp
	push	4
	add
	pop	sp
	push	sb[0]
	push	1
	compEQ
	j0	L110
	push	"calculate total error"
	puts
L110:
	push	0.000000
	pop	fp[0]
	push	0
	pop	fp[2]
L113:
	push	fp[2]
	push	sb[2]
	compLT
	j0	L112
	push	sb[0]
	push	1
	compEQ
	j0	L114
	push	"o["
	puts_
	push	fp[2]
	puti_
	push	"]="
	puts_
	push	sb
	push	539494
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
	push	fp[2]
	add
	pop	ac
	push	ac[0]
	putd
L114:
	push	fp[0]
	push	fp[-4]
	push	fp[2]
	add
	pop	ac
	push	ac[0]
	push	sb
	push	539494
	push	0
	push	fp[2]
	add
	add
	add
	pop	ac
	push	ac[0]
	call	L033, 2
	add
	pop	fp[0]
L111:
	push	fp[2]
	push	1
	add
	pop	fp[2]
	jmp	L113
L112:
	push	fp[0]
	ret
	ret
L037:
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
L117:
	push	fp[4]
	push	0
	compGT
	j0	L116
	push	1
	push	fp[-4]
	push	fp[2]
	mul
	push	fp[4]
	realdiv
	add
	pop	fp[2]
L115:
	push	fp[4]
	push	1
	sub
	pop	fp[4]
	jmp	L117
L116:
	push	fp[2]
	ret
	ret
L058:
	push	sb[0]
	push	1
	compEQ
	j0	L118
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
	call	L037, 1
	add
	realdiv
	putd
L118:
	push	1.000000
	push	1.000000
	push	fp[-4]
	neg
	call	L037, 1
	add
	realdiv
	ret
	ret
L048:
	push	fp[-4]
	push	1.000000
	push	fp[-4]
	sub
	mul
	ret
	ret
L072:
	push	sp
	push	2
	add
	pop	sp
	push	"printing out weights..."
	puts
	push	0
	pop	fp[0]
L121:
	push	fp[0]
	push	sb[532014]
	compLT
	j0	L120
	push	sb
	push	532015
	push	0
	push	fp[0]
	add
	add
	add
	pop	ac
	push	ac[0]
	putd
L119:
	push	fp[0]
	push	1
	add
	pop	fp[0]
	jmp	L121
L120:
	push	"finish printing out weights"
	puts
	ret
L073:
	push	sp
	push	10
	add
	pop	sp
	push	0
	pop	fp[0]
L124:
	push	fp[0]
	push	sb[4]
	compLT
	j0	L123
	push	0.000000
	pop	fp[2]
	push	0
	pop	fp[4]
L127:
	push	fp[4]
	push	sb[2]
	compLT
	j0	L126
	push	sb
	push	539494
	push	0
	push	fp[4]
	add
	add
	add
	pop	ac
	push	ac[0]
	push	fp[-4]
	push	fp[4]
	add
	pop	ac
	push	ac[0]
	call	L047, 2
	pop	fp[6]
	push	sb
	push	539494
	push	0
	push	fp[4]
	add
	add
	add
	pop	ac
	push	ac[0]
	call	L048, 1
	pop	fp[8]
	push	fp[2]
	push	fp[6]
	push	fp[8]
	mul
	push	sb[539463]
	push	fp[4]
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
	push	sb[539463]
	push	fp[4]
	push	sb[4]
	mul
	add
	push	fp[0]
	add
	pop	ac
	push	ac[0]
	push	sb[3]
	push	fp[6]
	mul
	push	fp[8]
	mul
	push	sb
	push	539466
	push	0
	push	fp[0]
	add
	add
	add
	pop	ac
	push	ac[0]
	mul
	sub
	push	sb[539463]
	push	fp[4]
	push	sb[4]
	mul
	add
	push	fp[0]
	add
	pop	ac
	pop	ac[0]
L125:
	push	fp[4]
	push	1
	add
	pop	fp[4]
	jmp	L127
L126:
	push	0
	pop	fp[4]
L130:
	push	fp[4]
	push	sb[1]
	compLT
	j0	L129
	push	sb
	push	532015
	push	0
	push	fp[0]
	push	sb[1]
	mul
	push	fp[4]
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
	push	539466
	push	0
	push	fp[0]
	add
	add
	add
	pop	ac
	push	ac[0]
	call	L048, 1
	mul
	push	fp[-5]
	push	fp[4]
	add
	pop	ac
	push	ac[0]
	mul
	sub
	push	sb
	push	532015
	push	0
	push	fp[0]
	push	sb[1]
	mul
	push	fp[4]
	add
	add
	add
	add
	pop	ac
	pop	ac[0]
L128:
	push	fp[4]
	push	1
	add
	pop	fp[4]
	jmp	L130
L129:
L122:
	push	fp[0]
	push	1
	add
	pop	fp[0]
	jmp	L124
L123:
	ret
L071:
	push	sp
	push	6
	add
	pop	sp
	push	sb[0]
	push	1
	compEQ
	j0	L131
	push	"forward propagation"
	puts
L131:
	push	0
	pop	fp[0]
L134:
	push	fp[0]
	push	sb[4]
	compLT
	j0	L133
	push	0.000000
	pop	fp[2]
	push	0
	pop	fp[4]
L137:
	push	fp[4]
	push	sb[1]
	compLT
	j0	L136
	push	fp[2]
	push	fp[-4]
	push	fp[4]
	add
	pop	ac
	push	ac[0]
	push	sb
	push	532015
	push	0
	push	fp[0]
	push	sb[1]
	mul
	push	fp[4]
	add
	add
	add
	add
	pop	ac
	push	ac[0]
	mul
	add
	pop	fp[2]
L135:
	push	fp[4]
	push	1
	add
	pop	fp[4]
	jmp	L137
L136:
	push	fp[2]
	push	sb
	push	539464
	push	0
	push	0
	add
	add
	add
	pop	ac
	push	ac[0]
	add
	call	L058, 1
	push	sb
	push	539466
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
	j0	L138
	push	"h["
	puts_
	push	fp[0]
	puti_
	push	"]="
	puts_
	push	sb
	push	539466
	push	0
	push	fp[0]
	add
	add
	add
	pop	ac
	push	ac[0]
	putd
L138:
L132:
	push	fp[0]
	push	1
	add
	pop	fp[0]
	jmp	L134
L133:
	push	0
	pop	fp[0]
L141:
	push	fp[0]
	push	sb[2]
	compLT
	j0	L140
	push	0.000000
	pop	fp[2]
	push	0
	pop	fp[4]
L144:
	push	fp[4]
	push	sb[4]
	compLT
	j0	L143
	push	fp[2]
	push	sb
	push	539466
	push	0
	push	fp[4]
	add
	add
	add
	pop	ac
	push	ac[0]
	push	sb[539463]
	push	fp[0]
	push	sb[4]
	mul
	add
	push	fp[4]
	add
	pop	ac
	push	ac[0]
	mul
	add
	pop	fp[2]
L142:
	push	fp[4]
	push	1
	add
	pop	fp[4]
	jmp	L144
L143:
	push	fp[2]
	push	sb
	push	539464
	push	0
	push	1
	add
	add
	add
	pop	ac
	push	ac[0]
	add
	call	L058, 1
	push	sb
	push	539494
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
	j0	L145
	push	"o["
	puts_
	push	fp[0]
	puti_
	push	"]="
	puts_
	push	sb
	push	539494
	push	0
	push	fp[0]
	add
	add
	add
	pop	ac
	push	ac[0]
	putd
L145:
L139:
	push	fp[0]
	push	1
	add
	pop	fp[0]
	jmp	L141
L140:
	ret
L006:
	push	sp
	push	2
	add
	pop	sp
	push	0
	pop	fp[0]
L148:
	push	fp[0]
	push	sb[532014]
	compLT
	j0	L147
	push	0.100000
	push	sb
	push	532015
	push	0
	push	fp[0]
	add
	add
	add
	pop	ac
	pop	ac[0]
L146:
	push	fp[0]
	push	1
	add
	pop	fp[0]
	jmp	L148
L147:
	push	0
	pop	fp[0]
L151:
	push	fp[0]
	push	sb[532013]
	compLT
	j0	L150
	push	0.100000
	push	sb
	push	539464
	push	0
	push	fp[0]
	add
	add
	add
	pop	ac
	pop	ac[0]
L149:
	push	fp[0]
	push	1
	add
	pop	fp[0]
	jmp	L151
L150:
	ret
L017:
	push	fp[-4]
	call	L071, 1
	ret
L013:
	push	fp[-5]
	call	L071, 1
	push	sb[0]
	push	1
	compEQ
	j0	L152
	call	L072, 0
L152:
	push	fp[-5]
	push	fp[-4]
	call	L073, 2
	push	sb[0]
	push	1
	compEQ
	j0	L153
	call	L072, 0
L153:
	push	fp[-4]
	call	L074, 1
	ret
	ret
