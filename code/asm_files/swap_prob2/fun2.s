	.text
	.global swap
	.type	swap, %function

swap:	PUSH {R5,R6}
	LDR R6,[R0,#0]
        LDR R5,[R1,#0]
	STR R5,[R0,#0]
	STR R6,[R1,#0]
	POP {R5, R6}
	BX LR
