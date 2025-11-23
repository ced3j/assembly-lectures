; Kaydirma islemleri
; SHL shift left sola kaydirmak sayiyi 2 ile carpar
; SHR shift right saga kaydirmak sayiyi 2ye boler


; Simdi bir sayiyi 2 ile carpip 10 yapalim sonra tekrar kaydirip 5 yapalim 


ORG 100h

MOV AX, 5    ; binary: 0000 0101
SHL AX, 1    ; 1 sola kaydir 0000 1010 oldu decimal olarak 10

SHR AX, 1    ; 1 saga kaydir 0000 0101 oldu tekrar


RET