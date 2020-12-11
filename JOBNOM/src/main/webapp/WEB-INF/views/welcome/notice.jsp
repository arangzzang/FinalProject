<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var= "path" value="${pageContext.request.contextPath }"/>

<link rel="stylesheet" href="${path }/resources/css/footer/notice.css"/>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=" "/>
</jsp:include>
		<nav class="navbar navbar-expand-sm justify-content-center">
            <ul class="navbar-nav">
                <li class="nav-item footmenu">
                    <a class="nav-link" href="#">이용약관</a>
                </li>
                <li class="nav-item footmenu">
                    <a class="nav-link" href="#">개인정보처리방침</a>
                </li>
                <li class="nav-item footmenu">
                    <a class="nav-link" href="#">공지사항</a>
                </li>
                <li class="nav-item footmenu">
                    <a class="nav-link" href="#">FAQ</a>
                </li>
                <li class="nav-item footmenu">
                    <a class="nav-link" href="#">고객문의</a>
                </li>
            </ul>
        </nav>
<!-- 공지사항 시작 -->
    <div id="contents_wrap">
	            <div class="write">
	                <button onclick="location.href='${path}/footer/noticeWrite.do'" id="notice_btn"class="write_btn">글쓰기</button>
	            </div>
        <div id="contents" class="cont_col1">
        
            <div class="cont_wrap">
                <div id="noticeNoticeCon" class="notranslate">
                    <div class="section_group">
                        <!-- 공지사항 작성후 리스트 출력 -->
                        <c:forEach items="${list }" var="n">
	                        <form action="${path}/welcome/noticeUpdate.do" method="post" style="margin: auto;">
		                        <section class="notice">
		                            <div class="title new">
		                                <h2 class="subject">${n.NOTICE_TITLE }</h2>
		                                <p class="date notranslate"><fmt:formatDate value ="${n.NOTICE_WRITEDATE }" pattern="YYYY.MM.DD"/></p>
		                            </div>
		                            <div class="con notranslate">
		                                <p>${n.NOTICE_CONTENTS }</p>
			                            <input type="submit"  name="notice_btn" class="write_btn" value="수정하기">
			                            <input type="text" style="display:none;" name="noticeNo" value="${n.NOTICE_NO}">
		                            </div>
		                        </section>
	                        </form>
                        </c:forEach>
                    </div>
                    <!-- 펴기 접기 스크립트 -->
                    <script>
                    $(document).ready(function() {
                        $('.notranslate section').on('click', function() {
                            if($(this).hasClass('active'))
                            {
                                $('.notranslate section.active div.con').hide();
                                $(this).removeClass('active');
                            }
                            else
                            {
                                $(this).addClass('active');
                                $('.notranslate section.active div.con').show();
                              
                            }
                            
                        });
                    });
                    </script>
                    <!-- 펴기 접기 스크립트 끝 -->
                    
                </div>
            </div>
        </div>
    </div>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
