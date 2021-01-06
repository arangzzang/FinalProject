<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

<div id="chartContainer" style="height: 380px; width: 100%;"></div>
<script>
window.onload = function () {
	
var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	
	title:{
		text:""
	},
	axisX:{
		interval: 1
	},
	axisY2:{
		interlacedColor: "rgba(1,77,101,.2)",
		gridColor: "rgba(1,77,101,.1)",
		title: ""
	},
	data: [{
		type: "bar",
		name: "companies",
		axisYType: "secondary",
		color: "#00c362",
		dataPoints: [
			{ y: 7, label: "경영진" },
			{ y: 9, label: "승진기회 및 가능성" },
			{ y: 5, label: "복지 및 급여" },
			{ y: 7, label: "사내 만족도" },
			{ y: 3, label: "총 평점" },
		]
	}]
});
chart.render();

}
</script>
    

    
	
