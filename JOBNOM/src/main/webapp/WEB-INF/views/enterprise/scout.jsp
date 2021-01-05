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
<section id="content">


	<div class="container">
		<div style="text-align: center;" class="mb-3">
			<h2>구직자 조회</h2>
		</div>
		<div class="row">
			<div class="col">
				<div class="form-group input-group mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text">업무 분야</span>
					</div>
					<select class="form-control" name="rec_category" id="rec_category">
						<option>전체조회</option>
						<c:forEach items="${c2 }" var="c">
							<option value="${c.cate_no2 }">${c.jobs2 }</option>
						</c:forEach>
					</select>
				</div>
			</div>
			<div class="col">
				<div class="input-group mb-3 inline form-check-inline">
					<div class="input-group-prepend">
						<span class="input-group-text">경력</span>
					</div>
					<input class="form-control" type="number" id="career"> 
				</div>
			</div>
		</div>

		<table class="table table-striped">
			<thead>
				<tr style="text-align: center;">
					<th>이름</th>
					<th>성별</th>
					<th>나이</th>
					<th>경력</th>
					<th>상태</th>
					<th>분야</th>
					<th>이력서</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="worker" items="${workerList }">
					<tr style="text-align: center;"
						class="regularRows ${c2[worker.cateNo2].jobs2 } ${worker.resCar}">
						<td><c:choose>
								<c:when test="${worker.resName != null }">
										${worker.resName }
									</c:when>
								<c:otherwise>
										정보 미입력
									</c:otherwise>
							</c:choose></td>
						<td style="display: none;"><fmt:parseNumber var="i"
								type="number" value="${worker.resNo}" /> ${i }</td>
						<td><c:choose>
								<c:when test="${worker.resGender != null }">
										${worker.resGender }
									</c:when>
								<c:otherwise>
										정보 미입력
									</c:otherwise>
							</c:choose></td>
						<td>${year - worker.resBirth }</td>
						<td>${worker.resCar }</td>
						<td>${worker.memCheck }</td>
						<td>${c2[worker.cateNo2].jobs2 }</td>
						<td><c:choose>
								<c:when test="${worker.resName != null }">
									<button class="btn-success view" data-toggle="modal"
										data-target="#myModal" style="border: 2px black solid;">이력서
										열기</button>
								</c:when>
								<c:otherwise>
										이력서가 없습니다
									</c:otherwise>
							</c:choose></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<!-- The Modal -->
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
	
	$("#rec_category").change(function(){
		$(".regularRows").hide();
		var filter = $("#rec_category option:selected").text();
		$("."+filter).show();
		if(filter == '전체조회'){
			$(".regularRows").show();
		}
		alert($("#rec_category option:selected").text());
	});
	
	$("#career").change(function(){
		$(".regularRows").hide();
		var career = parseInt($("#career").val());
		while(career < 100){
			$("."+career).show();
			career += 1;
		}
	});
	
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />