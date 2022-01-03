package program7;
import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
public class p7 extends SimpleTagSupport{
	private String str;
	private int starte;
	private int ende;
	public void setStr(String str)
	{
		this.str=str;
	}
	public String getStr()
	{
		return (this.str);
	}
	public void setStarte(int starte)
	{
		this.starte=starte;
	}
	public int getStarte()
	{
		return (this.starte);
	}
	public void setEnde(int ende)
	{
		this.ende=ende;
	}
	public int getEnde()
	{
		return (this.ende);
	}

	public void doTag()throws IOException
	{
		String se=str.substring(starte,ende);
		getJspContext().getOut().println("Substring is: "+se);
	}
}