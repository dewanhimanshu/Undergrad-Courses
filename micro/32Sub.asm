.model small
    .data
        n1 dw 9234h,2234h
        n2 dw 1234h,1111h
        target dw 2 dup(0)
        
.code
    mov ax,@data
    mov ds,ax
    
    
    mov ax,n1+2
    mov bx,n2+2
    sub ax,bx
    mov target+2,ax
    
    
    mov ax,n1
    mov bx,n2
    sbb ax,bx
    mov target,ax
    
   
    
  
    
    
 end
    
    


