; donguler

; CX register dongu sayacimiz yani kac kere donecegiz
; LOOP komutu her calistiginda CX i otomatik olarak 1 azaltir
; CX sifir olana kadar belirtilen etikete ziplar

; ornegin 1den 10a kadar toplayalim:

org 100h

MOV AX, 0  ; AX toplam registerimiz olsun
MOV BX, 1  ; BX toplanacak sayi (1den basla)
MOV CX, 10 ; 10a kadar donecegiz

DONGU_BASLA:  ; bu bir etiket(label) 
    
    ADD AX, BX  ; AX'e BX'i ekle
    INC BX      ; BX'i 1 arttir
    
    LOOP DONGU_BASLA
    ; loop komutu  cx'i 1 azaltir yani DEC CX
    ; CX'i kontrol eder, sifir degilse DONGU_BASLA'ya ziplar
    ; CX sifir ise alt satira gecer
    
    ; dongu bitisi
    
RET ; programi bitir
    