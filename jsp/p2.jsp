<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <form action="#" method="get">
        Number1:<input type="number" name="n1">
        Number2:<input type="number" name="n2"><br/>
        <input type="radio" name="op" value="1">Addition
        <input type="radio" name="op" value="2">Subtraction
        <input type="radio" name="op" value="3">Multiplication
        <input type="radio" name="op" value="4">Division<br/>
        <input type="submit" value="submit">
    </form>


    <c:if test="${param.op==1}" >
        <c:out value="${param.n1+param.n2}"/>

    </c:if>
    <c:if test="${param.op==2}" >
        <c:out value="${param.n1-param.n2}"/>

    </c:if>
    <c:if test="${param.op==3}" >
        <c:out value="${param.n1*param.n2}"/>

    </c:if>
    <c:if test="${param.op==4}" >
        <c:out value="${param.n1/param.n2}"/>

    </c:if>

    


</body>
</html>