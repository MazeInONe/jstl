<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>JSTL-解析库</title>
</head>
<body>

<%--
<fmt:parseNumber
  value="<string>"
  type="<string>"
  pattern="<string>"
  parseLocale="<string>"
  integerOnly="<string>"
  var="<string>"
  scope="<string>"/>

value	要解析的数字
type	NUMBER,，CURRENCY，或 PERCENT
parseLocale	解析数字时所用的区域
integerOnly	是否只解析整型数（true）或浮点数（false）
pattern	自定义解析模式
timeZone	要显示的日期的时区
var	存储待解析数字的变量
scope	var属性的作用域

--%>


<%
    request.setAttribute("balance", 100);
%>

<h3>数字解析:</h3>
<c:set var="balance" value="1250003.350"/>

<fmt:parseNumber var="i" type="number" value="${balance}"/>
<p>数字解析 (1) : <c:out value="${i}"/></p>
<fmt:parseNumber var="i" integerOnly="true"
                 type="number" value="${balance}"/>
<p>数字解析 (2) : <c:out value="${i}"/></p>


</body>
</html>
