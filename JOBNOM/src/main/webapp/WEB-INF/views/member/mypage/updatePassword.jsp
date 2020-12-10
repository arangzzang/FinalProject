<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<link rel="stylesheet" href="${path }/resources/css/mypage/updatepassword.css"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=" "/>
</jsp:include>
<section id="content">
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
                        <h3 class="sidebar-title">회원</h3>
                        <li class="nav-item sidebarmenubar">
                            <button type="button" class="sidebtn">계정설정</button>
                        </li>
                        <li class="nav-item sidebarmenubar">
                            <button type="button" class="sidebtn">비밀번호변경</button>
                        </li>
                        <li class="nav-item sidebarmenubar">
                            <button type="button" class="sidebtn">알림</button>
                        </li>
                    </ul>
                </div>
                <div class="col-md-8 col-sm-8 maincon withright" id="maincon">
                    <div class="maininfo-parent">
                        <form action="/action_page.php" class="needs-validation" novalidate>
                            <div class="maininfo">
                                <h1 class="maintitle">비밀번호 변경</h1>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-gruop">
                                            <label for="uname">비밀번호</label>
                                            <input type="password" class="form-control" id="uname" placeholder="비밀번호를 입력해주세요." name="uname" required>
                                            <div class="valid-feedback">비밀번호 입력완료.</div>
                                            <div class="invalid-feedback">비밀번호를 입력해주세요.</div>
                                        </div>
                                        <div class="form-gruop">
                                            <label for="uname">비밀번호확인</label>
                                            <input type="password" id="uname" class="form-control" placeholder="2차 비밀번호를 입력해주세요." name="uname" required>
                                            <div class="valid-feedback">비밀번호 입력완료.</div>
                                            <div class="invalid-feedback">비밀번호를 입력해주세요.</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="text-center enrollBtn">
                                <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>