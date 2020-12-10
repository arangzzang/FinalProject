<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var= "path" value="${pageContext.request.contextPath }"/>
<link rel="stylesheet" href="${path }/resources/css/footer/noticeUpdate.css"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=" "/>
</jsp:include>
<section id="content">
<c:set value="${updateNotice}" var="n"/>
 	 <form name="noticeFrm" method="post">
		<div id="board-container">
			<div class="title">
            	<input type="text" class="form-control" name="noticeTitle" id="noticeTitle" value="${n.noticeTitle }" required>
            </div>
            <div class="text">
            	<textarea class="form-control" name="noticeContents" id="noticeContents" required>${n.noticeContents}</textarea>
            </div>
            <input type="text" style="display:none"  name="noticeNo" value="${n.noticeNo}">
            <div class="update_btn">
	            <input type="submit" class="btn btn-outline-success" class="write_btn" value="수정하기" formaction="${path }/welcome/noticeUpdateEnd.do" >
	            <input type="submit" class="btn btn-outline-success" value="삭제하기" formaction="${path }/welcome/noticeDelete.do">&nbsp;
        	</div>
   		 </div>
      </form>
</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
