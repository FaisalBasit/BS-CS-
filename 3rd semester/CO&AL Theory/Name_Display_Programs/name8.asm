
;DISPLAYING STRING CHARACTER BY CHARACTER USING LOOP


STSEG SEGMENT
    DB 32 DUP(?)
STSEG ENDS

DTSEG SEGMENT
     
     STR1       DB "SHAKIR"      ; NO NEED OF $ BECAUSE WE ARE DISPLAYING STRING USING LOOP CHARACTER BY CHARACTER   
    

DTSEG ENDS



CDSEG SEGMENT
    MAIN PROC
        
        ASSUME SS: STSEG, DS:DTSEG, CS:CDSEG
    
    MOV AX, DTSEG
    MOV DS, AX
    

;-------------------------------------------
;DISPLAY STRING "SHAKIR" 
    MOV BX, OFFSET STR1     ;TAKE BASE LOCATION OF ARRAY IN BX
        
        MOV CX, 6           ;THERE ARE 6 CHARACTERS IN THE STRING
        
    AGAIN:
        MOV DL, [BX]        ;GET FIRST CHARACTER INTO DL
        MOV AH, 2           ;DISPLAY CHARACTER     
        INT 21H            
        
        INC BX              ;INCREMENT BX TO GET THE LOCATION OF NEXT CHARACTER        
        LOOP AGAIN
;-------------------------------------------    
                 
    
    MOV AH, 4CH
    INT 21H

MAIN ENDP
CDSEG ENDS
END MAIN
