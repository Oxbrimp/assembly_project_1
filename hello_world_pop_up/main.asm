format PE64 GUI 5.0 ; generate 64-bit windows GUI executable window
entry start ; Defines entry point 

include 'win64a.inc' ; Pulls Windows API constrants / macros - for sanity

section '.text' code readable executable ; VVV Code Section VVV

start:
    sub     rsp, 40         ; shadow space 
    xor     rcx, rcx        
    lea     rdx, [hello_msg]
    lea     r8,  [hello_title]
    mov     r9d, MB_OK
    call    [MessageBoxA]


    ; Exit Process
    xor     rcx, rcx 
    call    [ExitProcess]


section '.data' data readable writeable
    hello_msg       db  'Hello World!', 0
    hello_title     db  'Peanut Chicken Heads', 0

section '.idata' import data readable writeable
    library user32, 'USER32.DLL',\
        kernel32,'KERNEL32.DLL'

    import user32, MessageBoxA, 'MessageBoxA'
    import kernel32, ExitProcess, 'ExitProcess'
