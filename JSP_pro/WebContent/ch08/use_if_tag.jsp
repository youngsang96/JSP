<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
http://localhost:9080/JSP_pro/ch08/use_if_tag.jsp?name=bk&age=19 <br><hr>
<c:if test="true">
������ ����<br>
</c:if>

<c:if test="${param.name == 'bk' }">
name �Ķ������ ���� ${param.name} �Դϴ�. <br>
</c:if>

<c:if test="${18 < param.age }">
����� ���̴� 18�� �̻��Դϴ�.
</c:if>
</body>
</html>