.model small
    .data 
        arr1 db 1h,2h,3h,4h,5h,
             db 6h,7h,8h,9h,10h 
        len = ($-arr1)     
           
        arr2 db 1h,2h,3h,4h,5h,
             db 6h,7h,8h,9h,10h
             
             
        tar db 10 dup(0) 
                
.code
    mov ax,@data
    mov ds,ax   
    
   mov cx,len
   mov si,0
   for1:   
       mov al,arr1[si]
       mov bl,arr2[si]
       sbb al,bl
       mov tar[si],al
       inc si
       loop for1
       
   mov si,0
   mov cx,len   
   
  
    
   for2:
      cmp si,5
      je newrow
    c:  mov dl,tar[si]
      add dl,30h
      mov ah,2
      int 21h
      inc si
      loop for2 
      
      
   newrow:
          mov ah,2
          mov dl,10
          int 21h
          mov ah,2
          mov dl,13
          int 21h 
          cmp cx,0
          jne c
          
      
    
         
  
 
        
 end
    