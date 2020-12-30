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
		alert("결제 완료");
		location.replace("${pageContext.request.contextPath}/com/membership_end.do");
	</script>
</body>
</html>