my_data 	SEGMENT
org 	0120h
data_array  DB  		02h,01h,04h,05h,3h

my_data		ENDS

my_code		SEGMENT
    ASSUME  CS:my_code,DS:my_data

start:  
			;Init base segment and pointer
			MOV 	AX,my_data
			MOV 	DS,AX
			MOV  	SI,0120h
			; start data processing
			
			
step_3:		MOV 	SI,0120h
step_1:		MOV 	AH,[SI]
			MOV 	BH,[SI+01]
			CMP 	AH,BH
			JC 		step_2
			MOV		CH,AH
			MOV 	AH,BH
			MOV 	BH,CH
step_2:		MOV		[SI],AH
			MOV		[SI+01],BH
			INC 	SI
			CMP 	SI,0124h
			JNZ		step_1
			INC		DX
			CMP		DX,0124h
			JNZ		step_3
			
		    INT   	3

my_code		ENDS
			END  		start