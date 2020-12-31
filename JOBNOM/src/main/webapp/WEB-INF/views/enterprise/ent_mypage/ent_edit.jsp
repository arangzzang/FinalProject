<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<style>
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
<jsp:include page="/WEB-INF/views/enterprise/ent_mypage/ent_common.jsp">
	<jsp:param name="subheader" value=""/>
</jsp:include> 
	<div style="text-align:center;">
		<img src="${path }/resources/enterprise/logo/${commonLogin.memNo }/${enterprise.entLogo}" width="100">
	</div><br>

    
	<div class="container">
		<form action="${path }/com/ent_edit_end.do" method="post" id="editForm" enctype="multipart/form-data">
		<input type="hidden" value="${commonLogin.memNo }" name="entNo" id="entNo">
			<div class="row">
				<div class="col">
	  				<div class="input-group mb-3">
						<div class="input-group-prepend">
		      				<span class="input-group-text">이메일</span>
		    			</div>
						<input type="text" class="form-control" value="${enterprise.entEmail}" name="entEmail" id="entEmail">
	  				</div>
	  				
	  				<div class="input-group mb-3">
						<div class="input-group-prepend">
		      				<span class="input-group-text">기업이름</span>
		    			</div>
						<input type="text" class="form-control" value="${enterprise.entName}" name="entName" id="entName">
	  				</div>
	  				<div class="input-group mb-3">
							<div class="input-group-prepend">
			      				<span class="input-group-text">대표 이름</span>
			    			</div>
							<input type="text" class="form-control" value="${enterprise.repName}" name="repName" id="repName">					
		  				</div>
	  				<div class="input-group mb-3">
							<div class="input-group-prepend">
			      				<span class="input-group-text">1차 산업군</span>
			    			</div>
			    			<select class="form-control" id="entCategory1" name="entCategory1">
			    				<option value="IT/인터넷">IT/인터넷</option>
			    				<option value="금융/재무">금융/재무</option>
			    				<option value="의약">의약</option>
			    				<option value="서비스/고객지원">서비스/고객지원</option>
			    				<option value="마케팅/시장조사">마케팅/시장조사</option>
			    				<option value="교육">교육</option>
			    			</select>
		  				</div>
	  				<div class="input-group mb-3">
						<div class="input-group-prepend">
		      				<span class="input-group-text">사업자등록번호</span>
		    			</div>
						<input type="text" class="form-control" value="${enterprise.entBusinessNo}" name="entBusinessNo" id="entBusinessNo">					
	  				</div>
	  				
				</div>
				<div class="col">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
			      				<span class="input-group-text">비밀번호 변경</span>
		    			</div>
		    				<input type="hidden" value="${enterprise.entPw }" name="entPw" id="entPw">
							<input type="password" class="form-control" placeholder="비밀번호 입력 " name="newPw" id="newPw">
							<!-- <input type="password" class="form-control" placeholder="비밀번호 재입력" name="newPw2" id="newPw2"> -->
	  				</div>
	  				<div class="input-group mb-3 custom-file">
						<input type="file" class="custom-file-input" name="Logo" id="Logo">					
						<label class="custom-file-label" for="customFile">회사로고</label>
					</div>
	  				<div class="input-group mb-3">
						<div class="input-group-prepend">
		      				<span class="input-group-text">대표 전화번호</span>
		    			</div>
						<input type="text" class="form-control" value="${enterprise.repPhone}" name="repPhone" id="repPhone">					
	  				</div>
	  				<div class="input-group mb-3">
						<div class="input-group-prepend">
	      				<span class="input-group-text">2차 산업군</span>
	    			</div>
			    			<select class="form-control" name="entCategory2" id="entCategory2" required>
								<option value="웹계발">웹계발</option>
								<option value="시스템 엔지니어">시스템 엔지니어</option>
								<option value="웹퍼블리셔">웹퍼블리셔</option>
								<option value="기획">기획</option>
								<option value="네트워크/보안/운영">네트워크/보안/운영</option>
								<option value="데이터분석">데이터분석</option>
								<option value="은행관련">은행관련</option>
								<option value="세무/법무">세무/법무</option>
								<option value="경리/출납/수납">경리/출납/수납</option>
								<option value="증권 투자 분석사">증권 투자 분석사</option>
								<option value="보험계리사/손해사정인">보험계리사/손해사정인</option>
								<option value="자산운용가">자산운용가</option>
								<option value="교육기획/교재개발">교육기획/교재개발</option>
								<option value="전문강사">전문강사</option>
								<option value="초중고/특수 교사">초중고/특수 교사</option>
								<option value="대학교수">대학교수</option>
								<option value="교직원">교직원</option>
								<option value="입시/보습/학원강사">입시/보습/학원강사</option>
								<option value="마켓팅">마켓팅</option>
								<option value="브랜드 마켓팅">브랜드 마켓팅</option>
								<option value="시장조사/분석">시장조사/분석</option>
								<option value="상품개발/기획/MD">상품개발/기획/MD</option>
								<option value="온라인 마켓팅">온라인 마켓팅</option>
								<option value="CRM">CRM</option>
								<option value="의사">의사</option>
								<option value="한의사">한의사</option>
								<option value="치과의사">치과의사</option>
								<option value="약사/한약사">약사/한약사</option>
								<option value="간호사">간호사</option>
								<option value="간호조무사">간호조무사</option>
								<option value="고객지원/CS">고객지원/CS</option>
								<option value="호텔/숙박 관련">호텔/숙박 관련</option>
								<option value="웨딩플래너/커플매니저">웨딩플래너/커플매니저</option>
								<option value="외식업/식음료">외식업/식음료</option>
								<option value="뷰티/미용">뷰티/미용</option>
								<option value="여행가이드">여행가이드</option>
							</select>
	 						
		  				</div>
		  				<div class="input-group mb-3">
						<div class="input-group-prepend">
		      				<span class="input-group-text">웹페이지</span>
		    			</div>
						<input type="text" class="form-control" value="${enterprise.entSite}" name="entSite">					
	  				</div>
				</div>
			</div>
			<div class="row">
				<div class="col"></div>
				<div style="text-align:center;" class="col">
			  		<input type="button" class="jmkbtn btn-lg" value="저장" id="save" data-toggle="modal" data-target="#pwCheck">
		  		</div>
		  		<div style="text-align:right;" class="col">
					<button class="jmkbtn btn-lg" id="quit">회원탈퇴</button>
		  		</div>
			</div>
		</form>
	</div>
	<div class="modal fade" id="pwCheck" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog header_md" role="document">
			<div class="modal-content">
				<div class="modal-header">
				   	<h5 class="modal-title" id="staticBackdropLabel">비밀번호 인증</h5>
				   	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				      <span aria-hidden="true">&times;</span>
				   	</button>
				</div>
				<div class="modal-body">
	            	<div class="modal-body">
						<div class="form-group">
							<label for="password">비밀번호:</label>
							<input type="password" class="form-control password" id="lastpw" placeholder="비밀번호를 입력해주세요." name="lastpw" required>
		                 	<button id="submit">submit</button>
						</div>
	              	</div>
				</div>
			</div>
		</div>
	</div>
</section>
<script>
	function applyAd(){
		location.replace("${path }/com/applyAd.do");
	}
	$("#save").click(function(){	
		if($("#newPw").val().length > 1){
			alert($("#newPw").val());
			$("#entPw").val($("#newPw").val());
		}
	});
	$("#quit").click(function(){
		$("#editForm").attr("action", "${path}/com/quit.do");
		alert("잘가요 내사랑");
		$("#save").submit();
	});
	
	$("#submit").click(function(){
		const pw = $("#lastpw").val();
		var result = "";
		$.ajax({
			url:"${path}/com/editPwCheck.do",
			data:{pwc:pw},
			success:data=>{
				result = data;
			if(result == 'correct'){
	 			alert("인증되었습니다"); 
				$("#editForm").submit();			
			}else if(result == 'incorrect'){
				 alert("비밀번호가 틀렸습니다"); 
				}
			}
		})
	});

	$(function(){
		const ctg1 = "${enterprise.entCategory1}";
		$("#entCategory1").val(ctg1);
		const ctg2 = "${enterprise.entCategory2}";
		$("#entCategory2").val(ctg2);
	});
	
	
</script>	
	
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>