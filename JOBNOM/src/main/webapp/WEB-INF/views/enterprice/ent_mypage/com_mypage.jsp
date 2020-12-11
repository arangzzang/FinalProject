<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<link rel="stylesheet" href="${path }/resources/css/company/com_my_page/com_mypage.css"/>
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
                <p>회원이름</p>
                <p>소속회사</p>
                <p>이메일주소</p>
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
                        <button type="button" class="navbtn">나의 공고</button>
                    </li>
                    <li class="nav-item sidebarmenubar">
                        <button type="button" class="navbtn">계정</button>
                    </li>
                    <li class="nav-item sidebarmenubar">
                        <button type="button" class="navbtn">멤버십</button>
                    </li>
                </ul>
            </div>  
        </nav>
    </div>
    
    <div class="mypage_container">
    		<div class="mypage_box">
    			<div class="anno_title">
   					<h2>나의공고</h2>
   					<p><span>0</span>개의 공고가 있습니다.</p>
   				</div>
   				<div class="anno_btn">
   					<button class="btn btn_1">공고 올리기</button>
   				</div>
    			<table class="table table" id="anno_list">
    				<thead>
    					<tr>
    						<th>NO</th>
    						<th>공고이름</th>
    						<th>등록일자</th>
    						<th>마감일자</th>
    						<th>지원자 수</th>
    						<th>공고 상세보기</th>
    						<th>공고 수정하기</th>
    						<th>지원자 조회</th>
    					</tr>
    				</thead>
    				<tbody>
    					<tr>
    						<td>1</td>
                            <td>공고</td>
                            <td>2000.01.01</td>
                            <td>2999.01.01</td>
                            <td>15</td>
                            <td><button type="button" class="btn btn">상세보기</button></td>
                             <td><button type="button" class="btn btn">수정</button></td>
                            <td><button type="button" class="btn btn">조회</button></td>
    					</tr>
    				</tbody>
    			</table>
    		</div>
    	</div>
	</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>