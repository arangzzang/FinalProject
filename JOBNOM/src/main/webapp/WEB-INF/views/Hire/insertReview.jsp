<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<link rel="stylesheet" href="${path}/resources/css/Hire/insertReview.css" />
<link rel="stylesheet" href="${path }/resources/css/mypage/interviewList.css"/>





            <div class="with-parent">
                <div class="with">
                    <div class="activity">
                        <div class="activityList"> 활동내역<div class="activityListLine"></div>
                                <a class="activityListReview" href="${path }/Hire/insertReview.do"><div class="review">리뷰</div><div class="activityCount1">(0)</div></a>
                                <a class="activityListCom"  href="${path }/Hire/supportingCompany.do"><div class="supportingCompany">입사지원기업</div><div  class="activityCount2">(0)</div></a>
                        </div>
                        <div class="activityInfo">
                            <div>내기업 리뷰</div>
                            <div class="ReviewSmallTitle">
                                <div >기업명</div>
                                <div>고용형태</div>
                                <div>작성일</div>
                                <div>등록여부</div>
                                <div>수정/삭제</div>
                            </div>
                            <div class="ReviewSmallInfo">
                                <div >(주)카카오</div>
                                <div>정규직</div>
                                <div>2020/01/01</div>
                                <div>승인</div>
                                <div><button style="margin-left: 23px; border-radius: 12px;">수정/삭제</button></div>
                            </div>
                            <button class="reviewImgBtn"></button>
                            <div class="reviewBtn">
                                <button class="reviewBtnInsert">기업 리뷰 작성하기</button>
                                <button class="reviewBtnFAQ">FAQ 바로가기</button>
                            </div>
                        </div>
                    </div>
                    <div id="popup">
                        <div class="popupAll">
                                <div id="popmenu">
                                    <form id="popFrm" action="${path }/Hire/insertReview2.do" method="post"  onsubmit="return fn_review();">
                                    <div class="popmenuInsertAll">
                                        <div class="popmenuInsert">기업 리뷰 작성</div>
                                     <!--    <button class="popmenuInsertClose"><i class="far fa-window-close"></i></button> -->
                                    </div>
                                    <div class="popmenuDetail">
                                        	입력하신 모든 정보는 익명으로 처리되니 걱정마세요.</div>
                                        <div class="popmenuEnterprise">
                                            <div>기업명</div>
                                            <input class="popmenuEnterpriseName" id="reviewName" name="review_name" type="text" placeholder="기업명" list="locationData">
                                        	<datalist id="locationData"></datalist>
                                        	<%-- <input type="text" value="${list[0].ENT_NAME }"> --%>
                                        </div>
                                        <div class="popmenuTital">
                                            <div>제목</div>
                                            <input class="popmenuTitalName" type="text" name="review_title" placeholder="제목">
                                        </div>
                                        <div class="popmenuContents">
                                            <div>내용</div>
                                            <textarea class="popmenuContentsName"   name="review_contents" cols="47" rows="5" placeholder="내용" style="resize: none;"></textarea>
                                        </div>

                                        <div class="companyGradebox"> 
                                            <div class="companyStar-box">
                                                <div class="companyTitle">사내만족도 평점</div>
                                                <div class="companyStar " id="1"></div>
                        
                                                <div class="companyStar " id="2"></div> 
                        
                                                <div class="companyStar " id="3"></div> 
                        
                                                <div class="companyStar " id="4"></div> 
                        
                                                <div class="companyStar " id="5"></div> 
                                                <input type="hidden" name="review_satisfaction" class="companyGrade">
                                                <input type="hidden" name="memberNo" value="">
                                                <!-- 나중에 스프링에서 value에 다가 로그인한 회원 번호 넣어주기 -->
                                                <!-- 나중에 스프링가서 name 이랑 class 이름 다 바꿔주자  -->
                                            </div>
                                        </div>
                                                  
                                        <div class="blessedGradebox"> 
                                            <div class="blessedStar-box">
                                                <div class="blessedTitle">복지 및 급여평점</div>
                                                <div class="blessedStar " id="1"></div>
                        
                                                <div class="blessedStar " id="2"></div> 
                        
                                                <div class="blessedStar " id="3"></div> 
                        
                                                <div class="blessedStar " id="4"></div> 
                        
                                                <div class="blessedStar " id="5"></div> 
                                                <input type="hidden" name="review_welfare" class="blessedGrade">
                                                <input type="hidden" name="memberNo" value="">
                                                <!-- 나중에 스프링에서 value에 다가 로그인한 회원 번호 넣어주기 -->
                                            </div>
                                        </div>
                                                  
                                        <div class="promotionGradebox"> 
                                            <div class="promotionStar-box">
                                                <div class="promotionTitle">승진 기회 및 가능성 평점</div>
                                                <div class="promotionStar " id="1"></div>
                        							
                                                <div class="promotionStar " id="2"></div> 
                        
                                                <div class="promotionStar " id="3"></div> 
                        
                                                <div class="promotionStar " id="4"></div> 
                        
                                                <div class="promotionStar " id="5"></div> 
                                                <input type="hidden" name="review_promotion" class="promotionGrade">
                                                <input type="hidden" name="memberNo" value="">
                                                <!-- 나중에 스프링에서 value에 다가 로그인한 회원 번호 넣어주기 -->
                                            </div>
                                        </div>
                                        <div class="executiveGradebox"> 
                                            <div class="executiveStar-box">
                                                <div class="executiveTitle">경영진 평점</div>
                                                <div class="executiveStar " id="1" ></div>
                        
                                                <div class="executiveStar " id="2"></div> 
                        
                                                <div class="executiveStar " id="3"></div> 
                        
                                                <div class="executiveStar " id="4"></div> 
                        
                                                <div class="executiveStar " id="5"></div> 
                                                <input type="hidden" name="review_executive" class="executiveGrade">
                                                <input type="hidden" name="memberNo" value="">
                                                <!-- 나중에 스프링에서 value에 다가 로그인한 회원 번호 넣어주기 -->
                                            </div>
                                        </div>
                                    	<div class="submitByttonBox">
	                                      	<input class="GradeboxSubmit" type="submit" value="제출하기" onclick="fn_return();"  > 
	                                       	<input class="popmenuInsertClose" type="button" value="닫기" > 
                                       </div>
                                    </form>
                                </div>
                            <div id="popmenuInfo">
                                <div class="popmenuInfoTitle">정보 등록 정책</div>
                                <div class="popmenuInfoContents">기업 리뷰의 신뢰성을 높이고 고위적으로 기업 평점 조작을 방지하기위해, 작성된 모든 정보는 JOBNOM 의 자체적인 검토과정을 거쳐 삭제될수도 있습니다</div>
                                <div class="popmenuInfoTitle">등록이 거부되는 이유</div>
                                <div class="popmenuInfoContents">
                                    1. 기업을 이해하는데 도움이 안되거나 항목과 상관없는 내용<br>
                                    2. 부서, 직급 등 개인을 특정 지을수 있는 정보나 펌훼, 비방성 표현<br>
                                    3. 욕설, 비속어, 은어 및 공격적인 언어<br>
                                    4. 기업 비밀에 해당하는 내용<br>
                                    5. 존재하지 않거나 명확하지 않는 기업명<br>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

    
        <!-- 이건 리뷰 작성하기 누르면 팝업 뜨게 하는거 -->
   
   
   				
                <script>
               function fn_review(){
            	   if  ($('input[name=review_name]').val()==="" ||
                         $('input[name=review_title]').val()==="" ||
                         $('textarea[name=review_contents]').val()==="" ||
            		   	 $('input[class=review_satisfaction]').val()==="" || 
                   		 $('input[class=review_welfare]').val()==="" ||
                   		 $('input[class=review_promotion]').val()==="" ||
                       	 $('input[class=review_executive]').val()==="") {

                       alert('필수 항목들을 입력해주세요!');  
                  
                       return false;
            	   }
            	   
               };
               </script>         
        
         <script>
            $(document).ready(function(){
                $(".reviewBtnInsert").click(function(){
                $("#popup").fadeIn();
                
                
                });
                $(".popmenuInsertClose").click(function(){
                $("#popup").fadeOut();
                });
                });
        </script>
        
       <!--  <script>
        
        $(document).ready(function(){
            $(".reviewBtnInsert").click(function(){
            $("#popup").fadeIn();
            });
        });
        </script>
         <script>
         $(document).ready(function(){
            $(".popmenuInsertClose").click(function(){
              if ($('.review_satisfaction').val()=="" &&
            	$('.review_contents').val()=="" &&
            	$('.review_welfare').val()=="" &&
            	$('.review_executive').id()=="" &&
            	$('.review_promotion').id()=="" &&
            	$('.review_name').id()=="" &&
                $('.review_title').id()=="" {
            	$("#popup").fadeOut());
              }

            });
            });
            	 
            
    </script> -->
            


