<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2> �� �������� ����� ��Ű�� �������� ���α׷�</h2>
<%
Cookie[] cookies = request.getCookies();
if(cookies!=null){
	for(int i=0; i<cookies.length; ++i){
		if(cookies[i].getName().equals("id")){
			%>
			��Ű�� �̸��� "<%=cookies[i].getName()%>"�̰�
			��Ű�� ����  " <%=cookies[i].getValue() %>" �Դϴ�.<% 
		}
	}
}
%>
</body>
</html>