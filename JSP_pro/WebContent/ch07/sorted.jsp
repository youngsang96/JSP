<%@page import="java.util.Arrays"%>
<%@page import="el.Member"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
${ vals = [20,17,30,2,9,23];  sortedVal = vals.stream().sorted().toList() }<br>
${ vals = [20,17,30,2,9,23];  sortedVal = vals.stream().sorted((x1,x2)->x1 < x2 ? 1 : -1).toList() }
<%
List<Member> memberList = Arrays.asList(
		new Member("홍길동", 20), new Member("이순신", 54),
		new Member("유관순", 19), new Member("왕건", 42) );
		request.setAttribute("members", memberList);
%><br>

${sortedMem = members.stream().sorted((m1, m2) -> m1.age.compareTo(m2.age)).toList()}
</body>
</html>