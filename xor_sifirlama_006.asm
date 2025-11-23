; XOR ile sifirlama
; XOR DX, DX gibi bir kod satiri mesela
; iki sayi ayniysa XOR sifir sonucunu verir
; DX icerisini sifirlamak icin kendisiyle XOR islemine aliriz


ORG 100h

MOV DX, 1234h;  DX'in ici dolu 

; Yontem 1: 

MOV DX, 0   ; icine direkt 0 koymak


; Yontem 2 (daha hizli) 

XOR DX, DX  ; yine sifir


RET