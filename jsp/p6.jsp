<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="apna" uri="WEB-INF/tlds/pr6.tld" %>
<!DOCTYPE html>
<html>
<head>
	<title>P6 JSP</title>
</head>
<body>
	<form method="POST" action="p6.jsp">
		Name: <input type="text" name="name"><br>
		Texture: <input type="text" name="texture"><br>
				<input type="submit" name="submit" value="G0!">
	</form>
	<apna:hello name="${param.name}" />
	<apna:choco texture1="${param.texture}" />
</body>
</html>