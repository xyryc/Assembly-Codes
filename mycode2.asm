.MODEL SMALL
.STACK 100H
.DATA
    ;HERE ALL THE VARIABLES ARE DECLARED
    ;BH BL 8BIT REGISTER 1BYTE
    ;BX 16BITS REGISTER 1WORD
    
    NUM1 DB 'd' ;d=100
    NUM2 DB ?  
    CHAR DB '#'
    STR DB 'MY NAME IS ANIK'
    CHAR2 DB ?
    
    
    
.CODE
    ;CODE SEGMEENT
    
    MAIN PROC  ;INT MAIN
           ;CODE SEGMENT
           ;INSTRUCTION, DESTINATION, SOURCE
           
           
           
           MOV AH, 4CH
           INT 21H
    MAIN ENDP
    

END MAIN    ;EXIT(0)
        
