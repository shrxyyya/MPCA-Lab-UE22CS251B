
;Check if a given number is even or odd.
;NOTE: At the end of the program execution R2 contains 0 if number is even, otherwise R2 contains 1.

.text

    ;Assigning a test value to R0
    MOV R0, #9

    ;Bitwise AND of any number and 1 yields 0 if and only if the number is even ==> flag Z=1
    ANDs R0, R0, #1

    ;EQ tests for flag Z=1 ==> so BEQ branches if Z=1
    BEQ condition
        MOV R1, #1
        B exit

    condition:
        MOV R1, #0

    exit:
        SWI 0X011

.end