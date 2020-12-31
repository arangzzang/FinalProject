<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<link rel="stylesheet" href="../resources/css/Hire/supportingCompany.css" />
<link rel="stylesheet" href="${path }/resources/css/mypage/interviewList.css"/>
<!-- <div class="maininfo-parent one">
	<div class="supportingCompanyMain">
		<div class="supportingCompanyTitle">입사지원한 기업</div>
		<div class="supportingCompanyInto"> ∙ 잡플래닛 전용 프로필로 지원한 내역만 확인 됩니다.<br>
		∙ 입사지원을 한 후 내 프로필을 수정해도 이전에 지원한 프로필의 내용은 바뀌지 않습니다. <br>∙ 따라서 회사마다 프로필 내용을 다르게 지원할 수 있습니다.
		 </div>
		<div class="myHyreSupportView">
	    	<div class="myHyreSupportCount">총 0개</div>
		    <div class="myHyreSupportDetail">
		        <div class="myHyreSupportDetail1">회사명</div>
		        <div class="myHyreSupportDetail2">지원내용</div>
		        <div class="myHyreSupportDetail3">지원일/취소일</div>
		    </div>
		    <div class="myHyreSupportListAll">
		        <div class="myHyreSupportList1">(주)카카오 모빌리언스</div>
		        <div class="myHyreSupportList2">[웹개발]java,spring 기능 이용 웹 구현</div>
		        <div class="myHyreSupportList3">
		           <div>지원일 : 2020/12/02</div>
		           <div>취소일 : 2020/12/20</div>
		       </div>
		   	</div>
		</div>
	</div>
</div> -->


<div class="myHireListAll">
		<div class="myHireListAllLeft">
			<div class="myHireList">
				<div class="myHireListTag">
				</div>
			</div>
		</div>

		<div class="myHyreSupportView">
			<c:if test="${commonLogin != null }">
				<div class="myHyreSupportCount">총 ${totalDataSu }개의저장된 채용이
					있습니다.</div>

			</c:if>
			<c:if test="${commonLogin == null }">
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#login">회원가입/로그인</button>
			</c:if>
			<table style="padding-left: -80px;">
				<tr class="myHyreSupportDetail" style="width: 700px; ">
					<th class="myHyreSupportDetail1">회사명</th>
					<th class="myHyreSupportDetail2">지원내용</th>
					<th class="myHyreSupportDetail3">지원일/취소일</th>

				</tr>
				<%-- <c:if test="${commonLogin !=null && commonLogin ==null}"> --%>
				<c:forEach items="${support}" var="s">
					<tr class="myHyreSupportListAll" style="width: 720px; height: 48px ">
						<th class="myHyreSupportList1"><c:out value="${s.rec_title}" /></th>
						<th class="myHyreSupportList2"><c:out
								value="${s.rec_contents}" /></th>
						<th class="myHyreSupportList3">지원일 : <fmt:formatDate
								value="${s.support_day}" pattern="yyyy.MM.dd" />
						</th>
					</tr>
				</c:forEach>
			</table>
			<div id="pageBar">${pageBar }</div>
		</div>
	</div>
	  
	  
	  
	  
	  
	  
	  
	  
	  
