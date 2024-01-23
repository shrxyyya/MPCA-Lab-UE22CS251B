
;Write a program to find GCD of two numbers.

.text

    ;Assigning test values to R0 and R1 
    MOV R0, #35
    MOV R1, #25

    ; if (x>y) ==> gcd(x-y, y)
    ; if (x<y) ==> gcd(x, y-x)

    gcd:
        CMP R0, R1
        BEQ answer
        BLT condition
        SUB R0, R0, R1
        B gcd

    answer:
        MOV R2, R0
        B exit
    
    condition:
        SUB R1, R1, R0
        B gcd

    exit:
        SWI 0X011

.end
