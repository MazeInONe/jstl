<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>JSTL-格式化</title>
</head>
<body>

<%--将数值型 10(value) 装换成 number(type) 保存到num（var）--%>
<%--fmt:formatNumber 的作用是转换并输出，不设定var 就直接输出--%>


<%--
<fmt:formatNumber
  value="<string>"
  type="<string>"
  pattern="<string>"
  currencyCode="<string>"
  currencySymbol="<string>"
  groupingUsed="<string>"
  maxIntegerDigits="<string>"
  minIntegerDigits="<string>"
  maxFractionDigits="<string>"
  minFractionDigits="<string>"
  var="<string>"
  scope="<string>"/>


value	要显示的数字
type	NUMBER，CURRENCY，或 PERCENT类型
pattern	指定一个自定义的格式化模式用与输出
currencyCode	货币码（当type="currency"时）
currencySymbol	货币符号 (当 type="currency"时)
groupingUsed	是否对数字分组 (TRUE 或 FALSE)
maxIntegerDigits	整型数最大的位数
minIntegerDigits	整型数最小的位数
maxFractionDigits	小数点后最大的位数
minFractionDigits	小数点后最小的位数
var	存储格式化数字的变量
scope	var属性的作用域

--%>

<fmt:formatNumber value="10" type="number" var="num"/>
${num}
<br/>
<%--percent 百分比--%>
<fmt:formatNumber value="10" type="percent"/>
<br/>

<%--currency 货币--%>

<fmt:formatNumber value="10" type="currency"/>
<br/>

<fmt:setLocale value="en_USE"/>
<fmt:formatNumber value="10" type="currency"/>
<br/>

</body>
</html>
