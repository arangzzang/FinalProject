<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<link rel="stylesheet"
	href="${path }/resources/css/search/searchResultList.css" />
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=" " />
</jsp:include>
<!-- 기업 검색 결과 리스트 -->
<div id="contents_wrap">
	<div id="mainContents" class="mainContents">
		<div class="result_company">
			<div class="result_hd"></div>
			<div class="result_job_section">
				<span class="tit_txt">기업</span> 
				<a href="${path }/search/searchResultMore.do" class="btn_moretxt_aw">기업더보기</a>
			</div>
				
				<!-- 검색 기업 없을시 -->
				<c:if test="${empty list }">
					<div class="no_company_card">
						<h1 class="no_card_tit">
							찾으시는 기업이 없나요?<br>근무경험이 있으시면, 첫 리뷰를 작성해주세요.
						</h1>
						<a
							href="javascript:desktop_review_form_generator_v1({_fun: 'write@federated_search'});"
							class="btn_rnd btn_rnd_green">
							<span class="txt">기업리뷰작성</span>
						</a>
					</div>
				</c:if>
			</div>
			<div class="result_company_card">
				<div class="is_company_card">
				<c:forEach items="${list }" var="list">
					<div class="result_card ">
						<span class="llogo"> 
							<a href=""> 
							<img src="${list.ENT_LOGO }" alt="">
							</a>
						</span>
						<a href="#" onclick="location.href = '${path }/enterprise/com_info.do?entNo=${list.ENT_NO}'" class="tit" >
						<span >${list.ENT_NAME }</span>
						</a>
					   <span class="tit_sub">${list.ENT_CATEGORY1 }</span>
					   <span class="rate_ty02">${list.AVG }</span> 
					   <span class="tag">
					   <img src="https://jpassets.jobplanet.co.kr/production/uploads/email_medium/media/ic_badge_recruit.png"alt="채용">
					   </span>
					</div>
				</c:forEach>
	</div>
</div>

<!-- 채용공고 검색결과 -->
<div class="result_entry">
	<div class="result_hd">
		<span class="tit_txt">채용 공고</span>
		 <a href="${path }/Hire/HireAnnouncement.do"class="btn_moretxt_aw">채용공고 더보기</a>
	</div>
	<c:if test="${empty list2 }">
		<div class="no_REC_card">
			<h2 class="no_card_tit">
				채용 검색 결과가 없습니다.
			</h2>
		</div>
	</c:if>
	<!-- 공고 있을시 -->
	<div class="is_result">
		<div class="result_unit_group">
			<!-- for문 돌릴 곳 -->
			<c:forEach items="${list2 }" var="list2">
				<div class="result_unit">
					<div class="result_unit_con">
						<span class="llogo"> 
							<a href="#"onclick="location.href = '${path }/enterprise/com_info.do?entNo=${list2.ENT_NO}'"> ${list2.ENT_LOGO } </a>
						</span>
						<div class="result_unit_info">
							<div class="unit_head">
								<a class="posting_name" href="#"onclick="location.href = '${path }/Hire/annoHomeDetailMove.do?recNo=${list2.REC_NO}'"> ${list2.REC_TITLE } </a> 
								<span class="d_day green">${list2.REC_TYPE }</span>
							</div>
							<div class="data_builtin">
								<div class="company_set ui_pop_comp">
									<p class="company_name">
										<button class="btn_open" name="btn_open">${list2.ENT_NAME }</button>
									</p>
									<!--회사명 클릭시 드롭다운 -->
									<div class="detail_layer ui_pop_area">
										<p class="compay_name">
											<button class="btn_close">${list2.ENT_NAME }</button>
										</p>
										<ul class="detail_ul_layer">
											<li><a href="#"onclick="location.href = '${path }/enterprise/com_info.do?entNo=${list2.ENT_NO}'">기업정보</a></li>
											<li><a href="#">기업리뷰</a></li>
											<li><a href="#">면접정보</a></li>
										</ul>
									</div>
								</div>
								<!-- 평점 , 연봉 보여주기 -->
								<div class="data_set">
									<a class="rate" href="#"> <em>${list2.AVG }</em>
									</a> <span class="bar_txt">|</span> <a class="salary" href="#">
										급여 <em>${list2.REC_SALARY }</em>
									</a> <span class="bar_txt">|</span>
								</div>
							</div>
							<!-- 채용 상세 보기 -->
							<div class="ui_fold_comp closed">
								<div class="result_labels">
									<span class="ico_tag">※</span> 
									<span class="tags">${list2.REC_QUALIFICATION }</span> 
									<span class="tags">${list2.REC_CAREER }년차이상</span> 
									<span class="tags">${list2.ENT_CATEGORY1 }</span> 
									<span class="tags">${list2.REC_TYPE }</span>
									<button class="btn_fold more">더보기</button>
									<button class="btn_fold1 close" style="display: none;"  >접기</button>
								</div>
							</div>
							<!-- 더보기 클릭시 보여주기 -->
							<div class="info_show_section ui_fold_area"style="display: none;">
								<div class="posting_content">
									<div class="posting_txt">
										<h3 class="p_title">주요 업무 내용</h3>
										<div class="p_article">${list2.REC_INFO }</div>
										<h3 class="p_title">기타</h3>
										<div class="p_article">${list2.REC_OTHER }</div>
									</div>
								</div>
							</div>
							<!-- 저장 버튼 -->
							<div class="btn_save_set">
								<button class="btn_round btn_save" id="btn_save" onclick="fn_toggle()">
									<i class="far fa-bookmark"></i> <a href="#"onclick="location.href = '${path }/search/recFav.do?recNo=${list2.REC_NO}&memNo=${commonLogin.memNo}'">저장</a>
								</button>
								<button class="btn_round btn_saved" id="btn_saved"onclick="fn_toggle() return false;">
									<i class="fas fa-bookmark"></i><a href="#"onclick="location.href = '${path }/search/recFavDelete.do?recNo=${list2.REC_NO}&memNo=${commonLogin.memNo}'">저장됨</a>
								</button>
							</div>
						</div>
					</div>
				</div>
				</c:forEach>
		</div>
	</div>
</div>
</div>
</div>
<!-- company_name 클릭시 이벤트 -->
<script>
	 $('.btn_open').on('click', function() {
	        	 $(this).parent().next().show();
	     });
	 $('.btn_close').on('click', function() {
	             $(this).parent().parent().hide();
	         
	     });
</script>
<!-- company_name 클릭시 이벤트 -->
<!-- 더보기 클릭시 보여주기 -->
<script>
        $('.btn_fold.more').on('click',function(){
        	 $(this).parent().parent().next().show();
        	 $(this).hide();
        	 $(this).next().show();
        });

        $('.close').on('click',function() {
        	 $(this).parent().parent().next().hide();
        	 $(this).hide();
        	 $(this).prev().show();
            
        });
</script>
<!-- 더보기 클릭시 보여주기 끝 -->
<!--저장버튼 클릭 이벤트  -->
<script>

		if(${commonLogin.memNo == null}){
			$(".btn_save_set").hide();
		}else{
			$(".btn_save_set").show();
		};
	
               $('#btn_save').on('click',function() {
            	   
            		   
	                   $(this).hide();
	                   $(this).next().show();
            	   
               });
               $('#btn_saved').on('click',function() {
                   $(this).hide();
                   $(this).prev().show();
               });

</script>
<!--저장 버튼 클릭 이벤트 끝  -->

<jsp:include page="/WEB-INF/views/common/footer.jsp" />
