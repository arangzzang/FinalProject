<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate var="year" value="${now}" pattern="yyyy" />
<c:set var="path" value="${pageContext.request.contextPath }" />

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=" " />
</jsp:include>
	<div class="container">
		<table class="table table-striped table-hover"  style="text-align:center;">
			<thead>
				<tr>
					<th>이름</th>
					<th>나이</th>
					<th>성별</th>
					<th>상태</th>
					<th>분야</th>
					<th>전화번호</th>
					<th>경력</th>
					<th>이메일</th>
					<th>분류</th>
					<th>선택</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="ml" items="${memList }">
				<tr>
					<td>${ml.res_name}</td>
					<td style="display: none;"><fmt:parseNumber var="i"
								type="number" value="${ml.mem_no}" /> ${i }</td>
					<td>
						<c:if test="${ml.res_birth != 0 }">
							${year - ml.res_birth}
						</c:if>
					</td>
					<td>${ml.res_gender}</td>
					<td>${ml.mem_check}</td>
					<td>${ml.cate_no2}</td>
					<td>${ml.res_phone}</td>
					<td>${ml.res_car}</td>
					<td>${ml.mem_email}</td>
					<td style="text-align:right;">
						${ml.mem_membership}
					</td>
					<td>
						<c:if test="${ml.mem_membership == '일반회원' }">
							<button class="grant btn-success" style="border:3px black solid;">멤버십 부여</button>
						</c:if>
						<c:if test="${ml.mem_membership == '멤버십회원' }">
							<button class="oust btn-danger" style="border:3px black solid;">멤버십 회수</button>
						</c:if>
						<button class="memDelete btn-dark">삭제</button>
					</td>
				</tr>	
				</c:forEach>
			</tbody>
		</table>
		
		<form action="${path }/memDelete" method="post" id="memDel">
			<input type="text" style="display:none;" name="dummy"id="dummy">
		</form>
		
	</div>

<script>
	$(".grant").click(function(){
		var memno = $(this).closest("tr").find("td:eq(1)").text();
		alert(memno);
		$.ajax({
			url:"${path}/grant",
			data:{memno:memno},
			success:data=>{
				alert("멤버십 부여 성공");
				location.reload(true);
			}
		});
	});
	$(".oust").click(function(){
		var memno = $(this).closest("tr").find("td:eq(1)").text();
		alert(memno);
		$.ajax({
			url:"${path}/oust",
			data:{memno:memno},
			success:data=>{
				alert("멤버십 회수 성공");
				location.reload(true);
			}
		});
	});
	$(".memDelete").click(function(){
		var memno = $(this).closest("tr").find("td:eq(1)").text();
		alert(memno);
		$.ajax({
			url:"${path}/memDelete",
			data:{memno:memno},
			success:data=>{
				alert("회원 삭제 성공");
				location.reload(true);
			}
		});
	});
	
	/* 
	$("#memDelete").click(function(){
		var checked = []
		$("input[name='checker']:checked").each(function ()
		{
		    checked.push(parseInt($(this).val()));
		});
		console.log(checked);

		var clist = checked.toString();
		alert(clist);
		$("#dummy").val("hello");
		$("#memDel").submit(); */
		
/* 		$.ajax({
			url:"${path}/memDelete",
			data:{checked:checked},
			success:data=>{
				alert("멤버 삭제 성공");
				location.reload(true);
			}
		}); */
	/* }); */
	
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />