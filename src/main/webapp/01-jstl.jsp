<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>JSTL的使用</title>
</head>
<body>
<c:if test="${1==1}">
    Hello, JSTL!
</c:if>
</body>
</html>
