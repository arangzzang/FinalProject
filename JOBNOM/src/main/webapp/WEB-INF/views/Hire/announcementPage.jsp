<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<link rel="stylesheet" href="../resources/css/Hire/announcementPage.css" />
<jsp:include page="/WEB-INF/views/common/header.jsp">
   <jsp:param name="title" value=" "/>
</jsp:include>

            
              <div class="modal fade" id="staticBackdrop" data-backdrop="static" tabindex="-1" role="dialog"
            aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">로그인</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="">
                            <input type="text" class="userId" placeholder="이메일주소" name=""><br>
                            <input type="password" class="userPw" placeholder="비밀번호(8자리 이상)"><br>
                            <input type="submit" value="이메일 확인" class="loginsubmit">
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Understood</button>
                    </div>
                </div>
            </div>
        </div>
<section id="content">
<form id="" action="${path }/Hire/annCarrer.do" method="post" onsubmit="return fn_carrer();">
 <div class="annoCategory">
            <div class="dropdown">
                <button class="dropbtn"> 직종</button>
                <div class="dropdown-contentAll">
                    <div class="dropdown-content">
                            <div>
                                <div class="contentDetailAll">
                                    <div class="contentDetail"
                                        style="overflow:scroll; width:250px; height:300px; padding:10px;  ">
                                        <div class="contentDetailAllBtn"><a href="#" id="contentBank">금융/제무</a></div>
                                        <div class="contentDetailAllBtn"><a href="#" id="contentIT">IT/인터넷/소프트웨어</a></div>
                                        <div class="contentDetailAllBtn"><a href="#" id="contentStudy">교육</a></div>
                                        <div class="contentDetailAllBtn"><a href="#" id="contentMarket">마켓팅/시장조사</a></div>
                                        <div class="contentDetailAllBtn"><a href="#" id="contentMedicine">의약</a></div>
                                        <div class="contentDetailAllBtn"><a href="#" id="contentService">서비스/고객지원</a></div>
                                    </div>


                                    <div id="contentDetailfinance">
                                        <div class="check_wrap">
                                            <input type="checkbox" id="bankClerk" name="anoNum" value="1">
                                            <label for="bankClerk" class="checkboxContentDetail" id="">
                                            <span class="checkboxContentSpan"></span>은행관련</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="tax" name="anoNum" value="2">
                                            <label for="tax" class="checkboxContentDetail"
                                                id=""><span class="checkboxContentSpan"></span>세무/법무</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="accounting" name="anoNum" value="3">
                                            <label for="accounting" class="checkboxContentDetail"
                                                id=""><span class="checkboxContentSpan"></span>경리/출납/수납</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="invest" name="anoNum" value="4">
                                            <label for="invest" class="checkboxContentDetail"
                                                id=""><span class="checkboxContentSpan"></span>증거 투자 분석</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="insurance" name="anoNum" value="5">
                                            <label for="insurance" class="checkboxContentDetail"
                                                id=""><span class="checkboxContentSpan"></span>보험계리사/손해사정인</label>
                                        </div>

                                    </div>
                                    <!-- 인터넷 -->
                                    <div id="contentDetailIT"
                                        style="overflow:scroll; width:450px; height:300px; padding:10px; display: none; ">
                                        <div class="check_wrap">
                                            <input type="checkbox" id="QA" name="anoNum" value="6">
                                            <label for="QA" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>웹계발</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="projectManager" name="anoNum" value="7">
                                            <label for="projectManager" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>시스템엔지니어</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="webDevelopment" name="anoNum" value="8">
                                            <label for="webDevelopment" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>웹퍼블리셔</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="DBA" name="anoNum" value="9">
                                            <label for="DBA" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>기획</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="engineer" name="anoNum" value="10">
                                            <label for="engineer" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>네트워크/보안/운영</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="webPublisher" name="anoNum" value="11">
                                            <label for="webPublisher" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>데이터분석</label>
                                        </div>
                                       

                                    </div>

                                    <!-- 교육 -->
                                    <div id="contentDetailStudy"
                                        style="overflow:scroll; width:450px; height:300px; padding:10px; display: none; ">
                                        <div class="check_wrap">
                                            <input type="checkbox" id="educationPlanning" name="anoNum" value="12">
                                            <label for="educationPlanning" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>교육기획</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="kindergarden" name="anoNum" value="13">
                                            <label for="kindergarden" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>전문강사</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="specialTeacher" name="anoNum" value="14">
                                            <label for="specialTeacher" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>초중고/특수학교 교사</label>
                                             </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="entranceExamination" name="anoNum" value="15">
                                            <label for="entranceExamination" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>대학교수</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="universityProfessor" name="anoNum" value="16">
                                            <label for="universityProfessor" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>교직원</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="professionalInstructor" name="anoNum" value="17">
                                            <label for="professionalInstructor" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>입시/보습/학원강사</label>
                                        </div>
                                  

                                    </div>
                                    <!-- 마켓팅  -->
                                    <div id="contentDetailMarket"
                                        style="overflow:scroll; width:450px; height:300px; padding:10px; display: none; ">
                                        <div class="check_wrap">
                                            <input type="checkbox" id="strategyMarketing" name="anoNum" value="18">
                                            <label for="strategyMarketing" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>마켓팅</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="onlineMarketing" name="anoNum" value="19">
                                            <label for="onlineMarketing" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>브랜드 마켓팅</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="CRM" name="anoNum" value="20">
                                            <label for="CRM" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>시장조사/분석</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="BrandMarketing" name="anoNum" value="21">
                                            <label for="BrandMarketing" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>상품개발/기획/MD</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="MD" name="anoNum" value="22">
                                            <label for="MD" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>온라인 마켓팅</label>
                                        </div>
                                      
                                       

                                    </div>
                                    <!-- 의약 -->
                                    <div id="contentDetailMedicine"
                                        style="overflow:scroll; width:450px; height:300px; padding:10px; display: none; ">
                                        <div class="check_wrap">
                                            <input type="checkbox" id="doctore" name="anoNum" value="23">
                                            <label for="doctore" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>의사</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="orientalMedicine" name="anoNum" value="24">
                                            <label for="orientalMedicine" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>한의사</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="Dentist" name="anoNum" value="25">
                                            <label for="Dentist" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>치과의사</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="veterinarian" name="anoNum" value="26">
                                            <label for="veterinarian" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>약사/한약사</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="Chemist" name="anoNum" value="27">
                                            <label for="Chemist" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>간호사</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="nurse" name="anoNum" value="28">
                                            <label for="nurse" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>간호조무사</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="medicalRecorder" name="anoNum" value="29">
                                            <label for="medicalRecorder" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>물리치료사</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="physicalTherapist" name="anoNum" value="30">
                                            <label for="physicalTherapist" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>수의사</label>
                                        </div>
                                      


                                    </div>
                                    <!-- 서비스 -->
                                    <div id="contentDetailService"여행숙박
                                        style="overflow:scroll; width:450px; height:300px; padding:10px; display: none; ">
                                        <div class="check_wrap">
                                            <input type="checkbox" id="customerSupport" name="anoNum" value="31">
                                            <label for="contentDetailService" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>고객지원/cs</label>
                                        </div>
                                        
                                        <div class="check_wrap">
                                            <input type="checkbox" id="Travel" name="anoNum" value="32">
                                            <label for="Travel" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>호텔/숙박 관련</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="beauty" name="anoNum" value="33">
                                            <label for="beauty" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>가이드</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="Catering" name="anoNum" value="34">
                                            <label for="Catering" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>외식업/식음료</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="Guard" name="anoNum" value="35">
                                            <label for="Guard" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>기타서비스</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="otherServices" name="anoNum" value="36">
                                            <label for="otherServices" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>경영</label>
                                        </div>
                                        

                                    </div>


                                    <script>

                                        $(document).ready(function () {

                                            $("#contentBank").click(function () {

                                                $("#contentDetailfinance").show();
                                                $("#contentDetailfinance").css("z-index", "99");
                                                $("#contentDetailIT").css("display", "none");
                                                $("#contentDetailStudy").css("display", "none");
                                                $("#contentDetailMarket").css("display", "none");
                                                $("#contentDetailMedicine").css("display", "none");
                                                $("#contentDetailService").css("display", "none");
                                               
                                                

                                            });
                                        });


                                    </script>
                                    <!-- it -->
                                    <script>

                                        $(document).ready(function () {

                                            $("#contentIT").click(function () {

                                                $("#contentDetailfinance").css("display", "none");
                                                $("#contentDetailIT").show();
                                                $("#contentDetailStudy").css("display", "none");
                                                $("#contentDetailMarket").css("display", "none");
                                                $("#contentDetailMedicine").css("display", "none");
                                                $("#contentDetailService").css("display", "none");
                                            });
                                        });
                                    </script>
                                    <!-- 교육 -->
                                    <script>

                                        $(document).ready(function () {

                                            $("#contentStudy").click(function () {

                                     
                                                $("#contentDetailfinance").css("display", "none");
                                                $("#contentDetailIT").css("display", "none");
                                                $("#contentDetailStudy").show();
                                                $("#contentDetailMarket").css("display", "none");
                                                $("#contentDetailMedicine").css("display", "none");
                                                $("#contentDetailService").css("display", "none");
                                            });
                                        });
                                    </script>

                                    <!-- 마켓팅 -->
                                    <script>

                                        $(document).ready(function () {

                                            $("#contentMarket").click(function () {

                                                
                                                $("#contentDetailfinance").css("display", "none");
                                                $("#contentDetailIT").css("display", "none");
                                                $("#contentDetailStudy").css("display", "none");
                                                $("#contentDetailMarket").show();
                                                $("#contentDetailMedicine").css("display", "none");
                                                $("#contentDetailService").css("display", "none");
                                            });
                                        });
                                    </script>

                                    <!-- 의약 -->
                                    <script>

                                        $(document).ready(function () {

                                            $("#contentMedicine").click(function () {

                                               
                                                $("#contentDetailfinance").css("display", "none");
                                                $("#contentDetailIT").css("display", "none");
                                                $("#contentDetailStudy").css("display", "none");
                                                $("#contentDetailMarket").css("display", "none");
                                                $("#contentDetailMedicine").show();
                                                $("#contentDetailService").css("display", "none");
                                            });
                                        });
                                    </script>

                                    <!-- 서비스 -->
                                    <script>

                                        $(document).ready(function () {

                                            $("#contentService").click(function () {

                                               
                                                $("#contentDetailfinance").css("display", "none");
                                                $("#contentDetailIT").css("display", "none");
                                                $("#contentDetailStudy").css("display", "none");
                                                $("#contentDetailMarket").css("display", "none");
                                                $("#contentDetailMedicine").css("display", "none");
                                                $("#contentDetailService").show();
                                            });
                                        });
                                    </script>



                                </div>
                                <div class="contentButton">
                                    <input class="contentButtonReset" type="submit" value="초기화" onclick="fn_return();">
                                     <input class="contentButtonApply3" type="submit" value="적용" onclick="fn_return();">
                                   <!--  <button class="contentButtonApply3" onclick="">적용</button> -->
                                </div>
                            </div>
                            
                        
                    </div>
                </div>

            </div>

            <div class="dropdown">
                <button class="dropbtn">경력</button>
                
                <div class="dropdown-contentCareer">
                    <input id="rangeStyle" type="range" min="0" max="10" step="1" value="" name="carNum" />
                    <div id="Year"></div>
                    <div class="contentButton">
                       <!--  <button class="contentButtonReset2" onclick="">초기화</button>
                        <button class="contentButtonApply3" onclick="">적용</button> -->
                        <input class="contentButtonReset2" type="submit" value="초기화" onclick="fn_return();">
                        <input class="contentButtonApply3" type="submit" value="적용" onclick="fn_return();">
                    </div>
                </div>
               
            </div>
           
            <script>
                let rangeStyle = document.getElementById('rangeStyle'),
                Year = document.getElementById('Year');
                Year.innerHTML = rangeStyle.value+"년차";

                rangeStyle.addEventListener('input', function () {
                    Year.innerHTML = rangeStyle.value+"년차";
                });

            </script>

            <div class="dropdown">
                <button class="dropbtn">고용형태</button>
                <form action="">
                    <div class="dropdown-contentShape">
                        <div class="check_wrap">
                            <input type="checkbox" id="partTimeJob" name="employType" value="일용직">
                            <label for="partTimeJob" class="checkboxContentShape"><span
                                    class="checkboxShapeSpan"></span>일용직</label>
                        </div>
                        <div class="check_wrap">
                            <input type="checkbox" id="Intern" name="employType" value="인턴">
                            <label for="Intern" class="checkboxContentShape"><span
                                    class="checkboxShapeSpan"></span>인턴</label>
                        </div>
                        <div class="check_wrap">
                            <input type="checkbox" id="contractWorker" name="employType" value="계약직">
                            <label for="contractWorker" class="checkboxContentShape"><span
                                    class="checkboxShapeSpan"></span>계약직</label>
                        </div>
                        <div class="check_wrap">
                            <input type="checkbox" id="fullTime" name="employType" value="정규직">
                            <label for="fullTime" class="checkboxContentShape"><span
                                    class="checkboxShapeSpan"></span>정규직</label>
                        </div>
                        <div class="check_wrap">
                            <input type="checkbox" id="freelancer" name="employType" value="프리랜서">
                            <label for="freelancer" class="checkboxContentShape"><span
                                    class="checkboxShapeSpan"></span>프리랜서</label>
                        </div>

                        <div class="contentButton">
                       <!--      <button class="contentButtonReset3" onclick="">초기화</button>
                            <button class="contentButtonApply3" onclick="">적용</button> -->
                            <input class="contentButtonReset3" type="submit" value="초기화" onclick="fn_return();">
                        <input class="contentButtonApply3" type="submit" value="적용" onclick="fn_return();">
                        </div>
                    </div>
                </form>
            </div>
        </div>




 </form>

<script>
 /*  function fn_carrer(){
	
	if ($('input[name=anoNum]').val()==0) {
	
		}else{
			alert("선택해주세요");
			   return false;
		}
	};   */
/* 
	  function fn_carrer(){
          const userId=document.getElementsByName('anoNum');
         
          if(userId.value=0){
              alert("4글자이상 입력하세요");
              return false;
          }else{
              alert("띵띵"); 
               
          }

         
          
      } */
	  /* function fn_carrer(){
			$(".contentButtonApply3").click(function () {
				if ($('input[name=anoNum]').val()==0){
					alert("선택해주세요");
					   return false;
					}
			})
			
			}  */
		

</script>

	<c:if test="${null == anolist[0].rec_no }">
		<div style="text-align: center; font-size: 30px; color: green; ">
			<div>죄송합니다</div>
			<div>해당하는 공고가 존재하지않습니다.</div>
			<a href="${path }/Hire/HireHome.do?memNo=${commonLogin.memNo}">
			<img alt="" src="${path }/resources/image/Hire/test.png"
				style="border-radius: 12px; width: 800px; height: 500px;">
			</a>
		</div>
		<a href="${path }/Hire/Mail.do">메일발송</a>
	</c:if> 
	<c:if test="${null != anolist[0].rec_no }">
        <div class="annoAll">
            <div id="annoListAll">
             

         
             
                <div id="annoList">
                  <c:forEach items="${anolist }" var="a">
                 
                  
                    <div class="annoListNum">
                        <div class="annoListLogeFlax">
                            <div class="annoListLoge"></div>
                        </div>
                      
                        <a href="#">
                       
                            <div class="annoListTitleFlax">
                            <button value="${a.rec_no }"  class="annoListTitleBox" >
                            <input type="hidden" value="${a.rec_no }" class="annoListTitle" name="ent_no" ><c:out value="${a.rec_title }"/><br>
                            <input type="hidden" class="annoListTitle" value="${a.rec_no }" name="ent_no"><c:out value="${a.ent_name }"/><br>
                            <input type="hidden" class="annoListTitle" value="${a.rec_no }" >평균 평점 
                            <input type="hidden" value="${commonLogin.memNo}" class="annoListTitle" name="mem_no" >
                            <c:out value="${commonLogin.memNo }"/>
                            </button>
                            
                                
                                
                            </div>
                        </a>
                        
                    </div>

                      
                   </c:forEach>
                </div>
                
                    <div id="pageBar">${pageBar }</div>
            </div>


            <div class="annoDetail">
            <div class="annoDetailAll">
                  
                    <div class="annoDetailTitle">
                        <div class="annoDetailNum">
                            <div class="annoDetailLogeFlax">
                                <div class="annoDetailLoge"></div>
                            </div>
                            <div class="annoDetailTitleFlax">            
                                <div class="annoDetailTitle1">${anolist[0].rec_title}</div> 
                                 <a href="#">
                                    <div class="annoDetailTitleFont">${anolist[0].ent_name }</div>
                                </a>

                            </div> 
                        </div>
                        
                      <button class="apply" onclick="location.href='${path }/Hire/apply.do?memNo=${commonLogin.memNo}&recNo=${r[0].REC_NO}'" >지원하기</a>
                       </button>
                       <c:if test="${anoList[0].open_check == null && commonLogin !=null}">
                      
                        <button id="favoritesBox" onclick="fn_toggle();">
                            <img id="announcementFavorites" src="${path }/resources/image/Hire/pngwing.png" />
                        </button>
                      </c:if>
                       <c:if test="${anoList[0].open_check == 1  && commonLogin !=null}">
                        <button id="favoritesBox" onclick="fn_toggle();">
                            <img id="announcementFavorites" src="${path }/resources/image/Hire/pngwing2.png" />
                        </button>
                      </c:if>
                        
                    </div>

                    <div class="detailedReviewInterview">
                       <a href="#">
                         <button value="${anolist[0].rec_no }" class="annoDetailListBoxs" >
                            <input type="hidden" value="${anolist[0].rec_no }" class="annoDetailListBox">상세
                         </button>
                        </a>
                        <a href="#">
                        <button value="${anolist[0].ent_no }" class="clickReviewTotalBoxs" >
	                       <input type="hidden" value="${anolist[0].ent_no }" class="clickReviewTotalBox">리뷰
                        </button>
                        </a>
                        <a href="#">
                         <button value="${anolist[0].ent_no }" class="interviewBoxs" >
                            <div class="interviewBox">면접</div>
                         </button>
                        </a>  
                    </div> 
  
                    

                    
        </div>
            <div class="annoDetailAllHeight" style=" overflow: auto; height: 800px;" >



