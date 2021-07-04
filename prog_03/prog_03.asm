my_code SEGMENT
    ASSUME CS:my_code
org 0100h
start:
            MOV AX,1234h
			MOV BX,0DCBAh
			ADD AX,BX
			MOV CX,AX
			
			MOV AX,0A0B0h
			MOV BX,5678h
			ADC AX,BX
			MOV DX,AX
			
my_code     ENDS
            END start
			
  