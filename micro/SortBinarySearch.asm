.model small
    .data 
        arr db 1h,4h,5h,2h,7h,3h
        len = ($-arr)  
        target db 6h 
        lefti db 0
        righti db len-1
        msg1 db 'Found$'
        msg2 db 'not found$'
                
.code
    mov ax,@data
   mov ds,ax  
  
   mov si,-1
   mov di,-1 
 
   
   
   
   outer:
         inc si
         cmp si,len
         je bse
         mov di,-1
         
    inner:
         inc di
         cmp di,len-1
         je outer
         mov al,arr[di]
         mov bl,arr[di+1]
         cmp al,bl
         ja exc
         jmp inner
          
      
    
    exc:
        mov arr[di],bl
        mov arr[di+1],al
        jmp inner
        
         
    
    
    
        
        
  bse: 
  
   
     mov ax,0  
    mov dx,0
    mov dl,target
    mid:  
        mov al,lefti
        mov bl,righti
        cmp al,bl
        ja notfound
        add al,bl
        shr al,1
        mov si,ax  
        mov cl,arr[si]
        cmp dl,arr[si]
        je found
        ja right
        jb left
        
        
    right:
        inc al
        mov lefti,al
        jmp mid
        
    left:
        dec al
        mov righti,al
        jmp mid 
        
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
    

