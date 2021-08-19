<%@page import="java.util.Date"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
Map<String, Object> map = new HashMap<String, Object>();
map.put("name","LEE");
map.put("today", new Date());
%>
<c:set var="sum" value="0"/>
<c:forEach var="i" begin="1" end="100" step="2">
<c:set var="sum" value="${sum+i }"/>
</c:forEach>
결과: ${sum }
<hr>

<ul>
<h4>구구단 4단</h4>
<c:forEach var="i" begin="1" end="9">
<li> 4* ${i } = ${4*i }
</c:forEach>
</ul>

<h4>int형 배열</h4>
<c:set var="intArray" value="<%=new int[] {1,2,3,4,5} %>" />
<c:forEach var="i" items="${intArray }" begin="1" end="4" varStatus="st" >
${st.index } - ${st.count } - [${i}] <br>
</c:forEach>

<h4>Map</h4>
<c:set var="map" value="<%=map %>" />
<c:forEach var="i" items="${map }"><br>
${i.key} = ${i.value } 
</c:forEach>
</body>
</html>