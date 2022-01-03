<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
	<title>P5 JSP</title>
</head>
<body>
	<form method="POST" action="p5.jsp">
		Word: <input type="text" name="word"><br>
		<input type="radio" name="OE" value="e"><br>
		<input type="radio" name="OE" value="o"><br>
		<input type="submit" name="submit" value="G0!">
	</form>
	<c:set var="ab" value="${fn:split(paramValues.word,'')}" />
	<c:forEach items="${paramValues.OE}" var="current">
	

	<c:if test="${current=='o'}">
	<c:forEach var="c2" begin=1 end="${ab}" step="2">
	<c:choose>
	<c:when test="${c2 =='a' || c2 == 'e' || c2 == 'i' || c2 == 'o' || c2 == 'u'}" >
    </c:when>
    <c:otherwise>
    <c:set var="x" value="1" />
	</c:otherwise>
	</c:forEach>
    </c:if>


    <c:if test="${current=='e'}">
	<c:forEach var="c3" begin=2 end="${ab}" step="2">
	<c:choose>
	<c:when test="${c3 =='a' || c3 == 'e' || c3 == 'i' || c3 == 'o' || c3 == 'u'}" >
    </c:when>
    <c:otherwise>
    <c:set var="y" value="1" />
	</c:otherwise>
	</c:forEach>
    </c:if>

	</c:forEach>

	<c:choose>
	<c:when test="${x=='1'}">
    <c:out value="${You Lose}"/>
    </c:when>
    <c:otherwise>
    <c:out value="${You Win}"/>
	</c:otherwise>

	<c:when test="${y=='1'}">
    <c:out value="${You Lose}"/>
    </c:when>
    <c:otherwise>
    <c:out value="${You Win}"/>
	</c:otherwise>	
	</c:choose>
</body>
</html>