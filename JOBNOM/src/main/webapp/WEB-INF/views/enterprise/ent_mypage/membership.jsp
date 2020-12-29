<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<link rel="stylesheet" href="${path }/resources/css/company/com_my_page/com_mypage.css"/> 
<jsp:include page="/WEB-INF/views/common/header.jsp">
   <jsp:param name="title" value=" "/>
</jsp:include>
<section id="content">
<jsp:include page="/WEB-INF/views/enterprise/ent_mypage/ent_common.jsp">
   <jsp:param name="subheader" value=""/>
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
       <button class="jmkbtn btn-lg" id="join">멤버십 가입</button>
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
 	$("#join").click(function(){
 		alert("hello");
 		location.href="${path}/com/membership_end.do";
 	})
 	
 	$.ajax({
 		method:"POST",
 		url:"https://kapi.kakao.com/v1/payment/ready",
 		data:{cid:"TC0ONETIME"},
 		headers:{Authorization: "KakaoAK 214bfaf7b744b18df54f42d1770d50b0"}
 	})
 		.done(function(msg){
 			console.log(msg);
 			alert("Data Saved: " + msg);
 		});
 		
 	
 	
 	
</script>	
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>