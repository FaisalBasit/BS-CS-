TITLE LAB 10 ACTIVITY 3
.MODEL SMALL
.STACK 100H
.DATA 
FIRST_NUMBER DB 'ENTER FIRST NUMBER: $'
SECOND_NUMBER DB 0DH, 0AH, 'ENTER SECOND NUMBER: $' 
ADDITION DB 0DH, 0AH, 'THE RESULT OF ADDITION IS = $'       
MULTIPLY DB 0DH, 0AH, 'THE RESULT OF MULTIPLICATION IS = $'
SUBTRACT DB 0DH, 0AH, 'THE RESULT OF SUBTRACTION IS = $'      
REMAINDER DB 0DH, 0AH, 'THE RESULT OF DIVISION, REMAINDER = $' 
QUOTIENT  DB 0DH, 0AH, 'THE RESULT OF DIVISION, QUOTIENT = $'

VAR1 DB ?
VAR2 DB ?
A1 DB ?  
A2 DB ?
M1 DB ?  
M2 DB ?
S1 DB ?
S2 DB ?
Q DB ?
R DB ?
    
.CODE   
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    CALL INPNMBR
    CALL OPERATIONS
    CALL DISPRSLT
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP

INPNMBR PROC
    LEA DX,FIRST_NUMBER       ; Load effective address of the first number prompt to DX
    MOV AH,9                               ; DOS function to display a string
    INT 21H                                   ; Call DOS interrupt
    
    MOV AH,1                           ; DOS function to read a character from standard input
    INT 21H                              ; Call DOS interrupt
    MOV VAR1,AL                        ; Move the input to BL
    
    LEA DX,SECOND_NUMBER            ; Load effective address of the second number prompt to DX
    MOV AH,9                                        ; DOS function to display a string
    INT 21H                                            ; Call DOS interrupt   
    
    MOV AH,1                      ; DOS function to read a character from standard input
    INT 21H 
    MOV VAR2,AL
    
                           ; Call DOS interrupt
    
    RET
    INPNMBR ENDP

OPERATIONS PROC

;ADDITION:                                                       
    MOV AX,00
    MOV BX,00
    
    MOV BL,VAR1
    MOV AL,VAR2              ; Clear AH register                 ; Exchange AL and BL
    ADD AL,BL                   ; Add BL to AL
    AAA                              ; ASCII adjust AL after addition
    
    OR AX,3030H                ; Convert result to ASCII in AX
    MOV BX,AX                   ; Move the ASCII value to BX 
    
    MOV A1,BH
    MOV A2,BL                
                                                          ; Initialize AX to 0
;SUBTRACTION:
    MOV AX,00
    MOV BX,00
    
    MOV BL,VAR2
    MOV AL,VAR1  
    
    AND AL,0FH
    AND BL,0FH                                                      ; Initialize BX to 0
                                     ; Clear AH register
                                      ; Exchange AL and BL
    SUB AL,BL                                    ; Subtract BL from AL
    AAS                                               ; ASCII adjust AL after subtraction
    
    OR AX,3030H                                 ; Convert result to ASCII in AX
    MOV BX,AX                                    ; Move the ASCII value to BX 
    
    MOV S1,BH
    MOV S2,BL  
                
;MULTIPLICATION:
    MOV AX,00
    MOV BX,00
    
    MOV BL,VAR1
    MOV AL,VAR2  
    
    AND AL,0FH
    AND BL,0FH                                  ; Clear AH register
                                    ; Mask high bits to get the numeric value
    MUL BL                                         ; Multiply AX by BL
    AAM                                             ; ASCII adjust AX to unpack binary-coded decimal
    
    OR AX,3030H                               ; Convert result to ASCII in AX
    MOV BX,AX                                  ; Move the ASCII value to BX 
    
    MOV M1,BH
    MOV M2,BL
    
;DIVISION:
    MOV AX,00
    MOV BX,00 
    
    MOV BL,VAR1
    MOV AL,VAR2
                                  ; Clear AH register
                                 ; Mask high bits to get the numeric value
    XCHG AL,BL                              ; Exchange AL and BL registers
    AAD                                           ; ASCII adjust AX to unpack binary-coded decimal
    
    DIV BL                                      ; Divide AX by BL; quotient in AL, remainder in AH
    OR AX,3030H                           ; Convert quotient to ASCII in AX
    MOV R,AH
    MOV Q,AL                            ; Move the ASCII value to BX 
    
 
    
    RET
    OPERATIONS ENDP   

DISPRSLT PROC
   
    
;ADDITION:
    LEA DX,ADDITION            ; Load effective address of the result message to DX
    MOV AH,9                       ; DOS function to display a string
    INT 21H                      ; Call DOS interrupt 
     
    MOV AH,2                   ; DOS function to display a character
    MOV DL,A1                ; Move the high digit of the result to DL
    INT 21H                       ; Call DOS interrupt   
    
    MOV AH,2                   ; DOS function to display a character
    MOV DL,A2                 ; Move the low digit of the result to DL
    INT 21H                       ; Call DOS interrupt

;SUBTRACTION:
    
    LEA DX,SUBTRACT            ; Load effective address of the result message to DX
    MOV AH,9                       ; DOS function to display a string
    INT 21H                      ; Call DOS interrupt 
     
    MOV AH,2                   ; DOS function to display a character
    MOV DL,S1                ; Move the high digit of the result to DL
    INT 21H                       ; Call DOS interrupt   
    
    MOV AH,2                   ; DOS function to display a character
    MOV DL,S2                 ; Move the low digit of the result to DL
    INT 21H                       ; Call DOS interrupt

;MULTIPLICATION:    
    LEA DX,MULTIPLY            ; Load effective address of the result message to DX
    MOV AH,9                       ; DOS function to display a string
    INT 21H                      ; Call DOS interrupt 
     
    MOV AH,2                   ; DOS function to display a character
    MOV DL,M1                ; Move the high digit of the result to DL
    INT 21H                       ; Call DOS interrupt   
    
    MOV AH,2                   ; DOS function to display a character
    MOV DL,M2                 ; Move the low digit of the result to DL
    INT 21H    

;DIVISION:
                         ; Call DOS interrupt 
     
    LEA DX,QUOTIENT            ; Load effective address of the result message to DX
    MOV AH,9                       ; DOS function to display a string
    INT 21H 
    
    MOV AH,2                   ; DOS function to display a character
    MOV DL,Q                ; Move the high digit of the result to DL
    INT 21H                       ; Call DOS interrupt   
    
    LEA DX,REMAINDER            ; Load effective address of the result message to DX
    MOV AH,9                       ; DOS function to display a string
    INT 21H 
    
    MOV AH,2                   ; DOS function to display a character
    MOV DL,R                ; Move the high digit of the result to DL
    INT 21H   
    RET
    DISPRSLT ENDP
END MAIN