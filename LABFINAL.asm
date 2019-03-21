.model small
.stack 100h
.data
msg1 db 'invalid press again $'
.code

main proc
    
    
    mov ax,@data
    mov ds,ax 
    
   
    mov ah,1
    int 21h
    
    
    s1:
    
    mov bl,al
    and bl,0Fh
    mov cx,8
    
    
    start:
    
    
    SHL bl,1
    
    jc l3;
    jmp l4;
    
    
    
    l3:
    
    mov ah,2
    mov dl,'1'
    int 21h 
    
    JMP LL;
    
    l4:
    mov ah,2
    mov dl,'0'
    int 21h
    
    LL:
    loop start;
    
    mov ah,2
    mov dl,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
   
    
    
     
     
    mov ah,1
    int 21h
     
    cmp al,'N'
    je endd;  
    
    
    
    JMP S1;
    endd:
    
endp; 



