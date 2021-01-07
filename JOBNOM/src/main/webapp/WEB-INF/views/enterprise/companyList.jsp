<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var= "path" value="${pageContext.request.contextPath }"/>

<link rel="stylesheet" href="${path }/resources/css/company/companyList.css"/> 
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=" "/>
</jsp:include>

<!-- 카테고리별 정렬 리스트 -->
    <div class="mainContents">
        <article class="article_ty2"> 
            <section class="card_ty1 "> 
                <div class="section_wrap2">
                    <div class="section_hd">
                        <div class="hgroup">
                        <span class="ico_tit ico_titm_money"></span>
                        <h4 class="txt_titm titm_welf tit">IT/인터넷</h4>
                        </div>
                    </div>
                    <div class="section_body">
                    	<c:forEach items="${list }" var="list">
                        <dl class="gf_box2">
                            <dt title="회사명">
                                    <span class="txt_r">1</span>
                                <a href="#" onclick="location.href = '${path }/openApi.do?entNo=${list.ENT_NO}&keyword=${list.ENT_NAME}'">${list.ENT_NAME }</a>
                            </dt>
                            <dd>
                               <div class="gf_bar">
							        <div class="gr_bar_gray"></div>
							        <div class="gr_bar_green"></div>
							        <div class="gr_bar_img"></div> 
							        <span class="avg">${list.AVG }</span>
							    </div>
                            </dd>
                        </dl>
                        </c:forEach>
                    </div>
                    <p class="section_bottom">
                        <a href="${path }/search/searchResultMore.do" class="btn_rnd btn_rnd_arrow"><span class="txt">기업더보기</span>
                            <span class="ico_bracket3_gray"></span>
                        </a>
                    </p>
                </div>      
            </section>
            <section class="card_ty1 "> 
                <div class="section_wrap2">
                    <div class="section_hd">
                        <div class="hgroup">
                        <span class="ico_tit ico_titm_money"></span>
                        <h4 class="txt_titm titm_welf tit">금융/재무</h4>
                        </div>
                    </div>
                    <div class="section_body">
                    <c:forEach items="${list2 }" var="list2">
                        <dl class="gf_box2">
                            <dt title="회사명">
                                    <span class="txt_r">1</span>
                                <a href="#" onclick="location.href = '${path }/openApi.do?entNo=${list2.ENT_NO}&keyword=${list2.ENT_NAME}'">${list2.ENT_NAME }</a>
                            </dt>
                            <dd>
                                <div class="gf_bar">
							        <div class="gr_bar_gray"></div>
							        <div class="gr_bar_green"></div>
							        <div class="gr_bar_img"></div> 
							        <span class="avg">${list2.AVG }</span>
							    </div>
                            </dd>
                        </dl>
                     </c:forEach>
                    </div>
                    <p class="section_bottom">
                        <a href="${path }/search/searchResultMore.do" class="btn_rnd btn_rnd_arrow"><span class="txt">기업더보기</span><span class="ico_bracket3_gray"></span></a>
                    </p>
                </div>      
            </section>
            <section class="card_ty1 pd_r0"> <!-- Add 'pd_r0' class to section.card_ty1  -->
                <div class="section_wrap2">
                    <div class="section_hd">
                        <div class="hgroup">
                        <span class="ico_tit ico_titm_money"></span>
                        <h4 class="txt_titm titm_welf tit">의약</h4>
                        </div>
                    </div>
                    <div class="section_body">
                    	<c:forEach items="${list3 }" var="list3">
                        <dl class="gf_box2">
                            <dt title="회사명">
                                    <span class="txt_r"></span>
                                <a href="#" onclick="location.href = '${path }/openApi.do?entNo=${list3.ENT_NO}&keyword=${list3.ENT_NAME}'">${list3.ENT_NAME }</a>
                            </dt>
                            <dd>
                               <div class="gf_bar">
							        <div class="gr_bar_gray"></div>
							        <div class="gr_bar_green"></div>
							        <div class="gr_bar_img"></div> 
							        <span class="avg">${list3.AVG }</span>
							    </div>
                            </dd>
                        </dl>
                        </c:forEach>
                    </div>
                    <p class="section_bottom">
                        <a href="${path }/search/searchResultMore.do" class="btn_rnd btn_rnd_arrow"><span class="txt">기업더보기</span><span class="ico_bracket3_gray"></span></a>
                    </p>
                </div>      
            </section>
            <section class="card_ty1 "> <!-- Add 'pd_r0' class to section.card_ty1  -->
                <div class="section_wrap2">
                    <div class="section_hd">
                        <div class="hgroup">
                        <span class="ico_tit ico_titm_money"></span>
                        <h4 class="txt_titm titm_welf tit">서비스/고객지원</h4>
                        </div>
                    </div>
                    <div class="section_body">
                    	<c:forEach items="${list4 }" var="list4">
                        <dl class="gf_box2">
                            <dt title="회사명">
                                    <span class="txt_r">1</span>
                                <a href="#" onclick="location.href = '${path }/openApi.do?entNo=${list4.ENT_NO}&keyword=${list4.ENT_NAME}'">${list4.ENT_NAME }</a>
                            </dt>
                            <dd>
                              <div class="gf_bar">
							        <div class="gr_bar_gray"></div>
							        <div class="gr_bar_green"></div>
							        <div class="gr_bar_img"></div> 
							        <span class="avg">${list4.AVG }</span>
							    </div>
                            </dd>
                        </dl>
                        </c:forEach>
                    </div>
                    <p class="section_bottom">
                        <a href="${path }/search/searchResultMore.do" class="btn_rnd btn_rnd_arrow"><span class="txt">기업더보기</span><span class="ico_bracket3_gray"></span></a>
                    </p>
                </div>      
            </section>
            <section class="card_ty1 "> <!-- Add 'pd_r0' class to section.card_ty1  -->
                <div class="section_wrap2">
                    <div class="section_hd">
                        <div class="hgroup">
                        <span class="ico_tit ico_titm_money"></span>
                        <h4 class="txt_titm titm_welf tit">마케팅/시장조사</h4>
                        </div>
                    </div>
                    <div class="section_body">
                    <c:forEach items="${list5 }" var="list5">
                        <dl class="gf_box2">
                            <dt title="회사명">
                                    <span class="txt_r">1</span>
                                <a href="#" onclick="location.href = '${path }/openApi.do?entNo=${list5.ENT_NO}&keyword=${list5.ENT_NAME}'">${list5.ENT_NAME }</a>
                            </dt>
                            <dd>
                               <div class="gf_bar">
							        <div class="gr_bar_gray"></div>
							        <div class="gr_bar_green"></div>
							        <div class="gr_bar_img"></div> 
							        <span class="avg">${list5.AVG }</span>
							    </div>
                            </dd>
                        </dl>
                    </c:forEach>
                    </div>
                    <p class="section_bottom">
                        <a href="${path }/search/searchResultMore.do" class="btn_rnd btn_rnd_arrow"><span class="txt">기업더보기</span><span class="ico_bracket3_gray"></span></a>
                    </p>
                </div>      
            </section>
            <section class="card_ty1 pd_r0 "> <!-- Add 'pd_r0' class to section.card_ty1  -->
                <div class="section_wrap2">
                    <div class="section_hd">
                        <div class="hgroup">
                        <span class="ico_tit ico_titm_money"></span>
                        <h4 class="txt_titm titm_welf tit">교육</h4>
                        </div>
                    </div>
                    <div class="section_body">
                    <c:forEach items="${list6 }" var="list6">
                        <dl class="gf_box2">
                            <dt title="회사명">
                                <span class="txt_r">1</span>
                                <a href="#" onclick="location.href = '${path }/enterprise/com_info.do?entNo=${list6.ENT_NO}'">회사명</a>
                            </dt>
                            <dd>
                                <div class="company_star">
                                    <div class="company_star_average" style="width: 80.0%"></div>
                                </div>
                                <div class="total_avg">1.2</div>
                            </dd>
                        </dl>
                        </c:forEach>
                    </div>
                    <p class="section_bottom">
                        <a href="#" class="btn_rnd btn_rnd_arrow"><span class="txt">기업더보기</span><span class="ico_bracket3_gray"></span></a>
                    </p>
                </div>      
            </section>
        </article>
    </div>
	<!--평균평점 그래프 스크립트  -->
   	<script>
		let avg = parseFloat($('.avg').text());
		let total_bar = avg*20
		$('.gr_bar_green').css('width',total_bar+'%');
	</script>
	
	<!--평균평점 별점 스크립트  -->
	<script>
		let avg1 = parseFloat($('.total_avg').text());
		let tota_star = avg1*20
		console.log(tota_star);
		$('.company_star_average').css('width',tota_star+'%');
	</script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
