ORG 100h

MOV AX, 5

DONGU_BASLA:
    
    CMP AX, 2  ; AX 2'ye esit mi
    JE BITIS   ; Jump if Equal  (eger esitse zipla)
    
    DEC AX     ; Degilse devam et, AX i 1 azalt
    
    JMP DONGU_BASLA  ; Sartsiz sekilde yukari doner
    
BITIS:
    RET