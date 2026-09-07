STSEG SEGMENT
    DB 32 DUP(?)
STSEG ENDS

DTSEG SEGMENT
     
     STR1 DB "SHAKIR$"      ; $ IS USED AS END OF LINE MARKER   
     STR2 DB "KARIM$"         
    

DTSEG ENDS



CDSEG SEGMENT
    MAIN PROC
        
        ASSUME SS: STSEG, DS:DTSEG, CS:CDSEG
    
    MOV AX, DTSEG
    MOV DS, AX
    


    MOV DX, OFFSET STR1
        MOV AH, 9
        INT 21H      
        
;--------------------------------------------       

;NEW LINE 
    MOV DL, 0AH         ;CHARACTER FOR LINE FEED
        MOV AH, 2       
        INT 21H       
                       
                       
    MOV DL, 0DH
        MOV AH, 2
        INT 21H
        
;--------------------------------------------        
                                                 
    MOV DX, OFFSET STR2
        MOV AH, 9
        INT 21H  


    
    MOV AH, 4CH
    INT 21H

MAIN ENDP
CDSEG ENDS
END MAIN
