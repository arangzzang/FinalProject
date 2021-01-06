<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<jsp:include page="/WEB-INF/views/common/header.jsp">
   <jsp:param name="title" value=""/>
</jsp:include><br><br><br>
<section id="content">
    

    
	<div id="chartContainer" class="container" style="height: 370px; width: 100%;"></div>
	<br><br>
	<div id="chartContainer2" class="container" style="height: 370px; width: 100%;"></div> 
	<br><br><br><br>   
	<div id="chartContainer3" class="container" style="height: 370px; width: 100%;"></div> 
	<br><br>  
		<c:set var="cNo1" value="${memDataC2[0].count }"/>
		<c:set var="cNo2" value="${memDataC2[1].count }"/>
		<c:set var="cNo3" value="${memDataC2[2].count }"/>
		<c:set var="cNo4" value="${memDataC2[3].count }"/>
		<c:set var="cNo5" value="${memDataC2[4].count }"/>	
		<c:set var="cNo6" value="${memDataC2[5].count }"/>	
		
		<c:set var="eNo1" value="${entDataC2[0].count }"/>
		<c:set var="eNo2" value="${entDataC2[1].count }"/>
		<c:set var="eNo3" value="${entDataC2[2].count }"/>
		<c:set var="eNo4" value="${entDataC2[3].count }"/>
		<c:set var="eNo5" value="${entDataC2[4].count }"/>	
		<c:set var="eNo6" value="${entDataC2[5].count }"/>
	
	
<%-- 	<c:out value="${payArr }"/> --%>
	<br><br>
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
			theme: "light2", // "light1", "light2", "dark1", "dark
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
		var eNo1 = parseInt("${eNo1}");
		var eNo2 = parseInt("${eNo2}");
		var eNo3 = parseInt("${eNo3}");
		var eNo4 = parseInt("${eNo4}");
		var eNo5 = parseInt("${eNo5}");
		var eNo6 = parseInt("${eNo6}");
		var chart2 = new CanvasJS.Chart("chartContainer2", {
			exportEnabled: true,
			animationEnabled: true,
			title:{
				text: "구인공고 현황"
			},
			legend:{
				cursor: "pointer",
				itemclick: explodePie
			},
			data: [{
				type: "pie",
				legendText: "{name}",
				showInLegend: true,
				toolTipContent: "{name}: <strong>{y}</strong>",
				indexLabel: "{name} - {y}",
				dataPoints: [
					{ y: eNo1, name: "IT/인터넷", exploded:true },
					{ y: eNo2,  name: "금융/재무" },
					{ y: eNo3,  name: "의약" },
					{ y: eNo4,  name: "서비스/고객지원" },
					{ y: eNo5, name: "마케팅/시장조사" },
					{ y: eNo6,  name: "교육" }
				]
			}]
		});

		var chart3 = new CanvasJS.Chart("chartContainer3", {
			animationEnabled: true,
			theme: "light2",
			title:{
				text: "연봉별 지원자 수"
			},
			data: data
		});
		
		
		chart.render();
		chart2	.render();	
		chart3.render();

		}
		console.log("${payArr}");
		var data = [];
		var dataSeries = { type: "line" };
		var dataPoints = ${payArr};
		
		dataSeries.dataPoints = dataPoints;
		data.push(dataSeries);    

		function explodePie (e) {
			if(typeof (e.dataSeries.dataPoints[e.dataPointIndex].exploded) === "undefined" || !e.dataSeries.dataPoints[e.dataPointIndex].exploded) {
				e.dataSeries.dataPoints[e.dataPointIndex].exploded = true;
			} else {
				e.dataSeries.dataPoints[e.dataPointIndex].exploded = false;
			}
			e.chart.render();
	
		}
</script>	
	
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>