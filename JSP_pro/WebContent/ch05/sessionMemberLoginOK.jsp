<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String passwd = request.getParameter("passwd");

if(id.equals(passwd)){
	session.setAttribute("mem", id);
	response.sendRedirect("sessionLoginConfirm.jsp");
}else{%>
<script>
alert("���̵� ���� �ʽ��ϴ�.");
history.go(-1);
</script><%}%>
<%=id%> �α��� �Ǿ����ϴ�.