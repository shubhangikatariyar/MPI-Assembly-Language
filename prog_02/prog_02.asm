my_code     SEGMENT
     ASSUME CS:my_code
org 0100h
start:

       MOV AL,73h
       MOV BL,37h
       ADD AL,BL




my_code    ENDS
           END start