	.text
	.global swap
	.type	swap, %function

swap:	PUSH {R4,R5}
	LDR R5,[R0, R7, LSL #2]
        LDR R4,[R0, R6, LSL #2]
	CMP R5 , R4
	STRGT R4 , [R0, R7, LSL #2]
	STRGT R5,[R0, R6, LSL #2]
	POP {R4, R5}
	BX LR
