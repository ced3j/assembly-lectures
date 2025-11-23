;  dongulerde alternatif yontem
; CMP ve JMP ile manuel dongu

; CMP(compare) iki sayiyi karsilastirir
; JNZ(jump if not zero) sonuc sifir degilse zipla
; JMP(jump if zero) sonuc sifirsa zipla


org 100h

MOV AX, 0
MOV BX, 1

TEKRAR:
    ADD AX, BX
    INC BX
    
    CMP BX, 11  ; BX 11e esit mi degil mi diye bak
    JNE TEKRAR  ; JNE(jump if not equal) esit degilse
                ; TEKRAR a git
RET