<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>내장 객체 : response 출력 버퍼에 출력할 수 있는 출력 스트림 개체</h3>
<h3>1부터 10까지의 합 구하기</h3>
<%
int sum = 0;
for(int i =1; i<=10; i++){
sum += i;
%>
1부터 <%=i %>까지의 부분합: <%=sum %><br>
<%} %>
<hr>
<h3>1부터 10까지의 합 구하기: out 객체 이용하기</h3>
<%
sum = 0;
for(int i =1; i<=10; i++){
sum += i;
out.println("1부터" + i + "까지의 부부합:" + sum + "<br>");
}
out.println("1부터 10까지의 합: "+sum);
%>
1부터 10까지의 합: <%=sum %><br>
</body>
</html>