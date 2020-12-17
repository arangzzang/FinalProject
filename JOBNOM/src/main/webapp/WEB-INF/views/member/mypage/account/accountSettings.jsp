<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
	
	<form action="${path}/member/changeEmail" onsubmit="return mem_changeEmail();" class="needs-validation" novalidate>
		<div class="maininfo">
		    <h1 class="maintitle">계정설정</h1>
		    <div>
		        <h3>회원 이메일</h3>
		        <p>${mem.memEmail}</p>
		        <div class="form-gruop">
		            <label for="uname">변경할 이메일 주소</label>
		            <input type="email" class="form-control changeEmail" id="uname" placeholder="변경하실 이메일을 작성해주세요." name="memName" required>
		        </div>
		    </div>
		    <div class="text-center enrollBtn">
		        <input type="submit" class="btn btn-primary changeEmailBtn" value="이메일 변경">
		    </div>
		</div>
	</form>
                            더 이상 job.nom을 이용하지 않는다면 <a href="">회원탈퇴</a>
	
	