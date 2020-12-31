<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />



<link rel="stylesheet" href="../resources/css/Hire/HireMyHire.css" />


<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=" " />
</jsp:include>



<div class="modal fade" id="staticBackdrop" data-backdrop="static"
	tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel"
	aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="staticBackdropLabel">로그인</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form action="">
					<input type="text" class="userId" placeholder="이메일주소" name=""><br>
					<input type="password" class="userPw" placeholder="비밀번호(8자리 이상)"><br>
					<input type="submit" value="이메일 확인" class="loginsubmit">
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary">Understood</button>
			</div>
		</div>
	</div>
</div>


<script>
	//모달창 만들구간
</script>
<!-- ====================== -->


<section id="content">
	<div class="a">
		<div>
			<div class="hireHome">
				<a class="menus" class="menus"
					href="${path }/Hire/HireHome.do?memNo=${commonLogin.memNo}">HOME</a>

			</div>
		</div>
		<div>
			<div class="myHire">
				<a class="menus"
					href="${path }/Hire/HireMyHire.do?memNo=${commonLogin.memNo}"
					class="myHire1">My채용</a>
			</div>
		</div>
		<div>
			<div class="announcementPage">
				<a class="menus" href="${path }/Hire/HireAnnouncement.do"
					class="announcementPage1">공고페이지</a>
			</div>
		</div>
	</div>


	<div class="myHireListAll">
		<div class="myHireListAllLeft">
			<div class="myHireList">
				<div class="myHireListTag">
					<a class="menus"
						href="${path }/Hire/HireMyHire.do?memNo=${commonLogin.memNo}"
						class="myHire1">입사지원 공고 </a>
					<c:if test="${commonLogin != null }">
						<div class="count">${totalDataSu }개</div>
						<br>
						<br>
					</c:if>
					<c:if test="${commonLogin == null }">
						<div class="count">0개</div>
					</c:if>
				</div>
				<div class="myHireListTag2">
					<a class="menus"
						href="${path }/Hire/HireFavorites.do?memNo=${commonLogin.memNo}"
						class="myHire1" style="width: 117px;">즐겨찾기 채용 </a>
					<c:if test="${commonLogin != null }">
					<div class="count">${totalDataIn }개</div>
					</c:if>
					<c:if test="${commonLogin == null }">
						<div class="count">0개</div>
					</c:if>
				</div>
			</div>
		</div>

		<div class="myHyreSupportView">
			입사 지원 공고
			<div class="myHyreSupportInfo">잡놈 전용 프로필로 지원한 내역만 확인 됩니다. ∙
				입사지원을 한 후 내 프로필을 수정해도 이전에 지원한 프로필의 내용은 바뀌지 않습니다. 따라서 회사마다 프로필 내용을
				다르게 지원할 수 있습니다.</div>
			<c:if test="${commonLogin != null }">
				<div class="myHyreSupportCount">총 ${totalDataSu }개의저장된 채용이
					있습니다.</div>

			</c:if>
			<c:if test="${commonLogin == null }">
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#login">회원가입/로그인</button>
			</c:if>
			<table>
				<tr class="myHyreSupportDetail">
					<th class="myHyreSupportDetail1">회사명</th>
					<th class="myHyreSupportDetail2">지원내용</th>
					<th class="myHyreSupportDetail3">지원일/취소일</th>

				</tr>
				<%-- <c:if test="${commonLogin !=null && commonLogin ==null}"> --%>
				<c:forEach items="${support}" var="s">
					<tr class="myHyreSupportListAll">
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





</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />