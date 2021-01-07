<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<br><br><br><br>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=" " />
</jsp:include>
	<div class="container">
		<nav class="navbar navbar-expand-sm navbar-light ">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="${path }/memMg">회원관리</a></li>
				<li class="nav-item dropdown"><a class="nav-link" href="${path }/comMg">댓글관리</a></li>
				<li class="nav-item"><a class="nav-link" href="${path }/adMg">공고관리</a></li>
			</ul>
		</nav>
	</div>
