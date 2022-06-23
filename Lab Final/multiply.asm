.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC  
     MOV AL, 3
     MOV BL, 2
     
     MUL BL  ;AX = AL*BL
     
     
       
     MOV AH,2  ;output show
     ADD AX, 30H  
     MOV DX,AX 
     INT 21H

     MAIN ENDP
END MAIN