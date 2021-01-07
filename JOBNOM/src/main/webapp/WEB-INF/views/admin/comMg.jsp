<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate var="year" value="${now}" pattern="yyyy" />
<c:set var="path" value="${pageContext.request.contextPath }" />
<style>
td {
	width: 100px;
	overflow: hidden;
}
</style>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=" " />
</jsp:include>
<jsp:include page="/WEB-INF/views/admin/adminCommon.jsp">
	<jsp:param name="title" value="" />
</jsp:include>
<div class="container table-responsive-lg">
	<table class="table table-striped table-hover"
		style="text-align: center;">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>내용</th>
				<th>글쓴이</th>
				<th>작성날짜</th>
				<th>공고제목</th>
				<th>기업명</th>
				<th>설정</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="rl" items="${revList }" varStatus="vs">
				<tr>
					<td style="display: none;"><fmt:parseNumber var="i"
							type="number" value="${rl.review_no}" /> ${i }</td>
					<td>${vs.count }</td>
					<td>${rl.review_title }</td>
					<td>${rl.review_contents }</td>
					<td>${rl.review_writer }</td>
					<td>${rl.re_enroll_date }</td>
					<td>${rl.rec_title }</td>
					<td>${rl.ent_name }</td>
					<td>
						<button class="censor btn-success"
							style="border: 2px black solid;">검열</button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div id="pageBar">${pageBar }</div>
</div>

<script>
$(".censor").click(function(){
	var revno = $(this).closest("tr").find("td:eq(0)").text();
	alert(revno);
	$.ajax({
		url:"${path}/censor",
		data:{reviewno:revno},
		success:data=>{
			alert("댓글 검열 성공");
			location.reload(true);
		}
	});
});
	
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />