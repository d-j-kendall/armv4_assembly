@testing push and pop
	.text
	.global swap
	.type	swap, %function

swap:
	LDR R6,[R0,#0]
        LDR R5,[R1,#0]
	PUSH {R5,R6}
	POP {R5, R6}
	BX LR
