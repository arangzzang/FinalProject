<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<%-- <link rel="stylesheet" href="${path }/resources/css/company/com_my_page/com_mypage.css"/> --%>
 
<link rel="stylesheet" href="${path }/resources/css/index.css"/>
<jsp:include page="/WEB-INF/views/common/header.jsp">
   <jsp:param name="title" value=" "/>
</jsp:include>
<section id="content">
<jsp:include page="/WEB-INF/views/enterprise/ent_mypage/myCom_info.jsp">
	<jsp:param name="myCom_info" value=""/>
</jsp:include>
<jsp:include page="/WEB-INF/views/enterprise/ent_mypage/ent_common.jsp">
	<jsp:param name="subheader" value=""/>
</jsp:include> 
    
    <div class="container table-responsive no-wrap co-lg-6 text-center">
		<h2>나의공고</h2>
		<p><span>0</span>개의 공고가 있습니다.</p>
		<div class="row">
			<div class="col-sm-10"></div>
			<div class="col-sm-2">
				<button class="btn btn_1 btn-success my-2 my-sm-0 text-nowrap" style="margin:10px;">공고 올리기</button>
			</div>
		</div>
		<br>
		<table class="table" id="anno_list">
			<thead>
				<tr class="text-nowrap">
					<th>NO</th>
					<th>공고이름</th>
					<th>등록일자</th>
					<th>마감일자</th>
					<th>지원자 수</th>
					<th>공고 상세보기</th>
					<th>공고 수정하기</th>
					<th>지원자 조회</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
                       <td>공고</td>
                       <td>2000.01.01</td>
                       <td>2999.01.01</td>
                       <td>15</td>
                       <td><button type="button" class="btn btn">상세보기</button></td>
                        <td><button type="button" class="btn btn">수정</button></td>
                       <td><button type="button" class="btn btn">조회</button></td>
				</tr>
			</tbody>
		</table>

    		</div>
    	</div>
	</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>