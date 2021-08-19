<%@ page contentType="text/html; charset=utf-8" session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<c:url value="http://search.daum.net/search" var="searchUrl">
	<c:param name="w" value="blog" />
	<c:param name="q" value="강아지" />
</c:url>
<a href="${searchUrl }">이동</a>
<ul>
	<li>${searchUrl}</li>
	<li><c:url value="/use_if_tag.jsp" /></li>
	<li><c:url value="./use_if_tag.jsp" /></li>
</ul>

</body>
</html>
