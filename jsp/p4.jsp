<%@ page contentType="text/html" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>P4 JSP</title>
</head>
<body>
	<form action="p4.jsp" method="POST">
		Name: <input type="text" name="name"><br>
				<input type="submit" name="submit" value="Submit">
	</form>
	<%
	if(request.getParameter("name")!=null)
	{
		java.util.Date d=new java.util.Date();
		if (d.getHours()<12)
		{
			out.println("Good Morning "+request.getParameter("name"));
		}
		else if (d.getHours()>12 && d.getHours()<17)
		{
			out.println("Good Evening "+request.getParameter("name"));	
		}
		else
			out.println("Good Night "+request.getParameter("name"));

	}
	%>
</body>
</html>