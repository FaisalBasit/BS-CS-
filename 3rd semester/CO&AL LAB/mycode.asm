
TITLE LAB 10 ACTIVITY 2
.MODEL SMALL
.STACK 100H
.DATA
MSG DB 'Table: $'
.CODE
CLRSCR PROC
    MOV AH, 00H
    MOV AL, 03H
    INT 10H
    
    XOR AX, AX
    MOV BH, 07H
    MOV CX, 0
    MOV DX, 184FH
    INT 10H
    
    RET
CLRSCR ENDP

SETCRSR PROC
    MOV AH, 02H
    MOV BH, 0
    MOV DH, 0
    MOV DL, 0
    INT 10H
    RET
SETCRSR ENDP

DISPTBL PROC
    MOV BL, '0'
    MOV AH, 09H
    LEA DX, MSG
    INT 21H
    
    MOV CX, 10
    
DISPTBL_LOOP:
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    
    MOV AH, 02H
    MOV DL, '2'
    INT 21H
    
    MOV AH, 02H
    MOV DL, '*'
    INT 21H
    
    MOV AH, 02H
    MOV DL, BL
    INT 21H
    
    MOV AH, 02H
    MOV DL, '='
    INT 21H
    
    MOV AH, 00H
    MOV AL, '2'
    AND AL, 0FH
    AND BL, 0FH
    MUL BL
    AAM
    OR AX, 3030H
    MOV BX, AX
    MOV AH, 02H
    MOV DL, BH
    INT 21H
    
    MOV AH, 02H
    MOV DL, BL
    INT 21H
    
    INC BL
    
    LOOP DISPTBL_LOOP
    
    RET
DISPTBL ENDP

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    CALL CLRSCR
    CALL SETCRSR
    CALL DISPTBL
    
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
```