<div class="annoDetailInfoWidth">
                        <div class="annoDetailInfoLeft">
                            <div class="annoDetailInfo">
                                <div class="annoDetailInfoAll">
                                    <div class="annoDetailInfoLogo"></div>
                                    <div class="logoRight">마감일</div>
                                   <div><fmt:formatDate  value="${anolist[0].rec_enddate}" pattern="yy.MM.dd" /></div>
                                </div>

                                

                                <div class="annoDetailInfoAll">
                                    <div class="annoDetailInfoLogo"></div>
                                    <div class="logoRight">경력</div>
                                    <div> ${anolist[0].rec_career}  년</div>
                                </div>
                                <div class="annoDetailInfoAll">
                                    <div class="annoDetailInfoLogo"></div>
                                    <div class="logoRight">고용형태</div>
                                     <div>${anolist[0].rec_type}</div>
                                </div>
                                <div class="annoDetailInfoAll">
                                    <div class="annoDetailInfoLogo"></div>
                                    <div class="logoRight">연봉</div>
                                      <div> ${anolist[0].rec_salary} 만원</div>
                                </div>
                               

                            </div>

                            <div class="tttt" >
                                <div>
                                    <div class="InformationList">[주요업무]</div>
                                    <div class="mainTask"> ${anolist[0].rec_info}
                                    </div>
                                </div>

                   
                                <div>
                                    <div class="InformationList">[자격요건]</div>
                                    <div class="qualificationRequirements">
                                		 ${anolist[0].rec_qualification} </div>
                                </div>

                                <div>
                                    <div class="InformationList">[우대사항]</div>
                                    <div class="preferentialTreatment">
 										 ${anolist[0].rec_prefer} 
                                        </div>
                                </div>

                                <div>
                                    <div class="InformationList">[채용절차]</div>
                                    <div class="recruitmentProcedure"><%-- ${r.rec_order} --%>
                                        * 서류전형 → 1차 (기술 면접) → 2차 (경영진 면접) → 처우협의 → 입사<br>
                                        - 면접관의 판단에 따라 전화면접(기술)이 추가될 수 있습니다.<br>
                                        - 전형별 결과는 5일 이내에 안내드립니다.<br>
                                        - 지원서류는 PDF 또는 Word 파일로 제출 부탁드립니다.<br>
                                    </div>
                                </div>

                                <div>
                                    <div class="InformationList">[복리후생]</div>
                                    <div class="welfareBenefits"> ${anolist[0].rec_welfare} 
                                    </div>
                                </div>

                                <div>
                                    <div class="InformationList">[기타]</div>
                                    <div class="otherThan">
                                        - 근무형태 : 정규직 (수습기간 3개월 후 정규직 전환 면접)<br>
                                        - 근무시간 : 주5일 (월~금)<br>
                                        - 근무제도 : 자율출퇴근제도, 재택근무제도<br>
                                        - 마이리얼트립 근무제도에 대한 팀원 인터뷰 : http://naver.me/5OFbzfeP<br>
                                        - 근무지 : 서울시 서초구 강남대로 327 대륭서초타워 18층 마이리얼트립<br>
                                    </div>
                                </div>
                             
                            </div>
                        </div>
                         <div class="annoDetailInfoRight" >
                            <div style="font-size: 20px; font:bolder">문의처</div>
                            <div class="Inquiries">
                                <div class="managerName">담당자</div>
                                <div class="managerName2"> ${anolist[0].rep_name} </div>
                            </div>
                            <div class="InquiriesInfo">
                                <div class="Inquiries">
                                    <div class="InquiriesHomePage">홈페이지</div>
                                    <div class="InquiriesHomePage2"><a href="https://search.naver.com">www.naver.com</a></div>
                                </div>
                                <div class="Inquiries">
                                    <div class="InquiriesPhone">연락처</div>
                                    <div class="InquiriesPhone2"> ${anolist[0].rep_phone} </div>
                                </div>
                                <div class="Inquiries">
                                    <div class="InquiriesEmail">이메일</div>
                                    <div class="InquiriesEmail2"></div>
                                </div>

                            </div>
                            <div class="InquiriesAddress">회사위치</div>
                            <div>서울 강남구 역삼동 123-345 8층 jobnomOffice </div>

                           	 <!-- 카카오맵 -->
                          <!--   <div id="map" style="width:300px;height:300px; border:solid"></div>
	 						<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a20465f19ee15158806da31ed0ea9984"></script>
                            <script>
                                var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
                                    var options = { //지도를 생성할 때 필요한 기본 옵션
                                        center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
                                        level: 3 //지도의 레벨(확대, 축소 정도)
                                    };

                                    var map = new daum.maps.Map(container, options);

                                        function setCenter(lat, lng) {

                                            map.setCenter(new daum.maps.LatLng(lat, lng));

                                        }



                           </script>  -->
                        </div>
                        
                        </div>
                        </div>
                <div class="test" style="margin-left: -107px;"></div>
                <div class="test3" style="overflow: auto; " ></div> 
        </div>
        </div>
        </c:if>
       
        
        
        
        
        
        
