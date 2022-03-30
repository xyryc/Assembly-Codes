.MODEL SMALL
.STACK 100H
.DATA
.CODE 

MAIN PROC
     
     MOV AH, 1      ;CIN
     INT 21H
     
     MOV BL, AL     ;TAKING FIRST NUMBER
     INT 21H  
     
     MOV BH, AL     ;TAKING SECOND NUMBER
     
     ADD BL, BH     ;ADDING FIRST AND SECOND NUMBER  BL = BL+BH
     SUB BL, 48     ;CONVERTING ASCII TO CHARACTER                                                             
                                                                 
     MOV AH, 2      ;COUT
     MOV DL, BL
     INT 21H
         
     
     MOV AH, 4CH    ;RETURN 0
     INT 21H 
     
     MAIN ENDP 

END MAIN
     