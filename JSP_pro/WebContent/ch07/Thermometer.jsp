<%@page import="el.Thermometer"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
Thermometer th = new Thermometer();
request.setAttribute("t",th);
%>

${t.setCelsius('서울',27.3) }
서울 온도: 섭씨 ${t.getCelsius('서울')} 도 / 화씨 ${t.getFahrenheit('서울')} 
<br>${t}<br>
<hr>
${t.info } // ${t.name }
</body>
</html>