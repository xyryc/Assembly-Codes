.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC 
    
    MOV AH,2 ;display character function 
    MOV DL, '?'
    INT 21H   
    
    ;input a character
    MOV AH, 1
    INT 21H
    MOV BL,AL   
    
    ;go to a new line - PAGE 70 EXPLANATION
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H   
    
    ;display character
    MOV DL, BL
    INT 21H  
    
    ; return to DOS
    MOV AH, 4CH 
    INT 21H
    MAIN ENDP


END MAIN