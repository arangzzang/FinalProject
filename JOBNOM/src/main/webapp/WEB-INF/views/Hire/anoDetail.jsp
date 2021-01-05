<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*,com.project.jobnom.Hire.model.vo.Review" %>
<link rel="stylesheet" href="../resources/css/Hire/announcementPage.css">
<c:set var="path" value="${pageContext.request.contextPath }" />

<section id="content" style=" z-index: 99; ">

<div class="annoDetailAll" style="margin-top: -100px;" >
                  
                    <div class="annoDetailTitle">
                        <div class="annoDetailNum">
                            <div class="annoDetailLogeFlax">
                                <div class="annoDetailLoge">
                                  <c:choose>
		                        	<c:when test="${empty r[0].ENT_LOGO }">
		                				<img src="${path }/resources/image/Hire/job.png" style="width: 50px; height: 50px; ">
		                        	</c:when>
		                        	<c:otherwise>
		                        		<img src="${path }/resources/enterprise/logo/${r[0].ENT_NO }/${r[0].ENT_LOGO}" style="width: 40px; height: 40px; ">
		                        	</c:otherwise>
		                        
		                        </c:choose>
                                </div>
                            </div>
                            <div class="annoDetailTitleFlax">            
                                <div id="annoDetailTitle1">${r[0].REC_TITLE }</div>
                                
                                 <a href="#">
                                    <div class="annoDetailTitleFont" >${r[0].ENT_NAME }</div>
                                </a>
                               
							
                            </div>
                        </div>
                        
                        <form action="${path }/Hire/apply.do" onsubmit="return fn_apply();" method="post" >
                        <input type="hidden" name="memNo" value="${commonLogin.memNo}">
                        <input type="hidden" name="recNo" value="${r[0].REC_NO}">
                        <input type="hidden" name="entName" value="${r[0].ENT_NAME }">
                        <input class="apply"  type="submit" value="지원하기">
                        </form>
                       
                     
                      <%-- <button class="apply"  onclick="location.href='${path }/Hire/apply.do?memNo=${commonLogin.memNo}&recNo=${r[0].REC_NO}&entName=${r[0].ENT_NAME } ' " >지원하기
                       </button> --%>
                       <c:if  test="${r[0].OPEN_CHECK == 0 || r[0].OPEN_CHECK == null || in[0].mem_no==null  && commonLogin !=null && commonLogin.memNo !=  in[0].mem_no && in[0].rec_no != r[0].REC_NO }">
                        <button id="favoritesBox" onclick="fn_toggle();">
                            <img id="announcementFavorites2" src="${path }/resources/image/Hire/pngwing.png" />
                        </button>
                      </c:if>
                     
                       <c:if test="${r[0].OPEN_CHECK == 1  && commonLogin !=null && in[0].rec_no == r[0].REC_NO && in[0].mem_no == commonLogin.memNo }">
                        <button id="favoritesBox" onclick="fn_toggle();">
                            <img id="announcementFavorites2" src="${path }/resources/image/Hire/pngwing2.png" />
                        </button>
                      </c:if>
                      
                      
                    </div>

                    <div class="detailedReviewInterview">
                       <a href="#">
                       <div class="annoDetailListBoxs2">
                         <button  id="aaaa" name="aaaa" value="${r[0].REC_NO }" style="width: 50px; height: 50px;"> 상세 </button>
                         <button id="dddd" name="dddd" value="${commonLogin.memNo }" style="display: none;"></button>
                            	
                       
                         </div>
                        </a>
                        <a href="#">
                       
                        <button value="${r[0].ENT_NO }" class="clickReviewTotalBoxs" >
	                       <input type="hidden" value="${r[0].ENT_NO }" class="clickReviewTotalBox">리뷰
                        </button>
                        
                        </a>
                        <a href="#">
                         <button value="${r[0].ENT_NO }" class="interviewBoxs" >
                            <div class="interviewBox">면접</div>
                         </button>
                        </a>  
                    </div> 
  
                    

                    
        </div> 
        
<div class="annoDetailAllHeight" >
      


<div class="annoDetailInfoWidth">
                        <div class="annoDetailInfoLeft">
                            <div class="annoDetailInfo">
                                <div class="annoDetailInfoAll">
                                    <div class="annoDetailInfoLogo"></div>
                                    <div class="logoRight">마감일</div>
                                   <div><fmt:formatDate  value="${r[0].REC_ENDDATE}" pattern="yy.MM.dd" />  까지</div>
                                </div>

                                

                                <div class="annoDetailInfoAll">
                                    <div class="annoDetailInfoLogo"></div>
                                    <div class="logoRight">경력</div>
                                    <div>${r[0].REC_CAREER} 년 이상</div>
                                </div>
                                <div class="annoDetailInfoAll">
                                    <div class="annoDetailInfoLogo"></div>
                                    <div class="logoRight">고용형태</div>
                                     <div>${r[0].REC_TYPE}</div>
                                </div>
                                <div class="annoDetailInfoAll">
                                    <div class="annoDetailInfoLogo"></div>
                                    <div class="logoRight">연봉</div>
                                    
                <c:set var="abc" value="${r[0].REC_SALARY}" />
                <c:choose>
                    <c:when test="${abc == '회사내규에따름'}"> 
				        <c:out value="회사내규에따름"></c:out>
				    </c:when>
				<c:otherwise>
				<fmt:formatNumber type="number" maxFractionDigits="3" value="${r[0].REC_SALARY}" /> 만원
				</c:otherwise>
				</c:choose>
                                </div>
                               

                            </div>

                            <div class="tttt" >
                                <div>
                                    <div class="InformationList">[주요업무]</div>
                                    <div class="mainTask">${r[0].REC_INFO}
                                    </div>
                                </div>

                   
                                <div>
                                    <div class="InformationList">[자격요건]</div>
                                    <div class="qualificationRequirements">
                                       ${r[0].REC_QUALIFICATION}</div>
                                </div>

                                <div>
                                    <div class="InformationList">[우대사항]</div>
                                    <div class="preferentialTreatment">
 										${r[0].REC_PREFER}
                                        </div>
                                </div>

                                <div>
                                    <div class="InformationList">[채용절차]</div>
                                    <div class="recruitmentProcedure">${r[0].REC_ORDER}
                                        * 서류전형 → 1차 (기술 면접) → 2차 (경영진 면접) → 처우협의 → 입사<br>
                                        - 면접관의 판단에 따라 전화면접(기술)이 추가될 수 있습니다.<br>
                                        - 전형별 결과는 5일 이내에 안내드립니다.<br>
                                        - 지원서류는 PDF 또는 Word 파일로 제출 부탁드립니다.<br>
                                    </div>
                                </div>

                                <div>
                                    <div class="InformationList">[복리후생]</div>
                                    <div class="welfareBenefits">${r[0].REC_WELFARE}
                                    </div>
                                </div>

                                <div>
                                    <div class="InformationList">[기타]</div>
                                    <div class="otherThan">${r[0].REC_OTHER} 
                                    </div>
                                </div>
                             
                            </div>
                        </div>
                         <div class="annoDetailInfoRight" >
                            <div style="font-size: 20px; font:bolder">문의처</div>
                            <div class="Inquiries">
                                <div class="managerName">담당자</div>
                                <div class="managerName2">${r[0].REP_PHONE}</div>
                            </div>
                            <div class="InquiriesInfo">
                                <div class="Inquiries">
                                    <div class="InquiriesHomePage">홈페이지</div>
                                    <div class="InquiriesHomePage2"><a href="https://search.naver.com">www.naver.com</a></div>
                                </div>
                                <div class="Inquiries">
                                    <div class="InquiriesPhone">연락처</div>
                                    <div class="InquiriesPhone2">${r[0].REP_PHONE}</div>
                                </div>
                                <div class="Inquiries">
                                    <div class="InquiriesEmail">이메일</div>
                                    <div class="InquiriesEmail2"></div>
                                </div>

                            </div>
                            <div class="InquiriesAddress">회사위치</div>
                            <div>서울 강남구 역삼동 123-345 8층 jobnomOffice </div>

                           	


                           
                           
                        
                        </div>
                        
                        </div>
                        </div>
                        <div class="test1" style="width: 1000px;"></div>
                        <div class="test2" style="width: 1000px;"></div>
  
                <!-- </span> -->



          
      
