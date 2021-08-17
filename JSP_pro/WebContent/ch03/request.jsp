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
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
String test = request.getParameter("test");
String age = request.getParameter("age");
String gender = request.getParameter("gender");
String hobby = request.getParameter("hobby");
String year = request.getParameter("year");
%>

이름: <%=name %><br>
나이: <%=age %><br>
성별: <%=gender %><br>
취미: <%=hobby %><br>
테스트: <%=test %><br>
년도: <%=year %><br>

<%
String[] hobbys = request.getParameterValues("hobby");
for (String str : hobbys){
%><%=str%>, <%
}
%><br><%
Enumeration e = request.getParameterNames();
while(e.hasMoreElements()){
String str = (String) e.nextElement();
String value=request.getParameter(str);%>
 <%=str %>=<%=value %>,<%
 }
 %><br><%
 Map<String, String[]> map = request.getParameterMap();
 for(String str : map.keySet()) {
 String[] s = map.get(str);%>
 <%=str %>=<%=s[0] %>,<%
 } %>
</body>
</html>