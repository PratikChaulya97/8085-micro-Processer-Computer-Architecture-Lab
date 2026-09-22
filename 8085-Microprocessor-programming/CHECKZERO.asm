; CHECK WHETHER A NUMBER IS ZERO OR NOT ZERO

MVI A, 00H      ; Load number into Accumulator

ORA A           ; A OR A -> Sets Zero Flag (Z=1 if A=0), A unchanged
JZ ZERO         ; Jump to ZERO if Z = 1

                ; NUMBER IS NOT ZERO
HLT

ZERO: STA 2000H
                ; NUMBER IS ZERO
HLT