<!-- ////////////////////////여기서 부터 별클릭하는거///////////////////////////////////// -->


             
            
            <script>//시내만족도평점
                $('.companyStar-box div').click(function(){
                     $(this).parent().children("div").removeClass("on");
                     $(this).addClass("on").prevAll("div").addClass("on");
                });

            </script>

             <script>//급여만족도 평점
                $('.blessedStar-box div').click(function(){
                     $(this).parent().children("div").removeClass("on");
                     $(this).addClass("on").prevAll("div").addClass("on");
                });
            </script>

            <script> //승진기회 및 가능성 평점
                $('.promotionStar-box div').click(function(){
                     $(this).parent().children("div").removeClass("on");
                     $(this).addClass("on").prevAll("div").addClass("on");
                });
            </script>


            <script> //경영진 평점
                 $('.executiveStar-box div').click(function(){
                     $(this).parent().children("div").removeClass("on");
                     $(this).addClass("on").prevAll("div").addClass("on");
                });
            </script>

          <!--   <script>
                $(".GradeboxSubmit").click(function(){
                    alert("제출완료");
                });
                
            </script> -->
            
            
            <script>
            $(".companyStar").on("click",e=>{
            let grade=$(e.target).attr("id");
            console.log(grade+"1번");
            $(".companyGrade").val(grade);
            });
                                        
            </script>
             <script>
            $(".blessedStar").on("click",e=>{
            let grade=$(e.target).attr("id");
            console.log(grade+"2번");
            $(".blessedGrade").val(grade);
            });
                                        
            </script>
             <script>
            $(".promotionStar").on("click",e=>{
            let grade=$(e.target).attr("id");
            console.log(grade+"3번");
            $(".promotionGrade").val(grade);
            });
                                        
            </script>
             <script>
            $(".executiveStar").on("click",e=>{
            let grade=$(e.target).attr("id");
            console.log(grade+"경영진");
            $(".executiveGrade").val(grade);
            });
                                        
            </script>

        <script>
            //https://aramk.tistory.com/35 keyUP 참고사이트
            //기업명 누르면 아래로 기업 리스트 뜨게 해줄떄 필요함
        </script>


         <!-- <script>
            $(".star").on("click",e=>{
                
                let grade=$(e.target).attr("id");
                $(".ReviewMailGrade").val(grade);
            });
        </script>  -->
        <!-- 이건 나중에 별클릭하고 확인눌리면 값이 DB에 저장되게 해줌꺼임 -->
	<script>
		function Hire(url){
			$("#popFrm").attr("action",'${path}/Hire/'+url);
			$("#popFrm").submit();
		}
	
	</script>


	<<script>
	
	$("#reviewName").keyup(e=>{
		$.ajax({
            url: "${path}/Hire/reviewSearch.do",
            data:{"key":$(e.target).val()},
            success:data => {
                 let keys=data; 
          
               
                console.log(keys);
                $("#locationData").html("");
                for(let i=0;i<keys.length;i++){
                	$("#locationData").append($("<option>").html(keys[i]));
                	
                }
            }
            
        })
	});
</script>        
