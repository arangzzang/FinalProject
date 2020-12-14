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
 <div class="annoCategory">
            <div class="dropdown">
                <button class="dropbtn"> 직종</button>
                <div class="dropdown-contentAll">
                    <div class="dropdown-content">
                        <form action="">
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
                                            <input type="checkbox" id="bankClerk">
                                            <label for="bankClerk" class="checkboxContentDetail" id="">
                                            <span class="checkboxContentSpan"></span>은행원</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="tax">
                                            <label for="tax" class="checkboxContentDetail"
                                                id=""><span class="checkboxContentSpan"></span>세무/법무</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="accounting">
                                            <label for="accounting" class="checkboxContentDetail"
                                                id=""><span class="checkboxContentSpan"></span>경리/출납/수납</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="invest">
                                            <label for="invest" class="checkboxContentDetail"
                                                id=""><span class="checkboxContentSpan"></span>증거 투자 분석</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="insurance">
                                            <label for="insurance" class="checkboxContentDetail"
                                                id=""><span class="checkboxContentSpan"></span>보험계리사/손해사정인</label>
                                        </div>

                                    </div>
                                    <!-- 인터넷 -->
                                    <div id="contentDetailIT"
                                        style="overflow:scroll; width:450px; height:300px; padding:10px; display: none; ">
                                        <div class="check_wrap">
                                            <input type="checkbox" id="QA">
                                            <label for="QA" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>QA</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="projectManager">
                                            <label for="projectManager" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>프로젝트 매니져</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="webDevelopment">
                                            <label for="webDevelopment" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>웹개발</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="DBA">
                                            <label for="DBA" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>DBA</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="engineer">
                                            <label for="engineer" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>소트트웨어 엔지니어</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="webPublisher">
                                            <label for="webPublisher" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>웹퍼블리셔</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="security">
                                            <label for="security" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>네트워크/보안/운영</label>
                                        </div>

                                    </div>

                                    <!-- 교육 -->
                                    <div id="contentDetailStudy"
                                        style="overflow:scroll; width:450px; height:300px; padding:10px; display: none; ">
                                        <div class="check_wrap">
                                            <input type="checkbox" id="educationPlanning">
                                            <label for="educationPlanning" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>교육기획</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="kindergarden">
                                            <label for="kindergarden" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>유치원/보육교사</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="specialTeacher">
                                            <label for="specialTeacher" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>초중고/특수학교 교사</label>
                                             </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="entranceExamination">
                                            <label for="entranceExamination" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>입시/보습/학원강사</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="universityProfessor">
                                            <label for="universityProfessor" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>대학교수</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="professionalInstructor">
                                            <label for="professionalInstructor" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>전문강사</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="faculty">
                                            <label for="faculty" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>교직원</label>
                                        </div>

                                    </div>
                                    <!-- 마켓팅  -->
                                    <div id="contentDetailMarket"
                                        style="overflow:scroll; width:450px; height:300px; padding:10px; display: none; ">
                                        <div class="check_wrap">
                                            <input type="checkbox" id="strategyMarketing">
                                            <label for="strategyMarketing" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>전략 마켓팅</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="onlineMarketing">
                                            <label for="onlineMarketing" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>온라인 마켓팅</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="CRM">
                                            <label for="CRM" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>CRM</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="BrandMarketing">
                                            <label for="BrandMarketing" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>브랜드 마켓팅</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="MD">
                                            <label for="MD" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>상품기획/MD</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="marketResearch">
                                            <label for="marketResearch" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>시장조사/분석</label>
                                        </div>
                                       

                                    </div>
                                    <!-- 의약 -->
                                    <div id="contentDetailMedicine"
                                        style="overflow:scroll; width:450px; height:300px; padding:10px; display: none; ">
                                        <div class="check_wrap">
                                            <input type="checkbox" id="doctore">
                                            <label for="doctore" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>의사</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="orientalMedicine">
                                            <label for="orientalMedicine" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>한의사</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="Dentist">
                                            <label for="Dentist" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>치과의사</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="veterinarian">
                                            <label for="veterinarian" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>수의사</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="Chemist">
                                            <label for="Chemist" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>약사</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="nurse">
                                            <label for="nurse" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>간호사</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="medicalRecorder">
                                            <label for="medicalRecorder" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>의무기록사</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="physicalTherapist">
                                            <label for="physicalTherapist" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>물리치료사</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="clinicalPsychologist">
                                            <label for="clinicalPsychologist" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>임상심리사/임상병리사</label>
                                        </div>


                                    </div>
                                    <!-- 서비스 -->
                                    <div id="contentDetailService"여행숙박
                                        style="overflow:scroll; width:450px; height:300px; padding:10px; display: none; ">
                                        <div class="check_wrap">
                                            <input type="checkbox" id="customerSupport">
                                            <label for="contentDetailService" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>고객지원</label>
                                        </div>
                                        
                                        <div class="check_wrap">
                                            <input type="checkbox" id="Travel">
                                            <label for="Travel" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>여행/숙박</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="beauty">
                                            <label for="beauty" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>뷰티/미용</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="Catering">
                                            <label for="Catering" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>외식업/식음료</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="Guard">
                                            <label for="Guard" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>경호.경비원</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="otherServices">
                                            <label for="otherServices" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>기타서비스</label>
                                        </div>
                                        <div class="check_wrap">
                                            <input type="checkbox" id="stewardess">
                                            <label for="stewardess" class="checkboxContentDetail" id=""><span
                                                    class="checkboxContentSpan"></span>스튜디오/승무원</label>
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
                                    <button class="contentButtonReset" onclick="">초기화</button>
                                    <button class="contentButtonApply" onclick="">적용</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

            </div>

            <div class="dropdown">
                <button class="dropbtn">경력</button>
                <div class="dropdown-contentCareer">
                    <input id="rangeStyle" type="range" min="0" max="10" step="1" value="10" />
                    <div id="Year"></div>
                    <div class="contentButton">
                        <button class="contentButtonReset2" onclick="">초기화</button>
                        <button class="contentButtonApply2" onclick="">적용</button>
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
                            <input type="checkbox" id="partTimeJob">
                            <label for="partTimeJob" class="checkboxContentShape"><span
                                    class="checkboxShapeSpan"></span>일용직</label>
                        </div>
                        <div class="check_wrap">
                            <input type="checkbox" id="Intern">
                            <label for="Intern" class="checkboxContentShape"><span
                                    class="checkboxShapeSpan"></span>인턴</label>
                        </div>
                        <div class="check_wrap">
                            <input type="checkbox" id="contractWorker">
                            <label for="contractWorker" class="checkboxContentShape"><span
                                    class="checkboxShapeSpan"></span>계약직</label>
                        </div>
                        <div class="check_wrap">
                            <input type="checkbox" id="fullTime">
                            <label for="fullTime" class="checkboxContentShape"><span
                                    class="checkboxShapeSpan"></span>정규직</label>
                        </div>
                        <div class="check_wrap">
                            <input type="checkbox" id="freelancer">
                            <label for="freelancer" class="checkboxContentShape"><span
                                    class="checkboxShapeSpan"></span>프리랜서</label>
                        </div>

                        <div class="contentButton">
                            <button class="contentButtonReset3" onclick="">초기화</button>
                            <button class="contentButtonApply3" onclick="">적용</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>








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
                            <button value="${a.rec_no }" class="annoListTitleBox" >
                            <input type="hidden" value="${a.rec_no }" class="annoListTitle" name="ent_no" ><c:out value="${a.rec_title }"/><br>
                            <input type="hidden" class="annoListTitle" value="${a.rec_no }" name="ent_no"><c:out value="${a.ent_name }"/><br>
                            <input type="hidden" class="annoListTitle" value="${a.rec_no }" >평균 평점 
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
                                <div class="annoDetailTitle1">${r.rec_title }</div>
                                 <a href="#">
                                    <div class="annoDetailTitleFont">${r.ent_name }</div>
                                </a>

                            </div>
                        </div>
                        <button class="btn_annoDetail" onclick="">지원하기</button>
                        <button id="favoritesBox" onclick="fn_toggle();">
                            <img id="announcementFavorites" src="${path }/resources/image/Hire/pngwing.png" />
                        </button>
                    </div>

                    <div class="detailedReviewInterview">
                       <a href="#">
                         <button value="${r.rec_no }" class="annoDetailListBoxs" >
                            <input type="hidden" value="${r.rec_no }" class="annoDetailListBox">상세
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
            <div class="annoDetailAllHeight" style=" overflow: auto; height: 800px;" >



