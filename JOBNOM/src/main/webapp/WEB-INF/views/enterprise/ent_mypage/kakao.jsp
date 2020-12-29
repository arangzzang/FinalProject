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
<jsp:include page="/WEB-INF/views/enterprise/ent_mypage/myCom_info.jsp">
	<jsp:param name="myCom_info" value=""/>
</jsp:include>
<jsp:include page="/WEB-INF/views/enterprise/ent_mypage/ent_common.jsp">
	<jsp:param name="subheader" value=""/>
</jsp:include> 
    
    
    
    
    





</section>
<script>
	function applyAd(){
		location.replace("path/com/applyAd.do");
	}
	

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