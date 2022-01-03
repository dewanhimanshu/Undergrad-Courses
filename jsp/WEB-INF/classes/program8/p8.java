package program8;
import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
public class p8 extends SimpleTagSupport{
	private String input;
	public void setInput(String input){
		this.input=input;
	}
	public String getInput(){
		return (this.input);
	}
	public void doTag() throws IOException {
		StringBuilder input1 = new StringBuilder(); 
  
   
        input1.append(input); 
  
    
        input1 = input1.reverse(); 
  
        
   
		
		getJspContext().getOut().println("Reverse is: "+input1);
	}
}