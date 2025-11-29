; JB - Jump if Below
; JA'nin tam tersidir

; CMP AX, BX
; Eger AX BX'ten kucukse JB calisir
; JB BASLANGIC
; Bu durumda JB bizi BASLANGIC'a gonderir


; Sicaklik 30'dan buyukse sogutma ac (DX = 1)
; Sicaklik 10'dan kucukse isitma ac (DX = 2)
; Arada ise   bekle (DX = 0)

ORG 100h

MOV AX, 20      ; 


CMP AX, 30      ; 30 ile kiyasla
JA SOGUTMA_AC   ; 30'dan buyukse

; Buraya gelindiyse sicaklik 30 veya daha azdir.

CMP AX, 10      ; 
JB ISITMA_AC    ; 10dan kucukse


; Buraya geldiyse ne 30'dan buyuk ne de 10'dan kucuktur
NORMAL:
    MOV DX, 0   ; Her sey yolunda
    JMP BITIS   ;

SOGUTMA_AC:
    MOV DX, 1
    JMP BITIS

ISITMA_AC:
    MOV DX, 2
    ; Burada JMP BITIS'e gerek yok

BITIS:
    RET