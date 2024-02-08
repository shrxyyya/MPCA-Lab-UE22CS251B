
;Write an ALP to add if the numbers are equal, otherwise subtract them.

.text

    ;Assigning values to the registers
    MOV R0, #10
    MOV R1, #4

    ;Setting CPSR flags
    CMP R0, R1

    ;EQ tests for the flag Z=1 ==> so BEQ branches if Z=1
    BEQ condition
        SUB R4, R0, R1
        B exit

    condition:
        ADD R3, R0, R1

    exit:
        SWI 0X11

.end
