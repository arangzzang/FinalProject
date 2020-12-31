<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var= "path" value="${pageContext.request.contextPath }"/>
<link rel="stylesheet" href="${path }/resources/css/search/searchResultMoreList.css"/>
<script src="${path }/resources/js/jquery-3.5.1.min.js"></script>
						<div class="result">
	                        <span class="num"><c:out value="${ajaxList[1].COUNT}"/></span>
                       	 검색결과
                    	</div>
     <!--내용 들  -->
                <article class="listCompany">
                    <div class="section_wrap">
                        <div class="section_group">
                            <!-- for문  -->
                            <c:forEach items="${ajaxList}" var="list">
                            <section class="company content_ty3">
                                <div class="ty3_wrap">
                                    <div class="content_wrap">
                                        <div class="content_col2_2">
                                            <a href="#" class="llogo">
                                            	<c:choose>
                                            		<c:when test="${empty list.ENT_LOGO }">
                                            			<img src="https://jpassets.jobplanet.co.kr/assets/default_logo_share-12e4cb8f87fe87d4c2316feb4cb33f42d7f7584f2548350d6a42e47688a00bd0.png">
                                            		</c:when>
                                            		<c:otherwise>
                                            			<img src="${list.ENT_LOGO }">
                                            		</c:otherwise>
                                            	</c:choose>
                                            </a>
                                        </div>
                                        <dl class="content_col2_3 cominfo">
                                            <dt class="us_titb_13">
                                                <a href="">${list.ENT_NAME }</a>
                                                <button class="btn_heart1">
                                                    <i class="far fa-heart"></i>
                                                </button>
                                                <button class="btn_heart2">
                                                    <i class="fas fa-heart"></i>
                                                </button>
                                            </dt>
                                            <dd>
                                                <span class="us_txt_1">${list.ENT_CATEGORY1 }</span>
                                                <span class="us_txt_1">${list.COUNT }</span>
                                            </dd>
                                            <dd class="row_end">
                                                <a href="" class="us_txt_1">기업리뷰</a>
                                                <span class="vbar">|</span>
                                                <a href="" class="us_txt_1">면접정보</a>
                                            </dd>
                                        </dl>
                                        <dl class="content_col2_4">
                                            <dt>리뷰 평균평점</dt>
                                            <dd class="gf_row">
                                                <div class="us_star_m">
                                                    <div class="star_score">평점</div>
                                                </div>
                                                <span class="gfvalue">${list.AVG }</span>
                                            </dd>
                                        </dl>
                                    </div>
                                </div>
                            </section>
                            </c:forEach>
                            <!-- 반복 -->
                        </div>
                    </div>
                </article>
                            <script>
                            	<!-- 하트 눌렀을때 변환 스크립트 -->
                               $(function() {
                                	
                                	$(document).on('click', '.tn_heart1', function() {
                                		$('.btn_heart1').hide();
                                        $('.btn_heart2').show();
                            			
                                	});
                                	$(document).on('click', '.btn_heart2', function() {
                                		$('.btn_heart1').hide();
                                        $('.btn_heart2').show();
                            			
                                	});
                                	
                                  /*   $('.btn_heart1').click(function() {
                                        $('.btn_heart1').hide();
                                        $('.btn_heart2').show();
                                    });
                                    $('.btn_heart2').click(function() {
                                        $('.btn_heart2').hide();
                                        $('.btn_heart1').show();
                                    }); */
                               }); 
                            	<!-- 하트 눌렀을때 변환 스크립트  끝-->
                                
                                <!--평균평점 별점 스크립트  -->
						   	
								let avg = parseFloat($('.gfvalue').text());
								let total = avg*20
								console.log(agv);
								$('.star_score').css('width',total+'%');
								<!--평균평점 별점 스크립트  -->
                            </script>