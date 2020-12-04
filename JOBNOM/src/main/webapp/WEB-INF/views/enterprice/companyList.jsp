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
                        <h4 class="txt_titm titm_welf tit">카테고리1</h4>
                        </div>
                    </div>
                    <div class="section_body">
                        <dl class="gf_box2">
                            <dt title="회사명">
                                    <span class="txt_r">1</span>
                                <a href="#">회사명</a>
                            </dt>
                            <dd>
                                <div class="company_star">
                                    <div class="company_star_average" style="width: 80.0%">3.2</div>
                                </div>
                            </dd>
                        </dl>
                    </div>
                    <p class="section_bottom">
                        <a href="#" class="btn_rnd btn_rnd_arrow"><span class="txt">전체보기</span>
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
                        <h4 class="txt_titm titm_welf tit">카테고리2</h4>
                        </div>
                    </div>
                    <div class="section_body">
                        <dl class="gf_box2">
                            <dt title="회사명">
                                    <span class="txt_r">1</span>
                                <a href="#">회사명</a>
                            </dt>
                            <dd>
                                <div class="company_star">
                                    <div class="company_star_average" style="width: 80.0%">3.2</div>
                                </div>
                            </dd>
                        </dl>
                    </div>
                    <p class="section_bottom">
                        <a href="#" class="btn_rnd btn_rnd_arrow"><span class="txt">전체보기</span><span class="ico_bracket3_gray"></span></a>
                    </p>
                </div>      
            </section>
            <section class="card_ty1 pd_r0"> <!-- Add 'pd_r0' class to section.card_ty1  -->
                <div class="section_wrap2">
                    <div class="section_hd">
                        <div class="hgroup">
                        <span class="ico_tit ico_titm_money"></span>
                        <h4 class="txt_titm titm_welf tit">카테고리3</h4>
                        </div>
                    </div>
                    <div class="section_body">
                        <dl class="gf_box2">
                            <dt title="회사명">
                                    <span class="txt_r">1</span>
                                <a href="#">회사명</a>
                            </dt>
                            <dd>
                                <div class="company_star">
                                    <div class="company_star_average" style="width: 80.0%">3.2</div>
                                </div>
                            </dd>
                        </dl>
                    </div>
                    <p class="section_bottom">
                        <a href="#" class="btn_rnd btn_rnd_arrow"><span class="txt">전체보기</span><span class="ico_bracket3_gray"></span></a>
                    </p>
                </div>      
            </section>
            <section class="card_ty1 "> <!-- Add 'pd_r0' class to section.card_ty1  -->
                <div class="section_wrap2">
                    <div class="section_hd">
                        <div class="hgroup">
                        <span class="ico_tit ico_titm_money"></span>
                        <h4 class="txt_titm titm_welf tit">카테고리4</h4>
                        </div>
                    </div>
                    <div class="section_body">
                        <dl class="gf_box2">
                            <dt title="회사명">
                                    <span class="txt_r">1</span>
                                <a href="#">회사명</a>
                            </dt>
                            <dd>
                                <div class="company_star">
                                    <div class="company_star_average" style="width: 80.0%">3.2</div>
                                </div>
                            </dd>
                        </dl>
                    </div>
                    <p class="section_bottom">
                        <a href="#" class="btn_rnd btn_rnd_arrow"><span class="txt">전체보기</span><span class="ico_bracket3_gray"></span></a>
                    </p>
                </div>      
            </section>
            <section class="card_ty1 "> <!-- Add 'pd_r0' class to section.card_ty1  -->
                <div class="section_wrap2">
                    <div class="section_hd">
                        <div class="hgroup">
                        <span class="ico_tit ico_titm_money"></span>
                        <h4 class="txt_titm titm_welf tit">카테고리5</h4>
                        </div>
                    </div>
                    <div class="section_body">
                        <dl class="gf_box2">
                            <dt title="회사명">
                                    <span class="txt_r">1</span>
                                <a href="#">회사명</a>
                            </dt>
                            <dd>
                                <div class="company_star">
                                    <div class="company_star_average" style="width: 80.0%">3.2</div>
                                </div>
                            </dd>
                        </dl>
                    </div>
                    <p class="section_bottom">
                        <a href="#" class="btn_rnd btn_rnd_arrow"><span class="txt">전체보기</span><span class="ico_bracket3_gray"></span></a>
                    </p>
                </div>      
            </section>
            <section class="card_ty1 pd_r0 "> <!-- Add 'pd_r0' class to section.card_ty1  -->
                <div class="section_wrap2">
                    <div class="section_hd">
                        <div class="hgroup">
                        <span class="ico_tit ico_titm_money"></span>
                        <h4 class="txt_titm titm_welf tit">카테고리6</h4>
                        </div>
                    </div>
                    <div class="section_body">
                        <dl class="gf_box2">
                            <dt title="회사명">
                                    <span class="txt_r">1</span>
                                <a href="#">회사명</a>
                            </dt>
                            <dd>
                                <div class="company_star">
                                    <div class="company_star_average" style="width: 80.0%">3.2</div>
                                </div>
                            </dd>
                        </dl>
                    </div>
                    <p class="section_bottom">
                        <a href="#" class="btn_rnd btn_rnd_arrow"><span class="txt">전체보기</span><span class="ico_bracket3_gray"></span></a>
                    </p>
                </div>      
            </section>
        </article>
        
    </div>
    <!-- 카테고리별 정렬 리스트 끝 -->

    <div class="mainContests2">
        <div class="jpcont_wrap">
            <article id="navIndustry" class="section_wrap nav_industry nav_industry_bottom">
                <div class="section_hd">
                    <div class="hgroup">
                        <h4 class="txt_titl">산업군</h4>
                        <h5 class="sub_titl"></h5>
                    </div>
                </div>
                <ul class="list">
                    <li>
                        <a href="#" title="서비스업">서비스업</a>
                    </li>
                    <li>
                        <a href="#" title="의료/제약/복지">의료/제약/복지</a>
                    </li>
                    <li>
                        <a href="#" title="교육업">교육업</a>
                    </li>
                    <li>
                        <a href="#" title="IT/웹/통신">IT/웹/통신</a>
                    </li>
                    <li>
                        <a href="#" title="은행/금융업">은행/금융업</a>
                    </li>
                </ul>
        </article>
        </div>
    </div>


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
