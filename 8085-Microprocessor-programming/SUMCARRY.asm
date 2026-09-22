; 1ST 8BIT NO. IN 2050H
; 2ND 8BIT NO. IN 2051H
; SUM IN 2052H 
; CARRY IN 2053H

; MOV 2 NUMS TO BC REGS & LOAD THEM TO MEM
MVI B, 170   ; Load 170 in Hex (AAH) into register B
MVI C, 100     ; Load 100 in Hex (64H) into register C

LXI H, 2050H
MOV M, B       ; Store 170 (AAH) at address 2050H
MOV A, M       ; Load 1st number into Accumulator

LXI H, 2051H
MOV M, C       ; Store 100 (64H) at address 2051H

MVI D, 00H     ; Initialize register D to 00H to track Carry

ADD M          ; A = AAH + 64H = 10EH (270 in Decimal)

JNC SKIP       ; If Carry Flag = 0, jump to SKIP
INR D          ; Increment D to 01H because carry occurred

SKIP: STA 2052H ; Store lower 8-bit sum (0EH) at 2052H
MOV A, D       ; Move carry flag (01H) to Accumulator
STA 2053H      ; Store carry (01H) at 2053H

HLT            ; Stop program execution