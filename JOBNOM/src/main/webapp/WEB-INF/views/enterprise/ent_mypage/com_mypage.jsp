<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<jsp:include page="/WEB-INF/views/common/header.jsp">
   <jsp:param name="title" value=" "/>
</jsp:include>
<section id="content">
<jsp:include page="/WEB-INF/views/enterprise/ent_mypage/ent_common.jsp">
	<jsp:param name="subheader" value=""/>
</jsp:include> 
<jsp:include page="/WEB-INF/views/enterprise/ent_mypage/myCom_info.jsp">
	<jsp:param name="myCom_info" value=""/>
</jsp:include>
    
    <div class="container table-responsive no-wrap co-lg-6 text-center">
		<h2>나의공고</h2>
		<p><span>${totalData }</span>개의 공고가 있습니다.</p>
		<div class="row">
			<div class="col-sm-10"></div>
			<div class="col-sm-2">
				<button class="btn btn_1 btn-success my-2 my-sm-0 text-nowrap" 
					style="margin:10px; border:2px solid black;" onclick="applyAd();">공고 올리기</button>
			</div>
		</div>
		<br>
		<table class="table" id="anno_list">
			<thead>
				<tr class="text-nowrap">
					<th>NO</th>
					<th style="display: none;">회사이름</th>
					<th>공고이름</th>
					<th>등록일자</th>
					<th>마감일자</th>
					<th>공고 상세보기</th>
					<th>공고 수정하기</th>
					<th>지원자 조회</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${res }" var="r">
				<form action="${path}/com/com_check.do" method="post">
				<tr>
						<td><input type="hidden" value="${r.rec_no}" name="rec_no" id="rec_no"><c:out value="${r.rec_no}"/></td>
	                    <td style="display: none;"><input type="hidden" value="${r.ent_no}" name="ent_no" id="ent_no"><c:out value="${r.ent_no }"/></td>
	                    <td><input type="hidden" value="${r.rec_title}" name="rec_title" id="rec_title"><c:out value="${r.rec_title }"/></td>
	                    <td><input type="hidden" value="${r.rec_startdate}" name="rec_startdate" id="rec_startdate"><fmt:formatDate value="${r.rec_startdate }" pattern="yyyy-MM-dd"/></td>
	                    <td><input type="hidden" value="${r.rec_enddate}" name="rec_enddate" id="rec_enddate"><fmt:formatDate value="${r.rec_enddate }" pattern="yyyy-MM-dd"/></td>
	                    <td><button type="button" class="btn btn">상세보기</button></td>
	                    <td><button type="button" class="btn btn">수정</button></td>
	                    <td><input type="submit" class="btn btn" value="조회"></td>
				</tr>
				</form>
					</c:forEach>
			</tbody>
		</table>
    		</div>
    	</div>
    	<div id="pageBar" style="margin-top: 20px;">
			${pageBar }
		</div>
	</section>
<script>
	function applyAd(){
		location.replace("${path }/com/applyAd.do");
	}

</script>	
	
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>