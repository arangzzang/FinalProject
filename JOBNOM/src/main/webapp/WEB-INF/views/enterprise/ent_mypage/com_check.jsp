<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<link rel="stylesheet" href="${path }/resources/css/company/com_my_page/com_check.css"/>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=""/>
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
    <div class="check_container">
   		<div class="check_box">
   			<div class="volunteer_title">
  					<h2>지원자 조회</h2>
  					<p><span>0</span>명의 지원자가 있습니다.</p>
  				</div>
   			<table class="table table" id="volunteer_list">
   				<thead>
   					<tr>
   						<th>NO</th>
   						<th>이름</th>
   						<th>나이</th>
   						<th>성별</th>
   						<th>거주지</th>
   						<th>이력서 보기</th>
   					</tr>
   				</thead>
					<tbody>
						<tr>
							<td>1</td>	
	                    	<td>지원자</td>
	                        <td>23</td>
	                        <td>남</td>
	                        <td>서울시 강북구</td>
	                        <td><button class="btn btn">Y/X</button></td>
	   					</tr>
  					</tbody>
   			</table>
   		</div>
   	</div>
</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>