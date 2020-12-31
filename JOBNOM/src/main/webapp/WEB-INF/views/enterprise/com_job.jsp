<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<link rel="stylesheet" href="${path }/resources/css/company/com_job.css"/> 

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=""/>
</jsp:include>
<section class="main">
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
                                <a href="" >회사이름</a>
                            </div>
                            <div class="about_compa">
                                <div class="compa_rating">
                                    <span>
                                        <i class="fas fa-star">4.5</i>             
                                    </span>
                                </div>
                                <div class="com_info_small">
                                    <span>소분류</span>
                                    <span class="dot">&middot;</span>
                                    <a href="www.naver.com">기업주소</a>
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
    <div class="job_container">
        <div class="job_con_box">
            <div class="job_select">
                <select class="job_cho">
                    <option value="">직종</option>
                    <option value="">IT/인터넷</option>
                    <option value="">서비스</option>
                    <option value="">교육</option>
                </select>
                <select class="job_detail">
                    <option value="">직종상세</option>
                </select>
                <select class="job_career">
                    <option value="">경력구분</option>
                    <option value="">신입</option>
                </select>
                <select class="job_area">
                    <option value="">지역</option>
                    <option value="">서울</option>
                </select>
            </div>
            <p class="job_result">
                좋은 채용 공고 <strong>1</strong>
            </p>
                <div class="job_check_filter">
                <label class="job_check">
                    <input  type="checkbox"/>
                    <span class="check_txt">마감된 공고 표시</span>
                </label>
                <label class="job_check1">
                    <select id="order_by">
                        <option  value="">최근 등록 순</option>
                        <option value="">마감 임박 순</option>
                    </select>
                </label>
            </div>
        </div>
        <div class="job_items">
        <c:forEach items="${Rec }" var="Rec">
            <div class="job_item_wrap" >
                <a href="${path }/" class="job_a">
                  <span class="job_dday"><fmt:formatDate value="${Rec.rec_enddate }" pattern="yyyy.MM.dd"/></span>
                  <div class="info_box">
                    <h2 class="tit"><c:out value="${Rec.rec_title}"/></h2>
                    <c:forEach items="${c2 }" var="c">
                    <p class="duty">
                    	<c:set var= "ctg" value="${Rec.rec_category }"/>
                       	<c:if test="${c.cate_no2 == ctg }">
                       		<c:out value="${c.jobs2 }"/>
                       	</c:if>
                    </p>
                    </c:forEach>
                    <div class="label">
                      <span class="tags "><c:out value="${Rec.rec_type }"/></span>
                    </div>
                  </div>
                </a>
            </div>
            <c:if test="${Rec.rec_no==null }">
	        <section class="com_job_default">
	        	<div class="com_job_de_box">
	        		<div class="com_job_wrap">
	        			<i class="fas fa-exclamation fa-5x"></i>
	        		</div>
	        		<div class="com_job_wrap">
	        			<h2>조회된 공고가 없습니다.</h2>
	        		</div>
	        	</div>
	        </section>
	        </c:if>
            </c:forEach>
        </div>
    </div>
</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>