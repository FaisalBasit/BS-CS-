TITLE LAB 10 ACTIVITY 2 ; Title of the program
.MODEL SMALL ; Memory model for the program
.STACK 100H ; Stack size
.DATA
MSG DB 'Table: $' ; Define a string message
.CODE
; Procedure to clear the screen
CLRSCR PROC
    MOV AH, 00H ; Function to set video mode
    MOV AL, 03H ; Video mode 3 (80x25 color text)
    INT 10H ; Video interrupt to set video mode
    
    XOR AX, AX ; Set AX to 0
    MOV BH, 07H ; Page number (0 to 7)
    MOV CX, 0 ; Upper-left corner row
    
    MOV DX, 184FH ; Lower-right corner row and column
    INT 10H ; Video interrupt to set cursor position
    
    RET ; Return from the procedure
CLRSCR ENDP

; Procedure to set the cursor at the top-left corner of the screen
SETCRSR PROC
    
    MOV AH, 02H ; Function to set cursor position
    MOV BH, 0 ; Video page number (0 for default)
    MOV DH, 0 ; Row (top-left corner)
    MOV DL, 0 ; Column (top-left corner)
    INT 10H ; Video interrupt to set cursor position
    
    RET ; Return from the procedure
SETCRSR ENDP

; Procedure to display the table of a specified number
DISPTBL PROC
    
    MOV BL, '0' ; Initialize BL to '0'
    
    ; Display message
    MOV AH, 09H ; Function to print a string
    LEA DX, MSG ; Load the offset address of the message
    
    INT 21H ; DOS interrupt to print the message
    MOV CX, 10 ; Set the limit for the table (e.g., 10 times)
    
    DISPTBL_LOOP:
    ; MOVE TO THE NEXT LINE
    
    MOV AH, 2 ; DOS function to move the cursor
    MOV DL, 0AH ; Linefeed character
    INT 21H ; DOS interrupt
    
    ; MOVE CURSOR TO THE BEGINNING OF THE LINE
    MOV AH, 2 ; DOS function to move the cursor
    MOV DL, 0DH ; Carriage return character
    INT 21H ; DOS interrupt
    
    ; Display current number
    MOV AH, 02H ; DOS function to display a character
    MOV DL, '2' ; Display the number 2
    INT 21H ; DOS interrupt
    
    ; Display multiplication symbol
    MOV AH, 02H ; DOS function to display a character
    MOV DL, '*' ; Display the multiplication symbol
    INT 21H ; DOS interrupt
    
    ; Display current iteration
    MOV AH, 02H ; DOS function to display a character
    MOV DL, BL ; Display the constant value
    INT 21H ; DOS interrupt
    
    ; Display equal sign
    MOV AH, 02H ; DOS function to display a character
    MOV DL, '=' ; Display the equal sign
    INT 21H ; DOS interrupt
    
    ; Calculate and display the result
    MOV AH, 00H ; Clear AH register
    MOV AL, '2' ; Clear AL and set it to '2'
    AND AL, 0FH ; Mask high bits to get the numeric value
    AND BL, 0FH ; Mask high bits of BL
    MUL BL ; Multiply AX by BL
    AAM ; ASCII adjust AX to unpack binary-coded decimal
    OR AX, 3030H ; Convert result to ASCII in AX
    MOV BX, AX ; Move the ASCII value to BX
    
    ; Display high digit of the result
    MOV AH, 02H ; DOS function to display a character
    MOV DL, BH ; Move the high digit of the result to DL
    INT 21H ; DOS interrupt
    
    ; Display low digit of the result
    MOV AH, 02H ; DOS function to display a character
    MOV DL, BL ; Move the low digit of the result to DL
    INT 21H ; DOS interrupt
    
    INC BL ; Increment BL for the next iteration
    
    ; Move to the next iteration
    
    LOOP DISPTBL_LOOP ; Continue the loop until CX reaches the limit
    
    RET ; Return from the procedure
DISPTBL ENDP

MAIN PROC
    MOV AX, @DATA ; Load the data segment address to AX
    MOV DS, AX ; Initialize DS register with the data segment address
    CALL CLRSCR ; Call procedure to clear the screen
    CALL SETCRSR ; Call procedure to set the cursor at the top-left corner
    
    CALL DISPTBL ; Call procedure to display the table of a specified number
    
    MOV AH, 4CH ; DOS function to exit the program
    INT 21H ; DOS interrupt to exit
MAIN ENDP
END MAIN