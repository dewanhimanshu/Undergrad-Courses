
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="#" method="GET">
    Number:<input type="text" name="name" ><br/>
    <input type="submit" value="print">
</form>

<%
if(request.getParameter("name")!=null){
int n =	Integer.parseInt((request.getParameter("name")));
			int i=0,j=0;
			for(i=1;i<=n;i++)
			{
				for(j=1;j<=i;j++)
					out.print(j);
				out.println("<br>");
			}
}
%>

<br>
<c:forEach var='i' begin='1' end='${param.name }'>
	<c:forEach var='j' begin='1' end='${i }'>
		<c:out value="${j}" />
	
    </c:forEach>
    <br>
</c:forEach>
<br>

</body>
</html>