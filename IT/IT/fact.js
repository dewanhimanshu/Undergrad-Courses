var x =    parseInt(prompt("enter the number"));

fact = 1;

if(x ==  0){
    document.write(`<p>Factorial of the number is  1</p>`);
}


if(x>0){
    for(var i=1;i<=x;i++){
        fact = fact * i;
    }
}
else{
   
        alert('invalid input');
    
    
}




document.write(`<p>Factorial of the number is  ${fact}</p>`);