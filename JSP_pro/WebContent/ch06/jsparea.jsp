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
pageContext.setAttribute("page", "page test 입니다");
request.setAttribute("request", "request test 입니다");
session.setAttribute("session", "session test 입니다");
application.setAttribute("application", "application test 입니다");
%>
<%=pageContext.getAttribute("page") %>
<%=request.getAttribute("request") %>
<%=session.getAttribute("session")%>
<%=application.getAttribute("application")%>
<jsp:forward page="jsparea2.jsp" />
</body>
</html>