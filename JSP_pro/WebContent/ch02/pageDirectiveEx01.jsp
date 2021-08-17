<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%-- Page 지시어 (Directive)
   <%@ page 속성1=속성값1 ... %>
        속성들을 이용하여 현재페이지의 특징을 설정하는 요소 
        language="java" : 기본 언어 설정. 생략 가능. 
        contentType : html 형태이고, euc-kr, UTF-8 인코딩 방식으로 설정
        import : 사용되는 클래스의 패키지를 설정. 여러번 설정이 가능한 속성
 --%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
 <%-- /webapp/ch02/pagedirectiveex1.jsp --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Date today = new Date();
SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>

현재 일시: <%=df.format(today) %>
</body>
</html>