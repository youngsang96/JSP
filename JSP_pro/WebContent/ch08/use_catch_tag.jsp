<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>catch �±�</title>
</head>
<body>

	<c:catch var="ex">
name �Ķ������ �� = <%=request.getParameter("name")%><br>
		<%
			if (request.getParameter("name").equals("test")) {
		%>
${param.name}�� test �Դϴ�.
<%
	}
%>
	</c:catch>
	<p>
		<c:if test="${ex != null}">
�ͼ����� �߻��Ͽ����ϴ�:<br>
${ex}
</c:if>
</body>
</html>
