crlf macro cr,lf
    mov ah,2
    mov dl,cr
    int 21h
    mov dl,lf
    int 21h
endm

Output macro string
    mov ah,09
    mov dx,offset string
    int 21h
endm

cursor macro row,column
    mov ah,02
    mov bh,00
    mov dh,row
    mov dl,column
    int 10h
endm

clear_screen macro interrupt
 ;clear screen
     mov ah,6
     mov al,0
     mov bh,7
     mov cx,0
     mov dx,184fh
     int interrupt
endm

.model small
.stack 100h
.data
t1 db 0DH, 0AH,'**********Luxury Car Rental System*************$'

menu1 db 0DH, 0AH,'1. Rent a car$' 
menu2 db 0DH, 0AH,'2. Show the record$'  
menu3 db 0DH, 0AH,'3. Delete the record$'  
menu4 db 0DH, 0AH,'4. Exit$'    
C1 db 0DH, 0AH,'Choice: $' 

t2 db 0DH, 0AH,'**************Rent Car*****************$'
menu5 db 0DH, 0AH,'1. Rent Ferrari  (9 dollar per hour)$'
menu6 db 0DH, 0AH,'2. Rent BMW      (8 dollar per hour)$'
menu7 db 0DH, 0AH,'3. Rent Mercedes (7 dollar per hour)$'
menu8 db 0DH, 0AH,'4. Back$' 
 

bac db 0DH, 0AH,"1. Back to main$" 

msgf db 0DH, 0AH,'All Available Ferrari rented$'  
msgb db 0DH, 0AH,'All Available BMW rented$'
msgm db 0DH, 0AH,'All Available Mercedes rented$'

msg2 db 0DH, 0AH,'Wrong input$'  ; Message for wrong input

t3 db 0DH, 0AH,'*************Record****************$'
msg7 db 0DH, 0AH,'Total amount earned= $'  
msg8 db 0DH, 0AH,'Total number of Vehicles rented= $'  
msg9 db 0DH, 0AH,'Total number of Ferrari rented= $'  
msg10 db 0DH, 0AH,'Total number of BMW rented= $'  
msg11 db 0DH, 0AH,'Total number of Mercedes rented= $'  


t4 db 0DH, 0AH,'**********Delete Record************$'
D1 db 0DH, 0AH,'1. Ferrari returned$'
D2 db 0DH, 0AH,'2. BMW returned$'
D3 db 0DH, 0AH,'3. Mercedes returned$'

msg12 db 0DH, 0AH,'Record deleted successfully$'  

msg15 db 0DH, 0AH,'No Ferrari rented$' 
msg16 db 0DH, 0AH,'No BMW rented$'
msg17 db 0DH, 0AH,'No BMW rented$'

msg18 db 0DH, 0AH,'No Record to delete, First rent a car$'

msg13 db 0DH, 0AH,'Enter the number of hours (max 9 hours): $'
msg14 db 0DH, 0AH,'Total amount of rent: $'

input_menu db ?
inputr db ?

inputf DB ?
inputb db ?
inputm db ?

inputd db ?

amountHH db ?
amountH db ?
amountL db ?  ; Variable to store the total amount

am_FH db ?  ; Variable to store amount for ferrari
am_FL db ?  

am_BMWH db ?  ; Variable to store amount for bmw
am_BMWL db ? 

am_MH db ?  ; Variable to store amount for mercedes
am_ML db ?


count db '0'  ; Variable to store the count of vehicles


f db '0'  ; Variable to store the count of ferrari
b db '0' ; Variable to store the count of bmw
m db '0' ; Variable to store the count of mercedes

.code
main proc
    mov ax, @data
    mov ds, ax

whilem:

    Output t1 

    crlf 13,10

    Output menu1
    Output menu2
    Output menu3
    Output menu4
    crlf 13,10
    Output C1
    

    mov ah, 1
    int 21h
    mov input_menu, al

    crlf 13,10

    mov al, input_menu
    cmp al, '1'
    je rent1
    cmp al, '2'
    je rec
    cmp al, '3'
    je del
    cmp al, '4'
    je end_
    
    Output msg2

    crlf 13,10

    jmp displaym

