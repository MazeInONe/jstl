<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>
        JSTL-格式化日期类型
    </title>
</head>
<body>

<%--
 formatDate 将Date型的数据转换成指定类型的

 <fmt:formatDate
  value="<string>"
  type="<string>"
  dateStyle="<string>"
  timeStyle="<string>"
  pattern="<string>"
  timeZone="<string>"
  var="<string>"
  scope="<string>"/>

value	要显示的日期
type	DATE, TIME, 或 BOTH
dateStyle	FULL, LONG, MEDIUM, SHORT, 或 DEFAULT
timeStyle	FULL, LONG, MEDIUM, SHORT, 或 DEFAULT
pattern	自定义格式模式
timeZone	显示日期的时区
var	存储格式化日期的变量名
scope	存储格式化日志变量的范围
--%>

<%
    request.setAttribute("date", new Date());
%>

<fmt:formatDate value="${date}"/> <br>
<fmt:formatDate value="${date}" type="date"/> <br>
<fmt:formatDate value="${date}" type="time"/> <br>
<fmt:formatDate value="${date}" type="both"/> <br>
<fmt:formatDate value="${date}" type="both" dateStyle="FULL"/> <br>
<fmt:formatDate value="${date}" type="both" dateStyle="SHORT"/> <br>
<fmt:formatDate value="${date}" pattern="yyyy-MM-dd"/> <%--最常用--%>
</body>
</html>
