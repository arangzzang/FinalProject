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
 <section class="notice">
   <div class="title new">
       <h2 class="subject"><c:out value="${n.NOTICE_TITLE }"/></h2>
   </div>
   <div class="con notranslate">
       <p><c:out value="${n.NOTICE_CONTENTS }"/></p>
       <button onclick="location.href='${path}/footer/noticeUpdateEnd.do'" id="notice_btn" class="write_btn">수정하기</button>
        <button onclick="location.href='${path}/footer/noticeUpdateEnd.do'" id="notice_btn" class="write_btn">삭제하기</button>
   </div>
</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