rent1:
    
    
    call rent
    



rec:
    call record
    
    

del:
    call delete
    
   



end_:
    mov ah, 4ch
    int 21h

displaym:
    NOP
    clear_screen 10h
    
    cursor 01h,00h
    
    jmp whilem


main endp


rent proc

jmp displayr

whiler:
    
    Output t2 

    crlf 13,10
    
    Output menu5
    Output menu6
    Output menu7
    Output menu8
    crlf 13,10



    
    Output C1
 

    mov ah, 1
    int 21h
    mov inputr, al

    crlf 13,10
        
     
    mov al, inputr
    cmp al, '1'
    je Ferrari
    cmp al, '2'
    je BMW
    cmp al, '3'
    je Mercedes
    cmp al, '4'
    je displaym


    
    Output msg2

    crlf 13,10

    jmp displayr
    
    
    
    
     
Ferrari:
    call Ferari
  
    crlf 13,10

againw:
    
    Output bac 
    
    crlf 13,10
    
    mov ah, 1
    int 21h
    
    cmp al, '1'
    je displaym
    
    Output msg2
    
    crlf 13,10

    jmp againw
    
    

BMW:
    call BMWW
    
    crlf 13,10
    
    Output bac 
    
    crlf 13,10
    
    mov ah, 1
    int 21h

    cmp al, '1'
    je displaym
    
    Output msg2
    
    crlf 13,10

    jmp againw 

Mercedes:
    call Mercede
    
    crlf 13,10
    
    Output bac 
    
    crlf 13,10
    
    mov ah, 1
    int 21h

    cmp al, '1'
    je displaym
    
    Output msg2
    
    crlf 13,10

    jmp againw
    
    
    
displayr:
    NOP
    ;clear screen
    clear_screen 10h
    
    cursor 01h,00h
    
    jmp whiler
     
rent endp


Ferari proc
    cmp f, '2'
    jle Ferari1
    
    Output msgf
    
    crlf 13,10
    
    Output bac 
    
    crlf 13,10
    
    mov ah, 1
    int 21h

    cmp al, '1'
    je displaym
    
    Output msg2
    
    crlf 13,10

    jmp againw 
    

Ferari1:

againf:
    
    Output msg13

    mov ah, 1
    int 21h
    
    cmp al,'1'
    je cal_f
    
    cmp al,'2'
    je cal_f
    
    cmp al,'3'
    je cal_f
    
    cmp al,'4'
    je cal_f
    
    cmp al,'5'
    je cal_f
    
    cmp al,'6'
    je cal_f
    
    cmp al,'7'
    je cal_f
    
    cmp al,'8'
    je cal_f
    
    cmp al,'9'
    je cal_f
    
    crlf 13,10    
    Output msg2
    crlf 13,10
    
    jmp againf
    
cal_f:
    
    and al, 0fh
    mov inputf, al

    Output msg14

    mov ax, 00
    mov bx, 00

    mov al, '9'
    and al, 0fh
    mov bl, inputf
    and bl, 0fh

    mul bl
    aam
    or ax, 3030h
    mov am_FH, ah
    mov am_FL, al
    mov bx, ax

    mov ah, 2
    mov dl, bh
    int 21h

    mov ah, 2
    mov dl, bl
    int 21h
    
    
    
    mov ax,00
    mov bx,00
    
    mov bl,amountL
    mov al,am_FL
    add al,bl
    aaa
    or ax,3030h
    mov bx,ax
    
    mov ax,00
     
    mov amountL,bl 
    
    add amountH,bh
       
    mov bl,amountH
    mov al,am_FH
    add al,bl
    aaa
    or ax,3030h

    mov bx,ax
    mov amountH,bl
    
    mov amounthh,bh   
       
    
    
    
    
    
    
    
    inc count
    inc f
    
    
    
    
    ret

Ferari endp

