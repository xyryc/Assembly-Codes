.MODEL SMALL
.STACK 100H
.DATA 
A DB "ODDS:$"
.CODE 
MAIN PROC 
    
    MOV AX,@DATA
    MOV DS ,AX
    MOV AH,9
    LEA DX, A
    INT 21H
    MOV AH,2
    MOV DL,10
    INT 21H          
    MOV DL,13
    INT 21H
    MOV CX,5
    MOV AH,2
    MOV DL,"1"
    LEVEL1:
    INT 21H
    INC DL
    INC DL
    LOOP LEVEL1:
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN