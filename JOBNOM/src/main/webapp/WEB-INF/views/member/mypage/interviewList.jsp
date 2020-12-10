<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<link rel="stylesheet" href="${path }/resources/css/mypage/interviewList.css"/>
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
                        <h2 class="maintitle">내 면접후기</h2>
                        <p class="list_count">0개의 면접후기를 작성하셨습니다.</p><!-- qqq -->
                        <table class="interview_table">
                            <tr class="interview_th">
                                <th>기업명</th>
                                <th >면접결과</th>
                                <th>작성일</th>
                                <th>등록여부</th>
                                <th>수정/삭제</th>
                            </tr>
                            <!-- 결과값 있을 때 -->
                            <tr class="interview_td_notnull">
                                <td>카카오</td>
                                <td>합격/불합격/기다리는중</td>
                                <td>2020/12/20</td>
                                <td>등록/미등록</td>
                                <td><button type="button">수정</button type="button">/<button>삭제</button></td>
                            </tr>
                            <!-- 결과값 없을 때 -->
                            <c:if test="">
                                <tr class="interview_td_null">
                                    <td colspan="5">작성한 면접후기가 없습니다</td>
                                </tr>
                            </c:if>
                        </table>
                        <div class="interview_writing">
                            <button type="button" class="btn btn-outline-success" data-toggle="modal" data-target="#interview">
                                면접 후기 작성
                            </button>
                            <div class="modal fade" id="interview" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document" style="display: flex; width: 100%;">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <form action="">
                                                <div class="row" style="display: flex;">
                                                    <div class="col-md-auto col-4 title">
                                                        기업에 대한 한줄평은?
                                                    </div>
                                                    <div class="col-md-8 col-8">
                                                        <input type="text" >
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-primary">Understood</button>
                                        </div>
                                    </div>
                                    <div class="interview_info" style="width: 100px; height: 100px; background-color: #fff;">

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