<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Forms</title>
<style>
	input{
	margin:15px;
	}
	body{
	 height:100%;
	 width:100%;
	 background: linear-gradient(to bottom, #33ccff 0%, #ff99cc 100%);
	}
	
input[type=text] {
    width: 20%;
    padding: 12px 20px;
    margin: 0px;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=password] {
    width: 20%;
    padding: 12px 20px;
    margin: 0px;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 20%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 0px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

button {
    width: 20%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 0px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

button:hover {
    background-color: #45a049;
}
	
</style>
</head>
<body >
<jsp:useBean id='customerInfo' class="beans.Customer" >
	<jsp:setProperty name='customerInfo' property='*' />
</jsp:useBean>

<marquee><h2>Customer Registration Form</h2></marquee>
<form method='post' action='customer.jsp'>

<input type='hidden' name='submitted' value='true'>

<c:if test="${param.submitted && !customerInfo.userNameValid }">
	<p style='color:red;'>Username Not Entered</p>
</c:if>

		Username:
		<input type='text' name='username' value="<c:out value="${param.username}"/>" /> <br>

		
		
<c:if test="${param.submitted &&  !customerInfo.emailAddressValid }">
	<p style='color:red;'>Email Address  Not Entered</p>
</c:if>
		Email Address
		<input type='text' name='emailAddress'  value="<c:out value="${param.emailAddress}"/>" /><br>
		
<c:if test="${param.submitted && !customerInfo.ageValid }">
	<p style='color:red;'>Age Not Entered or Valid</p>
</c:if>
		Age
		<input type='text' name='age'  value="<c:out value="${param.age}"/>" /><br>
		
			
<c:if test="${param.submitted && !customerInfo.passwordValid }">
	<p style='color:red;'>Password should be of 6 characters</p>
</c:if>

Password(Min: 6 length)
<input type='password' name='password'  value="<c:out value="${param.password}"/>" /><br>

<br>
<br>
Products:

<select multiple name='food'>
	<option value='pizza'  >pizza</option>
	<option value='chicken'>Chicken</option>
	<option value='mutton'>Mutton</option>
</select>
		
		<br>
		<br>
		<br>
		<br>
		
		<input type='submit' />
		<br>
		
</form>






<center> 
<c:if test="${ param.submitted}"  >
<h3>You entered:</h3><br>
<b>Username::</b>	<c:out value="${customerInfo.username}" /><br>

<b>Email Address::</b> <c:out value="${customerInfo.emailAddress}" /><br>
<b>Age::</b><c:out value="${customerInfo.age}" /><br>
<br>
<b>Food:</b>
<c:forEach items="${customerInfo.food }" var="current">
	<c:out value="${current }" />&nbsp
</c:forEach> 

</c:if>
</center>


</body>
</html>