<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
    jsp 지시어 : <%@ .. %>
      page 지시어 : 현재 페이지의 특징을 속성을 통해서 설정.
                  <%@ page 속성=속성값 ..... %>
      include 지시어 : 다른 페이지의 내용을 포함하는 기능. => 서블릿부분에서 
                                       내용을 합하여 출력한다. (변수 공유 가능)
                  <%@ include file="페이지명" %>
      taglib 지시어 : 커스텀 태그를 설정. EL, JSTL 부분에서 설명.
                  <%@ taglib prefix="...." url="...."  %>                                             
    
 --%>

<%
String msg = "includeDirectiveEx01.jsp 페이지의 msg 변수입니다.";
%>
<h1>includeDirectiveEx01.jsp 페이지 입니다.</h1>
<%@ include file ="includeDirectiveEx02.jsp" %>
<h2>include directive(지시어)는 includeDirectiveEx01.jsp 페이지에서 
includeDirectiveEx02.jsp 페이지의 내용을 합하여 결과를 출력합니다. <br>
includeDirectiveEx01.jsp와 includeDirectiveEx02.jsp 페이지는 하나의 서블릿으로 변환됩니다.
즉 하나의 자바 파일로 만들어 지므로 변수 공유가 가능하게 됩니다.</h2>
</body>
</html> 