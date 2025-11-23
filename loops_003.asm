; MUL carpma komutu olmadan 6x4 islemini gerceklestir

ORG 100h

MOV AX, 0
MOV BX, 6
MOV CX, 4

DONGU:
    ADD AX, BX ; her dongude AX +6 
    
    LOOP DONGU  
    
RET
                

; Dongu su sekilde çcalisacak:
; 1. Tur: AX = 6
; 2. Tur: AX = 12
; 3. Tur: AX = 18
; 4. Tur: AX = 24 (Hexadecimal 18h)