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

${t.setCelsius('����',27.3) }
���� �µ�: ���� ${t.getCelsius('����')} �� / ȭ�� ${t.getFahrenheit('����')} 
<br>${t}<br>
<hr>
${t.info } // ${t.name }
</body>
</html>