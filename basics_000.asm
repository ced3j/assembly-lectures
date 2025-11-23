
; AX accumulator - matematiksel islemler giris cikis
; BX base - genel adresleme islemleri
; CX counter - dongulerde sayac
; DX data - buyuk sayilarda ve bazi giris cikis islemlerinde AX e yardimci


; komut - hedef - kaynak                   

; MOV AX, 5      ax'in icine 5 sayisini koy
; ADD AX, BX     AX ile BX i topla AX e yaz
; SUB AX, 1      AXten 1 cikar AX e yaz
; INC CX         CX i 1 arttir
; DEC CX         CX i 1 azalt
; HLT            islemciyi durdurur


;Emulator 15 sayisini 0F olarak, 10 sayisini 0A olarak gosterecektir.
;Yanindaçkucuk bir h harfi gorursen (orn: 100h) bu onun Hexadecimal oldugunu gosterir.




ORG 100h ; programin bellekte 100h ardesinden baslamasi

MOV AX, 10  ;  AX'e 10 koyduk
MOV BX, 5   ;  BX'e 5 koyduk

ADD AX, BX  ; AX ile BX i topla AX e yaz
SUB AX, 2   ; AXten 2 cikart   10+5-2

HLT ; programi bitir
RET ; isletim sistemine don

