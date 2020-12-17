<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.ArrayList" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<style>
	.jmkbtn{
		background-color:#00c362;
		color:#fff;
		text-align:center;
		border-radius:5px;
		font-weight:bold;
	}
</style>
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

<%-- <c:choose>
    <c:when test="${enterprise.type=='2'}">
    	<c:set var="ent_type" value="노동자"/>
    </c:when>
    <c:when test="${enterprise.type=='2'}">
    	<c:set var="ent_type" value="노동자"/>
    </c:when>
    <c:otherwise>
    </c:otherwise>
</c:choose> --%>
<c:set var="jno" value="${enterprise.type }"/>




    
<div class="container">
	<form action="" method="post">
		<div class="row">
			<div class="col">
  				<div class="input-group mb-3">
					<div class="input-group-prepend">
	      				<span class="input-group-text">이메일</span>
	    			</div>
					<input type="text" class="form-control" value="${enterprise.entEmail}" name="" id="">
  				</div>
  				
  				<div class="input-group mb-3">
					<div class="input-group-prepend">
	      				<span class="input-group-text">기업이름</span>
	    			</div>
					<input type="text" class="form-control" value="${enterprise.entName} ">
  				</div>
  				<div class="input-group mb-3">
					<div class="input-group-prepend">
	      				<span class="input-group-text">사업자등록번호</span>
	    			</div>
					<input type="text" class="form-control" value="${enterprise.entBusinessNo} ">					
  				</div>
  				<div class="input-group mb-3">
					<div class="input-group-prepend">
	      				<span class="input-group-text">웹페이지</span>
	    			</div>
					<input type="text" class="form-control" value="${enterprise.entSite} ">					
  				</div>
			</div>
			<div class="col">
				<div class="input-group mb-3">
					<div class="input-group-prepend">
		      				<span class="input-group-text">비밀번호</span>
	    			</div>
						<input type="text" class="form-control" value="${enterprise.entPw} ">
	  				</div>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
		      				<span class="input-group-text">회사로고</span>
		    			</div>
						<input type="text" class="form-control" value="${enterprise.entLogo} ">					
	  				</div>
	  				<div class="input-group mb-3">
					<div class="input-group-prepend">
	      				<span class="input-group-text">기업종류</span>
	    			</div>
					<input type="text" class="form-control" value="${types[2]} ">					
  					</div>
	  				<div class="input-group mb-3">
						<div class="input-group-prepend">
		      				<span class="input-group-text">1차 산업군</span>
		    			</div>
						<input type="text" class="form-control" value="${enterprise.entCategory1} ">					
	  				</div>
	  				<div class="input-group mb-3">
						<div class="input-group-prepend">
		      				<span class="input-group-text">2차 산업군</span>
		    			</div>
						<input type="text" class="form-control" value="${enterprise.entCategory2} ">					
	  				</div>
	  				<div class="input-group mb-3">
						<div class="input-group-prepend">
		      				<span class="input-group-text">대표 이름</span>
		    			</div>
						<input type="text" class="form-control" value="${enterprise.repName} ">					
	  				</div>
	  				<div class="input-group mb-3">
						<div class="input-group-prepend">
		      				<span class="input-group-text">대표 전화번호</span>
		    			</div>
						<input type="text" class="form-control" value="${enterprise.repPhone} ">					
	  				</div>
			</div>
		</div>
		<div style="margin:auto; width:10%">
	  		<input type="submit" class="jmkbtn btn-lg" value="저장">
  		</div>
	</form>
</div>
    
    
    





</section>
<script>
	function applyAd(){
		location.replace("${path }/com/applyAd.do");
	}
</script>	
	
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>