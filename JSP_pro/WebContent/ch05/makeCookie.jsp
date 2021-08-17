<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
String cookieName="id";
Cookie cookie = new Cookie(cookieName,"hongkd");
cookie.setMaxAge(60*2);
cookie.setValue("kimkd");
response.addCookie(cookie);
%>
<body>
<h2> 쿠키를 생성하는 예제</h2>
<P>"<%=cookieName%>" 쿠키가 생성되었습니다. <br>
<input type="button" value="쿠키의 내용확인" onclick="javascript:window.location='useCookie.jsp'">
</P>
</body>
</html>