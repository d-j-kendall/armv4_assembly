	.text
	.global sumnat
	.type   sumnat, %function


sumnat:	ADD R1, R0, #1
	MUL R0,R0,R1
	LSR R0,#1
     	BX LR
