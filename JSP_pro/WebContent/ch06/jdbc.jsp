<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>
<table class="w3-table-all">
<%
Class.forName("oracle.jdbc.OracleDriver");
String url="jdbc:oracle:thin:@localhost:1521:xe";
String userId = "yohesa";
String passwd = "159951";
Connection con = DriverManager.getConnection(url,userId,passwd);
PreparedStatement pstmt = con.prepareStatement("select * from student");
ResultSet rs = pstmt.executeQuery();
ResultSetMetaData rsmt = rs.getMetaData();
%><tr><%
for (int i =1; i<=rsmt.getColumnCount(); i++){
	%><th><%=rsmt.getColumnName(i)%></th><%
}
%></tr><%
while(rs.next()) {
	%><tr><%
	for (int i =1; i<=rsmt.getColumnCount(); i++){
		%><td><%=rs.getString(i)%></td><%
				} 
				%></tr><%
}
%>
</table>
</body>
</html>