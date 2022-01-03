<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="reverse" uri="WEB-INF/tlds/pr8.tld" %>
<!DOCTYPE html>
<html>
<head>
	<title>P8 JSP</title>
</head>
<body>
	<form>
		WORD:<input type="text" name="str"><br>
		<input type="submit" name="submit" />
	</form>
	<reverse:strring input="${param.str}" />
</body>
</html>