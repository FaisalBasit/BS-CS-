OUTPUT MACRO STRING
    MOV AH,9
    MOV DX,OFFSET STRING
    INT 21H
ENDM

INPUT MACRO DA
    MOV AH,0AH
    MOV DX,OFFSET DA
    INT 21H 
   
ENDM

CRLF MACRO CR,LF
    MOV AH,2
    MOV DL,CR
    INT 21H    
    MOV AH,2
    MOV DL,LF
    INT 21H
ENDM

DISPLAY MACRO DA1
    MOV AH,9                                 ; DOS function to display a string
    LEA DX,DA1                         ; Load effective address of the formatted data to DX
    INT 21H                                     ; Call DOS interrupt 
    
        
ENDM


TITLE LAB 12 ACTIVITY 1   ; Title of the program
.MODEL SMALL             ; Memory model
.STACK 100H              ; Stack size
.DATA

MSG1 DB 'WHAT IS YOUR NAME? $'                ; Prompt for user's name
MSG2 DB 'WHAT IS YOUR AGE? $'
MSG3 DB 'WHAT IS YOUR GENDER? $'

NAME1 DB 8,?,8 DUP (?)            
NAME2 DB 9 DUP('$')

AGE1 DB 8,?,8 DUP (?)            
AGE2 DB 9 DUP('$')

GENDER1 DB 8,?,8 DUP (?)            
GENDER2 DB 9 DUP('$')                

D1 DB "YOUR NAME IS: $"
D2 DB "YOUR AGE IS: $"
D3 DB "YOUR GENDER IS: $"

  ; Prompt for the password

.CODE

MAIN PROC
    
    MOV AX,@DATA          ; Load the address of the data segment to AX
    MOV DS,AX             ; Initialize the data segment register with the address in AX
    MOV ES,AX                                                  
    
    OUTPUT MSG1   
    INPUT NAME1
    
    CRLF 10,13
    OUTPUT MSG2    
    INPUT AGE1
    
    CRLF 10,13
    OUTPUT MSG3
    INPUT GENDER1                             ; Repeat Move String Byte operation to copy CX bytes from DS:SI to ES:DI

    CRLF 10,13 
    
    CRLF 10,13 
    
    MOV SI,OFFSET NAME1     
    MOV DI, OFFSET NAME2                         ; Destination index for destination string (DATA2)
    
    MOV CX,9                                  ; Set the count for the number of characters to copy
    REP MOVSB  
    
    OUTPUT D1    
    DISPLAY NAME2 
    
    CRLF 10,13
    
    MOV SI,OFFSET AGE1     
    MOV DI, OFFSET AGE2                         ; Destination index for destination string (DATA2)
    
    MOV CX,9                                  ; Set the count for the number of characters to copy
    REP MOVSB  
    
    
    OUTPUT D2    
    DISPLAY AGE2
    
    
    CRLF 10,13
    
        
    MOV SI,OFFSET GENDER1     
    MOV DI, OFFSET GENDER2                         ; Destination index for destination string (DATA2)
    
    MOV CX,9                                  ; Set the count for the number of characters to copy
    REP MOVSB  
    
    OUTPUT D3    
    DISPLAY GENDER2

MAIN ENDP   
END MAIN
