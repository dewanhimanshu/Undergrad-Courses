.model small
    .data
        n1 dw 2234h,2234h
        n2 dw 1234h,1111h
        target dw 4 dup(0)
        
.code
    mov ax,@data
    mov ds,ax
     
    mov ax,n1+2
    mov bx,n2+2
    mul bx
    mov target+6,ax
    mov target+4,dx
    
    mov ax,n1
    mov bx,n2+2
    mul bx
    add target+4,ax
    adc target+2,dx
    adc target,0
    
    
    mov ax,n1+2
    mov bx,n2
    mul bx
    add target+4,ax
    adc target+2,dx
    adc target,0
    
    mov ax,n1
    mov bx,n2
    mul bx
    add target+2,ax
    adc target,dx  
  
    
    
 end
    
    