</section>


  		 
             
             <!-- 리뷰 클릭시 전환되는 에이작스 -->
              <script>
                
                    $(".clickReviewTotalBoxs").click((e) => {
                    var formData = $(e.target).val();
                    $.ajax({
                         
                         url : "${path}/Hire/reviewAVG.do", 
                         type : 'POST', 
                          dataType :'html',
                         data : {ent_no:formData},
                         success :function(data){
                        	 $(".annoDetailInfoWidth").css("display","none");
                        	 $(".test1").css("display","show");
                           $(".test1").html(data);
                        }
               })
                    });
                
                </script> 
                
                	<script>

              $(document).ready(function () {

             $(".clickReviewTotalBoxs").click(function () {
              $(".annoDetailAllHeight").css("display", "none");
              

             });
             });
             </script>  
             
             <script>
                /*  data:{ent_no:'${a.ent_no}'}, */
                
                    $(".annoDetailListBoxs2").click((e) => {
                    var formData = $(e.target).val();
                    var formData2 = $(e.target).next().val();
                    
                    $.ajax({
                         
                         url : "${path}/Hire/anoDetail.do", 
                         type : 'POST', 
                          dataType :'html',
                         data : {rec_no:formData,memNo:formData2},
                         success :function(data){
                        	 $(".test1").css("display","none");
                        	 $(".annoDetailAll").css("display","none");
                        	 $(".annoDetailAllHeight").css("display","none");
                        	 $(".test").html(data);
                        	 
                         
                         }
               })
                    });
                
                </script> 
     
     
     <script>
    $(function () {



        var scrollOffset = $('.annoDetailTitle').offset();

        $(window).scroll(function () {
            if ($(document).scrollTop() > scrollOffset.top) {
                $('.annoDetailTitle').addClass('scroll-fixed');
                $('.annoDetailTitle').css('margin-top', '76px');
                $('.annoDetailTitle').css('z-index', '5');
              
          /*       $('.detailedReviewInterview').css('display','none')l */
            }
            else {
                $('.annoDetailTitle').removeClass('scroll-fixed');
                $('.annoDetailTitle').css('margin-top', '0px');
            }
        });
    });


</script>

<script>
    $(function () {



        var scrollOffset = $('.annoCategory').offset();

        $(window).scroll(function () {
            if ($(document).scrollTop() > scrollOffset.top) {
            	
                $('.annoCategory').addClass('scroll-fixed');
                /* $('.annoCategory').css('margin-top', '158px'); */
                $('.annoCategory').css('z-index', '4');
               
            
            }
            else {
                $('.annoCategory').removeClass('scroll-fixed');
                $('.annoCategory').css('margin-top', '0px');
            }
        });
    });

    


</script> 

	
		
		<script>


    function fn_toggle() {
    	
        var announcementFavorites2 = document.getElementById("announcementFavorites2");
        if(${r[0].OPEN_CHECK==1 && commonLogin.memNo == in[0].mem_no})
         {
        	announcementFavorites2.src="${path }/resources/image/Hire/pngwing.png";
        	location.href="${path }/Hire/notFavorites.do?memNo=${commonLogin.memNo}&recNo=${r[0].REC_NO}&openCheck=${r[0].OPEN_CHECK}&anoNum=${r[0].REC_CATEGORY}";
        	alert("즐겨찾기 빼기 완료");
        }else
        {
            announcementFavorites2.src="${path }/resources/image/Hire/pngwing2.png";
           	location.href="${path }/Hire/favorites.do?memNo=${commonLogin.memNo}&recNo=${r[0].REC_NO}&anoNum=${r[0].REC_CATEGORY}";
        	alert("즐겨찾기 완료");
        }
        

    };
		  
</script>

 <script>
                        function fn_apply(){
                        	if($('input[name=memNo]').val()===""){
                      			alert("로그인 회원만 이용가능합니다");	
                      			 return false; 
                			}else{
                				alert("지원완료");
                			}
                        	
                        }
                        </script>
                        


