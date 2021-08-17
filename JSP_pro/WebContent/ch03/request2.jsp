<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int num1 = Integer.parseInt(request.getParameter("num1"));
int num2 = Integer.parseInt(request.getParameter("num2"));
String kind = request.getParameter("kind");
double cal = 0;
switch(kind) {
case "+" : cal = num1 + num2; break;
case "-" : cal = num1 - num2; break;
case "*" : cal = num1 * num2; break;
case "/" : cal = (double) num1 / num2; break;
}
%>
<h1><%=num1 %><%=kind %><%=num2 %>=<%=cal%></h1>
</body>
</html>