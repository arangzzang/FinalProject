<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${path }/resources/js/jquery-3.5.1.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<!--Font Awesome-->
<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${path }/resources/css/header.css" />
<link rel="stylesheet" href="${path }/resources/css/footer.css" />
</head>
<body>
<%-- 	<c:if test="${not empty cookie.loginCheck}"> --%>
<%-- 		<c:set var="checked" value="checked" /> --%>
<%-- 	</c:if> --%>

	<div id="container">
		<header>
			<div class="fixed-top" id="fix">
				<nav class="navbar navbar-expand-lg navbar-light headerContainerWrap">
					<!-- bg-light -->
					<a class="navbar-brand" href="${path }"><img src="${path }/resources/image/joblogo-removebg-preview.png"class="logo"></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarNav" aria-controls="navbarNav"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbarNav">
						<input type="hidden" value="${commonLogin.type}" class="memType">
						<ul class="navbar-nav mr-auto mem_nav">
							<li class="nav-item"><a class="menus"
								href="${path }/Hire/HireHome.do?memNo=${commonLogin.memNo}">채용

							</a></li>
							<li class="nav-item"><a class="menus"
								href="${path }/enterprise/companyList.do">기업</a></li>
						</ul>
						<c:if
							test="${commonLogin !=null && commonLogin.type == 2 || commonLogin.type == 1}">
							<ul class="navbar-nav mr-auto ent_nav">
								<li class="nav-item"><a class="menus"
									href="${path }/com/charts">추세파악</a></li>
								<li class="nav-item"><a class="menus" href="${path }/scout">헤드헌팅</a>
								</li>
								<li class="nav-item"><a class="menus"
									href="${path }/enterprise/companyList.do">기업 알아보기</a></li>
							</ul>
						</c:if>
						<c:if test="${commonLogin !=null && commonLogin.type == 1 }">
							<ul class="navbar-nav mr-auto admin_nav">
								<li class="nav-item"><strong>관리자님 환영합니다</strong></li>
							</ul>
						</c:if>
						<c:if test="${commonLogin == null}">
							<!-- 모달 버튼 -->
							<button type="button" class="btn btn-outline-success"
								data-toggle="modal" data-target="#login">회원가입/로그인</button>


						</c:if>
						<c:if test="${commonLogin != null && commonLogin.type == 3 }">
							<span><a
								href="${path }/member/myPage?memNo=${commonLogin.memNo}"><i
									class="fas fa-user-tie"></i></a></span>
					&nbsp;
					<button class="btn btn-outline-success my-4 my-sm-0" type="button"
								onclick="location.replace('${path}/common/logout');">로그아웃</button>
						</c:if>
						<c:if test="${commonLogin !=null && commonLogin.type == 2 }">
							<span><a
								href="${path }/com/mypage.do?ent_no=${commonLogin.memNo}"><i
									class="far fa-building"></i></a></span>
					&nbsp;
					<button class="btn btn-outline-success my-4 my-sm-0" type="button"
								onclick="location.replace('${path}/common/logout');">로그아웃</button>
						</c:if>
						<c:if test="${commonLogin !=null && commonLogin.type == 1 }">
							<span><a href="${path }/memMg"><i
									class="fas fa-glasses"></i></a></span>
					&nbsp;
					<button class="btn btn-outline-success my-4 my-sm-0" type="button"
								onclick="location.replace('${path}/common/logout');">로그아웃</button>
						</c:if>
					</div>
				</nav>
			</div>
			<!-- 모달 창 -->
			<div class="modal fade" id="login" data-backdrop="static"
				tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel"
				aria-hidden="true">
				<div class="modal-dialog header_md" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="staticBackdropLabel">로그인</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<form action="${path }/common/commonLogin"
								onsubmit="return logincheck()" class="needs-validation"
								method="post" novalidate>
								<div class="modal-body">
									<div class="form-group">
										<label for="email">E_mail:</label> <input type="email"
											class="form-control email" id="email"
											placeholder="이메일을 입력해주세요." name="email"
											value="${cookie.loginCheck.value }" required>

									</div>
									<div class="form-group">
										<label for="password">비밀번호:</label> <input type="password"
											class="form-control password" id="password"
											placeholder="비밀번호를 입력해주세요." name="password" required>
									</div>
									<label>
										<input type="checkbox" name="loginCheck" ${not empty cookie.loginCheck?"checked":""}>
										E_mail저장하기
									</label>
								</div>
								<div class="modal-footer">
									<div class="row">
										<div class="col-6 text-center">
											<input type="submit"
												class="btn btn-outline-success my-4 my-sm-0" value="로그인">
											</button>
										</div>
										<div class="col-6 text-center">
											<button type="button"
												class="btn btn-outline-success my-4 my-sm-0"
												onclick="location.href='${path}/member/enrollMember'">회원가입</button>
										</div>
										<div class="col-md-7 offset-md-5">
											<span class="psw"><a href="#">이메일 찾기</a></span>/ <span
												class="psw"><a href="#">비밀 번호 찾기</a></span>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</header>
		<script>
			$(function() {
				//로그인 타입구분
				let memType = $(".memType").val()
				console.log(memType);
				if (memType == 2) {
					$(".mem_nav").css("display", "none")
				}
			});
			//이메일, 비밀번호 정규표현식
			function logincheck() {
				let emailId = $(".email").val();
				let pwval = $(".password").val()
				let re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
				var repw = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;

				if (emailId != "") {
					if (!re.test(emailId)) {
						alert("이메일 형식이 아닙니다.")
						console.log(2);
						return false;
					}
					;
				} else {
					alert("아이디를 작성해주세요");
					return false;
				}
				;
				//비밀번호 8자리 이상
				//숫자,영대문자,영소문자,특수문자 포함
				//공백X 같은문자 4번 반복X 아이디 X 한글 X
				// 			if(pwval==""){
				//                 alert("비밀번호를 입력해주세요")
				//                 return false;
				//             }else if(!repw.test(pwval)){
				//                 alert('비밀번호는 8자 이상이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함해야 합니다.');
				//                 return false;
				//             }else if(/(\w)\1\1\1/.test(pwval)){
				//                 alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
				//                 return false;
				//             }else if(pwval.search(emailId) > -1){
				//                 alert("비밀번호에 아이디가 포함되었습니다.");
				//                 return false;
				//             }else if(pwval.search(/\s/) != -1){
				//                 alert("비밀번호는 공백 없이 입력해주세요.");
				// 				$.trim(pwval)
				//                 return false;
				//             }else if(hangulcheck.test(pwval)){
				//                 alert("비밀번호에 한글을 사용 할 수 없습니다."); 
				//             }else {
				//                 console.log("통과");
				//             };
			};
		</script>