<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate var="eduTerm" value="${mammoth.edu_term}" pattern="yyyy" />
<fmt:formatDate var="eduTermEnd" value="${mammoth.edu_termend}" pattern="yyyy" />
<fmt:formatDate var="awaTerm" value="${mammoth.awa_term}" pattern="yyyy" />
<fmt:formatDate var="carTerm" value="${mammoth.car_term}" pattern="yyyy" />
<fmt:formatDate var="carTermEnd" value="${mammoth.car_termend}" pattern="yyyy" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
	

<body>
	<div class="table-responsive-lg">
		<table class="table">
			<tr>
				<td colspan="4"><strong>학력</strong></td>
			</tr>
			<tr>
				<td class="text-nowrap">${mammoth.edu_name }</td>
				<td>전공 : ${mammoth.edu_major }</td>
				<td colspan="2">입학 : ${mammoth.edu_term } </td>
				<td>졸업 : ${mammoth.edu_termend }</td>
			</tr>
			<tr>
				<td><strong>경력</strong></td>
				<td>${mammoth.car_name }</td>
				<td class="text-nowrap">부서: <br>${mammoth.car_dept } <br>직책: <br>${mammoth.car_duty }</td>
				<td>시작일: ${eduTerm } <br>종료일: ${eduTermEnd }</td>
				<td>업무내용: <br>${mammoth.car_content }</td>
			</tr>
			<tr>
				<td><strong>자격증</strong></td>
				<td colspan="2">${mammoth.lic_name }</td>
			</tr>			
			<tr>
				<td><strong>수상내역</strong></td>
				<td>${mammoth.awa_name }</td>
			</tr>	
		</table>	
	
	</div>	

	
</body>
</html>