BMWW proc
    cmp b, '2'
    jle BMWW1
    
    Output msgb

    crlf 13,10
    
    Output bac 
    
    crlf 13,10
    
    mov ah, 1
    int 21h

    cmp al, '1'
    je displaym
    
    Output msg2
    
    crlf 13,10

    jmp againw 
    

BMWW1:
    
againb:
    
    Output msg13

    mov ah, 1
    int 21h
    
    cmp al,'1'
    je cal_b
    
    cmp al,'2'
    je cal_b
    
    cmp al,'3'
    je cal_b
    
    cmp al,'4'
    je cal_b
    
    cmp al,'5'
    je cal_b
    
    cmp al,'6'
    je cal_b
    
    cmp al,'7'
    je cal_b
    
    cmp al,'8'
    je cal_b
    
    cmp al,'9'
    je cal_b
    
    crlf 13,10    
    Output msg2
    crlf 13,10
    
    jmp againb
    
cal_b:    
    
    
    and al, 0fh
    mov inputb, al

    Output msg14

    mov ax, 00
    mov bx, 00

    mov al, '8'
    and al, 0fh
    mov bl, inputb
    and bl, 0fh

    mul bl
    aam
    or ax, 3030h
    mov am_BMWH, ah
    mov am_BMWL, al
    mov bx, ax

    mov ah, 2
    mov dl, bh
    int 21h

    mov ah, 2
    mov dl, bl
    int 21h
    
    ;add
    mov ax,00
    mov bx,00
    
    
    mov bl,amountL
    mov al,am_BMWL
    add al,bl
    aaa
    or ax,3030h
    mov bx,ax
    mov ax,00
    
    mov amountL,bl 
    
    add amountH,bh
    
    mov bl,amountH
    mov al,am_BMWH
    add al,bl
    aaa
    or ax,3030h
    mov cx,ax
    mov amountH,cl
    
    mov amounthh,ch   
    
    
    inc count
    inc b
 
     ret
BMWW endp

Mercede proc
    cmp m, '2'
    jle Mercede1
    
    Output msgm

    
    crlf 13,10
    
    Output bac 
    
    crlf 13,10
    
    mov ah, 1
    int 21h

    cmp al, '1'
    je displaym
    
    Output msg2
    
    crlf 13,10

    jmp againw 
    

Mercede1:

againm:
    
    Output msg13

    mov ah, 1
    int 21h
    
    cmp al,'1'
    je cal_m
    
    cmp al,'2'
    je cal_m
    
    cmp al,'3'
    je cal_m
    
    cmp al,'4'
    je cal_m
    
    cmp al,'5'
    je cal_m
    
    cmp al,'6'
    je cal_m
    
    cmp al,'7'
    je cal_m
    
    cmp al,'8'
    je cal_m
    
    cmp al,'9'
    je cal_m
    
    crlf 13,10    
    Output msg2
    crlf 13,10
    
    jmp againm
    
cal_m:    
    
    
    
    
    and al, 0fh
    mov inputm, al

    Output msg14

    mov ax, 00
    mov bx, 00

    mov al, '7'
    and al, 0fh
    mov bl, inputm
    and bl, 0fh

    mul bl
    aam
    or ax, 3030h
    mov am_MH, ah
    mov am_ML, al
    mov bx, ax

    mov ah, 2
    mov dl, bh
    int 21h

    mov ah, 2
    mov dl, bl
    int 21h
    
    ;add
    mov ax,00
    mov bx,00
    
    mov bl,amountL
    mov al,am_ML
    add al,bl
    aaa
    or ax,3030h
    mov bx,ax
    
    mov ax,00
    
    mov amountL,bl
    
    add amountH,bh
    
    mov bl,amountH
    mov al,am_MH
    add al,bl
    aaa
    or ax,3030h

    mov cx,ax
    mov amountH,cl
    
    mov amounthh,ch    
    
    inc count
    inc m

    ret
Mercede endp

record proc

jmp displayre

whilere:
    Output t3 

    crlf 13,10
    
    Output msg8
    mov dl, count
    mov ah, 2
    int 21h 
    
    
    Output msg9
    mov dl, f
    mov ah, 2
    int 21h

    Output msg10
    mov dl, b
    mov ah, 2
    int 21h

    Output msg11
    mov dl, m
    mov ah, 2
    int 21h
    
    crlf 13,10
    
  
    Output msg7
    
    mov ah, 2
    mov dl, amountHH
    int 21h 
    
    mov ah, 2
    mov dl, amountH
    int 21h 

    mov ah, 2
    mov dl, amountL
    int 21h
    
    crlf 13,10
    
    Output bac 
    
    crlf 13,10
    
    mov ah, 1
    int 21h

    cmp al, '1'
    je displaym
    
    Output msg2
    
    crlf 13,10

    jmp displayre
   

    
displayre:
    NOP
    ;clear screen
    clear_screen 10h
    
    cursor 01h,00h
    
    jmp whilere
     
record endp



delete proc

jmp displayd
    
whiled: 
    
    mov al,count
    cmp al,'0'
    je no_r
    
    Output t4 

    crlf 13,10
        
    Output D1   
    Output D2    
    Output D3    
    Output menu8
    
    crlf 13,10
    
    Output C1

    mov ah, 1
    int 21h
    mov inputd, al


    mov al, inputd
    cmp al, '1'
    je del1
    cmp al, '2'
    je del2
    cmp al, '3'
    je del3
    cmp al, '4'
    je displaym
    
    Output msg2
    jmp displayd

no_r:
    Output msg18 
    
    crlf 13,10
    Output bac 
    
    crlf 13,10
    
    mov ah, 1
    int 21h

    cmp al, '1'
    je displaym
    
    Output msg2
    
    crlf 13,10

    jmp againw
    
del1:
    mov al,f
    cmp al,'0'
    je no_f 
    
    call delf
    
    crlf 13,10
    Output bac 
    
    crlf 13,10
    
    mov ah, 1
    int 21h

    cmp al, '1'
    je displaym
    
    Output msg2
    
    crlf 13,10

    jmp againw
    
no_f:
    crlf 13,10
    Output msg15 
    
    crlf 13,10
    Output bac 
    
    crlf 13,10
    
    mov ah, 1
    int 21h

    cmp al, '1'
    je displaym
    
    Output msg2
    
    crlf 13,10

    jmp againw
    
del2:
    mov al,b
    cmp al,'0'
    je no_bmw 
    
    call delb
    
    crlf 13,10
    
    Output bac 
    
    crlf 13,10
    
    mov ah, 1
    int 21h

    cmp al, '1'
    je displaym
    
    Output msg2
    
    crlf 13,10

    jmp againw 

no_bmw:
    crlf 13,10
    Output msg16 
    
    crlf 13,10
    Output bac 
    
    crlf 13,10
    
    mov ah, 1
    int 21h

    cmp al, '1'
    je displaym
    
    Output msg2
    
    crlf 13,10

    jmp againw
    
del3:
    mov al,m
    cmp al,'0'
    je no_m 
    
    call delm    
    
    crlf 13,10
    
    Output bac 
    
    crlf 13,10
    
    mov ah, 1
    int 21h

    cmp al, '1'
    je displaym
    
    Output msg2
    
    crlf 13,10

    jmp againw
    
no_m:
    crlf 13,10
    Output msg17 
    
    crlf 13,10
    Output bac 
    
    crlf 13,10
    
    mov ah, 1
    int 21h

    cmp al, '1'
    je displaym
    
    Output msg2
    
    crlf 13,10

    jmp againw
    
        
displayd:
    NOP
    ;clear screen
    clear_screen 10h
    
    cursor 01h,00h
    
    jmp whiled
    
    
delete endp

delf proc 
    dec count
    dec f 
    crlf 13,10
    
    Output msg12
    
    ret
endp delf

delb proc 
    dec count
    dec b       
    
    crlf 13,10
    
    Output msg12
    
    ret
endp delb

delm proc 
    dec count
    dec m       
    
    crlf 13,10
    
    Output msg12
    
    ret
    
endp delm

end main