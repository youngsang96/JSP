<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>내장객체 : 클라이언트의 요청 정보를 저장하는 객체</h2>
<form action="request.jsp" method="post">
<input type="hidden" value="test" name="test">
이름: <input type="text" name="name"><br>
나이: <input type="text" name="age"><br>
성별: <input type="radio" name="gender" value="1">남
<input type="radio" name="gender" value="2">여
<br>
취미: <input type="checkbox" name="hobby" value="여행">여행
<input type="checkbox" name="hobby" value="요리">요리
<input type="checkbox" name="hobby" value="야구">야구
<input type="checkbox" name="hobby" value="축구">축구
<input type="checkbox" name="hobby" value="독서">독서
<input type="checkbox" name="hobby" value="게임">게임<br>
출생연도:<select name="year">
<%for(int i = 1980; i <2000; i++) {%>
<option><%=i %></option>
<%} %>
</select><br>
<input type="submit" value="전송">
</form>
</body>
</html>