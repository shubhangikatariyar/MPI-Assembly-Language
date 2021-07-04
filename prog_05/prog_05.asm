my_data 	SEGMENT
org 	0120h
source_array  DB  		73h,23h,7h,21h,12h

org 		0130h
dest_array		  DB      5 DUP(?) ;char dest_array[1000] = {0};


my_data		ENDS

my_code		SEGMENT
    ASSUME  CS:my_code,DS:my_data

start:  
			;Init base segment and pointer
			MOV 	AX,my_data
			MOV 	DS,AX
			MOV  	SI,0120h
			MOV 	DI,0130h
			
			
up:    		MOV 	AL,[SI]
			MOV 	[DI],AL
			INC 	DI
			INC 	SI
			CMP 	DI,0135h
			JNZ 	up
           
		    INT   	3

my_code		ENDS
			END  		start