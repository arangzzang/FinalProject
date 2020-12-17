<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<link rel="stylesheet" href="${path }/resources/css/mypage/updatepassword.css"/>

    <form action="/action_page.php" class="needs-validation" novalidate>
        <div class="maininfo">
            <h1 class="maintitle">비밀번호 변경</h1>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-gruop">
                        <label for="uname1">비밀번호</label>
                        <input type="password" class="form-control" id="uname1" placeholder="비밀번호를 입력해주세요." name="password" required>
                        <div class="valid-feedback">비밀번호 입력완료.</div>
                        <div class="invalid-feedback">비밀번호를 입력해주세요.</div>
                    </div>
                    <div class="form-gruop">
                        <label for="uname2">비밀번호확인</label>
                        <input type="password" id="uname2" class="form-control" placeholder="2차 비밀번호를 입력해주세요." name="password2" required>
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
