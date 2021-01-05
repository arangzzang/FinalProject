<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<link rel="stylesheet" href="../resources/css/Hire/HireHome.css" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=" "/>
</jsp:include>
<jsp:include page="/WEB-INF/views/common/searchbar.jsp">
	<jsp:param name="title" value=" "/>
</jsp:include>


<section class="section">
  
    <div class="a">
        <div>
            <div class="hireHome">
				<a class="menus" href="${path }/Hire/HireHome.do?memNo=${commonLogin.memNo}">HOME</a>

            </div>
        </div>
        <div>
            <div class="myHire">
                <a class="menus" href="${path }/Hire/HireMyHire.do?memNo=${commonLogin.memNo}" class="myHire1">My채용</a>
            </div>
        </div>
        <div>
            <div class="announcementPage">
                <a class="menus" href="${path }/Hire/HireAnnouncement.do" class="announcementPage1">공고페이지</a>
            </div>
        </div>
    </div>
   <%--  <a class="menus" href="${path }/Hire/insertReview.do?memNo=${commonLogin.memNo}" class="">리뷰</a> --%>
   


   
    <div class="intuAll"> 
        <div  class="intu">
            <div class="profil" ></div>
            <div class="nameAll"> 
                <div class="name">
                <c:if test="${commonLogin != null}">
                    <div>이름 : ${m[0].RES_NAME }</div>
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
		                    <div class="announcementListFlax" >
		                        <div class="Mylogo1">
		                        
		                        <c:choose>
		                        	<c:when test="${empty d.ENT_LOGO }">
		                				<img src="${path }/resources/image/Hire/job.png" style="width: 50px; height: 50px; ">
		                        	</c:when>
		                        	<c:otherwise>
		                        		<img src="${path }/resources/enterprise/logo/${d.ENT_NO }/${d.ENT_LOGO}" style="width: 40px; height: 40px; ">
		                        	</c:otherwise>
		                        
		                        </c:choose>
		   
		                        
		                        </div>
		                        
		                        <a href="${path }/Hire/announcementPage2.do?anoNum=${d.REC_CATEGORY}" style="color: black">
		                        <div class="TitleEndDate">
		                        <div class="announcementTitleList"><c:out value="${d.REC_TITLE }"/></div>
								<div>- 마감 일자 : <fmt:formatDate  value="${d.REC_ENDDATE }" pattern="yy.MM.dd" /></div>
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
     <c:when test="${commonLogin != null && fitM[0].REC_NO !=null }">
                   
    
    <div class="findingMe"> 나를 찾는 기업들이 여기에</div>
 <!-- Swiper -->
<div class="bb" style="height: 300px;" >

    <div class="swiper-container">
   
        <div class="swiper-wrapper" >
         <c:forEach items="${fitM }" var="fitM">
        <div class="swiper-slide" style="border: none">

        <button  id="aaaa" name="aaaa" value="${fitM.REC_NO } "  style="width: 350px; height: 260px; border-radius: 12px;" >${fitM.REC_TITLE }</button>
        <button  id="dddd" name="dddd" value="${fitM.REC_CATEGORY } "style="width: 350px; height: 260px; display: none;" ></button>

</div>        
         
         	</c:forEach>
        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination"></div>
      	<!-- Add Arrows -->
		<div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
  
    </div>
  
   <div class="findingMeDetailShow"></div> 
   </div>

</c:when>
<c:otherwise>
<br><br><br>
  <button class="HireHome2" 
		onclick="location.href='${path }/Hire/HireAnnouncement.do'" ></button>

</c:otherwise>
</c:choose>



<%-- <c:if test="${commonLogin == null}">
	  <button class="HireHome2" 
		onclick="location.href='${path }/Hire/HireAnnouncement.do'" ></button>

</c:if>
 --%>
   
        



</section>



<jsp:include page="/WEB-INF/views/common/footer.jsp"/>






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

 
<!-- <script>
       //보이기
    $(document).ready(function(){
     $(".swiper-slide").click(function(){
   	$(".findingMeDetail33").append($("#findingMeDetail"));
   	
    $("section").css("height","1750");
    });
    });
     </script> -->
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
        }
})
    });
                
                </script> 

   
     
     


