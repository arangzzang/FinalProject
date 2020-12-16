<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<link rel="stylesheet" href="${path }/resources/css/company/com_style.css"/> 
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
                            <a href="${path}/enterprice/com_info.do"><h2>소개</h2></a>
                        </li>
                        <li class="li_menu">
                            <a href="${path }/enterprice/com_review.do"><h2>리뷰<span class="num">(1)</span></h2></a>
                        </li>
                        <li class="li_menu">
                            <a href="${path }/enterprice/com_interview.do"><h2>면접후기<span class="num">(1)</span></h2></a>
                        </li>
                        <li class="li_menu">
                            <a href="${path }/enterprice/com_job.do"><h2>채용<span class="num">(1)</span></h2></a>
                        </li>
                    </ul>
                    <div class="follow_btn">
                        <button id="follow" class="btn btn"><i id="heart" class="far fa-heart"></i>찜하기</button> 
                    </div>
                </nav>
                </div>
            </div>
        </div>
        <div class="inter_container">
            <div class="inter_box">
                <div class="inter_top">
                    <div class="inter_level" >
                        <span>면접난이도</span>
                        <div class="level_con">
                            <span class="level_con_num">점수</span>
                            <p class="level_con_lev">난이도</p>
                        </div>
                    </div>
                    <div class="inter_root">
                        <span>면접경로</span>
                        <div class="inter_root_sup">
                            <div class="inter_table">
                            <table class="inter_root_table">
                                <tbody class="inter_root_tb">
                                    <tr class="inter_root_tr">
                                        <th>온라인 지원</th>
                                        <td>50%</td>
                                        <td class="empty"></td>
                                        <th>직원추천</th>
                                        <td>0%</td>
                                    </tr>
                                    <tr class="inter_root_tr">
                                        <th>헤드헌터</th>
                                        <td>0%</td>
                                        <td class="empty"></td>
                                        <th>공개채용</th>
                                        <td>20%</td>
                                    </tr>
                                    <tr class="inter_root_tr">
                                        <th>학교 취업지원 센터</th>
                                        <td>30%</td>
                                        <td class="empty"></td>
                                        <th>기타</th>
                                        <td>0%</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="inter_bottom">
                <div class="inter_ex">
                    <span>면접경험</span>
                </div>
                <div class="inter_result">
                    <span>면접결과</span>
                </div>
            </div>
        </div>
    <article class="inter_select_con">
        <div class="inter_select_box">
            <div class="inter_select">                
                <select class="inter_select_cho">
                    <option>합격여부</option>
                    <option>불합격</option>
                    <option>합격</option>
                    <option>대기중</option>
                </select>
            </div>
            <div class="total_inter">
                총<span>1</span>개 의 면접후기
            </div>
        </div>
    </article>
    <!-- <section class="inter_write_con">
        <div class="inter_write_info">
            <div class="write_info_inter">
                <span><i class="fas fa-user-circle fa-2x"></i></span>
                <span>직종</span>
                <span> | </span>
                <span>사원-대졸</span>
                <span> | </span>
                <span>2020.11.21</span>
            </div>
        </div>
        <div class="inter_rat">
            <dl class="inter_rating">
                <dt>면접난이도</dt>
                    <dd>난이도</dd>
                    <dd>그래프</dd>
                <dt>면접인원</dt>
                    <dd></dd>
                <dt>면접일자</dt>
                    <dd>2020/1</dd>
                <dt>면접경로</dt>
                    <dd>온라인 지원</dd>
            </dl>
            <div class="inter_content">
                <div class="inter_content_title">
                    <h2>별로에여</h2>
                </div>
                <dl>
                    <dt>면접질문</dt>
                    <dd class="inter_df">
                        <span>
                            	글쌔요..
                        </span>
                    </dd>
                    <dt>면접답변 혹은 면접느낌</dt>
                    <dd class="inter_df">
                        <span>
                            ?
                        </span>
                    </dd>
                    <dt>합격여부</dt>
                    <dd class="inter_df">
                        <span>
                        	합격, 불합격
                        </span>
                    </dd>
                     <dt>면접경험</dt>
                    <dd class="inter_df">
                        <span>
                        	긍정적,부정적,보통
                        </span>
                    </dd>
                </dl>
            </div>
        </div>
        <div class="inter_btn_area">
        	<button id= "inter_like_btn" class="btn btn">
        		<span><i class="far fa-thumbs-up"></i> 추천(count)</span>
        	</button>
            <button id="inter_report_btn" class="btn btn">
                	신고하기
            </button>
        </div> -->
        <section class="com_inter_default">
        	<div class="com_inter_de_box">
        		<div class="com_inter_de_wrap">
        			<h4>등록된 후기가 없습니다.</h4>
        			<button class="btn btn-success" onclick=""><i class="fas fa-pen-square"></i>  리뷰 작성하기</button>	
        		</div>
        	</div>
        </section>
    </div>
</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>