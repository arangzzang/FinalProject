<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<link rel="stylesheet" href="${path }/resources/css/company/com_job.css" />

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
									<a href="" class="logo_wrap"> <img
										src="${path }/resources/enterprise/logo/${list[0].ENT_NO }/${list[0].ENT_LOGO}"
										style="width: 104px; height: 104px;">
									</a>
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
							href="${path }/enterprise/com_info.do?entNo=${list[0].ENT_NO}"><h2>소개</h2></a>
						</li>
						<li class="li_menu"><a
							href="${path }/enterprise/com_review.do?entNo=${list[0].ENT_NO}"><h2>리뷰</h2></a>
						</li>
						<li class="li_menu"><a
							href="${path }/enterprise/com_interview.do?entNo=${list[0].ENT_NO}"><h2>면접후기</h2></a>
						</li>
						<li class="li_menu"><a
							href="${path }/enterprise/com_job.do?entNo=${list[0].ENT_NO}"><h2>채용</h2></a>
						</li>
					</ul>
					<div class="follow_btn">
						<button id="follow" class="btn btn">
							<i id="heart" class="far fa-heart"></i>찜하기
						</button>
					</div>
				</nav>
			</div>
		</div>
	</div>
	<div class="job_container">
		<div class="job_con_box">
			<div class="job_select">
				<select class="job_cho" name="jobBox" id="jobBox">
					<option value="#">직종</option>
					<option value="1">IT/인터넷</option>
					<option value="2">서비스</option>
					<option value="3">교육</option>
				</select> 
				<select class="job_detail">
					<option value="">직종상세</option>
				</select> 
				<select class="job_career">
					<option value="">경력구분</option>
					<option value="">신입</option>
				</select>
			</div>
			<p class="job_result">
				좋은 채용 공고 <strong>${totalData }</strong>
			</p>
		</div>
		<div class="job_items">
			<c:forEach items="${Rec }" var="Rec">
				<div class="job_item_wrap">
					<a href="${path }/Hire/announcementPage2.do?anoNum=${anoNum}">
						<span class="job_dday"><fmt:formatDate
								value="${Rec.rec_enddate }" pattern="yyyy.MM.dd" /></span>
						<div class="info_box">
							<h2 class="tit">
								<c:out value="${Rec.rec_title}" />
							</h2>
							<c:forEach items="${c2 }" var="c">
								<p class="duty">
									<c:set var="ctg" value="${Rec.rec_category }" />
									<c:if test="${c.cate_no2 == ctg }">
										<c:out value="${c.jobs2 }" />
									</c:if>
								</p>
							</c:forEach>
							<div class="label">
								<span class="tags "><c:out value="${Rec.rec_type }" /></span>
							</div>
						</div>
					</a>
				</div>
			</c:forEach>
				<c:if test="${empty Rec }">
					<section class="com_job_default">
						<div class="com_job_de_box">
							<div class="com_job_wrap">
								<i class="fas fa-exclamation fa-5x"></i>
							</div>
							<div class="com_job_wrap">
								<h2>조회된 공고가 없습니다.</h2>
							</div>
						</div>
					</section>
					</c:if>
		</div>
	</div>
	<div id="pageBar" style="margin-top: 20px;">${pageBar }</div>
</section>

<script>
	function(){
		const rc=${Rec};
		if(${Rec}==null){
			alert("공고가 없습니다.");
		}
	}
</script>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />