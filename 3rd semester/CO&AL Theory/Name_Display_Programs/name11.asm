
;DISPLAYING STRING CHARACTER BY CHARACTER USING LOOP


STSEG SEGMENT
    DB 32 DUP(?)
STSEG ENDS

DTSEG SEGMENT
     
     STR1       DB "SHAKIR."      ; . AS END OF STRING INDICATOR
    

DTSEG ENDS



CDSEG SEGMENT
    MAIN PROC
        
        ASSUME SS: STSEG, DS:DTSEG, CS:CDSEG
    
    MOV AX, DTSEG
    MOV DS, AX
    

;-------------------------------------------
;DISPLAY STRING "SHAKIR"INCLUDING THE FULL STOP 
    MOV BX, OFFSET STR1     ;TAKE BASE LOCATION OF ARRAY IN BX
        
        
    AGAIN:
        MOV DL, [BX]        ;GET FIRST CHARACTER INTO DL
        MOV AH, 2           ;DISPLAY CHARACTER     
        INT 21H            
        
        INC BX              ;INCREMENT BX TO GET THE LOCATION OF NEXT CHARACTER        
        
        CMP [BX], '.'       ;IF CHARACTER IS '.'
        JZ  EXIT            ;JUMP TO LABEL EXIT IF ZERO FLAG IS 1 (IF [BX] = '$')      
        
        JMP AGAIN
;-------------------------------------------    
   EXIT:              
             
    MOV DL, [BX]            ;MOVE '.' INTO DL AND DISPLAY
    MOV AH, 2               
    INT 21H
             
    MOV AH, 4CH
    INT 21H

MAIN ENDP
CDSEG ENDS
END MAIN
