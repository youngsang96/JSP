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
<h2> ��Ű�� �����ϴ� ����</h2>
<P>"<%=cookieName%>" ��Ű�� �����Ǿ����ϴ�. <br>
<input type="button" value="��Ű�� ����Ȯ��" onclick="javascript:window.location='useCookie.jsp'">
</P>
</body>
</html>