<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    <%
    String id = request.getParameter("id");
    String passwd = request.getParameter("passwd");
    
    if(id.equals(passwd)){
    	Cookie cookie = new Cookie("mem", id);
    	cookie.setMaxAge(20*60);
    	response.addCookie(cookie);
    	response.sendRedirect("cookieLoginConfirm.jsp");
    }else{%>
    <script>
    alert("���̵�� ��й�ȣ�� ���� �ʽ��ϴ�.")
    history.go(-1);
    </script>
    <%} %>
    <%=id%> �� �Է� �Ǿ����ϴ�.