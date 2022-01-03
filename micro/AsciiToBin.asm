.model small
    .data
        
    
    
.code
    mov ax,@data
    mov ds,ax   
    
    
    mov ah,1
    int 21h
         
    mov cx,8
    mov bl,al     
         
    for1:
        rol bl,1
        mov dl,bl
        and dl,01h
        add dl,30h
        mov ah,2
        int 21h
        loop for1
        
 end
    
    

