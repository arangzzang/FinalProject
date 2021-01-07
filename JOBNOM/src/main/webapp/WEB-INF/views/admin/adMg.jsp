<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate var="year" value="${now}" pattern="yyyy" />
<c:set var="path" value="${pageContext.request.contextPath }" />
<!-- <style>
	td {
	  width: 100px;
	  overflow: hidden;
	}
</style> -->
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=" " />
</jsp:include>
<jsp:include page="/WEB-INF/views/admin/adminCommon.jsp">
	<jsp:param name="title" value="" />
</jsp:include>
<div class="container table-responsive-lg">
	<table class="table table-striped table-hover"
		style="text-align: center;">
		<thead class="text-nowrap">
			<tr>
				<td style="display: none;"><fmt:parseNumber var="i"
						type="number" value="${al.mem_no}" /> ${i }</td>
				<th>번호</th>
				<th>공고제목</th>
				<th>내용</th>
				<th>시작일</th>
				<th>마감일</th>
				<th>채용방식</th>
				<th>분야</th>
				<th>설정</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="al" items="${adList }" varStatus="vs">
				<tr>
					<td style="display: none;"><fmt:parseNumber var="i"
							type="number" value="${al.rec_no}" /> ${i }</td>
					<td>${vs.count }</td>
					<td>${al.rec_title }</td>
					<td>${al.rec_contents }</td>
					<td>${al.rec_startdate }</td>
					<td>${al.rec_enddate }</td>
					<td>${al.rec_type }</td>
					<td>${c2[al.rec_category -1].jobs2 }</td>
					<td>
						<button class="adDelete btn-danger"
							style="border: 2px black solid;">삭제</button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div id="pageBar">${pageBar }</div>
</div>

<script>
	$(".adDelete").click(function() {
		var recno = $(this).closest("tr").find("td:eq(0)").text();
		alert(recno);
		$.ajax({
			url:"${path}/adDelete",
			data:{recno:recno},
			success:data=>{
				alert("공고 삭제 성공");
				location.reload(true);
			}
		});
	});
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />