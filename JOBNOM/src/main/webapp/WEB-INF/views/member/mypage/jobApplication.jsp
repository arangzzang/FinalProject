<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<link rel="stylesheet" href="${path }/resources/css/mypage/jobApplication.css"/>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=" "/>
</jsp:include>
<section id="`">
<div class="memberinfo-parent ">
        <div class="jumbotron row memberinfo" id="memberinfo">
            <div class="col-md-3 col-offset-3">
                <img src="" alt="">
            </div>
            <div class="col-md-6">
                <p>조현</p>
                <p>취준생</p>
                <p>IT취업하고싶다</p>
            </div>
        </div>
    </div>
    <div class="MPheadmenu-parent">
        <nav class="navbar navbar-expand-sm  navbar-light MPheadmenu">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav headbar">
                    <li class="nav-item sidebarmenubar">
                        <button type="button" class="navbtn">계정</button>
                    </li>
                    <li class="nav-item sidebarmenubar">
                        <button type="button" class="navbtn">이력서</button>
                    </li>
                    <li class="nav-item sidebarmenubar">
                        <button type="button" class="navbtn">활동내역</button>
                    </li>
                    <li class="nav-item sidebarmenubar">
                        <button type="button" class="navbtn">관심정보</button>
                    </li>
                    <li class="nav-item sidebarmenubar">
                        <button type="button" class="navbtn">멤버십</button>
                    </li>    
                </ul>
            </div>  
        </nav>
    </div>
    <div class="with-parent">
        <div class="with">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="container row withcon">
                <div class="col-md-3 col-sm-3 withleft">
                    <ul class="nav nav-pills flex-column sidebar" id="sidebar">
                        <h3 class="sidebar-title">활동내역</h3>
                        <li class="nav-item sidebarmenubar">
                            <button type="button" class="sidebtn">리뷰</button>
                        </li>
                        <li class="nav-item sidebarmenubar">
                            <button type="button" class="sidebtn">면접</button>
                        </li>
                        <li class="nav-item sidebarmenubar">
                            <button type="button" class="sidebtn">입사지원</button>
                        </li>
                    </ul>
                </div>
                <div class="col-md-8 col-sm-8 maincon withright" id="maincon">
                    <div class="maininfo-parent one">
                        <h2>입사지원한 기업</h2>
                        <p>∙ 잡플래닛 전용 프로필로 지원한 내역만 확인 됩니다.
                            ∙ 입사지원을 한 후 내 프로필을 수정해도 이전에 지원한 프로필의 내용은 바뀌지 않습니다. 
                            따라서 회사마다 프로필 내용을 다르게 지원할 수 있습니다.</p>
                            <!-- 지원내역이 있을 때 -->
                        <span>총[count]건</span>
                        <table class="jpt_list">
                            <tr class="jpt_th">
                                <th>회사명</th>
                                <th>지원내역</th>
                                <th>지원일/취소일</th>
                            </tr>
                            <tr>
                                <td>[기업명]</td>
                                <td>[채용공고상태][기업명][채용공고제목]<br><a href="">[내이력서보기]</a></td>
                                <td>지원취소됨<p>지원일[date 시간까지]<br>취소일[date시간까지]</p></td>
                            </tr>
                        </table>
                        <!-- 지원내역이 없을 때 -->
                        <c:if test="">
                            <article class="jpt_list_null">
                                <p>입사 지원 내역이 없습니다.</p>
                                <p>
                                    jobnom전용 프로필로 지원한 내역만 확인됩니다.
                                    <br>
                                    회원님과 잘 맞는 기업을 찾아보세요.
                                </p>
                            </article>
                        </c:if>
                        <div class="jpt_writing">
                            <button type="button" class="btn btn-outline-success"><i></i>면접후기 작성</button>
                        </div>
                    </div>
                </div>
            </div>
        
        </div>
    </div>
</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>