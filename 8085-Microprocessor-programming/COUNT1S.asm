; COUNT THE NUMBER OF 1s IN AN 8-BIT NUMBER

MVI A, 25H      ; Load 25H into A
MVI B, 08H      ; Load 08H into B (bit counter)
MVI C, 00H      ; Initialize C to 0 (count of 1s)

LOOP: RRC       ; Rotate right : LSB -> CY
JNC NEXT        ; If CY = 0, bit was 0, skip

INR C          ; If CY = 1, increment count of 1s

NEXT: DCR B      ; Decrement bit counter
JNZ LOOP        ; Repeat for all 8 bits

MOV A, C        ; Result : A = number of 1s
HLT