.model small
    .data
        
    
    
.code
    mov ax,@data
    mov ds,ax   
    
  
         
    mov cx,8
    mov bl,0    
        
    for1:
        mov ah,1
        int 21h
        sub al,30h
        shl bl,1
        add bl,al
        loop for1
        
        
    mov ah,2
    mov dl,bl
    int 21h
    
 
        
 end
    