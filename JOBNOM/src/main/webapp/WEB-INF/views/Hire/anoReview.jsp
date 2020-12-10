<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" href="../resources/css/Hire/announcementPage.css">
<c:set var="path" value="${pageContext.request.contextPath }" />
  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <body>


    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>



<div class="test1"></div>
<div class="annoDetailAll">
                  
                    <div class="annoDetailTitle">
                        <div class="annoDetailNum">
                            <div class="annoDetailLogeFlax">
                                <div class="annoDetailLoge"></div>
                            </div>
                            <div class="annoDetailTitleFlax">
                            <%--  <c:forEach items="${data }" var="a">  --%>
                            
                                <div class="annoDetailTitle1"></div>
                                 
                           
                                 
                                 <a href="#">
                                    <div class="annoDetailTitleFont"></div>
                                </a>
                                 <%--  </c:forEach>  --%>
                            </div>
                        </div>
                        <button class="btn_annoDetail" onclick="">지원하기</button>
                        <button id="favoritesBox" onclick="fn_toggle();">
                            <img id="announcementFavorites" src="${path }/resources/image/Hire/pngwing.png" />
                        </button>
                    </div>

                     <div class="detailedReviewInterview">
                       <a href="#">
                         <button value="${r.ent_no }" class="annoDetailListBoxs" >
                            <input type="hidden" value="${r.ent_no }" class="annoDetailListBox">상세
                         </button>
                        </a>
                        <a href="#">
                        <button value="${r.ent_no }" class="clickReviewTotalBoxs" >
	                       <input type="hidden" value="${r.ent_no }" class="clickReviewTotalBox">리뷰
                        </button>
                        </a>
                        <a href="#">
                         <button value="${r.ent_no }" class="interviewBoxs" >
                            <div class="interviewBox">면접</div>
                         </button>
                        </a>
                    </div>
  
                    

                    
        </div>
             <!--리뷰클릭시 나오는 화면  -->
         <div class="clickReview" style=" width: 555px; height:100%; padding: 20px;">
         	<div class="clickReviewTitleBox">
         	<div class="clickReviewTitleBoxFlax">
         		<div class="clickReviewName" style="width: 100px; margin-left: 10px">이름 : </div><div>${r.review_writer }</div>  <br><br>
         	</div>
         	<div class="clickReviewTitleBoxFlax">
         		<div class="clickReviewPromotion" style="width: 100px; margin-left: 10px">제목 :</div><div>${r.review_title }</div><br><br>
         	</div>
         	<div class="clickReviewTitleBoxFlax">
         		<div class="clickReviewPromotion" style="width: 100px; margin-left: 10px">내용 :</div><div>${r.review_contents }</div><br><br>
         	</div>
         		<div class="q" style="display: flex;">
	         		<div class="clickReviewPromotion" style="width: 200px;">사내 만족도 평점</div>
	         			
	         		 <div class="score" style="width:150px;height :35px;position:relative;">
				        <div class="graybg" style="background-color:#999;  position:absolute; margin-left: 1px; width: 149px; height: 35px;"></div>
				        <div class="yellowbgSatisfaction" style="background-color:  gold;  position:absolute; height: 35px; margin-left:1px;position:absolute;left:0;top:0;"></div>
				        <div class="scoreReview_satisfactionAVG">${r.review_satisfaction }</div>
				        <img class="starImg" src="${path }/resources/image/Hire/star.png" style="  background-size: cover; position:absolute;left:0;top:0; width:151px;height:100%;" />         
				    </div>
			    </div>
			    <br>
			    
			    <div class="q" style="display: flex;">
         		<div class="clickReviewSalary" style="width: 200px;">복지 및 급여 평점</div>
         		
                 <div class="score" style="width:150px;height :35px;position:relative;">
                    <div class="graybg" style="background-color:#999;  position:absolute; margin-left: 1px; width: 149px; height: 35px;"></div>
                    <div class="yellowbgWelfare" style="background-color:  gold;  position:absolute; height: 35px; margin-left:1px;position:absolute;left:0;top:0;"></div>
                    <div class="scoreReview_welfareAVG">${r.review_welfare }</div>
                    <img class="starImg"  src="${path }/resources/image/Hire/star.png"  style="  background-size: cover; position:absolute;left:0;top:0; width:151px;height:100%;" />         
                </div>
			    </div>
			    <br>
         		
         		<div class="q" style="display: flex;">
         		<div class="clickReviewPromotion" style="width: 200px;">승진 기회 및 가능성 평점</div>
         		
         		<div class="score" style="width:150px;height :35px;position:relative;">
			        <div class="graybg" style="background-color:#999;  position:absolute; margin-left: 1px; width: 149px; height: 35px;"></div>
			        <div class="yellowbgPromotion"  style="background-color:  gold;  position:absolute; height: 35px; margin-left:1px;position:absolute;left:0;top:0;"></div>
			        <div class="scoreReview_promotionAVG">${r.review_promotion }</div>
			        <img class="starImg" src="${path }/resources/image/Hire/star.png"  style="  background-size: cover; position:absolute;left:0;top:0; width:151px;height:100%;" />         
			    </div>
			    </div>
			    <br>
			   
         		<div class="q" style="display: flex;">
         		<div class="clickReviewPromotion" style="width: 200px;">경영진 평점</div>
         		
         		<div class="score" style="width:150px;height :35px;position:relative;">
			        <div class="graybg" style="background-color:#999;  position:absolute; margin-left: 1px; width: 149px; height: 35px;"></div>
			        <div class="yellowbgExecutive" style="background-color:  gold;  position:absolute; height: 35px; margin-left:1px;position:absolute;left:0;top:0;"></div>
			        <div class="scoreReview_executiveAVG">${r.review_executive }</div>
			        <img class="starImg" src="${path }/resources/image/Hire/star.png" style="  background-size: cover; position:absolute;left:0;top:0; width:151px;height:100%;" />         
			    </div>
			 	</div>
			 	</div>
                     </div>
    



<script>
                /*  data:{ent_no:'${a.ent_no}'}, */
                
                    $(".annoDetailListBoxs").click((e) => {
                    var formData = $(e.target).val();
                    $.ajax({
                         
                         url : "${path}/Hire/anoDetail.do", 
                         type : 'POST', 
                          dataType :'html',
                         data : {ent_no:formData},
                         success :function(data){
                           $(".test").html(data);
                        }
               })
                    });
                
                </script> 
                
</body>
              <script>
              $(document).ready(function () {
				
    let avg1 = parseFloat($('.scoreReview_satisfactionAVG').text());
    let total1 = avg1*20;
   
    $('.yellowbgSatisfaction').css('width',total1+'%');
    
    let avg2 = parseFloat($('.scoreReview_welfareAVG').text());
    let total2 = avg2*20;
    $('.yellowbgWelfare').css('width',total2+'%');
    
    let avg3 = parseFloat($('.scoreReview_promotionAVG').text());
    let total3 = avg3*20;
    $('.yellowbgPromotion').css('width',total3+'%');
    
    let avg4 = parseFloat($('.scoreReview_executiveAVG').text());
    let total4 = avg4*20;
    $('.yellowbgExecutive').css('width',total4+'%');
			});
</script>
                
               <!--  <script>

              $(document).ready(function () {

             $(".annoDetailListBoxs").click(function () {
             /*  $(".clickReview").css("display", "none");  */
             
             });
             });
             </script> -->
     
