<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<style>
	.nav-link:hover{cursor:pointer;}
</style>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=" " />
</jsp:include>
<section id="content">


	<div class="container">
		<nav class="navbar navbar-expand-sm navbar-light ">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link">회원관리</a></li>
				<li class="nav-item dropdown"><a class="nav-link">댓글관리</a></li>
				<li class="nav-item"><a class="nav-link">공고관리</a></li>
			</ul>
		</nav>
	</div>
	<div class="container" id="ajxcontent">
	
	</div>






</section>
<script>
	$(".nav-link").click(function(){
		var loc = $(this).text();
		if(loc=='회원관리'){
			$.ajax({
				url: "${path}/memMg",
				data:{hello:"world"},
				success:data=>{
					$("#ajxcontent").html(data);
				}
			});
		}else if(loc=='댓글관리'){
			$.ajax({
				url: "${path}/comMg",
				data:{hello:"world"},
				success:data=>{
					$("#ajxcontent").html(data);
				}
			});
		}else if(loc=='공고관리'){
			$.ajax({
				url: "${path}/adMg",
				data:{hello:"world"},
				success:data=>{
					$("#ajxcontent").html(data);
				}
			});
		}
	});
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />