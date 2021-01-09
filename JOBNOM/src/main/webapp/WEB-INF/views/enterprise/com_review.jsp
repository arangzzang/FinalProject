<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<link rel="stylesheet"
	href="${path }/resources/css/company/com_style.css" />
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value="" />
</jsp:include>
<section class="main">
	<div class="cmp_info">
		<div class="cmp_top">
			<div class="cmp_top_containner">
				<div class="cmp_top_img">
					<div class="cover_img"></div>
				</div>
				<div class="cmp_top_wrap">
					<div class="cmp_wrap">
						<div class="cmp_top_box">
							<div class="compa_info">
								<div class="compa_logo">
									<c:choose>
										<c:when test="${empty list[0].ENT_LOGO }">
											<img
												src="https://jpassets.jobplanet.co.kr/assets/default_logo_share-12e4cb8f87fe87d4c2316feb4cb33f42d7f7584f2548350d6a42e47688a00bd0.png"
												style="width: 104px; height: 104px;">
										</c:when>
										<c:otherwise>
											<a href="" class="logo_wrap"> <%-- <img
												src="${path }/resources/enterprise/logo/${list[0].ENT_NO }/${list[0].ENT_LOGO}"
												style="width: 104px; height: 104px;"> --%>
											</a>
										</c:otherwise>
									</c:choose>
								</div>
								<div class="compa_info_box">
									<div class="compa_name">
										<a href=""><c:out value="${list[0].ENT_NAME }" /></a>
									</div>
									<div class="about_compa">
										<div class="compa_rating">
											<span> <i class="fas fa-star">${list[0].AVG }</i>
											</span>
										</div>
										<div class="com_info_small">
											<span><c:out value="${list[0].ENT_CATEGORY1 }" /></span> <span
												class="dot">&middot;</span> <a href=""><c:out
													value="${list[0].ENT_SITE }" /></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="com_menu">
			<div id="view_com_wrap">
				<nav id="view_com">
					<ul class="view_menu">
						<li class="li_menu"><a
							href="${path }/openApi.do?entNo=${list[0].ENT_NO}&keyword=${list[0].ENT_NAME}"><h2>소개</h2></a>
						</li>
						<li class="li_menu"><a
							href="${path }/enterprise/com_review.do?entNo=${list[0].ENT_NO}"><h2>리뷰</h2></a>
						</li>
						<li class="li_menu"><a
							href="${path }/enterprise/com_interview.do?entNo=${list[0].ENT_NO}"><h2>면접후기</h2></a>
						</li>
						<li class="li_menu"><a
							href="${path }/enterprise/com_job.do?entNo=${list[0].ENT_NO}&recNo=${list[0].REC_NO}"><h2>채용</h2></a>
						</li>
					</ul>
					<div class="follow_btn">
					<%-- <c:if
							test="${not fn:contains(followEnt.entNo,list[0].ENT_NO)}">
							<button class="btn_heart1" id="follow">
								<i class="far fa-heart" style="color: red;"></i>팔로우
							</button>
						</c:if>
						<c:if 
							test="${fn:contains(followEnt.entNo,list[0].ENT_NO)}">
							<button class="btn_heart2" id="follow2">
								<i class="fas fa-heart" style="color: red;"></i>팔로우 넵ㄴ
							</button>
						</c:if>
						<c:if test="${empty commonLogin}">
							<button class="btn_heart1" id="follow">
								<i class="far fa-heart" style="color: red;"></i>팔로우
							</button>
						</c:if> --%>
					<div class="follow_btn">
						<button id="follow" class="btn btn">
							<i id="heart" class="far fa-heart"></i>팔로우
						</button>
					</div>
					</div>
				</nav>
			</div>
		</div>
	</div>
	<div class="review_container">
		<div class="review_con_box">
			<div class="review_title">
				<i id="review_i" class="far fa-comment"><p>
						전체통계리뷰(<span>${totalData }</span>)
					</p></i>
			</div>
			<div>
				<jsp:include page="/WEB-INF/views/enterprise/com_Reviewchart.jsp">
					<jsp:param name="title" value="" />
				</jsp:include>
			</div>
		</div>
		<article class="review_select_con">
			<div class="review_select_box">
				<div class="review_select">
				</div>
				<div class="total_review">
					<span>${totalData }</span>개의 기업리뷰
				</div>
			</div>
		</article>
		<c:forEach items="${rev }" var="rev">
			<article class="review_write_con">
				<div class="write_info">
					<div class="write_info_user">
						<span><i class="fas fa-user-circle fa-2x"></i></span> <span></span>
						<span> | </span> <span>${rev.mem_check}</span> <span> | </span> <span><c:out
								value="${rev.re_enroll_date }" /></span>
					</div>
					<div class="write_rat">
						<dl class="rating">
							<dt>사내 만족도</dt>
							<dd>${rev.review_satisfaction }</dd>
							<dt>복지 및 급여</dt>
							<dd>${rev.review_welfare }</dd>
							<dt>승진기회 및 가능성</dt>
							<dd>${rev.review_promotion }</dd>
							<dt>경영진</dt>
							<dd>${rev.review_executive }</dd>
						</dl>
						<div class="write_content">
							<div class="write_content_title">
								<h2>
									<c:out value="${rev.review_title }" />
								</h2>
							</div>
							<dl class="co_list">
								<dt style="color: red">리뷰내용</dt>
								<dd class="df1">
									<span> <c:out value="${rev.review_contents }" />
									</span>
								</dd>
							</dl>
						</div>
					</div>
					<div class="btn_area">
						<button id="report_btn" class="btn btn">신고하기</button>
					</div>
				</div>
			</article>
		</c:forEach>
		<c:if test="${empty rev}">
			<article class="com_review_default">
				<div class="com_de_box">
					<div class="com_de_wrap">
						<h4>등록된 리뷰가 없습니다.</h4>
					</div>
				</div>
			</article>
		</c:if>
		<div id="pageBar" style="margin-top: 20px;">${pageBar }</div>
</section>
<script>
var result = 0;

if(${commonLogin == null}){
	result = 1;
};
$(document).ready(function() {

	/*팔로잉  */
$('.btn_heart1').on('click',function() {
	
	if(result == 1){
		alert('로그인 후 이용 해 주세요');
		
	}else{
		let entNo = ${list[0].ENT_NO}; 
		let memNo = ${commonLogin.memNo};
		$.ajax({
			url:'${path}/enterprise/followEnt.do',
			type:'POST',
			data:{entNo : entNo, memNo : memNo},
			success : function(data) {
				console.log(data);
				alert('기업을 팔로우 하셨습니다..');
				location.reload(true);
				
			}
		});
	}
});
	

	$('.btn_heart2').on('click',function() {
		
		if(result == 1){
			alert('로그인 후 이용 해 주세요');
			
		}else{
			let entNo = ${list[0].ENT_NO};
			let memNo = ${commonLogin.memNo};
			console.log(entNo);
			$.ajax({
				url:'${path}/enterprise/unfollowEnt.do',
				type:'POST',
				data:{entNo : entNo, memNo : memNo},
				success : function(data) {
					console.log(data);
					alert('기업을 팔로우 취소하셨습니다.');
					location.reload(true);
					
				}
			});
		}
	});
});
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />