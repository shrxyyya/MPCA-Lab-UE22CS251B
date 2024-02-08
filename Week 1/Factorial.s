
;Write a program to find the factorial of a given number.

.text

    MOV R0, #4

    ;R1 register is used to store the product during factorial calculation
    MOV R1, #1

    condition:
        CMP R0, #0
        BEQ exit
        MUL R1, R0, R1
        SUB R0, R0, #1
        B condition

    exit:
        SWI 0x11

.end
