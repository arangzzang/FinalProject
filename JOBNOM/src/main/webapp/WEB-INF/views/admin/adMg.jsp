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
	<div class="container table-responsive-lg">
		<table class="table table-striped table-hover"  style="text-align:center;">
			<thead>
				<tr>
					<th>번호</th>
					<th>공고제목</th>
					<th>내용</th>
					<th>시작일</th>
					<th>마감일</th>
					<th>채용방식</th>
					<th>분야</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="al" items="${adList }" varStatus="vs">
				<tr>
					<td>${vs.count }</td>
					<td>${al.rec_title }</td>
					<td>${al.rec_contents }</td>
					<td>${al.rec_startdate }</td>
					<td>${al.rec_enddate }</td>
					<td>${al.rec_type }</td>
					<td>${al.rec_category }</td>
				</tr>	
				</c:forEach>
			</tbody>
		</table>		
	</div>

<script>
	
	
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />