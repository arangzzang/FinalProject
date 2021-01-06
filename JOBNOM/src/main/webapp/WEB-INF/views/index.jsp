<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<link rel="stylesheet" href="${path }/resources/css/index.css"/>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=" "/>
</jsp:include>
<jsp:include page="/WEB-INF/views/common/searchbar.jsp">
	<jsp:param name="title" value=" "/>
</jsp:include>

<section>
<!-- 메인페이지 전체 화면 시작 -->
    <div id="contents_warp_new">
        <!-- 오늘의 추천 -->
        <div id="contents" class="contents">
            <div id="mainContents" class="mainContents">
                <div class="top_ty1">
                    <div class="wrap">
                        <div class="top_title_area">
                            <h2 class="title">오늘의 추천</h2>
                        </div>
                    </div>   

                    <!-- 배너 div -->
                    <ul class="grid_masonry_layout swiper-wrapper">
                        <input type="hidden" id="hid_clicked_ad_id" value="0">
                          <li class="grid_item swiper-slide mtp_w2">
                            <div class="item-content">
                              <a class="jply_grid_masonry_card" href="#" >
                                <div class="img_thumb">
                                  <img alt="이미지" src="${path }/resources/enterprise/logo/${rndList[0].ENT_NO}/${rndList[0].ENT_LOGO }" class="thumbs_img" style="background-image:url('https://jpassets.jobplanet.co.kr/production/uploads/cms/commercial/ad/today_pick_image_type_c/834/%EB%B0%B0%EB%84%88%EB%B3%B4%EB%93%9C_c%ED%83%80%EC%9E%85.png')">
                                </div>
                                <div class="text_wrap">
                                  <div class="text_box">
                                    <span class="sub_title" style="color: #fff;">${rndList[0].ENT_NAME }</span>
                                    <h3 class="title" style="color: #fff;">${rndList[0].BANN_TITLE }</h3>
                                  </div>
                                </div>
                                </a>            
                            </div>
                          </li>
                          <li class="grid_item swiper-slide mtp_h2">
                            <div class="item-content">
                              <a class="jply_grid_masonry_card" href="#" >
                                <div class="img_thumb">
                                  <img alt="이미지" src="${path }/resources/enterprise/logo/${rndList[1].ENT_NO}/${rndList[1].ENT_LOGO }" class="thumbs_img" >
                                </div>
                                <div class="text_wrap">
                                  <div class="text_box">
                                    <span class="sub_title" style="color: #fff;">${rndList[1].ENT_NAME }</span>
                                    <h3 class="title" style="color: #fff;">${rndList[1].BANN_TITLE }</h3>
                                  </div>
                                </div>
                                </a>            
                            </div>
                          </li>
                          <li class="grid_item swiper-slide mtp_w3 ">
                            <div class="item-content">
                              <a class="jply_grid_masonry_card" href="#" >
                                <div class="img_thumb">
                                  <img alt="이미지" src="#" style="background-image:url('https://jpassets.jobplanet.co.kr/production/uploads/cms/commercial/ad/today_pick_image_type_a/833/%EB%B0%B0%EB%84%88%EB%B3%B4%EB%93%9C_a%ED%83%80%EC%9E%85.png')">
                                </div>
                                <div class="text_wrap">
                                  <div class="text_box">
                                    <span class="sub_title" style="color: #fff;">${rndList[2].ENT_NAME }</span>
                                    <h3 class="title" style="color: #fff;">${rndList[2].BANN_TITLE }</h3>
                                  </div>
                                </div>
                                </a>            
                            </div>
                          </li>
                          <li class="grid_item swiper-slide mtp_w4 ">
                            <div class="item-content">
                              <a class="jply_grid_masonry_card" href="#" >
                                <div class="img_thumb">
                                  <img src="#" class="thumbs_img" style="background-image:url('https://jpassets.jobplanet.co.kr/production/uploads/cms/commercial/ad/today_pick_image_type_a/833/%EB%B0%B0%EB%84%88%EB%B3%B4%EB%93%9C_a%ED%83%80%EC%9E%85.png')">
                                </div>
                                <div class="text_wrap">
                                  <div class="text_box">
                                    <span class="sub_title" style="color: #fff;">${rndList[3].ENT_NAME }</span>
                                    <h3 class="title" style="color: #fff;">${rndList[3].BANN_TITLE }</h3>
                                  </div>
                                </div>
                                </a>            
                            </div>
                          </li>
                      </ul>
                    <!-- 배너 div 끝 -->

                    <!-- 기업페이지, 리뷰페이지 이동 div -->
                    		<div>
                            <a class="jp_content_banner_item jply_content_card" href="${path }/Hire/HireAnnouncement.do" >
                              <h3 >더 많은 채용을 확인해 보세요!</h3>
                            </a> 
                            </div>
                            <a class="jp_content_banner_item jply_content_card" href="#" src="#">
                              <h3 >좀 더 자세한 리뷰가 궁금하다면?</h3>
                            </a>      
                    <!-- 기업페이지 , 리뷰페이지 이동 div 끝 -->

                    <!-- 리뷰 div -->
                    <div class="jbnd_top_ty1">
                        <div class="wrap">
                          <div class="top_title_area f_left">
                            <span class="sub_title_g500">전∙현직자가 직접 평가한</span>
                            <h2 class="title">"사내문화가 좋은 기업"</h2>
                          </div>
                          <div class="top_button_area f_right">
                          </div>
                        </div>
                      </div>
                    <div class="main_review_panel">
                        <div class="wrap">
                            <ul class="grid_col grid_col_list_margin flex_row_wrap">
                      		<c:forEach items="${list}" var="list">
                                <li class="grid_item col_6">
                                  <div class="company_unit">
                                    <a href="" class="company_unit_link" >
                                      <div class="company_unit_thumb">
                                      	<c:choose>
                                      	<c:when test="${empty list.ENT_LOGO }">
                                        <a onclick="location.href = '${path }/enterprise/com_info.do?entNo=${list.ENT_NO}'">
                                        <img src="https://jpassets.jobplanet.co.kr/assets/default_logo_share-12e4cb8f87fe87d4c2316feb4cb33f42d7f7584f2548350d6a42e47688a00bd0.png">
										</a>
										</c:when>
										<c:when test="${not empty list.ENT_LOGO }">
										<a onclick="location.href = '${path }/enterprise/com_info.do?entNo=${list.ENT_NO}'">
										<img src="${path }/resources/enterprise/logo/${list.ENT_NO}/${list.ENT_LOGO }">
										</a>
										</c:when>
										</c:choose>                                      
                                      </div>
                                      <a onclick="location.href = '${path }/enterprise/com_info.do?entNo=${list.ENT_NO}'">
                                      <span class="company_unit_text">${list.ENT_NAME }</span>
                                      </a>
                                    </a>
                                  </div>
                                  <div class="content_card_ty2">
                                    <div class="comp_body">
                                      <div class="content_box">
                                        <div class="top_box">
                                        <span class="jply_icon jp-quote"></span>
                                        <h3 class="title">
                                          	${list.REVIEW_TITLE }
                                        </h3>
                                        </div>
                                        <div class="about_company">
                                          <div class="info">
                                            <span class="info_item">${list.ENT_CATEGORY1}</span>
                                            <span class="dot">·</span>
                                            <span class="info_item">전/현직</span>
                                            <span class="dot">·</span>
                                            <span class="info_item">${list.RE_ENROLL_DATE}</span>
                                          </div>
                                        </div>
                                        <div class="company_star">
                                          <div class="company_star_average">${list.AVG }</div><!--평균평점 넣기  -->
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </li>
                    			</c:forEach>
                            </ul>
                          </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 리뷰 끝 -->
</section>    
    <!--평균평점 별점 스크립트  -->
   	<script>
		let avg = parseFloat($('.company_star_average').text());
		let total = avg*20
		
		$('.company_star_average').css('width',total+'%');
	</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>