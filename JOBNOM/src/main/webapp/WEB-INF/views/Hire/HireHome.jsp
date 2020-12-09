<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<link rel="stylesheet" href="../resources/css/Hire/HireHome.css" />
<link rel="stylesheet" href="../resources/css/Hire/FindingMeDetail.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=" "/>
</jsp:include>


<section class="section">
  
    <div class="a">
        <div>
            <div class="hireHome">
                <a href="${path }/Hire/HireHome.do" class="hireHome1">Home</a>
            </div>
        </div>
        <div>
            <div class="myHire">
                <a href="${path }/Hire/HireMyHire.do" class="myHire1">My채용</a>
            </div>
        </div>
        <div>
            <div class="announcementPage">
                <a href="${path }/Hire/HireAnnouncement.do" class="announcementPage1">공고페이지</a>
            </div>
        </div>
    </div>
    <a href="${path }/Hire/insertReview.do" class="">리뷰</a>
   


   
    <div class="intuAll">
        <div  class="intu">
            <div class="profil" ></div>
            <div class="nameAll">
                <div class="name">
                    <div>이름을 입력하세요</div>
                    <div class="lv">Lv.7</div>
                </div>
                <div>경영지원,경럭</div>
              
            </div>
        </div>
    </div> 
<div class="recommendation">회원 기준 추천 공고 List</div>
<p><c:out value="${totalData}"/>총 건의 게시물이 있습니다.</p>
    <div class="categoryAnnouncementAll">
        <div class="categoryAnnouncement">
            <div class="announcementMain">
                <div class="announcementMainImage"> </div>
                <div class="announcementTitle"></div>

            </div>

            <div class="announcementList">
                <div class="announcementList1">
	                <div class="announcementListSize">
	            		<c:forEach items="${Recruitment }" var="d">
		                    <div class="announcementListFlax">
		                        <div class="Mylogo"></div>
		                        <div>1</div><a href="#">
		                        <div class="TitleEndDate">
		                        <div class="announcementTitleList"><c:out value="${d.rec_title }"/></div>
								<div>- 마감 일자 : <fmt:formatDate  value="${d.rec_enddate }" pattern="yyyy.MM.dd" /></div>
		                        </div>
		                        <!-- 날짜 표현식 변경 -->
		                        </a> 
		                    </div>
	                     </c:forEach>   
	                </div>
                <div id="pageBar">${pageBar }</div>
                </div>
               
               
               
            </div>
        </div>

    </div>
    <div class="findingMe"> 나를 찾는 기업들이 여기에</div>
 <!-- Swiper -->
<div class="bb" style="height: 300px;" >
    <div class="swiper-container">
        
        <div class="swiper-wrapper">
        
        <div id="aa" class="swiper-slide">Slide 1</div>
        <div id="bb" class="swiper-slide">Slide 2</div>
        <div class="swiper-slide">Slide 3</div>
        <div class="swiper-slide">Slide 4</div>
        <div class="swiper-slide">Slide 5</div>
        <div class="swiper-slide">Slide 6</div>
        <div class="swiper-slide">Slide 7</div>
        <div class="swiper-slide">Slide 8</div>
        <div class="swiper-slide">Slide 9</div>

        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination"></div>
      	<!-- Add Arrows -->
		<div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>

    </div>
   

    <div id="findingMeDetail" >
        <div class="findingMeDetailX">
            <button class="findingMeDetailCancel"><i class="far fa-window-close"></i></button>
        </div>
        <div class="findingMeDetail2">
        <div class="findingMeDetailTitle">
            <div class="findingMeDetailTitleLogo"></div>
            <div class="findingMeDetailTitleAnnouncement">(주) 카카오웹개발자 구인공고</div>
        </div>
        <div class="findingMeDetailSummary">
            <div class="findingMeDetailSummary1">
                <div class="findingMeDetailSummaryLogo"></div>
            <div class="findingMeDetailSummaryTitle">마감일</div><div>2020. 12. 31</div>
            </div>
            <div class="findingMeDetailSummary2">
                <div class="findingMeDetailSummaryLogo"></div>
            <div class="findingMeDetailSummaryTitle">직무</div><div>경영지원재무기획/재무분석경영기획/전략</div>
            </div>
            <div class="findingMeDetailSummary2">
                <div class="findingMeDetailSummaryLogo"></div>
            <div class="findingMeDetailSummaryTitle">경력</div><div>신입</div>
            </div>
    
        </div>
            
        <div class="findingMeDetailMaintask">
            <div class="findingMeDetailMaintaskAll">
                <div class="findingMeDetailMaintaskAll1">경영기획 분석</div>
                <div class="findingMeDetailMaintaskAll2">재무 회계 및 관리</div>
                <div class="findingMeDetailMaintaskAll3">IR or M&A</div>
            </div>
    
            <div class="findingMeDetailButton">
                <button class="btn_annoDetail" onclick="">공고 상세보기</button>
                <button id="favoritesBox" onclick="fn_toggle();"> 
                    <img id="announcementFavorites" src="${path }/resources/image/Hire/pngwing.png" />
                </button>
            </div>
    
        </div>
    </div> 
    </div>

    
</div>

   
        



</section>



<jsp:include page="/WEB-INF/views/common/footer.jsp"/>






<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script>

var swiper = new Swiper('.swiper-container', {
      slidesPerView: 4,
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
       //보이기
    $(document).ready(function(){
     $(".swiper-slide").click(function(){
    $("#findingMeDetail").show();

    });
    });
     </script>


     <script>
   //숨기기
    $(document).ready(function(){
     $(".findingMeDetailCancel").click(function(){
    $("#findingMeDetail").hide();
 
    });
    });


     </script>
     
     


<script>
    var cnt=1;
    function fn_toggle(){
        var announcementFavorites =document.getElementById("announcementFavorites");
        var fav =document.getElementById("fav");
        if(cnt%2==1){
            announcementFavorites.src="${path }/resources/image/Hire/pngwing.png";
        
        }else{
            announcementFavorites.src="${path }/resources/image/Hire/pngwing2.png";
        }
        cnt++

    }
</script> 