</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>


<script>

    // Disable form submissions if there are invalid fields
    (function () {
        'use strict';
        window.addEventListener('load', function () {
            // Get the forms we want to add validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function (form) {
                form.addEventListener('submit', function (event) {
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



<!-- 이거 스크롤 고정시키는거 -->
<!-- <script>


    $(function () {

        var scrollOffset = $('#annoListAll').offset();

        $(window).scroll(function () {
            if ($(document).scrollTop() > scrollOffset.top) {

                $('#annoListAll').addClass('scroll-fixed');
                $('#annoListAll').css('padding-top', '100px');
             

            }
            else {
                $('#annoListAll').removeClass('scroll-fixed');
                $('#annoListAll').css('padding-top', '0px');
            }
        });
    });


</script> -->


<script>

/*           $(function () {
         
             var scrollOffset = $('#contentDetailfinance').offset();
         
             $(window).scroll(function () {
                 if ($(document).scrollTop() > scrollOffset.top) {
         
                     $('#contentDetailfinance').addClass('scroll-fixed');
                     $('#contentDetailfinance').css('padding-top', '100px');
                     $('#contentDetailfinance').css('padding-top', '0px');
                     $('#contentDetailfinance').css('z-index', '99');
         
                 }
                 else {
                     $('#contentDetail').removeClass('scroll-fixed');
                     $('#contentDetail').css('padding-top', '0px');
                 }
             }); 
         }); */

</script>
 
<script>
    $(function () {



        var scrollOffset = $('.annoDetailTitle').offset();

        $(window).scroll(function () {
            if ($(document).scrollTop() > scrollOffset.top) {
                $('.annoDetailTitle').addClass('scroll-fixed');
                $('.annoDetailTitle').css('margin-top', '158px');
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
                $('.annoCategory').css('margin-top', '158px');
                $('.annoCategory').css('z-index', '4');
                $('.annoCategory').css('height', '80px');
            
            }
            else {
                $('.annoCategory').removeClass('scroll-fixed');
                $('.annoCategory').css('margin-top', '0px');
            }
        });
    });

    


</script> 
<script>
     $(function () {
    $('contentDetailAllBtn').click(function(){
        $('contentDetailAllBtn').css("style","none")
    });
});
</script>

              <script>
                    let avg1 = parseFloat($('.scoreReview_satisfactionAVG').text());
                    let total1 = avg1*20
                    $('.yellowbgSatisfaction').css('width',total1+'%');
                    
                    let avg2 = parseFloat($('.scoreReview_welfareAVG').text());
                    let total2 = avg2*20
                    $('.yellowbgWelfare').css('width',total2+'%');
                    
                    let avg3 = parseFloat($('.scoreReview_promotionAVG').text());
                    let total3 = avg3*20
                    $('.yellowbgPromotion').css('width',total3+'%');
                    
                    let avg4 = parseFloat($('.scoreReview_executiveAVG').text());
                    let total4 = avg4*20
                    $('.yellowbgExecutive').css('width',total4+'%');
              </script>
               
               

            </div>
                            
         </div>
       
           
         <!--     <script>

              $(document).ready(function () {

             $(".annoDetailListBox").click(function () {
             $(".clickReview").css("display", "none");
             $(".annoDetailInfoLeft").show();
             });
             });
             </script> -->
       <script>
       $(document).ready(function () {

           $(".annoListTitleBox").click(function () {
            $(".annoDetailInfoWidth").css("display", "none");
            $(".annoDetailAllHeight").css("display", "none");
            $(".test3").css("display", "none");

           });
           });
             </script>
             <!--  <script>
                /*  data:{ent_no:'${a.ent_no}'}, */
                
                    $(".annoListTitle").click(e=>{
                    var formData = $(e.target).next().val();
                    $.ajax({
                         
                         url : "${path}/Hire/reviewAVG.do", // 요기에
                         type : 'POST', 
                         data : {ent_no:formData},
                         cache: false
                    }).done(function (fragment) {
                       alertr(fragment);
                         $("#list").replaceWith(fragment);


                           
                        }
               
                    
                    });
                
                </script>   -->
                
               <%--  $("#searchBtn").click((e) => {//function(){}
         $.ajax({
            url:"<%=request.getContextPath()%>/jquery/nameSearch",
            data:{"name":$("#name").val()},//서버에 전달할 데이터 자바스크립트 객체로 보냄{키:값,키:값,....}
            dataType:"html",
            success:function(data){
               $("#result").html(data);
            }
         });
      }); --%>
                
                <script>
                /*  data:{ent_no:'${a.ent_no}'}, */
                
                    $(".annoListTitleBox").click((e) => {
                    var formData = $(e.target).val();
                  /*   alert("첫번째");
                     if(${commonLogin.memNo} != null){
                    	alert("두번째");
                    	let mem_no=${commonLogin.memNo};
                    }else{
                    	alert("세번째");
                    let mem_no = null;
                    }  */
                    $.ajax({
                         
                         url : "${path}/Hire/anoDetail.do", // 요기에
                         type : 'POST', 
                          dataType :'html',
                         data : {rec_no:formData},
                         success :function(data){
                           $(".test").html(data);
                        }
               })
                    });
                
                </script> 
        
    
      		<script>
           
                    $(".clickReviewTotalBoxs").click((e) => {
                    var formData = $(e.target).val();
                    $.ajax({
                         
                         url : "${path}/Hire/reviewAVG.do", 
                         type : 'POST', 
                          dataType :'html',
                         data : {ent_no:formData},
                         success :function(data){
                           $(".test3").html(data);
                        }
               })
                    });
                
                </script> 
                <script>
                $(".annoDetailListBoxs").click(function () {
                    $(".annoDetailAll").css("display", "none");
                    $(".test3").css("display", "none");
              })
                </script>
                
            <script>
       
               $(".annoListTitleBox").click(function () {
                   $(".annoDetailAll").css("display", "none");
                   
             })
              
        
             </script> 
             	<script>

              $(document).ready(function () {

             $(".clickReviewTotalBoxs").click(function () {
              $(".annoDetailAllHeight").css("display", "none");
              $(".test3").css("height", "800px");

             });
             });
             </script> 
             

<script>

    var cnt = 1;
    function fn_toggle() {
    	
        var announcementFavorites = document.getElementById("announcementFavorites");
        if(${r[0].OPEN_CHECK==1})
         {
        	announcementFavorites.src="${path }/resources/image/Hire/pngwing.png";
        	location.href="${path }/Hire/notFavorites.do?memNo=${commonLogin.memNo}&recNo=${anolist[0].rec_no}&openCheck=${anolist[0].open_check}";
        	alert("즐겨찾기 빼기 완료");
        }else
        {
            announcementFavorites.src="${path }/resources/image/Hire/pngwing2.png";
           	location.href="${path }/Hire/favorites.do?memNo=${commonLogin.memNo}&recNo=${anolist[0].rec_no}";
        	alert("즐겨찾기 완료");
        }
        cnt++

    };
		  
</script>

