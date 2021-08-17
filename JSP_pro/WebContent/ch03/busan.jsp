<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>부산 정보</h1>
<h2>부산은 항구 도시다</h2>
<h2>부산은 인구가 300만이다.</h2>
<h3><%String c = request.getParameter("c");%></h3>
<h3><%=c%></h3>
<h3><%=c.length()%></h3>
</body>
</html>