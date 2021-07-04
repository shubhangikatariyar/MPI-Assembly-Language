my_code		SEGMENT		
	ASSUME	CS:my_code
start:
		MOV		AX,1234h
		MOV		BX,5678h
		ADD		AX,BX

my_code		ENDS
	END		start
	
	

	