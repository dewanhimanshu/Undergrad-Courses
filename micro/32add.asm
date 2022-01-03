.model small
    .data
        n1 dw 9234h,2234h
        n2 dw 9234h,2234h
        target dw 3 dup(0)
        
.code
    mov ax,@data
    mov ds,ax
    
    
    mov ax,n1+2
    mov bx,n2+2
    add ax,bx
    mov target+4,ax
    
    
    mov ax,n1
    mov bx,n2
    adc ax,bx
    mov target+2,ax
    
    mov ax,0
    adc ax,ax
    mov target,ax
    
    
  
    
    
 end
    
    