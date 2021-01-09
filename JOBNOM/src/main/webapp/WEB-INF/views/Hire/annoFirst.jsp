<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<c:set var="path" value="${pageContext.request.contextPath }" />

<link rel="stylesheet" href="../resources/css/Hire/announcementPage.css" />
<style>
@import url(https://fonts.googleapis.com/css?family=Raleway:400,500,800);
figure.snip1132 {
  font-family: 'Raleway', Arial, sans-serif;
  position: relative;

  margin: 10px;
  min-width: 220px;
  max-width: 310px;
  max-height: 220px;
  width: 100%;

  color: #ffffff;
  text-align: center;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
}

figure.snip1132 * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.45s ease-in-out;
  transition: all 0.45s ease-in-out;
}

figure.snip1132 img {
  max-width: 100%;
  position: relative;
  opacity: 1;
}

figure.snip1132 figcaption {
  position: absolute;

  border: 1px solid white;
  border-width: 0 1px;
}

figure.snip1132 .heading {
  overflow: hidden;
  -webkit-transform: translateY(-50%);
  transform: translateY(-50%);
}

figure.snip1132 .caption {
  overflow: hidden;
  -webkit-transform: translateY(50%);
  transform: translateY(50%);
  position: absolute;
  width: 100%;
  bottom: 0;
}

figure.snip1132 h3,
figure.snip1132 p {
  display: table;
  margin: 0 auto;
  padding: 0 10px;
  position: relative;
  text-align: center;
  width: auto;
  text-transform: uppercase;
  font-weight: 400;
}

figure.snip1132 h3 span,
figure.snip1132 p span {
  font-weight: 800;
}

figure.snip1132 h3:before,
figure.snip1132 p:before,
figure.snip1132 h3:after,
figure.snip1132 p:after {
  position: absolute;
  display: block;
  width: 1000%;
  height: 1px;
  content: '';
  background: white;
}

figure.snip1132 h3:before,
figure.snip1132 p:before {
  left: -1000%;
}

figure.snip1132 h3:after,
figure.snip1132 p:after {
  right: -1000%;
}

figure.snip1132 h3:before,
figure.snip1132 h3:after {
  top: 50%;
}

figure.snip1132 p {
  font-size: 0.8em;
  font-weight: 500;
}

figure.snip1132 p:before,
figure.snip1132 p:after {
  bottom: 50%;
}

figure.snip1132 a {
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  position: absolute;
  z-index: 1;
}

figure.snip1132:hover img,
figure.snip1132.hover img {
  opacity: 0.35;
  -webkit-transform: scale(1.15);
  transform: scale(1.15);
}
</style>
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
<section id="content" style="margin-top: -158px;  padding-top: 160px; height: 1600px; ">
<form id="" action="${path }/Hire/annCarrer.do" method="post" onsubmit="return fn_carrer();" >
 <div class="annoCategory">
            <div class="dropdown">
                <input class="dropbtn" type="button" value="직종"> 
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
                                        <div class="check_wrap" >
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
                                        style="overflow:scroll; width:300px; height:300px; padding:10px; display: none; ">
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
                                        style="overflow:scroll; width:300px; height:300px; padding:10px; display: none; ">
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
                                        style="overflow:scroll; width:300px; height:300px; padding:10px; display: none; ">
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
                                        style="overflow:scroll; width:300px; height:300px; padding:10px; display: none; ">
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
                                    <div id="contentDetailService"
                                        style="overflow:scroll; width:300px; height:300px; padding:10px; display: none; ">
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
                                	<div style="border-top: solid gray; "></div>
                                <div class="contentButton">
                                     <input class="contentButtonApply3" type="submit" value="적용" onclick="fn_return();">
                                   <!--  <button class="contentButtonApply3" onclick="">적용</button> -->
                                </div>
                            </div>
                            
                        
                    </div>
                </div>

            </div>

            <div class="dropdown">
                <input type="button" value="경력" class="dropbtn">
                
                <div class="dropdown-contentCareer">
                    <input id="rangeStyle" type="range" min="0" max="10" step="1" value="" name="carNum" />
                    <div id="Year"></div>
                    	<div style="border-top: solid gray; "></div>
                    <div class="contentButton">
                     
                      
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
                <input type="button" value= "고용형태" class="dropbtn">
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
							<div style="border-top: solid gray; "></div>
                        <div class="contentButton">
        
                        <input class="contentButtonApply3" type="submit" value="적용" onclick="fn_return();">
                        </div>
                    </div>
                </form>
            </div>
        </div>




 </form>

 <div style=" width: 100%; height: 1200px; display: flex;padding-top: 100px; justify-content: btween;    ">
 <div class="" style=" width:40% ;  margin-right: 20px; font-style:inherit;">
 <div style=" font-size: 30px; font:bolder; color:green; padding-bottom: 30px;">정부 협력기관 바로가기</div>
  <figure class="snip1132">
        <img src="${path }/resources/image/Hire/a.jpg" alt="sample22" style=" border-radius: 12px; border: solid; border-color:gray; "/>
        <a href="https://www.kead.or.kr" target="_blank"></a>
   </figure>
    <figure class="snip1132">
        <img src="${path }/resources/image/Hire/b.jpg" alt="sample22" style=" border-radius: 12px; border: solid; border-color:gray; "/>
        <a href="http://www.kcomwel.or.kr/kcomwel/main.jsp"  target="_blank"></a>
   </figure>
   
    <figure class="snip1132">
        <img src="${path }/resources/image/Hire/c.jpg" alt="sample22" style=" border-radius: 12px; border: solid; border-color:gray; "/>
         <a href="http://www.hrdkorea.or.kr/"  target="_blank"></a>
   </figure>
   
    <figure class="snip1132">
        <img src="${path }/resources/image/Hire/d.jpg" alt="sample22" style=" border-radius: 12px; border: solid; border-color:gray; "/>
       <a href="http://www.moel.go.kr/index.do"  target="_blank"></a>
   </figure>
   
    <figure class="snip1132">
        <img src="${path }/resources/image/Hire/e.jpg" alt="sample22" style=" border-radius: 12px; border: solid; border-color:gray; "/>
         <a href="https://www.humanrights.go.kr/site/main/index001"  target="_blank"></a>
   </figure>
   
    <figure class="snip1132">
        <img src="${path }/resources/image/Hire/f.png" alt="sample22" style=" border-radius: 12px; border: solid; border-color:gray; "/>
         <a href="https://www.workplus.go.kr/index.do"  target="_blank"></a>
   </figure>
   
    <figure class="snip1132">
        <img src="${path }/resources/image/Hire/g.png" alt="sample22" style=" border-radius: 12px; border: solid; border-color:gray; "/>
         <a href="https://www.mss.go.kr/site/smba/main.do"  target="_blank"></a>
   </figure>
   
    <figure class="snip1132">
        <img src="${path }/resources/image/Hire/h.png" alt="sample22" style=" border-radius: 12px; border: solid; border-color:gray; "/>
        <a href="http://www.hrd.go.kr/hrdp/ma/pmmao/indexNew.do"  target="_blank"></a>
   </figure>
   

 
  </div>
 <div >
<div class="annoDetailAll"  style=" width: 50%; " >
                  
                    <div class="annoDetailTitle">
                        <div class="annoDetailNum">
                            <div class="annoDetailLogeFlax">
                                <div class="annoDetailLoge">
                                  <c:choose>
		                        	<c:when test="${empty r[0].ent_logo }">
		                				<img src="${path }/resources/image/Hire/job.png" style="width: 50px; height: 50px; ">
		                        	</c:when>
		                        	<c:otherwise>
		                        		<img src="${path }/resources/enterprise/logo/${r[0].ent_no }/${r[0].ent_logo}" style="width: 40px; height: 40px; ">
		                        	</c:otherwise>
		                        
		                        </c:choose>
                                </div>
                            </div>
                            <div class="annoDetailTitleFlax">            
                                <div id="annoDetailTitle1">${r[0].rec_title }</div>
                                
                                 <a href="#">
                                    <div class="annoDetailTitleFont" >${r[0].ent_name }</div>
                                </a>
                               
							
                            </div>
                        </div>
                        
                      
                        <button class="applyFirst"  onclick="fn_overlapApply();">간편 지원하기</button>
                        
                       
                     
                      <%-- <button class="apply"  onclick="location.href='${path }/Hire/apply.do?memNo=${commonLogin.memNo}&recNo=${r[0].REC_NO}&entName=${r[0].ENT_NAME } ' " >지원하기
                       </button> --%>
                       <c:if  test="${r[0].open_check eq 0 || empty r[0].open_check  && empty in[0].mem_no   && empty commonLogin   || commonLogin.memNo ne  in[0].mem_no  && in[0].rec_no ne r[0].rec_no }">
                        <button id="favoritesBox" onclick="fn_toggle();">
                            <img id="announcementFavorites2" src="${path }/resources/image/Hire/pngwing.png" />
                        </button>
                      </c:if>
                      
                      
                      
                     
                       <c:if test="${r[0].open_check eq 1  && commonLogin  ne null && in[0].rec_no eq r[0].rec_no && in[0].mem_no eq commonLogin.memNo }">
                        <button id="favoritesBox" onclick="fn_toggle();">
                            <img id="announcementFavorites2" src="${path }/resources/image/Hire/pngwing2.png" />
                        </button>
                      </c:if>
                      
                      
                    </div>

                    <div class="detailedReviewInterview">
                       <a href="#">
                       <div class="annoDetailListBoxs2">
                         <button  id="aaaa" name="aaaa" value="${r[0].rec_no }" style="width: 100px; height: 30px; background: white; border:none;"> 상세 </button>
                         <button id="dddd" name="dddd" value="${commonLogin.memNo }" style="display: none;"></button>
                            	
                       
                         </div>
                        </a>
                        <a href="#">
                       
                        <button value="${r[0].ent_no }" class="clickReviewTotalBoxs" >
	                       <input type="hidden" value="${r[0].ent_no }" class="clickReviewTotalBox">리뷰
                        </button>
                        
                        </a>
                        <a href="#">
                         <button value="${r[0].ent_no }" class="interviewBoxs" >
                            <div class="interviewBox">면접</div>
                         </button>
                        </a>  
                    </div> 
  
                    

                    
        </div> 
       
        

      


  
<div class="annoDetailInfoWidth" >
                        <div class="annoDetailInfoLeft">
                            <div class="annoDetailInfo">
                                <div class="annoDetailInfoAll">
                                    <div class="annoDetailInfoLogo"></div>
                                    <div class="logoRight">마감일</div>
                                   <div><fmt:formatDate  value="${r[0].rec_enddate}" pattern="yy.MM.dd" />  까지</div>
                                </div>

                                

                                <div class="annoDetailInfoAll">
                                    <div class="annoDetailInfoLogo"></div>
                                    <div class="logoRight">경력</div>
                                    <div>${r[0].rec_career} 년 이상</div> 
                                </div>
                                <div class="annoDetailInfoAll">
                                    <div class="annoDetailInfoLogo"></div>
                                    <div class="logoRight">고용형태</div>
                                     <div>${r[0].rec_type}</div>
                                </div>
                                <div class="annoDetailInfoAll">
                                    <div class="annoDetailInfoLogo"></div>
                                    <div class="logoRight">연봉</div>
                                    
                <c:set var="abc" value="${r[0].rec_salary}" />
                <c:choose>
                    <c:when test="${abc == '회사내규에따름'}"> 
				        <c:out value="회사내규에따름"></c:out>
				    </c:when>
				<c:otherwise>
				<fmt:formatNumber type="number" maxFractionDigits="3" value="${r[0].rec_salary}" /> 만원
				</c:otherwise>
				</c:choose>
                                </div>
                               

                            </div>

                            <div class="tttt" >
                                <div>
                                    <div class="InformationList">[주요업무]</div>
                                    <div class="mainTask">${r[0].rec_info}
                                    </div>
                                </div>

                   
                                <div>
                                    <div class="InformationList">[자격요건]</div>
                                     <div class="qualificationRequirements">
                                       ${r[0].rec_qualification}</div> 
                                </div>

                                <div>
                                    <div class="InformationList">[우대사항]</div>
                                     <div class="preferentialTreatment">
 										${r[0].rec_prefer}
                                        </div> 
                                </div>

                                <div>
                                    <div class="InformationList">[채용절차]</div>
                                     <div class="recruitmentProcedure">${r[0].rec_order}
                                    
                                    </div> 
                                </div>

                                <div>
                                    <div class="InformationList">[복리후생]</div>
                                     <div class="welfareBenefits">${r[0].rec_welfare}
                                    </div> 
                                </div>

                                <div>
                                    <div class="InformationList">[기타]</div>
                                    <div class="otherThan">${r[0].rec_other} 
                                    </div> 
                                </div>
                             
                            </div>
                        </div>
                         <div class="annoDetailInfoRight2" style="padding-right: 100px;" >
                            <div style="font-size: 20px; font:bolder">문의처</div>
                            <div class="Inquiries">
                                <div class="managerName">담당자</div>
                                 <div class="managerName2">${r[0].rep_name}</div> 
                            </div>
                            <div class="InquiriesInfo">
                                <div class="Inquiries">
                                    <div class="InquiriesHomePage">홈페이지</div>
                                    <div style="width: 200px;" class="InquiriesHomePage2"><a href="https://search.naver.com">기업 홈페이지 바로 가기</a></div>
                                </div>
                                <div class="Inquiries">
                                    <div class="InquiriesPhone">연락처</div>
                                     <div class="InquiriesPhone2">${r[0].rep_phone}</div> 
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
                        <div class="test" style=" overflow: auto; "></div>
 						 <div class="test1" style=" overflow: auto;"></div>
                      
                         </div>
                         </div>
                        
                      
  
                <!-- </span> -->

</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>


<div id="popup" style="text-align: center;">
 <input class="popmenuInsertClose" type="button" value="닫기" style="right: 20px; margin-top: 100px;"> 
	<div class="popupAll" style="text-align: center; padding-top: 200px;">
		<div id="popmenu">
			<div style="color: white;">간편지원하기 클릭시 담당자 이메일로 내 이력서가 자동 발송됩니다.</div>
			<br>
			<div style="color: white;">간편지원하기를 원하실 경우 간편지원하기를 클릭해주세요.</div>
			<div style="color: white;">내이력서를 수정해야 한다면 마이페이지를 클릭해주세요.</div>
			<form action="${path }/Hire/apply.do" onsubmit="return fn_apply();"
				method="post">

				<input type="hidden" name="memNo" value="${commonLogin.memNo}">
				<input type="hidden" name="recNo" value="${r[0].rec_no}"> <input
					type="hidden" name="entName" value="${r[0].ent_name }"> <input
					class="apply" type="submit" onclick="fn_overlapApply();"
					value="간편지원하기">
					<input type="button" id="fn_mypage" value="마이페이지" onclick="fn_mypage();">
			</form>
		</div>

	</div>
</div>




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
                        	 $(".test").css("width","900px");                	 
                        	 $(".test").html(data);
                        	 
                        /* 	 $(".annoDetailInfoWidth").css("display","none");
                             $(".test1").html(data); */
                        	 
                         
                         }
               })
                    });
                
                </script> 
     
  
     <script>
    $(function () {



        var scrollOffset = $('.annoDetailTitle').offset();

        $(window).scroll(function () {
            if ($(document).scrollTop() > scrollOffset.top) {
          
                $('.annoDetailTitle').css('margin-top', '76px');
                $('.annoDetailTitle').css('z-index', '5');
            
           
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
        if(${r[0].open_check==1 && commonLogin.memNo == in[0].mem_no})
         {
        	announcementFavorites2.src="${path }/resources/image/Hire/pngwing.png";
        	location.href="${path }/Hire/notFavorites.do?memNo=${commonLogin.memNo}&recNo=${r[0].rec_no}&openCheck=${r[0].open_check}&anoNum=${r[0].rec_category}";
        	alert("즐겨찾기 빼기 완료");
        }else
        {
            announcementFavorites2.src="${path }/resources/image/Hire/pngwing2.png";
           	location.href="${path }/Hire/favorites.do?memNo=${commonLogin.memNo}&recNo=${r[0].rec_no}&anoNum=${r[0].rec_category}";
        	alert("즐겨찾기 완료");
        }
        

    };
		  
</script>

 					<script>
                        function fn_apply(){
                        	if($('input[name=memNo]').val()===""){
                      			alert("로그인 회원만 이용가능합니다");	
                      			 return false; 
                			}
                        	else if(${sp[0].rec_no == r[0].rec_no && commonLogin.memNo == sp[0].mem_no}){
                           	alert("해당공고는 이미 지원한 공고입니다.");
                           	return false;
                           }else{
                           	alert("공고에 지원이 완료되었습니다");
                           }
                       };
                        </script>
                        

<script>
$(document).ready(function(){
    $(".applyFirst").click(function(){
       $("#popup").fadeIn();
       $(".headerContainerWrap").css("display","hide");
       
    });
    $(".popmenuInsertClose").click(function(){
       $("#popup").fadeOut();
       $(".headerContainerWrap").css("display","show");
       
    });
 });
</script>  
<script>
     $(".hover").mouseleave(
    function () {
      $(this).removeClass("hover");
    }
  );
</script>
<script>
	
			$("#fn_mypage").click(e=>{
	           	if(${commonLogin.memNo ==null }){
	         			alert("마이페이지 이동은 로그인후 이용가능합니다");	
	         			location.href="${path }/Hire/HireHome.do?memNo";
	   			}
	           	else{
	              	alert("마이페이지로 이동합니다.");
	              	location.href="${path }/member/myPage?memNo=${commonLogin.memNo }";

	              }
	          });

		</script>

