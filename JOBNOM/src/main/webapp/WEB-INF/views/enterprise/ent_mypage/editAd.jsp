<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<style>
   .jmklabel{
      background-color:/* #e9ecef */; color:#495057; border:1px solid #ced4da;
   }
   .jmkbtn{
      background-color:#00c362;
      color:#fff;
      text-align:center;
      border-radius:5px;
      font-weight:bold;
   }
</style>
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

	<div class="container form-group">
		<h5 class="text-center">공고 수정</h5>

		<form action="${path}/editAd_end" method="post">
			<input type="hidden" value="${rec_no }" name="ent_no"
				id="ent_no">
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">제목</span>
				</div>
				<input type="text" class="form-control" name="rec_title"
					id="rec_title" value="${applyAd.rec_title }" required>
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">내용</span>
				</div>
				<textarea class="form-control" rows="5" name="rec_contents"
					id="rec_contents" required>${applyAd.rec_contents }</textarea>
			</div>
			<input type="hidden" class="custom-file-input" name="rec_file1"
				id="rec_file1"> <input type="hidden"
				class="custom-file-input" name="rec_file2" id="rec_file2">


			<div class="input-group mb-3 inline">
				<div class="input-group-prepend">
					<span class="input-group-text">시작일</span>
				</div>
				<input type="date" class="jmklabel text-center" name="rec_startdate"
					id="rec_startdate" value="${applyAd.rec_startdate }" required>
				&nbsp;&nbsp;
				<div class="input-group-prepend">
					<span class="input-group-text">종료일</span>
				</div>
				<input type="date" class="jmklabel text-center" name="rec_enddate"
					id="rec_enddate" value="${applyAd.rec_enddate }" required>
			</div>
			<div class="input-group mb-3 inline form-check-inline">
				<div class="input-group-prepend">
					<span class="input-group-text">연봉</span>
				</div>
				<input class="jmklabel" type="number" step="500000"
					name="rec_salary" id="rec_salary" value="${applyAd.rec_salary }"
					required> &nbsp;&nbsp; <label
					class="form-check-label text-center"> <input
					type="checkbox" class="form-check-input" id="salary_noinfo">회사
					내규에 따름
				</label>
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">주요업무</span>
				</div>
				<textarea class="form-control" rows="5" name="rec_info"
					id="rec_info" required>${applyAd.rec_info }</textarea>
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">우대사항</span>
				</div>
				<textarea class="form-control" rows="5" name="rec_prefer"
					id="rec_prefer">${applyAd.rec_prefer }</textarea>
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">복지</span>
				</div>
				<textarea class="form-control" rows="5" name="rec_welfare"
					id="rec_welfare">${applyAd.rec_welfare }</textarea>
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">자격요건</span>
				</div>
				<textarea class="form-control" rows="5" name="rec_qualification"
					id="rec_qualification" required>${applyAd.rec_qualification }</textarea>
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">모집인원</span>
				</div>
				<input type="number" class="jmklabel" step="1" name="rec_people"
					id="rec_people" value="${applyAd.rec_people }" required>
				&nbsp;&nbsp;
				<div class="input-group-prepend">
					<span class="input-group-text">경력</span>
				</div>
				<input type="number" class="jmklabel" name="rec_career"
					id="rec_career" value="${applyAd.rec_career }" required>년
				이상
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">채용절차</span>
				</div>
				<textarea class="form-control" rows="5" name="rec_order"
					id="rec_order">${applyAd.rec_order }</textarea>
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">고용형태</span>
				</div>
				<div class="form-check-inline jmklabel" style="padding: 5px;">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="rec_type" id="parttime" value="알바"
						required>알바
					</label> &nbsp;&nbsp; <label class="form-check-label"> <input
						type="radio" class="form-check-input" name="rec_type" id="intern"
						value="인턴">인턴
					</label> &nbsp;&nbsp; <label class="form-check-label"> <input
						type="radio" class="form-check-input" name="rec_type"
						id="contract" value="비정규직">비정규직
					</label> &nbsp;&nbsp; <label class="form-check-label"> <input
						type="radio" class="form-check-input" name="rec_type"
						id="official" value="정규직">정규직
					</label>
				</div>

			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">기타</span>
				</div>
				<textarea class="form-control" rows="5" id="about" name="rec_other"
					id="rec_other">${applyAd.rec_other }</textarea>
			</div>
			<div class="form-group input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">업무 분야</span>
				</div>
				<select class="form-control" name="rec_category" id="rec_category"
					required>
					<c:forEach items="${c2 }" var="c">
						<option value="${c.cate_no2 }">${c.jobs2 }</option>
					</c:forEach>
				</select>
			</div>
			<div style="margin: auto; width: 10%">
				<input type="submit" class="jmkbtn btn-lg" value="저장">
			</div>
		</form>
	</div>






</section>
<script>
	$("#salary_noinfo").change(function() {
		if (this.checked) {
			$("#rec_salary").prop("disabled", true);
		}
		if (!this.checked) {
			$("#rec_salary").prop("disabled", false);
		}
	});

	$("#rec_enddate").change(function() {
		var eDate = $(this).val();
		var sDate = $("#rec_startdate").val();
		if (Date.parse(eDate) <= Date.parse(sDate)) {
			alert("시작일 이후 날짜를 선택해 주세요");
			$(this).val(null);
		}
	});
	$("#rec_startdate").change(function() {
		var sDate = $(this).val();
		var eDate = $("#rec_enddate").val();
		if (eDate != null && Date.parse(eDate) <= Date.parse(sDate)) {
			alert("종료일 이전 날짜를 선택해 주세요");
			$(this).val(null);
		}
	});

	$(function() {
		const ctg = "${applyAd.rec_category}";
		$("#rec_category").val(ctg);

		const type = "${applyAd.rec_type}";

		if ($("#parttime").val() == type) {
			$("#parttime").attr("checked", true);
		} else if ($("#intern").val() == type) {
			$("#intern").attr("checked", true);
		} else if ($("#contract").val() == type) {
			$("#contract").attr("checked", true);
		} else if ($("#official").val() == type) {
			$("#official").attr("checked", true);
		}
	});
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />