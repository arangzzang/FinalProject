<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

<div id="chartContainer" style="height: 380px; width: 100%;"></div>
<c:set var="cNo1" value="${src[0].review_satisfaction }" />
<c:set var="cNo2" value="${src[0].review_welfare }" />
<c:set var="cNo3" value="${src[0].review_promotion }" />
<c:set var="cNo4" value="${src[0].review_executive }" />
<script>
	window.onload = function() {
		var cNo1 = parseInt("${cNo1}");
		var cNo2 = parseInt("${cNo2}");
		var cNo3 = parseInt("${cNo3}");
		var cNo4 = parseInt("${cNo4}");

		var chart = new CanvasJS.Chart("chartContainer", {
			animationEnabled : true,

			title : {
				text : ""
			},
			axisX : {
				interval : 1
			},
			axisY2 : {
				interlacedColor : "rgba(1,77,101,.2)",
				gridColor : "rgba(1,77,101,.1)",
				title : ""
			},
			data : [ {
				type : "bar",
				name : "companies",
				axisYType : "secondary",
				color : "#00c362",
				dataPoints : [ {
					y : cNo4,
					label : "경영진"
					//review_executive
				}, {
					y : cNo3,
					label : "승진기회 및 가능성"
					//review_promotion
				}, {
					y : cNo2,
					label : "복지 및 급여"
					//review_welfare
				}, {
					y : cNo1,
					label : "사내 만족도"
					//review_satisfaction
				} ]
			} ]
		});
		chart.render();

	}
</script>




