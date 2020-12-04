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
  <!-- 검색창 시작 -->
            <div class="searchbar_section" id="searchbar_section">
                <div class="wrap">
                    <form action="#" id="search_form" method="post">
                        <div class="schbar_green">
                            <div class="schbar">
                                <i class="jp-search">

                                </i>
                                <label class="placeholder">
                                    <span class="placeholder_txt"></span>
                                    <input autocomplete=”off” type="text" class="input_search"
                                        id="search_bar_search_query" maxlength="201" name="query"
                                        placeholder="기업,채용공고를 검색해 보세요">
                                </label>
                                <button class="btn_schbar">검색</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- 검색창 끝 -->
            
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
                <div id="annoList" style="overflow:auto; width:350px; height: 450px; padding:10px;  ">

                    <div class="annoListNum">
                        <div class="annoListLogeFlax">
                            <div class="annoListLoge"></div>
                        </div>
                        <a href="#">
                            <div class="annoListTitleFlax">
                                <div class="annoListTitle">카카오웹개발 모집</div>
                                <div class="annoListTitle">(주)카카오</div>
                                <div class="annoListTitle">평균 평점</div>
                            </div>
                        </a>
                    </div>

                    <div class="annoListNum">
                        <div class="annoListLogeFlax">
                            <div class="annoListLoge"></div>
                        </div>
                        <a href="#">
                            <div class="annoListTitleFlax">
                                <div class="annoListTitle">카카오웹개발 모집</div>
                                <div class="annoListTitle">(주)카카오</div>
                                <div class="annoListTitle">평균 평점</div>
                            </div>
                        </a>
                    </div>

                    <div class="annoListNum">
                        <div class="annoListLogeFlax">
                            <div class="annoListLoge"></div>
                        </div>
                        <a href="#">
                            <div class="annoListTitleFlax">
                                <div class="annoListTitle">카카오웹개발 모집</div>
                                <div class="annoListTitle">(주)카카오</div>
                                <div class="annoListTitle">평균 평점</div>
                            </div>
                        </a>
                    </div>

                    <div class="annoListNum">
                        <div class="annoListLogeFlax">
                            <div class="annoListLoge"></div>
                        </div>
                        <a href="#">
                            <div class="annoListTitleFlax">
                                <div class="annoListTitle">카카오웹개발 모집</div>
                                <div class="annoListTitle">(주)카카오</div>
                                <div class="annoListTitle">평균 평점</div>
                            </div>
                        </a>
                    </div>

                    <div class="annoListNum">
                        <div class="annoListLogeFlax">
                            <div class="annoListLoge"></div>
                        </div>
                        <a href="#">
                            <div class="annoListTitleFlax">
                                <div class="annoListTitle">카카오웹개발 모집</div>
                                <div class="annoListTitle">(주)카카오</div>
                                <div class="annoListTitle">평균 평점</div>
                            </div>
                        </a>
                    </div>

                    <div class="annoListNum">
                        <div class="annoListLogeFlax">
                            <div class="annoListLoge"></div>
                        </div>
                        <a href="#">
                            <div class="annoListTitleFlax">
                                <div class="annoListTitle">카카오웹개발 모집</div>
                                <div class="annoListTitle">(주)카카오</div>
                                <div class="annoListTitle">평균 평점</div>
                            </div>
                        </a>
                    </div>

                    <div class="annoListNum">
                        <div class="annoListLogeFlax">
                            <div class="annoListLoge"></div>
                        </div>
                        <a href="#">
                            <div class="annoListTitleFlax">
                                <div class="annoListTitle">카카오웹개발 모집</div>
                                <div class="annoListTitle">(주)카카오</div>
                                <div class="annoListTitle">평균 평점</div>
                            </div>
                        </a>
                    </div>

                    <div class="annoListNum">
                        <div class="annoListLogeFlax">
                            <div class="annoListLoge"></div>
                        </div>
                        <a href="#">
                            <div class="annoListTitleFlax">
                                <div class="annoListTitle">카카오웹개발 모집</div>
                                <div class="annoListTitle">(주)카카오</div>
                                <div class="annoListTitle">평균 평점</div>
                            </div>
                        </a>
                    </div>

                    <div class="annoListNum">
                        <div class="annoListLogeFlax">
                            <div class="annoListLoge"></div>
                        </div>
                        <a href="#">
                            <div class="annoListTitleFlax">
                                <div class="annoListTitle">카카오웹개발 모집</div>
                                <div class="annoListTitle">(주)카카오</div>
                                <div class="annoListTitle">평균 평점</div>
                            </div>
                        </a>
                    </div>

                    <div class="annoListNum">
                        <div class="annoListLogeFlax">
                            <div class="annoListLoge"></div>
                        </div>
                        <a href="#">
                            <div class="annoListTitleFlax">
                                <div class="annoListTitle">카카오웹개발 모집</div>
                                <div class="annoListTitle">(주)카카오</div>
                                <div class="annoListTitle">평균 평점</div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>


            <div class="annoDetail">
                <div class="annoDetailAll">
                    <div class="annoDetailTitle">
                        <div class="annoDetailNum">
                            <div class="annoDetailLogeFlax">
                                <div class="annoDetailLoge"></div>
                            </div>
                            <div class="annoDetailTitleFlax">
                                <div class="annoDetailTitle1">카카오웹개발 모집</div>
                                <a href="#">
                                    <div class="annoDetailTitle1">(주)카카오</div>
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
                            <div class="annoDetailListBox">상세</div>
                        </a>
                        <a href="#">
                            <div class="clickReviewTotalBox">리뷰</div>
                        </a>
                        <a href="#">
                            <div class="">면접</div>
                        </a>
                    </div>

                    <div class="annoDetailInfoWidth">
                        <div class="annoDetailInfoLeft">
                            <div class="annoDetailInfo">
                                <div class="annoDetailInfoAll">
                                    <div class="annoDetailInfoLogo"></div>
                                    <div class="logoRight">마감일</div>
                                    <div>2020.12.31</div>
                                </div>

                                <div class="annoDetailInfoAll">
                                    <div class="annoDetailInfoLogo"></div>
                                    <div class="logoRight">직무</div>
                                    <div>QA(Quality Assurance)</div>
                                </div>

                                <div class="annoDetailInfoAll">
                                    <div class="annoDetailInfoLogo"></div>
                                    <div class="logoRight">경력</div>
                                    <div>3년 이상</div>
                                </div>
                                <div class="annoDetailInfoAll">
                                    <div class="annoDetailInfoLogo"></div>
                                    <div class="logoRight">고용형태</div>
                                    <div>정규직</div>
                                </div>
                                <div class="annoDetailInfoAll">
                                    <div class="annoDetailInfoLogo"></div>
                                    <div class="logoRight">급여</div>
                                    <div>면접 후 결정</div>
                                </div>
                                <div class="annoDetailInfoAll">
                                    <div class="annoDetailInfoLogo"></div>
                                    <div class="logoRight">스킬</div>
                                    <div>istqb, 테스트, CSTS, 검증</div>
                                </div>





                            </div>

                            <div class="tttt">
                                <div>
                                    <div class="InformationList">[주요업무]</div>
                                    <div class="mainTask">🙋🏻‍♂️마이리얼트립의 QA엔지니어는
                                        마이리얼트립의 서비스를 구성하는 모든 부분의 시작부터 끝까지 품질을 책임집니다. 새로운 기능이 개발되면 해당 기능의 테스트를 진행하고, 결함이
                                        발견되면 수정될 수 있도록 도와 안정성 높은 서비스를 제공할 수 있도록 합니다. 다양한 QA 활동의 결과를 분석하여 개발 프로세스를 개선시킬 수
                                        있도록 의견을 제시합니다. 나아가서는 테크니컬 기반의 QA를 위해 자동화 테스트 및 정적 테스트 등도 적극적으로 도입하여 불필요한 리소스를
                                        줄이고 더 높은 안정성을 확보할 수 있도록 하는 역할도 맡고 있습니다.
                                    </div>
                                </div>

                                <div>
                                    <div class="InformationList">[팀소개]</div>
                                    <div class="TeamIntroduction">
                                        TQA팀은 이렇게 일합니다.
                                        🙆🏻팀원 각자가 책임감을 가질 수 있도록 한개 이상의 프로젝트를 리딩하여 QA 활동을 수행하게 됩니다.
                                        💪🏼TQA팀은 개발직군으로 분류되며, 다른 개발자들과 직접 소통하여 더 나은 품질의 프로젝트가 완성될 수 있도록 긴밀히 협업합니다. 개발실
                                        내에서도 QA를 위해 지원을 아끼지 않으며, 서비스 배포의 최종 권한도 TQA팀에 있습니다.
                                        📝마이리얼트립 프로덕트 조직의 일하는 방식과 문화에 대해서는 아래 블로그에서 더 자세히 참고하실 수 있습니다.
                                        - 마이리얼트립 Product Team Blog : http://naver.me/FWLQeR9D</div>
                                </div>

                                <div>
                                    <div class="InformationList">[담당업무]</div>
                                    <div class="responsibilities">- 서비스를 위해 개발되는 기능 및 클라이언트의 안정성 확보<br>
                                        - 개발 및 QA 프로세스 개선 및 도입<br>
                                        - 서비스의 자동화 테스트 커버리지율(%) 확대<br>
                                        - 새로운 테크니컬 QA 활동 도입(API 테스트, 성능 테스트 등)</div>
                                </div>

                                <div>
                                    <div class="InformationList">[자격요건]</div>
                                    <div class="qualificationRequirements">
                                        - 3년 이상 8년 미만의 Web / App 서비스 QA 경력이 있으신 분<br>
                                        - 개발, PM, 사업 등 협업 부서들과 효율적이고 생산적인 커뮤니케이션이 가능한 분<br>
                                        - QA 프로세스 구축, 개선을 직접 진행해 안정적으로 도입한 분<br>
                                        - Web application 및 Android / iOS application에 대한 이해가 높은 분<br>
                                        - 기획 단계부터 서비스까지 모든 과정의 QA 프로세스를 경험한 분</div>
                                </div>

                                <div>
                                    <div class="InformationList">[우대사항]</div>
                                    <div class="preferentialTreatment">

                                        - Selenium, Appium 등 자동화 테스트 경험<br>
                                        - ISTQB 자격증 보유<br>
                                        - 프로그래밍 스킬 보유<br>
                                        - 다양한 테스트 툴 사용</div>
                                </div>

                                <div>
                                    <div class="InformationList">[채용절차]</div>
                                    <div class="recruitmentProcedure">
                                        * 서류전형 → 1차 (기술 면접) → 2차 (경영진 면접) → 처우협의 → 입사<br>
                                        - 면접관의 판단에 따라 전화면접(기술)이 추가될 수 있습니다.<br>
                                        - 전형별 결과는 5일 이내에 안내드립니다.<br>
                                        - 지원서류는 PDF 또는 Word 파일로 제출 부탁드립니다.<br>
                                    </div>
                                </div>

                                <div>
                                    <div class="InformationList">[복리후생]</div>
                                    <div class="welfareBenefits">- 여행상품 지원 (마이리얼트립 포인트 - 연 100만원, 지인쿠폰 월 5만원)<br>
                                        - 다양한 휴가제도 (생일 반차, 가족행사 휴가 2일, 경조사 휴가, 근속자 포상휴가)<br>
                                        - 자기계발비 지원 (체력단련, 도서구매, 문화생활 - 연 180만원)<br>
                                        - 직무교육비 지원 (직무 관련 강의, 컨퍼런스 - 교육비 80% 지원)<br>
                                        - 점심 식비 지원 (식권대장 - 월 16만원)<br>
                                        - 업무장비 지원 (직군 별 최신 장비 제공)<br>
                                        - 건강검진 지원 (연 1회)<br>
                                        - 실손보험 제공 (본인 포함 4인)<br>
                                        - 워크샵 운영 (연 1회)<br>
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
                        <!--리뷰틀릭시 나오는 화면  -->
         <div class="clickReview" style="display: none; width: 555px; height:100%; border:solid; padding: 30px;">
         	<div class="clickReviewTitleBox" style="border:solid;">
         		<div class="clickReviewName" style="width: 170px;">닉네임</div>
         		 <div class="score" style="width:250px;height :55px;position:relative;">
			        <div class="graybg" style="background-color:#999;  position:absolute; margin-left: 1px; width: 249px; height: 55px;"></div>
			        <div class="yellowbg" style="background-color:  gold;  position:absolute; width:68%; height: 55px; margin-left:1px;position:absolute;left:0;top:0;"></div>
			        <img class="starImg" src="${path }/resources/image/Hire/star.png" style="  background-size: cover; position:absolute;left:0;top:0; width:251px;height:100%;" />         
			    </div>
         		<div class="clickReviewPromotion" style="width: 170px;">사내 만족도</div>
         		
         		<div class="clickReviewSalary" style="width: 170px;">복지 및 급여</div>
         		
         		<div class="clickReviewPromotion" style="width: 170px;">승진 기회 및 가능성</div>
         		
         		<div class="clickReviewPromotion" style="width: 170px;">경영진</div>
         		

         	</div>
                            
         </div>
           
             <script>

              $(document).ready(function () {

             $(".annoDetailListBox").click(function () {
             $(".clickReview").css("display", "none");
             $(".annoDetailInfoLeft").show();
             });
             });
             </script>
              <script>

              $(document).ready(function () {

             $(".clickReviewTotalBox").click(function () {
             $(".annoDetailInfoLeft").css("display", "none");
             $(".clickReview").show();
            /*   $.ajax({
            	 url:"${path}/Hire/reviewAVG.do",
            	 data:{review_No:review_No},
            	 success:review_No{
            		 
            	 }
             })  */
             });
             });
             </script>
                        <div class="annoDetailInfoRight">
                            <div style="font-size: 20px; font:bolder">문의처</div>
                            <div class="Inquiries">
                                <div class="managerName">담당자</div>
                                <div class="managerName2">인하준</div>
                            </div>
                            <div class="InquiriesInfo">
                                <div class="Inquiries">
                                    <div class="InquiriesHomePage">홈페이지</div>
                                    <div class="InquiriesHomePage2">www.naver.com</div>
                                </div>
                                <div class="Inquiries">
                                    <div class="InquiriesPhone">연락처</div>
                                    <div class="InquiriesPhone2">010-1234-5678</div>
                                </div>
                                <div class="Inquiries">
                                    <div class="InquiriesEmail">이메일</div>
                                    <div class="InquiriesEmail2">jobnom@naver.com</div>
                                </div>

                            </div>
                            <div class="InquiriesAddress">회사위치</div>
                            <div>서울 강남구 역삼동 123-345 8층 jobnomOffice </div>

                           	 <!-- 카카오맵 -->
                            <div id="map" style="width:300px;height:300px; border:solid"></div>
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



                           </script> 
                        </div>

                    </div>




                </div>



            </div>
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
<script>


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


</script>

<script>
    $(function () {



        var scrollOffset = $('.annoDetailTitle').offset();

        $(window).scroll(function () {
            if ($(document).scrollTop() > scrollOffset.top) {
                $('.annoDetailTitle').addClass('scroll-fixed');
                $('.annoDetailTitle').css('margin-top', '100px');
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

<!-- $(document).ready(function() {  이건 
    $(function() { 이거랑 같은거임 -->