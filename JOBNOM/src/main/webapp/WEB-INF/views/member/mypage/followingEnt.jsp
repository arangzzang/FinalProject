<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="${path }/resources/css/mypage/followingEnt.css"/>
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
                        <h3 class="sidebar-title">관심정보</h3>
                        <li class="nav-item sidebarmenubar">
                            <button type="button" class="sidebtn">팔로잉기업</button>
                        </li>
                        <li class="nav-item sidebarmenubar">
                            <button type="button" class="sidebtn">저장된채용</button>
                        </li>
                    </ul>
                </div>
                <div class="col-md-8 col-sm-8 maincon withright" id="maincon">
                    <div class="maininfo-parent one">
                        <h2>팔로잉 기업</h2>
                        <span>[count]개의 관심기업이 있습니다.</span>
                        <!-- 팔로잉한 기업이 있을 때 -->
                        <div class="following_container row">
                            <a href="#" class="col-sm-2 col-md-2"><img src="" alt=""></a>
                            <dl class="col-sm-5 col-md-5">
                                <dt class="ent_name">기업명<i class="fa fa-heart"></i></dt>
                                <dd>[1차산업군] | 주소</dd>
                                <dd><a href="">[count]기업리뷰</a>|<a href="">[count]면접후기</a></dd>
                            </dl>
                            <dl class="col-sm-5 col-md-5">
                                <dt>총 만족도</dt>
                                <dd>
                                    별평균 들어가야함.    
                                    [count]
                                </dd>
                                <dd>[연봉 해두되고 안해두되고]</dd>
                            </dl>
                        </div>
                        <!-- 팔로잉한 기업이 없을 때 -->
                        <!-- <c:if test=""> -->
                            <!-- <article class="following_null">
                                <span class="following_icon"><i class="fa fa-heart"></i></span>
                                <p><strong>팔로잉한 기업이 없습니다.</strong><br><br>
                                    관심있는 기업을 등록하셔서 기업들의 최신정보를 받아보세요.
                                </p>
                            </article> -->
                        <!-- </c:if> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>