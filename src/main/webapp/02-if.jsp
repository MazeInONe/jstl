<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>JSTL-IF使用</title>
</head>
<body>
<%
    request.setAttribute("num", 10);

%>
<c:if test="${num > 0}">
    数值大于0
</c:if>

<c:if test="${num > 100}" var="flag" scope="request">
</c:if>
${flag} --- ${sessionScope.flag}


</body>
</html>
