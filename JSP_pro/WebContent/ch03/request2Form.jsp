<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function calc(op, form){
form.kind.value=op
form.submit();
}
</script>
</head>
<body>
<form action="request2.jsp" method="post">
숫자1 : <input type="text" name="num1">&nbsp;
숫자2 : <input type="text" name="num2"><br>
<input type="hidden" name="kind">
<input type="button" value="+" onclick="calc('+',this.form)">
<input type="button" value="-" onclick="calc('-',this.form)">
<input type="button" value="*" onclick="calc('*',this.form)">
<input type="button" value="/" onclick="calc('/',this.form)">
</form>
</body>
</html>