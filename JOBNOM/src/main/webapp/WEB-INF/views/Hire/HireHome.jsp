<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<meta name="apple-mobile-web-app-title" content="CodePen">

<link rel="shortcut icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico" />

<link rel="mask-icon" type="" href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111" />
<style>
.slidebanner{position:relative;height:100px;width:100%;overflow:hidden; margin-top:200px;}
.slidebanner .bannerbox{position:absolute;margin:0;padding:0;margin-left:40px;}
.slidebanner li{float:left;list-style:none;margin-left:10px}
.slidebanner li:first-child{margin:0}

</style>
<c:set var="path" value="${pageContext.request.contextPath }" />
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css">
<link rel="stylesheet" href="../resources/css/Hire/HireHome.css" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=" " />
</jsp:include>
<jsp:include page="/WEB-INF/views/common/searchbar.jsp">
	<jsp:param name="title" value=" " />
</jsp:include>

<body onload="showImage()">
	<section class="section">

		<div class="a">
			<div>
				<div class="hireHome">
					<a class="menus"
						href="${path }/Hire/HireHome.do?memNo=${commonLogin.memNo}">HOME</a>

				</div>
			</div>
			<div>
				<div class="myHire">
					<a class="menus"
						href="${path }/Hire/HireMyHire.do?memNo=${commonLogin.memNo}"
						class="myHire1">My채용</a>
				</div>
			</div>
			<div>
				<div class="announcementPage">
					<a class="menus" href="${path }/Hire/HireAnnouncement.do"
						class="announcementPage1">공고페이지</a>
				</div>
			</div>
		</div>
		




		<div class="intuAll">
			<div class="intu">
				<div class="profil"></div>
				<div class="nameAll">
					<div class="name">
						<c:if test="${commonLogin != null}">
							<c:choose>
								<c:when test="${m[0].RES_NAME == null}">
									<div>이력서를 작성해보세요</div>
								</c:when>
								<c:otherwise>
									<div>이름 : ${m[0].RES_NAME }</div>
								</c:otherwise>
							</c:choose>
							<div class="lv">회원 등급 : ${m[0].MEM_MEMBERSHIP }</div>
							<div>현재 상태 : ${m[0].MEM_CHECK }</div>
						</c:if>
						<c:if test="${commonLogin == null}">
							<div>지금 회원 가입 해보세요</div>
							<div class="lv">회원가입후 원하는 회사에 지원해 보세요</div>
							<div>"JOBNOM"은 여러분의 성공을 기원합니단</div>
						</c:if>
					</div>
				</div>
			</div>
		</div>
		<div class="recommendation">지금 뜨는 공고 List</div>

		<div class="categoryAnnouncementAll">
			<div class="categoryAnnouncement">


				<div class="announcementList">
					<div class="announcementList1">


						<div class="announcementListSize">
							<c:forEach items="${re }" var="d">
								<div class="announcementListFlax">
									<div class="Mylogo1">

										<c:choose>
											<c:when test="${empty d.ENT_LOGO }">
												<img src="${path }/resources/image/Hire/logo.png"
													style="width: 50px; height: 50px;">
											</c:when>
											<c:otherwise>
												<img
													src="${path }/resources/enterprise/logo/${d.ENT_NO }/${d.ENT_LOGO}"
													style="width: 40px; height: 40px;">
											</c:otherwise>

										</c:choose>


									</div>

									<a
										href="${path }/Hire/announcementPageFirst.do?anoNum=${d.REC_CATEGORY}&recNo=${d.REC_NO}&memNo=${commonLogin.memNo}"
										style="color: black">
										<div class="TitleEndDate">
											<div class="announcementTitleList">
												<c:out value="${d.REC_TITLE }" />
											</div>
											<div>
												- 마감 일자 :
												<fmt:formatDate value="${d.REC_ENDDATE }" pattern="yy.MM.dd" />
											</div>
											<div style="padding-left: 50px;">연봉 ￦ ${d.REC_SALARY }</div>
									<div style="padding-left: 50px;">고용형태 : ${d.REC_TYPE }</div>
										
										</div>
										
									</a>
								</div>
							</c:forEach>

						</div>
						<div id="pageBar">${pageBar }</div>

					</div>



				</div>
			</div>

		</div>

		<c:choose>
			<c:when test="${commonLogin != null }">


				<div class="findingMe">나를 찾는 기업들이 여기에</div>
				<!-- Swiper -->

				<div class="bb" style="height: 300px;">

					<div class="swiper-container">

						<div class="swiper-wrapper">
							<c:forEach items="${rec }" var="rec">
								<c:forEach items="${categoryAll }" var="ca">
									<c:if test="${rec.rec_category eq ca.cateNo2}">
										<div class="swiper-slide" style="border: none">
											<button id="aaaa" name="aaaa" value="${rec.rec_no } "
												style="width: 350px; height: 260px; border-radius: 12px;">
												<div
													style="font-weight: bold; font-size: 23px; background: white; color: black; border-radius: 5px;">${rec.rec_title }</div>
											</button>
											<button id="dddd" name="dddd" value="${rec.rec_category } "
												style="width: 350px; height: 260px; display: none;"></button>
										</div>
									</c:if>
								</c:forEach>
							</c:forEach>
						</div>
						<!-- Add Pagination -->
						<div class="swiper-pagination"></div>
						<!-- Add Arrows -->
						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>

					</div>

					<div class="findingMeDetailShow" ></div>
				</div>

			</c:when>
			<c:otherwise>
				<br>
				<br>
				<br>
				<button class="HireHome2"
					onclick="location.href='${path }/Hire/HireAnnouncement.do'"></button>

			</c:otherwise>
		</c:choose>



<div  class="slidebannerAll" >
  <div class="slidebanner">
  <ul class="bannerbox">    
    <li>
     <a href="https://www.kead.or.kr" target="_blank">
    <img src="${path }/resources/image/Hire/a.jpg" alt="dw"  style=" width: 150px; height: 60px;">
    </a>
    </li>
    <li>
     <a href="http://www.kcomwel.or.kr/kcomwel/main.jsp" target="_blank">
    <img src="${path }/resources/image/Hire/b.jpg" alt="dw" style=" width: 150px; height: 60px;"/>
    </a>
    </li>
    
    <li>
     <a href="http://www.hrdkorea.or.kr/" target="_blank">
    <img src="${path }/resources/image/Hire/c.jpg" alt="dw" style=" width: 150px; height: 60px;"/>
    </a>
    </li>
    <li>
     <a href="http://www.moel.go.kr/index.do" target="_blank">
    <img src="${path }/resources/image/Hire/d.jpg" alt="dw" style=" width: 150px; height: 60px;"/>
    </a>
    </li>
    <li>
     <a href="https://www.humanrights.go.kr/site/main/index001" target="_blank">
    <img src="${path }/resources/image/Hire/e.jpg" alt="dw" style=" width: 150px; height: 60px;"/>
    </a>
    
    </li>
    <li>
    <a href="https://www.workplus.go.kr/index.do" target="_blank">
    <img src="${path }/resources/image/Hire/f.png" alt="dw" style=" width: 150px; height: 60px;"/>
    </a>
    </li>
    <li>
    <a href="https://www.mss.go.kr/site/smba/main.do" target="_blank">
    <img src="${path }/resources/image/Hire/g.png" alt="dw" style=" width: 150px; height: 60px;"/>
    </a>
    </li>
    <li>
    <a href="http://www.hrd.go.kr/hrdp/ma/pmmao/indexNew.do" target="_blank">
    <img src="${path }/resources/image/Hire/h.png" alt="dw" style=" width: 150px; height: 60px;"/>
    </a>
    </li>
  </ul>                
</div>




    <script src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"></script>




  

</div>





	</section>
</body>


<jsp:include page="/WEB-INF/views/common/footer.jsp" />






<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script>

var swiper = new Swiper('.swiper-container', {
      slidesPerView: 3,
      spaceBetween: 30,
      slidesPerGroup: 3,
      loop: true,
      loopFillGroupWithBlank: true,
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
    });

</script>


<script>

    // Disable form submissions if there are invalid fields
    (function() {
      'use strict';
      window.addEventListener('load', function() {
        // Get the forms we want to add validation styles to
        var forms = document.getElementsByClassName('needs-validation');
        // Loop over them and prevent submission
        var validation = Array.prototype.filter.call(forms, function(form) {
          form.addEventListener('submit', function(event) {
            if (form.checkValidity() === false) {
              event.preventDefault();
              event.stopPropagation();
            }
            form.classList.add('was-validated');
          }, false);
        });
      }, false);
    })();
 
 
    </script>



<script>
 $(".swiper-slide").click(e=>{
     var formData = $(e.target).val();
    //var formData = $("button[name=aaaa]").val();
     var formData2 = $(e.target).next().val();
     
     $.ajax({
    	 url : "${path}/Hire/swiper.do", 
         type : 'POST', 
         dataType :'html',
         data : {rec_no:formData,rec_category:formData2},
         success :function(data){
           $(".findingMeDetailShow").html(data);
           $(".section").css("height","1700px");
           $(".slidebannerAll").css("padding-top","230px");
        
        }
})
    });
                
                </script>





	 


 


<script id="rendered-js">
	timer();
	var current = 0;
	var $interval;
	
	function timer() {
	  var $interval = setInterval(function () {slide();}, 2000);
	}
	
	function slide() {
	  $(".bannerbox").animate({ left: "-=187px" }, 1000, function () {
	    $(this).css({ "left": 0 });
	    $(".bannerbox").append($(".bannerbox").children("li").eq(0));
	  });
	  current++;
	  if (current == 5) current = 0;
	}

    </script>

