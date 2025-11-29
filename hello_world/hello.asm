format PE64 console
entry start

include 'win64a.inc'

section '.data' data readable writeable
    msg db 'hello world', 0

section '.text' code readable executable
start:
    ; we call the print(f) from MSVCRT 
    sub rsp, 40h  ; Shadow spcae , Win64 ABI - essentially take 40 from stack to make space for string
    lea rcx, [msg]   ; first arg. (RCX = pointer of the string made above )
    call [printf]
    add rsp, 40h     ; restore stack - after string used 

    ; exit(0) - to leave
    xor rcx, rcx 
    call [ExitProcess]

section '.idata' import data readable writeable
    library msvcrt, 'msvcrt.dll', kernel32, 'kernel32.dll'
    import msvcrt, printf, 'printf'
    import kernel32, ExitProcess, 'ExitProcess'