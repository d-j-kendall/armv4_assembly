.text
.global strrev
.type strrev,%function

strrev :	PUSH {r5,r6,r7,r8,r9}
		MOV r6,#0
		MOV r8,#0
		MOV r9,#0
cntFirstS : LDRB r5,[r0,r6] @count first strings size
		CMP r5,#0
		BEQ cntSecondS
		ADD r6,r6, #1
		B	cntFirstS
cntSecondS : LDRB r7, [r1,r8]
	     CMP r7,#0
	     BEQ doneCounting
	     ADD r8,r8,#1
	     B	cntSecondS
doneCounting : 	CMP r8,r6
		BNE	returnFalse
		SUB r8,r8,#1
compare :	CMP r8,#0
		BMI returnTrue
		LDRB r5,[r0,r9]
		LDRB r7,[r1,r8]
		CMP r5,r7
		BNE returnFalse
		SUB r8,r8,#1
		ADD r9,r9,#1
		B compare
		
returnFalse : MOV r0, #-1
		B end
returnTrue :MOV r0,#1
		B end



end :		POP {r5,r6,r7,r8,r9}
		 BX lr	
