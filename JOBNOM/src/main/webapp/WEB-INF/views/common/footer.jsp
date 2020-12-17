<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

	<div class="footer">
         <footer>
             <div class="footerHeadline">
                 <ul id="footMenu">
                     <li><a href="#" class="footerMenus">이용약관</a></li>|
                     <li><a href="#" class="footerMenus">개인정보처리방침</a></li>|
                     <li><a href="${path }/welcome/FAQ" class="footerMenus">FAQ</a></li>|
                     <li><a href="${path }/footer/notice.do" class="footerMenus">공지사항</a></li>|
                     <li><a href="#" class="footerMenus">고객문의</a></li>
                 </ul>
                 <ul class="footicon">
                     <li><a href="#" class="icon">아이콘1</a></i></li>&nbsp;  &nbsp;
                     <li><a href="#" class="icon">아이콘2</a></i></li>
                 </ul>
             </div>
             <div class="footbody">
                 <div>
                     팀원 : 조현 , 인하준, 이요셉, 김정민, 황진호
                 </div>
                 <div>
                     팀명 : 000
                 </div>
                 <div>
                     프로젝트명 : 000
                 </div>
             </div>
         </footer>
     </div>
   </div>
   
</body>
</html>