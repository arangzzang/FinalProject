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
                                  <img alt="이미지" src="#" class="thumbs_img" style="background-image:url('https://jpassets.jobplanet.co.kr/production/uploads/cms/commercial/ad/today_pick_image_type_c/834/%EB%B0%B0%EB%84%88%EB%B3%B4%EB%93%9C_c%ED%83%80%EC%9E%85.png')">
                                </div>
                                <div class="text_wrap">
                                  <div class="text_box">
                                    <span class="sub_title" style="color: #fff;">회사명</span>
                                    <h3 class="title" style="color: #fff;">회사특징<br>회사특징</h3>
                                  </div>
                                </div>
                                </a>            
                            </div>
                          </li>
                          <li class="grid_item swiper-slide mtp_h2">
                            <div class="item-content">
                              <a class="jply_grid_masonry_card" href="#" >
                                <div class="img_thumb">
                                  <img alt="이미지" src="#" class="thumbs_img" style="background-image:url('https://jpassets.jobplanet.co.kr/production/uploads/cms/commercial/ad/today_pick_image_type_b/832/%EB%B0%B0%EB%84%88%EB%B3%B4%EB%93%9C_b%ED%83%80%EC%9E%85.png')">
                                </div>
                                <div class="text_wrap">
                                  <div class="text_box">
                                    <span class="sub_title" style="color: #fff;">회사명</span>
                                    <h3 class="title" style="color: #fff;">회사특징<br>회사특징</h3>
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
                                    <span class="sub_title" style="color: #fff;">회사명</span>
                                    <h3 class="title" style="color: #fff;">회사특징<br>회사특징</h3>
                                  </div>
                                </div>
                                </a>            
                            </div>
                          </li>
                          <li class="grid_item swiper-slide mtp_w4 ">
                            <div class="item-content">
                              <a class="jply_grid_masonry_card" href="#" >
                                <div class="img_thumb">
                                  <img alt="이미지" src="#" class="thumbs_img" style="background-image:url('https://jpassets.jobplanet.co.kr/production/uploads/cms/commercial/ad/today_pick_image_type_a/833/%EB%B0%B0%EB%84%88%EB%B3%B4%EB%93%9C_a%ED%83%80%EC%9E%85.png')">
                                </div>
                                <div class="text_wrap">
                                  <div class="text_box">
                                    <span class="sub_title" style="color: #fff;">회사명</span>
                                    <h3 class="title" style="color: #fff;">회사특징<br>회사특징</h3>
                                  </div>
                                </div>
                                </a>            
                            </div>
                          </li>
                      </ul>
                    <!-- 배너 div 끝 -->

                    <!-- 기업페이지, 리뷰페이지 이동 div -->
                    <div class="jply_con_panel jply_jp_content_banner">
                      <div class="wrap">
                        <ul class="grid_col flex_row_wrap">
                          <li class="grid_item col_6" >
                            <a class="jp_content_banner_item jply_content_card" href="#" src=# >
                              <h3 >더 많은 채용을 확인해 보세요!</h3>
                            </a>      
                          </li>
                          <li class="grid_item col_6">
                            <a class="jp_content_banner_item jply_content_card" href="#" src="#">
                              <h3 >좀 더 자세한 리뷰가 궁금하다면?</h3>
                            </a>      
                          </li>
                        
                        </ul>
                      </div>
                    </div>
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
                                <li class="grid_item col_6">
                                  <div class="company_unit">
                                    <a href="" class="company_unit_link" >
                                      <div class="company_unit_thumb">
                                        <img src="https://jpassets.jobplanet.co.kr/assets/default_logo_share-12e4cb8f87fe87d4c2316feb4cb33f42d7f7584f2548350d6a42e47688a00bd0.png" alt="기업 로고">
                                      </div>
                                      <span class="company_unit_text">회사명</span>
                                    </a>
                                  </div>
                                  <div class="content_card_ty2">
                                    <div class="comp_body">
                                      <div class="content_box">
                                        <div class="top_box">
                                        <span class="icon jp-quote"></span>
                                        </div>
                                        <h3 class="title">
                                          	리뷰 타이틀
                                        </h3>
                                        <div class="about_company">
                                          <div class="info">
                                            <span class="info_item">직무</span>
                                            <span class="dot">·</span>
                                            <span class="info_item">전/현직</span>
                                            <span class="dot">·</span>
                                            <span class="info_item">지역</span>
                                            <span class="dot">·</span>
                                            <span class="info_item">작성일</span>
                                          </div>
                                        </div>
                                        <div class="company_star">
                                          <div class="company_star_average">2</div><!--평균평점 넣기  -->
                                        </div>
                                      </div>
                                    </div>
                                    <div class="comp_bottom">
                                      <div class="button_group">
                                        <a href="" class="comp_review">#개의 전∙현직자 리뷰</a>
                                      </div>
                                    </div>
                                  </div>
                                </li>
                            </ul>
                          </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 리뷰 끝 -->
    
    <!--평균평점 별점 스크립트  -->
   	<script>
		let avg = parseFloat($('.company_star_average').text());
		let total = avg*20
		
		$('.company_star_average').css('width',total+'%');
	</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>