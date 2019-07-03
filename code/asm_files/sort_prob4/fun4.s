.text
.global sort
.type sort,%function

sort :		PUSH {r5,r6,r7,lr}
		MOV r5,r1	@R5 is index of outer forloop i
		SUB r5,r5,#1	@go from sizes to indexes
firstLoop  :	CMP R5,#0
		BMI end
		MOV r6,r5   @R6 is the index j of inner forloop
		MOV r7,r6
secondLoop :	CMP r6,#0
		SUBMI R5,R5,#1
		BMI firstLoop 
		CMP r7,r6
		SUBEQ r6,r6,#1
		BEQ secondLoop
break1 :	BL swap
		SUB r6,r6,#1
		B secondLoop

end	:	POP {r5,r6,r7,pc}
