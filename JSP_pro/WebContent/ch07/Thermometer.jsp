<%@page import="el.Member"%>
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
Member m = new Member("ȫ�浿", 100);
request.setAttribute("t",th);
request.setAttribute("m",m);
%>

${t.setCelsius('����',27.3) }
���� �µ�: ���� ${t.getCelsius('����')} �� / ȭ�� ${t.getFahrenheit('����')} 
<br>${t}<br>
<hr>
${t.info } // ${t.name }
<hr>
${m.name }
</body>
</html>