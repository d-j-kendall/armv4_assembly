.text
.global binsrch
.type binsrch,%function

@ R0 is pointer to array to search, R1 is the item you are searching for, R2 and R3 are low and high indexes respectively 

binsrch :	PUSH {r5, r6}
	start:	ADD R5, R2,R3	@ R5 will be register which stores the mid point
			LSR R5,#1
			LDR R6, [R0,R5,LSL #2]
break1 :		CMP R1, R6
			BGT rstLow
			BLT rstHigh
			MOV R0,#1
			POP {r5,r6}
			BX	LR

	rstLow:		CMP R5, R3
			ADD R2,R5,#1
			BEQ end
			B	start

	rstHigh:	CMP R5,R2
			SUB R3,R5,#1
			BEQ end
			B 	start

	end:		MOV R0,#-1
			POP {r5, r6}
			BX LR
