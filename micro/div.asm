.model small
    .data
       n1 dw 1234h,3453h
       n2 dw 1234h   
       tar dw 2 dup(0)
       rem dw ?
    
    
    
  .code
    mov ax,@data
    mov ds,ax
    
    mov ax,n1
    div n2
    
    mov tar,ax 
    
    mov ax,n1+2
    div n2
    
    mov tar+2,ax  
    
    
    mov rem , dx
    
    
  end
    
    
    
    

