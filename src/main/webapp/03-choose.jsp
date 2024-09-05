<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>JSTL-Choose 标签的使用</title>
</head>
<body>

<%
    request.setAttribute("score", 60);

%>

<c:choose>
    <c:when test="${score < 60}">
        <h2>不及格的同学</h2>
    </c:when>
    <c:when test="${score > 60 && score < 80}">
        <h2>好同学</h2>
    </c:when>
    <c:when test="${score >=80}">
        <h2>优秀的同学</h2>
    </c:when>
    <c:otherwise>
        <h2>成��不在0-100之间</h2>
    </c:otherwise>
</c:choose>
</body>
</html>
