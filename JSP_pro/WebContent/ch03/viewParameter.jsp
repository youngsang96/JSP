<%@page import="java.util.Map"%>
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
	request.setCharacterEncoding("utf-8");
	%>
	<%
	String name = request.getParameter("name");
	String[] values = request.getParameterValues("pet");
	String address = request.getParameter("address");
	Enumeration paramEnum = request.getParameterNames();
	Map parameterMap = request.getParameterMap();
	%>
	<b> request.getParamater() 메서드 사용</b>
	<br> name:
	<%=name%><br> address:
	<%=address%><br> 종하하는 동물:
	<%
	if (values != null) {
		for (String str : values) {
	%><%=str%>,<%
	}
	}
	%>
	<br>
	<%
	while(paramEnum.hasMoreElements()) {
		String str = (String) paramEnum.nextElement();
	%><%=str%>,<%
	}
	%>
	<%String[] pname = (String[]) parameterMap.get("name");%>
	<%= pname[0]%>
</body>
</html>