<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="$${pageContext.request.contextPath }" />
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate var="year" value="${now}" pattern="yyyy" />
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=" " />
</jsp:include>
<section id="content">
	<jsp:include page="/WEB-INF/views/enterprise/ent_mypage/ent_common.jsp">
		<jsp:param name="subheader" value="" />
	</jsp:include>
	<jsp:include page="/WEB-INF/views/enterprise/ent_mypage/myCom_info.jsp">
		<jsp:param name="myCom_info" value="" />
	</jsp:include>
	<div class="container">
		<div class="check_container">
			<div class="check_box">
				<div class="volunteer_title">
					<h2>지원자 조회</h2>
					<p>
						<span>${totalData }</span>명의 지원자가 있습니다.
					</p>
				</div>
				<table class="table table" id="volunteer_list">
					<thead>
						<tr>
							<th>NO</th>
							<th>이름</th>
							<th>나이</th>
							<th>성별</th>
							<th>지원날짜</th>
							<th>이력서 보기</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${app }" var="app">
							<tr>
								<td><c:out value="${app.resNo }" /></td>
								<td><c:out value="${app.resName }" /></td>
								<td><c:out value="${year - app.resBirth }" /></td>
								<td><c:out value="${app.resGender }" /></td>
								<td><c:out value="${app.supportDay }"/></td>
								<td><c:out value="${app.resOpencheck }" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div id="pageBar" style="margin-top: 20px;">${pageBar }</div>
			</div>
		</div>

	</div>








</section>
<script>
	function applyAd() {
		location.replace("${path }/com/applyAd.do");
	}
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />