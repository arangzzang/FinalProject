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
     <form name="noticeFrm" action="${path }/footer/insertNotice.do" method="post">
		<div id="board-container">
        	<div class="title">
            	<input type="text" class="form-control" placeholder="제목" name="noticeTitle" id="noticeTitle" required>
            </div>
            <div class="text">
            	<textarea class="form-control" name="noticeContent" id="noticeContent" placeholder="내용" required></textarea>
            </div>
            <br/>
            <div class="save_btn">
            	<input type="submit" class="btn btn-outline-success" value="저장" >
        	</div>
    	</div>
      </form>
</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>