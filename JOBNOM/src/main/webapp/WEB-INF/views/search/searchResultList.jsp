<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var= "path" value="${pageContext.request.contextPath }"/>

<link rel="stylesheet" href="${path }/resources/css/search/searchResultList.css"/>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=" "/>
</jsp:include>
<!-- 기업 검색 결과 리스트 -->
    <div id="contents_wrap">
        <div id="mainContents" class="mainContents">
            <div class="result_company">
                <div class="result_hd">
                    <div class="result_job_section">
                        <span class="tit_txt">기업</span>
                        <a href="${path }/search/searchResultMore.do" class="btn_moretxt_aw">기업 더보기</a>
                    </div>
                </div>
                <div class="result_company_card">
                    <div class="is_company_card">
                          <div class="result_card ">
                            <span class="llogo">
                              <a href="#">
                                  <img src="#" alt="#">
                              </a>
                            </span>
                            <a href="" class="tit">회사명</a>
                                <span class="tit_sub">제조/화학</span>
                                <span class="rate_ty02">3.7</span>
                                <span class="tag"><img src="https://jpassets.jobplanet.co.kr/production/uploads/email_medium/media/ic_badge_recruit.png" alt="채용"></span>
                          </div>
                    </div>
                    <!-- 검색 기업 없을시 -->
                  <!-- <div class="no_company_card">
                    <h1 class="no_card_tit">찾으시는 기업이 없나요?<br>근무경험이 있으시면, 첫 리뷰를 작성해주세요.</h1>
                      <a href="javascript:desktop_review_form_generator_v1({_fun: 'write@federated_search'});" class="btn_rnd btn_rnd_green"><span class="txt">기업리뷰 작성</span></a>
                  </div> -->
                </div>
            </div>
            <!-- 채용공고 검색결과 -->
            <div class="result_entry">
                <div class="result_hd">
                    <span class="tit_txt">채용 공고</span>
                    <a href="/job/search?_rs_act=index&amp;_rs_con=search&amp;_rs_element=see_more_job_postings_top&amp;q=%EC%82%BC%EC%84%B1" data-no-turbolink="true" class="btn_moretxt_aw">채용공고 더보기</a>
                  </div>
                <!-- 공고 있을시 -->
                <div class="is_result">
                    <div class="result_unit_group">
                        <!-- for문 돌릴 곳 -->
                        <div class="result_unit">
                            <div class="result_unit_con">
                                <span class="llogo">
                                    <a href="#">
                                       	 로고사진
                                    </a>
                                </span>
                                <div class="result_unit_info">
                                    <div class="unit_head">
                                        <a  class="posting_name" href="">
                                          	  공고 제목
                                        </a>
                                        <span class="d_day green">공고유형</span>
                                    </div>
                                    <div class="data_builtin">
                                        <div class="company_set ui_pop_comp">
                                            <p class="company_name">
                                                <button class="btn_open" name="btn_open">
                                                  	  회사명
                                                </button>
                                            </p>
                                            <!--회사명 클릭시 드롭다운 -->
                                            <div class="detail_layer ui_pop_area" >
                                                <p class="compay_name">
                                                    <button class="btn_close">
                                                        	회사명
                                                    </button>
                                                </p>
                                                <ul class="detail_ul_layer">
                                                    <li>
                                                        <a href="#">기업정보</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">기업리뷰</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">면접정보</a>
                                                    </li>
                                                </ul>
                                            </div>
                                           
                                            <!-- company_name 클릭시 이벤트 -->
                                            <script>
                                                $(function () {
                                                    $('.btn_open').click(function(){
                                                        $('.detail_layer').show();
                                                        
                                                    });
                                                    
                                                    $('.btn_close').click(function() {
                                                        $('.detail_layer').hide();
                                                        
                                                    });
                                                    
                                                });
                                            </script>
                                            <!-- company_name 클릭시 이벤트 -->
                                        </div>
                                        <!-- 평점 , 연봉 보여주기 -->
                                        <div class="data_set">
                                            <a class="rate" href="#">
                                                <em>평점</em>
                                            </a>
                                            <span class="bar_txt">|</span>
                                            <a class="salary" href="#">
                                             	   평균연봉
                                                <em>8,000</em>
                                             	   만원
                                            </a>
                                            <span class="bar_txt">|</span>
                                        </div>  
                                    </div>
                                     <!-- 채용 상세 보기 -->
                                    <div class="ui_fold_comp closed">
                                        <div class="result_labels">
                                            <span class="ico_tag">※</span>
                                            <span class="tags">지역</span>
                                            <span class="tags">직종</span>
                                            <span class="tags">직무</span>
                                            <span class="tags">기업분류</span>
                                            <span class="tags">신입/경력</span>
                                            <button class="btn_fold more">
                                               	 더보기
                                            </button>
                                            <button class="btn_fold1 close" style="display: none;">
                                              	  접기
                                            </button>
                                        </div>
                                    </div>
                                    <!-- 더보기 클릭시 보여주기 -->
                                    <div class="info_show_section ui_fold_area" style="display: none;">
                                        <div class="posting_content">
                                            <div class="posting_txt">
                                                <h3 class="p_title">주요 업무 내용</h3>
                                                <div class="p_article">
                                                   	 채용공고 DB에 저장된 내용 가져오기
                                                </div>
                                                <h3 class="p_title">자격 요건</h3>
                                                <div class="p_article">
                                                    	채용공고 DB에 저장된 내용 가져오기
                                                </div>
                                            </div>
                                        </div>
                                        <!-- 더보기 클릭시 보여주기 -->
                                        <script>
                                            $(function(){
                                                $('.btn_fold.more').click(function(){
                                                    $('.btn_fold.more').hide();
                                                    $('.info_show_section').show();
                                                    $('.close').show();
                                                });

                                                $('.close').click(function() {
                                                    $('.btn_fold.more').show();
                                                    $('.info_show_section').hide();
                                                    $('.close').hide();
                                                    
                                                })
                                            });
                                        </script>
                                     <!-- 더보기 클릭시 보여주기 끝 -->
                                    </div>
                                     
                                     <!-- 저장 버튼 -->
                                     <div class="btn_save_set">
                                         <button class="btn_round btn_save" id="btn_save">
                                             <i class="far fa-bookmark"></i>
                                            	 저장
                                         </button>
                                         <button class="btn_round btn_saved" id="btn_saved">
                                            <i class="fas fa-bookmark"></i>
                                         	   저장됨
                                        </button>
                                        <button class="btn_round btn_cancle" id="btn_cancle">
                                          	  저장취소
                                        </button>
                                        <!--저장버튼 클릭 이벤트  -->
                                        <script>
                                            $(function () {
                                                $('#btn_save').click(function() {
                                                    $('#btn_save').hide();
                                                    $('#btn_saved').show();
                                                });
                                                $('#btn_saved').click(function() {
                                                    $('#btn_saved').hide();
                                                    $('#btn_save').show();
                                                });
                                    
                                            });
                                        </script>
                                        <!--저장 버튼 클릭 이벤트 끝  -->
                                     </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
