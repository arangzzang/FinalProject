<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var= "path" value="${pageContext.request.contextPath }"/>

<link rel="stylesheet" href="${path }/resources/css/footer/noticeWrite.css"/>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=" "/>
</jsp:include>
<section id="content">
	<div id="board-container">
        <form name="noticeFrm" action="${path }/footer/insertNotice.do" method="post">
            <input type="text" class="form-control" placeholder="제목" name="noticeTitle" id="noticeTitle" required>
            <textarea class="form-control" name="noticeContent" id="noticeContent" placeholder="내용" required></textarea>
            <br />
            <input type="submit" class="btn btn-outline-success" value="저장" >
        </form>
    </div>
</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
