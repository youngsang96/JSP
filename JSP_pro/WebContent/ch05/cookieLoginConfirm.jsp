<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%
   String id ="";
   try{
	   Cookie[] cookies = request.getCookies();
	   if(cookies!=null){
		   for(int i=0; i<cookies.length; i++){
			   if(cookies[i].getName().equals("mem")){
				   id = cookies[i].getValue(); }
		   		}
			   if(id.equals("")){
				   response.sendRedirect("cookieMemberLogin.jsp");
			   }
		   }else{
			   response.sendRedirect("cookieMemberLogin.jsp");
		   }
	   }catch(Exception e){}
   %>
<html>
<head>
<title>��Ű�� ����� ������ ȸ������</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body " >
  <form method="post" action="cookieLogout.jsp">
    <table width="300" border="1" align="center" cellspacing="0" cellpadding="0">
      <tr> 
         <td align="center" > 
           <b><%= id %></b>���� �α��� �ϼ̽��ϴ�. 
         </td>
	  </tr>
	  <tr>
		 <td align="center" >
		   <input type="submit" value="�α׾ƿ�">
		 </td>
      </tr>
    </table>
  </form>
</body>
</html>
