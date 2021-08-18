<%@page import="java.util.ArrayList"%>
<%@page import="book.Book"%>
<%@page import="java.util.List"%>
<%@page import="book.BookService"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    /*
    BookService
    1)입력 받아서 저장
	
	2) 저장된 내용 리스트 보기

	3) util.DBConnection : database 연결을 위한 class
	
	4) create table book(
       writer varchar2(20),
       title varchar2(100),
       create table book(3000));
	
    */
    request.setCharacterEncoding("EUC-KR");
    List<Book> li = new ArrayList<Book>();
    if(request.getParameter("writer") != null) {
    	BookService bs = new BookService();
    	bs.bookInsert(request);
    	li = bs.bookList();
    }
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

</head>
<body>
<form method="post">
<table class="w3-table-all">
    <tr><td>방문자</td>
        <td><input type="text" name="writer"></td></tr>
    <tr><td>제목</td>
        <td><input type="text" name="title"></td></tr>
    <tr><td>내용</td>
        <td><textarea name="content" rows="5"></textarea></td></tr>
    <tr><td colspan="2" align="center">
    <input type="submit" value="방명록등록"></td></tr>
</table>
</form>
<table class="w3-table-all">
<tr><th>방문자</th><th>제목</th><th>내용</th></tr>
<%
for(Book b : li){
	%>
	<tr><td><%=b.getWriter() %></td>
	<td><%=b.getTitle() %></td>
	<td><%=b.getContent() %></td></tr>
	<%
}
%>
</table>
</body>
</html>