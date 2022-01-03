.model small
    .data 
        arr db 1h,4h,5h,2h,7h,3h
        len = ($-arr)  
        target db 5h 
     
        msg1 db 'Found$'
        msg2 db 'not found$'
                
.code
    mov ax,@data
   mov ds,ax  
  
   mov si,0
   mov cx,len
   mov dl,target
   for1:
       mov al,arr[si] 
       cmp al,dl
       je found
       inc si
       loop for1
        
 
 
   notfound:
          mov ah,9
          lea dx,msg2
          int 21h
          jmp endit
        
      
    found:
          mov ah,9
          lea dx,msg1
          int 21h
          jmp endit
          
  
           
       
  
 
 endit:
        
 end
    



