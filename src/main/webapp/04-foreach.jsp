<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>JSTL-foreach 的使用</title>
</head>
<body>

<%
    List<String> list = new ArrayList<>();
    list.add("Apple");
    list.add("Banana");
    list.add("Cherry");
    list.add("Ditto");
    request.setAttribute("list", list);
%>

<table align="center" width="800" height="800" border="1" style="border-collapse: collapse">
    <tr>
        <th>名称</th>
        <th>当前成员下标</th>
        <th>当前成员在列表中的序号</th>
        <th>是否是列表中的第一个元素</th>
        <th>是否是列表中的最后一个元素</th>
    </tr>
    <c:forEach
            items="${list}" var="item" varStatus="itemS">
        <tr>
            <td>${item}</td>
            <td>${itemS.index}</td>
            <td>${itemS.count}</td>
            <td>${itemS.first}</td>
            <td>${itemS.last}</td>
        </tr>
    </c:forEach>
</table>


</body>
</html>
