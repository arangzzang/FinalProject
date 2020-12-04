<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<link rel="stylesheet" href="${path }/resources/css/myProfile.css"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=" "/>
</jsp:include>
<section id="content">

	<div class="memberinfo-parent ">
	    <div class="jumbotron row memberinfo" id="memberinfo">
	        <div class="col-md-3 col-offset-3">
	            <img src="" alt="">
	        </div>
	        <div class="col-md-6">
	            <p>조현</p>
	            <p>취준생</p>
	            <p>IT취업하고싶다</p>
	        </div>
	    </div>
	</div>
	<div class="MPheadmenu-parent">
	    <nav class="navbar navbar-expand-sm  navbar-light MPheadmenu">
	        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
	        <span class="navbar-toggler-icon"></span>
	        </button>
	        <div class="collapse navbar-collapse" id="collapsibleNavbar">
	            <ul class="navbar-nav headbar">
	                <li class="nav-item sidebarmenubar">
	                    <button type="button" class="navbtn">계정</button>
	                </li>
	                <li class="nav-item sidebarmenubar">
	                    <button type="button" class="navbtn">이력서</button>
	                </li>
	                <li class="nav-item sidebarmenubar">
	                    <button type="button" class="navbtn">활동내역</button>
	                </li>
	                <li class="nav-item sidebarmenubar">
	                    <button type="button" class="navbtn">관심정보</button>
	                </li>
	                <li class="nav-item sidebarmenubar">
	                    <button type="button" class="navbtn">멤버십</button>
	                </li>    
	            </ul>
	        </div>  
	    </nav>
	</div>

    <div class="with-parent">
		<div class="with" style="padding-bottom: 50px;">
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<form action="" method="POST" onsubmit="return required();">
				<div class="profilebody">  
					<div class="container">
						<div class="row">
							<div class="col-md-4">
								<h2>
									<span>나의 이력서(필수)</span>
									<i></i>
								</h2>
							</div>
						</div>
						<input type="hidden" value="이력서넘버">
						<input type="hidden" value="이메일">
						<div class="row">
							<div class="col-md-6">
								<input type="text" id="memName" class="input1" placeholder="이름을 작성해주세요." required>
							</div>
							<div class="col-md-6">
								<input type="text" id="memTel" class="input1" placeholder="번호를 작성해주세요." required>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<span class="span1">성별</span>
								<label for="memGender-M">남자</label>
								<input type="checkbox" class="aaa" onclick="genderCheck(this);" aria-required="false" id="memGender-M" >
								<label for="memGender-F">여자</label>
								<input type="checkbox" class="aaa" onclick="genderCheck(this);" aria-required="false" id="memGender-F" >
							</div>
							<div class="col-md-6">
								<span class="span1">출생연도</span>
								<input type="date" id="memBirth" class="input1" required>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<span class="span2">현재(관심)직종</span>
								<div class="flex">
									<select class="input1 mem_category col-md-6" id="mem_category" name="memCategory1" required>
										<option value="">기타</option>
										<option value="IT">IT</option>
										<option value="금융/재무">금융/재무</option>
										<option value="교육">교육</option>
										<option value="마케팅">마케팅</option>
										<option value="의약">의약</option>
										<option value="서비스/고객지원">서비스/고객지원</option>
									</select>
									<select class="input1 mem_category2 col-md-6" id="mem_category2" name="memCategory2" required>
										<option value="none">기타</option>
									</select>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<span class="line">
									<label for="currial" class="span2">경력</label>
									<select name="" id="currial" class="input1" required>
										<option value="">선택해주세요</option>
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
									</select>
									<label for="comment" class="span2">업무 및 스킬</label>
									<textarea class="form-control inp" rows="1" id="comment" placeholder="(예시) 영업기획, 디지털마케팅,UI디자인(업무와 관련된 자격증 및 기술명 포함)" required></textarea>
									
									<!-- <ul>
										<li><a href=""></a></li>
										<li><a href=""></a></li>
										<li><a href=""></a></li>
										<li><a href=""></a></li>
										<li><a href=""></a></li>
										<li><a href=""></a></li>
									</ul>  -->
									<span>
										내가 선택한 키워드
										<span>
											닫기버튼
										</span>
									</span>
							
								</span>
							</div>
						</div>
						<div class="row">
							<div class="col-12 col-md-12">
								<label for="commented" class="span2">자기소개</label><br>
								<textarea class="form-control inp" rows="5" id="commented" placeholder="경력,경험위추의 자기소개를 작성해주세요. 관심분야, 앞으로의 목표등의 내용도 좋습니다"></textarea>
							</div>
						</div>
					</div>
				</div>
				<br>
				<div class="profilebody"> 
					<div class="container">
						<!-- 학력사항 -->
						<div class="row edu">
							<div class="col-12 col-md-12 nth">
								<span class="span2 pd">학력사항</span>
								<div id="element1">
									<div class="col-4 col-md-4" id="element2">
										<div class="dateelement">
											<input type="date" class="dateinput" >&nbsp;~&nbsp;
											<input type="date" class="dateinput" >
										</div>
										<label for="goal">졸업</label>
										<input type="checkbox" id="goal">
										<label for="end">중퇴</label>
										<input type="checkbox" id="end">
										<label for="ing">재학중</label>
										<input type="checkbox" id="ing">
									</div>
									<div class=" col-8 col-md-8">
										<div>
											<input type="text" name="" class="col-md-12 inp" placeholder="학교명을 입력해주세요">
											<!-- 
											<div>
												<ul>
													<li><a href=""></a></li>
													<li><a href=""></a></li>
													<li><a href=""></a></li>
													<li><a href=""></a></li>
													<li><a href=""></a></li>
													<li><a href=""></a></li>
												</ul>
											</div>  
											-->
											<input type="text" name="" class="col-md-12 inp" placeholder="전공 및 학위">
											<textarea name=""  cols="30" class="form-control col-md-12 inp" placeholder="학력사항 내용" rows="10"></textarea>
										</div>
										<button class="float"><i>휴지통아이콘</i></button>
									</div>
								</div>
								<div>
									<button>학력추가</button>
								</div>
							</div>
						</div>
						<!-- 활동 및 수상내역 -->
						<div class="row awa">
							<div class="col-12 col-md-12">
								<span class="span2" >활동 및 수상내역</span>
								<div id="element1">
									<div class="col-4 col-md-4">
										<div class="dateelement">
											<input type="date" class="dateinput inp" placeholder="년/월">&nbsp;~&nbsp;
											<input type="date" class="dateinput inp" placeholder="년/월">
										</div>
										<label for="prize">수상</label>
										<input type="checkbox" id="prize">
									</div>
									<div class=" col-8 col-md-8">
										<div>
											<input type="text" class="col-md-12 inp" placeholder="활동 및 수상 명을 입력해주세요">
											<textarea name="" class="form-control col-md-12 inp" cols="30" rows="10"></textarea>
										</div>
										<button class="float"><i>휴지통아이콘</i></button>
									</div>
								</div>
								<div>
									<button>활동/수상내역 추가</button>
								</div>
							</div>
						</div>
						<!-- 경력사항 -->
						<div class="row car">
							<div class="col-12 col-md-12">
								<span class="span2" >경력 사항</span>
								<div id="element1">
									<div class="col-4 col-md-4">
										<div class="dateelement">
											<input type="date" class="dateinput" placeholder="년/월">&nbsp;~&nbsp;
											<input type="date" class="dateinput" placeholder="년/월">
										</div>
										<label for="Incumbent">재직중</label>
										<input type="checkbox" id="Incumbent">
										<label for="Leaves">퇴사</label>
										<input type="checkbox" id="Leaves">
									</div>
									<div class=" col-8 col-md-8">
										<input type="text" class="col-md-12 inp" placeholder="기업명">
										<!-- <div>
											<ul>
												<li><a href=""></a></li>
												<li><a href=""></a></li>
												<li><a href=""></a></li>
												<li><a href=""></a></li>
												<li><a href=""></a></li>
												<li><a href=""></a></li>
											</ul> 
										</div> -->
										<div class="element1" style="display: flex;">
											<input type="text" class="col-md-6 inp" placeholder="부서">
											<input type="text" class="col-md-6 inp" placeholder="직책">
										</div>
										<input type="text" class="col-md-12 inp"  placeholder="직무">
									<!-- <div>
										<ul>
											<li><a href=""></a></li>
											<li><a href=""></a></li>
											<li><a href=""></a></li>
											<li><a href=""></a></li>
											<li><a href=""></a></li>
											<li><a href=""></a></li>
										</ul> 
									</div> -->
										<textarea name="" class="form-control col-md-12 inp" placeholder="업무경험을 적어주세요" cols="30" rows="10"></textarea>
										<button class="float"><i>휴지통아이콘</i></button>
									</div>
								</div>
								<div>
									<button>경력 추가</button>
								</div>
							</div>
						</div>
						<!-- 자격증 및 기타 -->
						<div class="row cer">
							<div class="col-md-12">
								<span class="span2" >자격증 및 기타</span>
								<div id="emt">
									<input type="text" class="col-md-12 inp"  placeholder="항목(자격증,언어,스킬 등 자유롭게 기재)">
									<textarea name="" class="form-control col-md-12 inp" placeholder="자세하게 입력해주세요" cols="30" rows="10"></textarea>
									<button class="float"><i>휴지통아이콘</i></button>
								</div>
							</div>
							<div>
								<button>자격증 추가</button>
							</div>
						</div>
						<!-- 공개 미공개 여부 -->
						<div class="row pofol">
							<span class="span2" >포트폴리오 파일 첨부 - 다운로드한 PDF에는 포트폴리오 파일이 제외됩니다.</span>
							<div class="col-12 col-md-12 pd" id="emt">
								<input type="file">
							</div>
							<div>
								<button>파일 추가</button>
							</div>
						</div>
						<div class="row">
							<div class="col-3">
								<label for="yes">공개</label>
								<input type="checkbox" id="yes">
								<label for="no">미공개</label>
								<input type="checkbox" id="no">
							</div>
						</div>
					</div>
				</div>
				<div class="submitTag">
					<input type="submit" onclick="required()" value="저장완료">
				</div>
			</form>
	    </div>
	</div>

	<script>
		function required(){

		}

		function genderCheck(chk){
			var gender = document.getElementsByClassName("aaa");
			for(var i=0; i<gender.length; i++){
				if(gender[i] != chk){
					gender[i].checked = false;
				}
			}
		}
		

		//select box 값 바꾸기
		$(function(){
		//회원
		console.log( $(".mem_category").val());
		$(".mem_category2").hide();
		$(".mem_category").change(e=>{
			$(".mem_category2").show();
			console.log($(e.target).val());
			let job1 = $(e.target).val()
			let car1 = ["웹개발", "시스템엔지니어", "웹퍼블리셔", "기획","네트워크/보안/운영","데이터분석"];
			let car2 = ["은행원", "세무사", "경리/출납/수납", "증권/투자분석가","보험계리사/손해사정인"];
			let car3 = ["교육기획/교재개발", "전문강사", "초중고/특수교사", "대학교수", "교직원","입시/복습/학원강사","전문강사"];
			let car4 = ["마케팅","브랜드마케팅","시장조사/분석","상품개발/기획/MD","온라인마케팅","CRM"];
			let car5 = ["의사","한의사","치과의사","약사/한약사","간호사","간호조무사","물리치료사","수의사"];
			let car6 = ["고객지원/CS","호텔/숙박관련/여행가이드","웨딩플래너/커플매니저","외식업/식음료","기타서비스직","뷰티/미용"];
			let target = document.getElementById("mem_category2")

			if(job1 == "IT") var values = car1;
			else if (job1 == "금융/재무") values = car2;
			else if (job1 == "교육") values = car3;
			else if (job1 == "마케팅") values = car4;
			else if (job1 == "의약") values = car5;
			else if (job1 == "서비스/고객지원") values = car6;
			else if (job1 == "") $(".mem_category2").hide();
			
			console.log(target.options.length)
			target.options.length = 0;

			for (i in values) {
				var opt = document.createElement("option");
				opt.value = values[i];
				opt.innerHTML = values[i];
				target.appendChild(opt);
			}
			console.log(target.value);
			console.log(typeof $(".mem_category option:selected").val());
			
		});
	});
	//select box 값 변경시 두번째 selectbox 값 입력창 보이기
	

	</script>

</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>