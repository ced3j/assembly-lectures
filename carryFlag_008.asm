; Bir sayiyi saga kaydirdigimizda registerdan dusen sayi Carry Flag (CF) denilen ozel bir sepete duser


; JNC(jump if no carry) : sepet bossa (dusen sayi 0 ise) zipla
; JC(jump if carry) : sepet doluysa(dusen sayi 1 ise) zipla

; Elimizde 0001 ve 0010 olsun hangisinin en sagindeki bit 1?


ORG 100h

MOV AX, 2   ; 0010
SHR AX, 1   ; 1 saga kaydir
            ; dusen sayi sifir oldu CF = 0


JNC SIFIR_DUSTU ; sepet bossa zipla, evet sepet 0 oldu



SIFIR_DUSTU:
    MOV BX, 3  ; 0011
    SHR BX, 1  ; Saga ittik
    
    JNC SIFIR_DUSTU_2  ; Sepet bos mu? hayir dolu
                       ; oyleyse ziplamadan alt satira iner
                       
    
    ; Buraya geldiyse dusen sayi 1 olmali
    MOV CX, 99    ; "yakalandin" isareti olarak CX'e 99 koyalim
    
    
SIFIR_DUSTU_2:
    RET
 