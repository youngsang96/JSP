<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
try{
	if(session.getAttribute("mem") == null){
		response.sendRedirect("sessionMemberLogin.jsp");}
}catch(Exception e){}%>

<html>
<head>
<title>Insert title here</title>
</head>
<body>
<form method="post" action="sessionLogout.jsp">
<table width="300" border="1" align="center" cellspacing="0" cellpadding="0">
<tr> <td align="center">
<b><%=session.getAttribute("mem")%></b> ���� �α��� �ϼ̽��ϴ�.
</td> </tr> <tr>
<td align="center">
<input type="submit" value="�α׾ƿ�">
</td> </tr>
</table>
</form>
</body>
</html>