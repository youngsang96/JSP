<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
Cookie[] cookies = request.getCookies();
if(cookies!=null){
	for(int i=0; i<cookies.length; i++){
		if(cookies[i].getName().equals("mem")){
		cookies[i].setMaxAge(0);
		response.addCookie(cookies[i]);
		}
	}
}
%>
<script>
alert("�α׾ƿ� �Ǿ����ϴ�");
location.href="cookieLoginConfirm.jsp";
</script>