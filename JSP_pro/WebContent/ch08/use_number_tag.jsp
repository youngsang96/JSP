<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:set var="price" value="10000" />
<fmt:formatNumber value="${price }" type="number" var="numberType" />
<br/>
��ȭ: <fmt:formatNumber value="${price }" type="currency" currencySymbol="��" />
<br/>
�ۼ�Ʈ: ��ȭ: <fmt:formatNumber value="${price }" type="percent" groupingUsed="false" />
<br/>
����: ${numberType }
<br/>
����: ��ȭ: <fmt:formatNumber value="${price }" pattern="0000000.00"/>
</body>
</html>