<%@ page contentType="text/html;charset=euc-kr"%>
<%--!
1) browser ������ data �����ϴ¹�
1. post 2. get
2) ������ ���۵� ������ �޾Ƴ��� object(request) �޼ҵ�

String name = request.getParameter("name");
String address = request.getParameter("address");
String[] values = request.getParameterValues("pet");
Enumeration paramEnum = request.getParameterNames();
Map parameterMap = request.getParameterMap();
 --%>

<% 
    int num = Integer.parseInt(request.getParameter("num"));
    int sum = 0;
    String str="";

	for(int i=1;i<=num;i++){
       if(i<num){
          str += i + " + ";
	   }else{
	      str += i + " = ";
       }
       sum += i; 
    }     	
%>	
<h2>For ���� - 1~<%=num %>���� �� ���ϱ�</h2>    
<%=str%><%=sum%>