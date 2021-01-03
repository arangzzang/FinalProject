<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<script src="${path }/resources/js/kakao.js"></script>
<script>
    /* Initialize SDK with JavaScript key for your app.  */
    Kakao.init('ff679ba8218b341b6216898bdef79608');

    // Check if the initialization is successfully done.
    console.log(Kakao.isInitialized());
</script>
<style>
	.jmkbtn{
		background-color:#28a745;
		color:#fff;
		border-color:black;
	}
	
</style>
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

 <div class="container" style="text-align:center;">
    <c:if test="${Enterprise.entMembership eq '일반회원' }">
       <h4>혜택</h4>
       <div class="row" style="margin:auto; width:50%">
          <div class="col membership_benefits">
             <h6>일반회원</h6>
             <ul class="text-nowrap">
                <li>기업 리뷰 조회</li>
                <li>면접 후기 조회</li>
             </ul>
          </div>
          <div class="col membership_benefits">
             <h6>기업회원</h6>
             <ul>
                <li>배너등록</li>
             </ul>
          </div>
       </div>

	 <form method="post" action="${path }/kakaoPay">
	    <button class="jmkbtn btn-lg">카카오페이로 멤버십 가입</button>
	</form>


    </c:if>
    <c:if test="${Enterprise.entMembership eq '유료회원' }">
       <h4><c:out value="${Enterprise.entName }"/>님은 이미 멤버십이 있습니다</h4>
    </c:if>
 </div>

</section>
<script>
	function applyAd(){
		location.replace("path/com/applyAd.do");
	}
 	
</script>	
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>



<!-- 
	<button class="button" onClick="window.open('https://mockup-pg-web.kakao.com/v1/a52c6a752ce3a04904f6941bf30839ee729c384298ea3f10542362157ea8c730/info');">
     <span class="icon">Open</span>
	</button>
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" id="kkpBtn">
	  Open modal
	</button>
	
	The Modal
	<div class="modal" id="myModal">
	  <div class="modal-dialog">
	    <div class="modal-content">
	
	      Modal Header
	      <div class="modal-header">
	        <h4 class="modal-title">Modal Heading</h4>
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	      </div>
	
	      Modal body
	      <div class="modal-body">
	        Modal body..
	      </div>
	
	      Modal footer
	      <div class="modal-footer">
	        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
	      </div>
	
	    </div>
	  </div>
	</div> -->