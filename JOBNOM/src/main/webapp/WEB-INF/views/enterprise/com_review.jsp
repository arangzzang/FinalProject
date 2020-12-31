<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<link rel="stylesheet" href="${path }/resources/css/company/com_style.css"/> 
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=""/>
</jsp:include>
<!-- 기업상세헤더 -->
<jsp:include page="/WEB-INF/views/enterprise/com_info_header.jsp">
	<jsp:param name="title" value=""/>
</jsp:include>
<section class="main">
    <div class="review_container">
        <div class="review_con_box">
            <div class="review_title">
                    <i id="review_i"class="far fa-comment"><p>전체통계리뷰<span>(count)</span></p></i>
            </div> 
            <div class="review_bar">
                <div class="review_bar_num">
                    <div id="barchart_values" style="padding: 30px;"></div>
                </div>
            </div>
        </div>
        <article class="review_select_con">
            <div class="review_select_box">
                <div class="review_select">                         
                    <select class="select_cho">
                        <option>재직 상태</option>
                        <option>현직원</option>
                        <option>전직원</option>
                    </select>
                </div>
                <div class="total_review">
                    총<span>20</span>개 중 <span>20</span>개의 기업리뷰
                </div>
            </div>
        </article>
            <c:forEach items="${rev }" var="rev">
      <article class="review_write_con">
            <div class="write_info">
                <div class="write_info_user">
                    <span><i class="fas fa-user-circle fa-2x"></i></span>
                    <span></span>
                    <span> | </span>
                    <span>서울</span>
                    <span> | </span>
                    <span><c:out value="${rev.re_enroll_date }"/></span>
                </div>
            <div class="write_rat">
                <dl class="rating">
                    <dt>1</dt>
                    <dd>사내 만족도</dd>
                    <dt>2</dt>
                    <dd>복지 및 급여</dd>
                    <dt>3</dt>
                    <dd>승진기회 및 가능성</dd>
                    <dt>4</dt>
                    <dd>경영진</dd>
                </dl>
                <div class="write_content" >
                    <div class="write_content_title">
                        <h2><c:out value="${rev.review_title }"/></h2>
                    </div>
                    <dl class="co_list">
                        <dt style="color:red">리뷰내용</dt>
                        <dd class="df1">
                            <span>
                               <c:out value="${rev.review_contents }"/>              
                            </span>
                        </dd>
                    </dl>
                </div>
            </div>
	            <div class="btn_area">
	                <button id="report_btn" class="btn btn">
	                    	신고하기
	                </button>
	            </div>
            </div>
        </article>
       		<c:if test="${rev.review_no==null }">
		       <article class="com_review_default">
		        	<div class="com_de_box">
		        		<div class="com_de_wrap">
		        			<h4>등록된 리뷰가 없습니다.</h4>
		        	   </div>
		        	</div>
		        </article>
        	</c:if>
        </c:forEach>
</section>

<script type="text/javascript">
    google.charts.load("current", {packages:["corechart"]});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ["", "평점", { role: "style" } ],
        ["총 평점", 0, "#00c362"],
        ["사내만족도",0, "#00c362"],
        ["복지 및 급여",0, "#00c362"],
        ["승진기회 및 가능성",0, "#00c362"],
        ["경영진", 0, "#00c362"]
      ]);

      var view = new google.visualization.DataView(data);
      view.setColumns([0, 1,
                       { calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "annotation" },
                       2]);

      var options = {
        title: "",
        width: 900,
        height: 350,
        bar: {groupWidth: "30%"},
        legend: { position: "none" },
        hAxis: {minValue: 0,
                maxValue: 5    
        }
      };
      
      var chart = new google.visualization.BarChart(document.getElementById("barchart_values"));
      chart.draw(view, options);

  }
</script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>