;Pyramid:

Include Irvine32.inc

.data
n equ 6 ; number of rows in the pattern

.code
main proc
    ; initialize the stack
    mov ecx, n
    mov esi, 6

    ; print the asterisk pattern
outer_loop:
    mov ebx, esi  
inner_loop:
    cmp ebx, 0
    jle end_inner_loop  ;ZF=1 or OF,SF are unequal
   ; mov al,' ' 
   ; call writechar
    mov al, '*'
    call WriteChar
    dec ebx
    jmp inner_loop
end_inner_loop:
    call Crlf
     dec esi
    ;  mov al,' ' 
    ;call writechar
    loop outer_loop

    ; exit the program
    call Crlf
    exit
main endp
end main
