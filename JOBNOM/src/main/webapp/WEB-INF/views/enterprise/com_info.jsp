<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<link rel="stylesheet" href="${path }/resources/css/company/com_info.css"/> 

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=""/>
</jsp:include>
<section id="content"> 
	
        <div class="cmp_info">
            <div class="cmp_top">
                <div class="cmp_top_containner">
                <div class="cmp_top_img">
                    <div class="cover_img"></div>
                </div>
                <div class="cmp_top_wrap">
                    <div class="cmp_wrap">
                        <div class="cmp_top_box">
                            <div class="compa_info">
                            <div class="compa_logo">
                                <a href="" class="logo_wrap" >
                                <span class="logoimg"><img src="" alt="기업이미지"/></span>
                                </a>
                            </div>
                            <div class="compa_info_box">
                                <div class="compa_name">
                                    <a href="" ></a>
                                </div>
                                <div class="about_compa">
                                    <div class="compa_rating">
                                        <span>
                                            <i class="fas fa-star">4.5</i>             
                                        </span>
                                    </div>
                                    <div class="com_info_small">
                                        <span>></span>
                                        <span class="dot">&middot;</span>
                                        <a href=""></a>
                                    </div>
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            </div>
            <div class="com_menu" >
                <div id="view_com_wrap"> 
                <nav id="view_com">
                     <ul class="view_menu">
                        <li class="li_menu">
                            <a href="${path}/enterprise/com_info.do"><h2>소개</h2></a>
                        </li>
                        <li class="li_menu">
                            <a href="${path }/enterprise/com_review.do"><h2>리뷰<span class="num">(1)</span></h2></a>
                        </li>
                        <li class="li_menu">
                            <a href="${path }/enterprise/com_interview.do"><h2>면접후기<span class="num">(1)</span></h2></a>
                        </li>
                        <li class="li_menu">
                            <a href="${path }/enterprise/com_job.do"><h2>채용<span class="num">(1)</span></h2></a>
                        </li>
                    </ul>
                    <div class="follow_btn">
                        <button id="follow" class="btn btn"><i id="heart" class="far fa-heart"></i>찜하기</button> 
                    </div>
                </nav>
                </div>
            </div>
        </div>
        <!-- 상세페이지 끝 -->
        <div class="com_info_container">	
            <div class="com_info" >
                <div class="com_title" >
                    <h2>기업정보</h2>
                </div>
                <div class="com_box_info">
                    <div class="company_sub">
                        <div class="tool_box">
                            <i class="fas fa-tools"></i>
                            <span><strong></strong><p>산업</p></span>
                        </div>
                        <div class="tool_box">
                            <i class="fas fa-building"></i>
                            <span><strong>-</strong><p>기업형태</p>
                        </div>
                        <div class="tool_box">
                            <i class="fas fa-users"></i>
                            <span><strong>-</strong><p>사원수</p></span>
                        </div>
                        <div class="tool_box">
                            <i class="far fa-calendar"></i>
                            <span><strong>-</strong><p>설립일</p></span>
                        </div>
                    </div>
                    <div class="company_info">
                        <div class="company_in_info">
                            <ul class="company_info_more">
                                <li>
                                  <dl class="info_item_more">
                                    <dt class="item_subject">대표</dt>
                                    <dd>황진호</dd>
                                  </dl>
                                </li>
                                <li>
                                  <dl class="info_item_more">
                                    <dt class="item_subject">매출</dt>
                                    <dd>10억(2019)</dd>
                                  </dl>
                                </li>
                                <li>
                                  <dl class="info_item_more">
                                    <dt class="item_subject">주소</dt>
                                    <dd>서울특별시 강남구</dd>
                                  </dl>
                                </li>
                                <li>
                                  <dl class="info_item_more">
                                    <dt class="item_subject">웹사이트</dt>
                                    <dd><a href="http://www.naver.com" rel="nofollow" target="_blank">www.naver.com</a></dd>
                                  </dl>
                                </li>
                                <li>
                                  <dl class="info_item_more">
                                    <dt class="item_subject">소개</dt>
                                    <dd>-</dd>
                                  </dl>
                                </li>
                              </ul>
                            </div>
                          </div>
                     	</div>
                     </div>
                   </div>
    </section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>