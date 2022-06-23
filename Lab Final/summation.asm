.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC  
     MOV AH,1 ;taking first number
     INT 21H 
     
     MOV BL,AL
     SUB BL,48
     
     MOV AH,1 ;taking second numbera
     INT 21H  
     
     MOV BH,AL
     SUB BH,48
           
     ADD BL,BH ;summation
     ADD BL,48 
          
     MOV AH,2  ;output show
     MOV DL,BL 
     INT 21H  
      
     MAIN ENDP
END MAIN