<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%=pageContext.getAttribute("page") %>
<%=request.getAttribute("request") %>
<%=session.getAttribute("session")%>
<%=application.getAttribute("application")%>
</body>
</html>