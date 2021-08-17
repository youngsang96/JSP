<%@ page contentType="text/html;charset=euc-kr"%>
<%--!
1) browser 서버로 data 전송하는법
1. post 2. get
2) 서버에 전송된 데이터 받아내는 object(request) 메소드

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
<h2>For 예제 - 1~<%=num %>까지 합 구하기</h2>    
<%=str%><%=sum%>