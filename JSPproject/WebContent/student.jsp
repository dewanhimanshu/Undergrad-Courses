<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Students Forms</title>
<style>
	input{
	margin:10px;
	}
		body{
	 height:100%;
	 width:100%;
	 background: linear-gradient(to bottom, #33ccff 0%, #ff99cc 100%);
	}
	
input {
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
<body bgcolor='yellow'>
<jsp:useBean id='studentInfo' class="beans.Student" >
	<jsp:setProperty name='studentInfo' property='*' />
</jsp:useBean>

<marquee><h2>Student Registration Form</h2></marquee>
<form method='post' action='student.jsp'>

<input type='hidden' name='submitted' value='true'>

<c:if test="${param.submitted && !studentInfo.firstNameValid }">
	<p style='color:red;'>First Name Not Entered or Not Valid</p>
</c:if>

		FirstName:
		<input type='text' name='firstName' value="<c:out value="${param.firstName}"/>" /> <br>
		<br>
		<br>
<c:if test="${param.submitted && !studentInfo.lastNameValid }">
	<p style='color:red;'>Last Name Not Entered or Not Valid</p>
</c:if>

		LastName
		<input type='text' name='lastName' value="<c:out value="${param.lastName}"/>" /><br>
		<br>
		<br>
		
<c:if test="${param.submitted &&  !studentInfo.emailAddrValid }">
	<p style='color:red;'>Email Address  Not Entered or Not Valid</p>
</c:if>
		Email Address
		<input type='text' name='emailAddr'  value="<c:out value="${param.emailAddr}"/>" /><br>
		<br>
		<br>
		
		
		 Subjects(Optional)::
		 <br>
		<input type='checkbox' name='subjects' value='CS'
		${studentInfo.CSSelected ? 'checked':'' }
		>Computer Science<br>
		<input type='checkbox' name='subjects' value='phy'
		${studentInfo.phySelected ? 'checked':'' }
		>Physics<br>
		<input type='checkbox' name='subjects' value='maths'
		${studentInfo.mathsSelected ? 'checked':'' }
		>Mathematics<br>
		<br>
		<br>
		<c:if test="${param.submitted &&  !studentInfo.isGenderValid }">
			<p style='color:red;'>Gender  Not Selected</p>
</c:if>
		
		Gender:<br>
		<input type='radio' name='gender' value='male' 
		${studentInfo.isMale ?'checked' : ' '}>Male<br>
		<input type='radio' name='gender' value='female'
		${studentInfo.isFemale?'checked' : ' '}
		 >Female
		
		<br>
		<br>
		
		<input type='submit' />
		<br>
	
</form>






<center> 
<c:if test="${ param.submitted}"  >
You entered:<br>
FirstName::	<c:out value="${studentInfo.firstName}" /><br>
LastName::	<c:out value="${studentInfo.lastName}" /><br>
Email Address:: <c:out value="${param.emailAddr}" /><br>
Subjects::
<c:forEach items="${studentInfo.subjects }" var="current">
	<c:out value="${current }" />&nbsp
</c:forEach> 
Gender:
${studentInfo.gender }
</c:if>

<br>

</center>


</body>
</html>


