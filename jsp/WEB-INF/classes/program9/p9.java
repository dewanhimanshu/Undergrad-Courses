package program9;
import java.util.*;
import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
public class p9 extends SimpleTagSupport {
	public void doTag() throws IOException{
		java.util.Date date = new java.util.Date();
		getJspContext().getOut().println(""+date+" "+date.getHours()+":"+date.getMinutes()+":"+date.getSeconds());
	}
}