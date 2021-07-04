my_data 	SEGMENT
org 	0120h
data_array        DB  		37h,12h,21h,73h,88h

org 		0130h
result  		  DB       ?


my_data		ENDS




my_code		SEGMENT
    ASSUME  CS:my_code,DS:my_data

start:  
			;Init base segment and pointer
			MOV 	AX,my_data
			MOV 	DS,AX
			MOV  	SI,0120h
			
			
			;clear result resistor
			MOV 	AX,0000h
			
			;Block processing
up:			ADD 	AL,[SI]
			INC 	SI
			CMP 	SI,0125h
			JNZ 	up

			MOV 	result,AL     ;MOV  [0130h],AL
           
		    INT   	3

my_code		ENDS
			END  		start