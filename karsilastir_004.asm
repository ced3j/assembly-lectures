; Buyuk olan sayiyi bulma

; iki registeri karsilastir buyuk olani DXe yaz

ORG 100h

MOV AX, 15 ; ilk sayi
MOV BX, 40 ; ikinci sayi
MOV DX, 0  ; sonuc      

CMP AX, BX ; AX ile BX i kiyasla 15-40 gibi 

JA AX_BUYUK   ; JA(jump if above) eger AX yukaridakinden
              ;  yani BX'ten buyukse zipla 
              

BX_BUYUK: ; kod buraya akarsa BX buyuk demektir
    MOV DX, BX  ; buyuk olan BX'i DXe kopyala
    JMP BITIS;  isim bitti programin sonucuna uc
    

AX_BUYUK:
    MOV DX, AX
    JMP BITIS
    
BITIS:
    RET