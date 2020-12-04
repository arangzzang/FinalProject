<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<link rel="stylesheet" href="../resources/css/Hire/supportingCompany.css" />
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=" "/>
</jsp:include>
<div id="container">
  
<section id="content">
	 
            <div class="memberinfo-parent row">
                <div class="jumbotron row memberinfo">
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
            <div class="MPheadmenu-parent row">
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
                    <div class="activity">
                          <div class="activityList"> 활동내역<div class="activityListLine"></div>
                                <a class="activityListReview" href="${path }/Hire/insertReview.do"><div class="review">리뷰</div><div class="activityCount1">(0)</div></a>
                                <a class="activityListCom"  href="${path }/Hire/supportingCompany.do"><div class="supportingCompany">입사지원기업</div><div  class="activityCount2">(0)</div></a>
                        </div>
                        <div class="supportingCompanyMain">
                            <div class="supportingCompanyTitle">입사지원한 기업</div>
                            <div class="supportingCompanyInto"> ∙ 잡플래닛 전용 프로필로 지원한 내역만 확인 됩니다.<br>
                                ∙ 입사지원을 한 후 내 프로필을 수정해도 이전에 지원한 프로필의 내용은 바뀌지 않습니다. <br>∙ 따라서 회사마다 프로필 내용을 다르게 지원할 수 있습니다.</div>
                        
                                <div class="myHyreSupportView">
                                    
                                    <div class="myHyreSupportCount">총 0개</div>
                                    <div class="myHyreSupportDetail">
                                        <div class="myHyreSupportDetail1">회사명</div>
                                        <div class="myHyreSupportDetail2">지원내용</div>
                                        <div class="myHyreSupportDetail3">지원일/취소일</div>
                    
                                    </div>
                                    <div class="myHyreSupportListAll">
                                        <div class="myHyreSupportList1">(주)카카오 모빌리언스</div>
                                        <div class="myHyreSupportList2">[웹개발]java,spring 기능 이용 웹 구현</div>
                                        <div class="myHyreSupportList3">
                                            <div>지원일 : 2020/12/02</div>
                                            <div>취소일 : 2020/12/20</div>
                                        </div>
                                    </div>
                                </div>
                        
                        
                        
                        
                        
                        
                        
                            </div>
                       

                     
                      
                       
                    </div>
                    



                 

                   

                    













                </div>
            </div>
        

</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>