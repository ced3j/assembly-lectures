ORG 100h

MOV AX, 80      ; Mevcut puan
MOV BX, 50      ; Baraj puan

CMP AX, BX      ; 80 ile 50'yi kiyasla. (80 > 50 mi?)

JA KAZANDIN     ; AX, BX'ten buyukse (Yukaridaysa)
                ; 80 > 50 oldugu icin burasi calisir

;Yukarisi calismazsa burasi calisir
KAYBETTIN:
    MOV CX, 0   ; CX = 0 ise kaybettin
    JMP BITIS   ; Kazandin satirina gecmemek icin BITIS'e atla.

KAZANDIN:
    MOV CX, 1   ; CX = 1 ise kazandin

BITIS:
    RET