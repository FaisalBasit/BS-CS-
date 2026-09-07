STSEG SEGMENT
    DB 32 DUP(?)
STSEG ENDS

DTSEG SEGMENT
     
    

DTSEG ENDS



CDSEG SEGMENT
    MAIN PROC
        
        ASSUME SS: STSEG, DS:DTSEG, CS:CDSEG
    
    MOV AX, DTSEG
    MOV DS, AX
    


    MOV DL, 'S'             ;displaying the character S
        MOV AH, 2
        INT 21H   
        
    MOV DL, 'H'             ;displaying the character H             
        MOV AH, 2
        INT 21H  
        
    MOV DL, 'A'             ;displaying the character A
        MOV AH, 2
        INT 21H 
        
    MOV DL, 'K'             ;displaying the character K
        MOV AH, 2
        INT 21H                                        
        
    MOV DL, 'I'             ;displaying the character I
        MOV AH, 2
        INT 21H                                        
        
    MOV DL, 'R'             ;displaying the character R
        MOV AH, 2
        INT 21H        


    
    MOV AH, 4CH
    INT 21H

MAIN ENDP
CDSEG ENDS
END MAIN
