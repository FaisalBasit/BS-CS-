STSEG SEGMENT
    DB 32 DUP(?)
STSEG ENDS

DTSEG SEGMENT
     
     STR1       DB "SHAKIR$"      ; $ IS USED AS END OF LINE MARKER   
     STR2       DB "KARIM$"         
     STR3       DB "press any key to clear screen$"      
     NEW_LINE   DB 0AH, 0DH, "$"
    

DTSEG ENDS



CDSEG SEGMENT
    MAIN PROC
        
        ASSUME SS: STSEG, DS:DTSEG, CS:CDSEG
    
    MOV AX, DTSEG
    MOV DS, AX
    

;-------------------------------------------
;DISPLAY STRING "SHAKIR"
    MOV DX, OFFSET STR1
        MOV AH, 9
        INT 21H            
        
;-------------------------------------------    
                 


;-------------------------------------------
;INSERT A NEW LINE
    MOV DX, OFFSET NEW_LINE
        MOV AH, 9
        INT 21H            
        
;-------------------------------------------    

                 
;-------------------------------------------
;ASKING USER TO PRESS ANY KEY TO CLEAR SCREEN 

;DISPLAY MESSAGE 
    MOV DX, OFFSET STR3
    MOV AH, 9
    INT 21H
    
;WAIT FOR A KEY PRESS    
    
    MOV AH, 8       ;GET CHARACTER INPUT WITHOUT ECHO
    INT 21H


;-------------------------------------------                 
                 
                 
;-------------------------------------------       

;CLEAR SCREEN 
    MOV AH, 6           ;SCROLL UP THE SCREEN

;SCREEN DIMENSION (TOP LEFT COORDINATES IN CX AND BOTTOM RIGHT COORDINATES IN DX
        MOV CH, 0       ;ROW OF TOP LEFT COORDINATES        
        MOV CL, 0       ;COLUMN OF TOP LEFT COORDINATES
        
        MOV DH, 23      ;ROW OF BOTTOM RIGHT COORDINATES
        MOV DL, 79      ;COLUMN OF BOTTOM RIGHT COORDINATES
;NORMAL SCREEN ATTRIBUTE (FOREGROUND WHITE AND BACKGROUND BLACK)
        MOV BH, 7
                       
        INT 10H       
                                           
;-------------------------------------------        

;-------------------------------------------
;DISPLAY STRING "KARIM"
                                                 
    MOV DX, OFFSET STR2
        MOV AH, 9
        INT 21H                              
        
;-------------------------------------------


    
    MOV AH, 4CH
    INT 21H

MAIN ENDP
CDSEG ENDS
END MAIN
