<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="$${pageContext.request.contextPath }" />
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate var="year" value="${now}" pattern="yyyy" />
<c:set var="path" value="${pageContext.request.contextPath }" />
<section id="content">
	<jsp:include page="/WEB-INF/views/enterprise/ent_mypage/ent_common.jsp">
		<jsp:param name="subheader" value="" />
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
							<th>이름</th>
							<th>성별</th>
							<th>나이</th>
							<th>지원날짜</th>
							<th>이력서보기</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="app" items="${app }">
							<tr>
								<td><c:choose>
										<c:when test="${app.resName != null }">
										${app.resName }
									</c:when>
										<c:otherwise>
										정보 미입력
									</c:otherwise>
									</c:choose></td>
								<td style="display: none;"><fmt:parseNumber var="i"
										type="number" value="${app.resNo}" /> ${i }</td>
								<td><c:choose>
										<c:when test="${app.resGender != null }">
										${app.resGender }
									</c:when>
										<c:otherwise>
										정보 미입력
									</c:otherwise>
									</c:choose></td>
								<td>${year - app.resBirth }</td>
								<td><c:out value="${app.supportDay }" /></td>
								<td><c:choose>
										<c:when test="${app.resName != null }">
											<button class="btn-success view" data-toggle="modal"
												data-target="#myModal" style="">이력서 열기</button>
										</c:when>
										<c:otherwise>
										이력서가 없습니다
									</c:otherwise>
									</c:choose></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div id="pageBar" style="margin-top: 20px;">${pageBar }</div>
			</div>
		</div>

	</div>


	<div class="modal fade" id="myModal">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title" id="workerName">Modal Heading</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body" id="resume"></div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
				</div>

			</div>
		</div>
	</div>







</section>
<script>
	function applyAd() {
		location.replace("${path }/com/applyAd.do");
	}
</script>
<script>
$(".view").click(function(){
	var name = $(this).closest("tr").find("td:eq(0)").text();
	var resNo = $(this).closest("tr").find("td:eq(1)").text();
	$("#workerName").html(name);
	
	$.ajax({
		url:"${path}/getResume",
		data: {resNo:resNo},
		success:data=>{
			result=data;
			$("#resume").html(data);
		}
	});
});
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />