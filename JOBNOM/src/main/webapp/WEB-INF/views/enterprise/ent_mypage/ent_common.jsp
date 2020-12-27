<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<div class="container">
   <nav class="navbar navbar-expand-sm navbar-light ">
      <ul class="navbar-nav">
         <li class="nav-item">
            <a class="nav-link" href="${path }/jobnom/com/ent_edit.do">회원정보수정</a>
         </li>
         <li class="nav-item dropdown">
            <a class="nav-link" href="${path }/jobnom/com/mypage.do">나의공고</a>
         </li>
         <li class="nav-item">
            <a class="nav-link" href="${path }/jobnom/com/membership.do">멤버십</a>
         </li>
         <c:if test="${Enterprise.entMembership eq '유료회원' }">
            <li class="nav-item">
               <a class="nav-link" href="${path }/jobnom/com/entBanner.do">배너</a>
            </li>             
          </c:if>   
      </ul>
   
   </nav>
</div>   