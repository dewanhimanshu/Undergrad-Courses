<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
     
		if(username.equals("student") && password.equals("student")){
		%>	
			<jsp:forward page='student.jsp'	/>
	<% }%>	
	
<%
 if(username.equals("customer") && password.equals("customer")){
	
%>
		<jsp:forward page='customer.jsp'	/>
	<%} %>
       
 	<jsp:forward page='index.jsp'	>
		<jsp:param name='error' value='invalid username or password' />
	</jsp:forward>		
</body>
</html>