<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		alert("결제 취소");
		location.replace("${pageContext.request.contextPath}/com/membership.do");
	</script>
</body>
</html>