<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<jsp:include page="/WEB-INF/views/common/header.jsp">
   <jsp:param name="title" value=" "/>
</jsp:include>
<section id="content">

<jsp:include page="/WEB-INF/views/enterprise/ent_mypage/ent_common.jsp">
	<jsp:param name="subheader" value=""/>
</jsp:include> 
    

    
	<div id="chartContainer" class="container" style="height: 370px; width: 100%;"></div>
    
		<c:set var="cNo1" value="${memDataC2[0].count }"/>
		<c:set var="cNo2" value="${memDataC2[1].count }"/>
		<c:set var="cNo3" value="${memDataC2[2].count }"/>
		<c:set var="cNo4" value="${memDataC2[3].count }"/>
		<c:set var="cNo5" value="${memDataC2[4].count }"/>	
		<c:set var="cNo6" value="${memDataC2[5].count }"/>	
	
</section>
<script>
	function applyAd(){
		location.replace("path/com/applyAd.do");
	}
	window.onload = function () {
		var cNo1 = parseInt("${cNo1}");
		var cNo2 = parseInt("${cNo2}");
		var cNo3 = parseInt("${cNo3}");
		var cNo4 = parseInt("${cNo4}");
		var cNo5 = parseInt("${cNo5}");
		var cNo6 = parseInt("${cNo6}");
		
		var chart = new CanvasJS.Chart("chartContainer", {
			animationEnabled: true,
			theme: "light2", // "light1", "light2", "dark1", "dark2"
			title:{
				text: "구직자 현황"
			},
			axisY: {
				title: "인원"
			},
			data: [{        
				type: "column",  
				showInLegend: true, 
				legendText: "1차 직업군",
				dataPoints: [      
					{ y: cNo1, label: "IT/인터넷" },
					{ y: cNo2,  label: "금융/재무" },
					{ y: cNo3,  label: "의약" },
					{ y: cNo4,  label: "서비스/고객지원" },
					{ y: cNo5, label: "마케팅/시장조사" },
					{ y: cNo6,  label: "교육" }
				]
			}]
		});
		
		chart.render();


		}
</script>	
	
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>