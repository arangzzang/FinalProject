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
   <jsp:param name="title" value=" "/>
</jsp:include>
<section id="content">
<jsp:include page="/WEB-INF/views/enterprise/ent_mypage/myCom_info.jsp">
	<jsp:param name="myCom_info" value=""/>
</jsp:include>
<jsp:include page="/WEB-INF/views/enterprise/ent_mypage/ent_common.jsp">
	<jsp:param name="subheader" value=""/>
</jsp:include> 
    
 

<div class="container form-group">
	<h5 class="text-center">공고 올리기</h5>
	<form action="${path}/enterprise/applyAdEnd.do" method="post">
		<input type="hidden" value="${commonLogin.memNo }" name="ent_no" id="ent_no">
		<div class="input-group mb-3">
	    	<div class="input-group-prepend">
	      		<span class="input-group-text">제목</span>
	    	</div>
    		<input type="text" class="form-control" name="rec_title" id="rec_title" required>
  		</div>
  		<div class="input-group mb-3">
  			<div class="input-group-prepend">
  				<span class="input-group-text">내용</span>
  			</div>
	  		<textarea class="form-control" rows="5" name="rec_contents" id="rec_contents" required></textarea>
  		</div>
		<div class="custom-file">
			<input type="file" class="custom-file-input" name="rec_file1" id="rec_file1">
			<label class="custom-file-label" for="customFile">회사 로고</label>
		</div>
		<br><br>
		<div class="custom-file">
			<input type="file" class="custom-file-input" name="rec_file2" id="rec_file2">
			<label class="custom-file-label" for="customFile">Choose file</label>
		</div>
		<br><br>
		<div class="input-group mb-3 inline">
  			<div class="input-group-prepend">
  				<span class="input-group-text">시작일</span>
  			</div>
			<input type="date" class="jmklabel text-center" name="rec_startdate" id="rec_startdate" required>
			&nbsp;&nbsp;
		<div class="input-group-prepend">
  				<span class="input-group-text">종료일</span>
  			</div>
			<input type="date" class="jmklabel text-center" name="rec_enddate" id="rec_enddate" required>
  		</div>
  		<div class="input-group mb-3 inline form-check-inline">
			<div class="input-group-prepend">
	  				<span class="input-group-text">연봉</span>
  			</div>
	  		<input class="jmklabel" type="number" step="500000" name="rec_salary" id="rec_salary" required>
	  		&nbsp;&nbsp;
	  		<label class="form-check-label text-center">
		  		<input type="checkbox" class="form-check-input" id="salary_noinfo">회사 내규에 따름
	  		</label>
  		</div>
  		<div class="input-group mb-3">
  			<div class="input-group-prepend">
  				<span class="input-group-text">주요업무</span>
  			</div>
	  		<textarea class="form-control" rows="5" name="rec_info" id="rec_info" required></textarea>
  		</div>
  		<div class="input-group mb-3">
  			<div class="input-group-prepend">
  				<span class="input-group-text">우대사항</span>
  			</div>
	  		<textarea class="form-control" rows="5" name="rec_prefer" id="rec_prefer"></textarea>
  		</div>
  		<div class="input-group mb-3">
  			<div class="input-group-prepend">
  				<span class="input-group-text">복지</span>
  			</div>
	  		<textarea class="form-control" rows="5" name="rec_welfare" id="rec_welfare"></textarea>
  		</div>
  		<div class="input-group mb-3">
  			<div class="input-group-prepend">
  				<span class="input-group-text">자격요건</span>
  			</div>
	  		<textarea class="form-control" rows="5" name="rec_qualification" id="rec_qualification" required></textarea>
  		</div>
  		<div class="input-group mb-3">
  			<div class="input-group-prepend">
  				<span class="input-group-text">모집인원</span>
  			</div>
	  		<input type="number" class="jmklabel" step="1" name="rec_people" id="rec_people" required>
  			&nbsp;&nbsp;
	  		<div class="input-group-prepend">
  				<span class="input-group-text">경력</span>
  			</div>
  			<input type="number" class="jmklabel" name="rec_career" id="rec_career" required>년 이상
  		</div>
  		<div class="input-group mb-3">
  			<div class="input-group-prepend">
  				<span class="input-group-text">채용절차</span>
  			</div>
	  		<textarea class="form-control" rows="5" name="rec_order" id="rec_order"></textarea>
  		</div>
  		<div class="input-group mb-3">
  			<div class="input-group-prepend">
  				<span class="input-group-text">고용형태</span>
  			</div>
	  		<div class="form-check-inline jmklabel" style="padding:5px;">
	  			<label class="form-check-label">
	  				<input type="radio" class="form-check-input" name="rec_type" id="rec_type" required>알바
	  			</label>
				&nbsp;&nbsp;
	  			<label class="form-check-label">
	  				<input type="radio" class="form-check-input" name="rec_type" id="rec_type">인턴
	  			</label>
	  			&nbsp;&nbsp;
	  			<label class="form-check-label">
	  				<input type="radio" class="form-check-input" name="rec_type" id="rec_type">비정규직
	  			</label>
  				&nbsp;&nbsp;	  			
	  			<label class="form-check-label">
	  				<input type="radio" class="form-check-input" name="rec_type" id="rec_type">정규직
	  			</label>
	  		</div>

  		</div>
  		<div class="input-group mb-3">
  			<div class="input-group-prepend">
  				<span class="input-group-text">기타</span>
  			</div>
	  		<textarea class="form-control" rows="5" id="about" name="rec_other" id="rec_other"></textarea>
  		</div>
  		<div class="form-group">
			<label for="sel1">업무 분야</label>
			<select class="form-control" name="rec_category" id="rec_category" required>
				<option value="1">은행관련</option>
				<option value="2">세무/법무</option>
				<option value="3">경리/출납/수납</option>
				<option value="4">증거 투자 분석사</option>
				<option value="5">보험계리사/손해사정인</option>
				<option value="6">웹계발</option>
				<option value="7">시스템 엔지니어</option>
				<option value="8">웹퍼블리셔</option>
				<option value="9">기획</option>
				<option value="10">네트워크/보안/운영</option>
				<option value="11">데이터분석</option>
				<option value="12">교육기획</option>
				<option value="13">전문강사</option>
				<option value="14">초중고/특수 교사</option>
				<option value="15">대학교수</option>
				<option value="16">교직원</option>
				<option value="17">입시/보습/학원강사</option>
				<option value="18">마켓팅</option>
				<option value="19">브랜트 마켓팅</option>
				<option value="20">시장조사/분석</option>
				<option value="21">상품개발/기획/MD</option>
				<option value="22">온라인 마켓팅</option>
				<option value="23">의사</option>
				<option value="24">한의사</option>
				<option value="25">치과의사</option>
				<option value="26">약사/한약사</option>
				<option value="27">간호사</option>
				<option value="28">간호조무사</option>
				<option value="29">물리치료사</option>
				<option value="30">수의사</option>
				<option value="31">고객지원/CS</option>
				<option value="32">호텔/숙박 관련</option>
				<option value="33">가이드</option>
				<option value="34">외식업/식음료</option>
				<option value="35">기타 서비스직</option>
				<option value="36">경영</option>
			</select>
		</div>
  		<div style="margin:auto; width:10%">
	  		<input type="submit" class="jmkbtn btn-lg" value="공고 올리기">
  		</div>
	</form>
</div>
</section>

<script>
// Add the following code if you want the name of the file appear on select
	$(".custom-file-input").on("change", function() {
	  var fileName = $(this).val().split("\\").pop();
	  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
	});
	$("#salary_noinfo").change(function(){
		if(this.checked){
			$("#rec_salary").prop("disabled", true);			
		}
		if(!this.checked){
			$("#rec_salary").prop("disabled", false);			
		}
	});
	
	
	
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
<script>
	function applyAd(){
		location.replace("${path }/com/applyAd.do");
	}
</script>	
	
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>