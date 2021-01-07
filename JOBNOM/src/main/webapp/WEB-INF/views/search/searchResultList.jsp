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
						<h2 class="no_card_tit">
							찾으시는 기업이 없습니다
						</h2>
					</div>
				</c:if>
			</div>
			<div class="result_company_card">
				<div class="is_company_card">
				<c:forEach items="${list }" var="list" varStatus="status">
					<div class="result_card ">
						<span class="llogo"> 
							<a href="#" onclick="location.href = '${path }/enterprise/com_info.do?entNo=${list.ENT_NO}&seq=${api[status.index].seq }'"> 
							<img src="${path }/resources/enterprise/logo/${list.ENT_NO}/${list.ENT_LOGO }">
							</a>
						</span>
						<a href="#" onclick="location.href = '${path }/enterprise/com_info.do?entNo=${list.ENT_NO}&seq=${api[status.index].seq }'" class="tit" >
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
			<c:forEach items="${list2 }" var="list2" varStatus="status">
				<div class="result_unit">
					<div class="result_unit_con">
						<span class="llogo"> 
							<a href="#"onclick="location.href = '${path }/enterprise/com_info.do?entNo=${list2.ENT_NO}&seq=${api[status.index].seq }'">
							<img src="${path }/resources/enterprise/logo/${list2.ENT_NO}/${list2.ENT_LOGO }">
							</a>
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
											<li><a href="#"onclick="location.href = '${path }/enterprise/com_info.do?entNo=${list2.ENT_NO}&seq=${api[status.index].seq }'">기업정보</a></li>
											<li><a href="${path }/enterprise/com_review.do?entNo=${list2.ENT_NO}">기업리뷰</a></li>
											<li><a href="#">면접정보</a></li>
										</ul>
									</div>
								</div>
								<!-- 평점 , 연봉 보여주기 -->
								<div class="data_set">
									<a class="rate" href="${path }/enterprise/com_review.do?entNo=${list2.ENT_NO}"> 
										<em>${list2.AVG }</em>
									</a> 
									<span class="bar_txt">|</span> 
									<a class="salary" href="#"onclick="location.href = '${path }/enterprise/com_info.do?entNo=${list2.ENT_NO}&seq=${api[status.index].seq }'">
										<c:if test="${list2.REC_SALARY eq '회사내규에 따름'}">
											<em>회사내규에 따름</em>
										</c:if>
										<c:if test="${list2.REC_SALARY ne '회사내규에 따름'}">
											연봉 
											<em><fmt:formatNumber value="${list2.REC_SALARY }"  pattern="#,###"/>원</em>
										</c:if>
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
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
