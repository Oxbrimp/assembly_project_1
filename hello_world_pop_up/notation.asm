; 'db'   defines raw bytes in output
; 'Macros' - new instructions expand into sequences - Like function
; 'match' - pattern-matching tools for parsing arguments
; '$' - current address symbol
; ' Virtual blocks' - Build incremental sections, copy into final output

include '8086.inc'
org 100h

start:
    mov ah,9
    mov dx,msg
    int 21h

    mov ah,4Ch
    xor al,al
    int 21h

msg db 'Hello, World!$',0