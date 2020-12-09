<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${path }/resources/js/jquery-3.5.1.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"><!--Font Awesome-->
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${path }/resources/css/header.css"/>
<link rel="stylesheet" href="${path }/resources/css/footer.css"/>
</head>
<body>

   <div id="container">
      <header>
         <nav class="navbar navbar-expand-lg navbar-light headerContainerWrap"><!-- bg-light -->
            <a class="navbar-brand" href="${path }">
               <img src="" class="logo" >
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" 
            data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
            aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
               <ul class="navbar-nav mr-auto mem_nav">
                  <li class="nav-item">
                     <a class="menus" href="${path }/Hire/HireHome.do">채용</a><!-- nav-link -->
                  </li>
                  <li class="nav-item">
                     <a class="menus" href="${path }/enterprice/companyList.do">기업</a><!-- nav-link -->
                  </li>
               </ul>
               <c:if test="${commonLogin !=null && commonLogin.type == 2 }" >
	               	<ul class="navbar-nav mr-auto ent_nav">
	                  <li class="nav-item">
	                     <a class="menus" href="">추세파악</a>
	                  </li>
	                  <li class="nav-item">
	                     <a class="menus" href="">헤드헌팅</a>
	                  </li>
	                  <li class="nav-item">
	                     <a class="menus" href="">기업 알아보기</a>
	                  </li>
	               </ul>
               </c:if>
<%--                <c:if test="${common.admin != null }" > --%>
<!-- 	               	<ul class="navbar-nav mr-auto admin_nav"> -->
<!-- 	                  <li class="nav-item"> -->
<!-- 	                     <a class="menus" href="">추세파악</a>nav-link -->
<!-- 	                  </li> -->
<!-- 	                  <li class="nav-item"> -->
<!-- 	                     <a class="menus" href="">헤드헌팅</a>nav-link -->
<!-- 	                  </li> -->
<!-- 	                  <li class="nav-item"> -->
<!-- 	                     <a class="menus" href="">기업 알아보기</a>nav-link -->
<!-- 	                  </li> -->
<!-- 	               </ul> -->
<%--                </c:if> --%>
               <c:if test="${commonLogin == null}">
                  <!-- 모달 버튼 -->
               <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop">
                     	회원가입/로그인
               </button>
               <!-- 모달 창 -->
               <div class="modal fade" id="staticBackdrop" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                     <div class="modal-content">
                        <div class="modal-header">
                           <h5 class="modal-title" id="staticBackdropLabel">로그인</h5>
                           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                           </button>
                        </div>
                        <div class="modal-body">
                           <form action="${path }/common/commonLogin" class="needs-validation" method="post" novalidate>
	                           	<div class="modal-body">
		                              <div class="form-group">
		                                 <label for="email">E_mail:</label>
		                                 <input type="email" class="form-control email" id="email" placeholder="이메일을 입력해주세요." name="email" required>
		                                 <div class="valid-feedback">이메일입력완료.</div>
		                                 <div class="invalid-feedback">E_mail을 입력해주세요.</div>
		                              </div>
		                              <div class="form-group">
		                                 <label for="password">비밀번호:</label>
		                                 <input type="password" class="form-control password" id="password" placeholder="비밀번호를 입력해주세요." name="password" required>
		                                 <div class="valid-feedback">비밀번호 입력완료.</div>
		                                 <div class="invalid-feedback">비밀번호를 입력해주세요.</div>
		                              </div>
		                              <label>
		                                 <input type="checkbox" name="remember">E_mail저장하기
		                              </label>
                              	</div>
                              	<div class="modal-footer">
		                              <div class="row">
		                                 <div class="col-6 text-center" >
		                                    <button type="submit" class="btn btn-outline-success my-4 my-sm-0" onclick="logincheck()">로그인</button>
		                                 </div>
		                                 <div class="col-6 text-center" >
		                                    <button type="button" class="btn btn-outline-success my-4 my-sm-0" onclick="location.href='${path}/member/enrollMember'">회원가입</button>
		                                 </div>
		                                 <div class="col-md-7 offset-md-5">
		                                    <span class="psw"><a href="#">이메일 찾기</a></span>/
		                                    <span class="psw"><a href="#">비밀 번호 찾기</a></span>
		                                 </div>
		                              </div>
                              	</div>
                           </form>
                        </div>
                     </div>
                  </div>
               </div>
               </c:if>
               <c:if test="${commonLogin != null && commonLogin.type == 3 }">
                  <span><a href="${path }/member/myPage?memNo=${commonLogin.memNo}"><i class="fas fa-user-tie"></i></a></span>
                  &nbsp;
                  <button class="btn btn-outline-success my-4 my-sm-0" type="button" onclick="location.replace('${path}/common/logout');">로그아웃</button>
               </c:if>
               <c:if test="${commonLogin !=null && commonLogin.type == 2 }">
                  <span><a href="${path }/enterprice/myPage?ent_no=${commonLogin.memNo}"><i class="far fa-building"></i></a></span>
                  &nbsp;
                  <button class="btn btn-outline-success my-4 my-sm-0" type="button" onclick="location.replace('${path}/common/logout');">로그아웃</button>
               </c:if>
             </div>
          </nav>
          <!-- 검색창 시작 -->
		  <div class="searchbar_section" id="searchbar_section">
		    <div class="wrap">
		        <form action="${path }/search/searchResult.do" id="search_form" method="post">
		            <div class="schbar_green" >
		                <div class="schbar">
		                    <i class="fas fa-search"></i>
		                    <label class="placeholder">
		                        <span class="placeholder_txt"></span>
		                        <input autocomplete=”off” type="text" class="input_search" id="search_bar_search_query" maxlength="201" name="query" placeholder="기업,채용공고를 검색해 보세요">
		                    </label>
		                    <button class="btn_schbar">검색</button>
		                </div>
		            </div>
		        </form>
		    </div>
		</div>
		<!-- 검색창 끝 -->
      </header>
	