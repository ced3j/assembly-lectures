; Degisken tanimlama
           


           
; DEPO KISMI

.DATA
    ELMA DW 10   ; DW define word   16 bitlik kutu olustur icine 10 koy
    ARMUT DW 0   ; ici bos 0 bir kutu ac
    
; KOD KISMI
.CODE
    ; Deponun anahtarini al 
    MOV AX, @DATA
    MOV DX, AX
    
    ; islemlere basladigimiz esas kisim
    MOV AX, ELMA   ; Hafizadaki ELMA (10) AX islemcisine kopyala
    ADD AX, 5      ; Ustune 5 ekle   AX 15 oldu
    
    MOV ARMUT, AX  ; Sonuc(15)u ARMUT'a koy
    
    RET      
    
; Elma ve armut olusturduk, elmada toplama islemleri yapip sonucu armuta koyduk


