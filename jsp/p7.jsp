<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sub" uri="WEB-INF/tlds/pr7.tld" %>
<!DOCTYPE html>
<html>
<head>
	<title>P7 JSP</title>
</head>
<body>
	<form method="POST" action="p7.jsp">
		Word:<input type="text" name="str"><br>
		Start:<input type="number" name="startt"><br>
		End:<input type="number" name="endd"><br>
		<input type="submit" name="submit" value="Submit">
	</form>
	<sub:strring str="${param.str}" starte="${param.startt}" ende="${param.endd}" />
</body>
</html>