<div class="annoDetailInfoWidth">
                        <div class="annoDetailInfoLeft">
                            <div class="annoDetailInfo">
                                <div class="annoDetailInfoAll">
                                    <div class="annoDetailInfoLogo"></div>
                                    <div class="logoRight">마감일</div>
                                   <div><%-- <fmt:formatDate  value="<%-- ${r.rec_enddate} --%>" pattern="YY.MM.DD" /> --%></div>
                                </div>

                                

                                <div class="annoDetailInfoAll">
                                    <div class="annoDetailInfoLogo"></div>
                                    <div class="logoRight">경력</div>
                                    <div><%-- ${r.rec_career} --%> 년</div>
                                </div>
                                <div class="annoDetailInfoAll">
                                    <div class="annoDetailInfoLogo"></div>
                                    <div class="logoRight">고용형태</div>
                                     <div><%-- ${r.rec_type} --%></div>
                                </div>
                                <div class="annoDetailInfoAll">
                                    <div class="annoDetailInfoLogo"></div>
                                    <div class="logoRight">연봉</div>
                                      <div><%-- ${r.rec_salary} --%></div>
                                </div>
                               

                            </div>

                            <div class="tttt" >
                                <div>
                                    <div class="InformationList">[주요업무]</div>
                                    <div class="mainTask"><%-- ${r.rec_info} --%>
                                    </div>
                                </div>

                   
                                <div>
                                    <div class="InformationList">[자격요건]</div>
                                    <div class="qualificationRequirements">
                                     <%--   ${r.rec_qualification} --%></div>
                                </div>

                                <div>
                                    <div class="InformationList">[우대사항]</div>
                                    <div class="preferentialTreatment">
 										<%-- ${r.rec_prefer} --%>
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
                                    <div class="welfareBenefits"><%-- ${r.rec_welfare} --%>
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
                                <div class="managerName2"><%-- ${r.rep_name} --%></div>
                            </div>
                            <div class="InquiriesInfo">
                                <div class="Inquiries">
                                    <div class="InquiriesHomePage">홈페이지</div>
                                    <div class="InquiriesHomePage2"><a href="https://search.naver.com">www.naver.com</a></div>
                                </div>
                                <div class="Inquiries">
                                    <div class="InquiriesPhone">연락처</div>
                                    <div class="InquiriesPhone2"><%-- ${r.rep_phone} --%></div>
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
          <!--   <span class="annoDetailSpan" style="display:none;"> -->
                <div class="test" style="margin-left: -100px; "></div>
        </div>
        
        
        
        
        
        
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

<!-- 이건 스크립트구문 -->
<script>
    var cnt = 1;
    function fn_toggle() {
        var announcementFavorites = document.getElementById("announcementFavorites");
        var fav = document.getElementById("fav");
        if(cnt%2==1){
            announcementFavorites.src="${path }/resources/image/Hire/pngwing.png";
        
        }else{
            announcementFavorites.src="${path }/resources/image/Hire/pngwing2.png";
        }
        cnt++

    }
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
                $('.annoDetailTitle').css('margin-top', '100px');
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
                $('.annoCategory').css('z-index', '99');
            
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
               
              <!--     <script>
                 $(".annoListTitle").click(e=>{
                    alert("dd")
                    var formData = $(e.target).next().val();
                    $.ajax({
                     
                         url : "insertReview.jsp",
                         success :function(data){
                            alert(data);
                           $(".annoDetail").html(data);
                           $(".annoDetail").hide();
                           
                        }
               }) 
                    
                    });
              </script>  
    -->
            <script>
       
               $(".annoListTitleBox").click(function () {
                   $(".annoDetailAll").css("display", "none");
             })
              
        
             </script> 
             

<!-- $(document).ready(function() {  이건 
    $(function() { 이거랑 같은거임 -->