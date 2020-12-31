<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<link rel="stylesheet" href="../resources/css/Hire/HireAnnouncement.css" />
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=" "/>
</jsp:include>

    
    <div class="modal fade" id="staticBackdrop" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
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

    <div class="announcementTitle">직종별 탐색으로 원하는 공고를 찾아보세요!</div>
    <div class="announcementAll">
        <div class="announcementTop">
            <div class="quest1">금융/제무
                <div class="questListAll">
                    <a  href="${path }/Hire/announcementPage.do">
                    <div class="questListDetail">
                    <div class="questList">은행관련</div><div class="arrow">></div>
                    </div>
                    </a>
                    <a href="${path }/Hire/announcementPage2.do?anoNum=2">
                    <div class="questListDetail">
                    <div class="questList">세무/법무</div><div class="arrow">></div>
                    </div>
                    
                    </a>
                      <a href="${path }/Hire/announcementPage2.do?anoNum=3">
                    <div class="questListDetail">
                    <div class="questList">경리/출납/수납</div><div class="arrow">></div>
                    </div>
                    </a>
                      <a href="${path }/Hire/announcementPage2.do?anoNum=4">
                    <div class="questListDetail">
                    <div class="questList">증거 투자 분석사</div><div class="arrow">></div>
                    </div>
                    </a>
                    <a href="${path }/Hire/announcementPage2.do?anoNum=5">
                    <div class="questListDetail">
                    <div class="questList">보험계리사/손해사정인</div><div class="arrow">></div>
                    </div>
                    </a>
                </div>
            </div>
            <div class="quest2">IT/인터넷
                <div class="questListAll">
                    <a href="${path }/Hire/announcementPage2.do?anoNum=6">
                    <div class="questListDetail">
                    <div class="questList">웹계발</div><div class="arrow">></div>
                    </div>
                    </a>
                    <a href="${path }/Hire/announcementPage2.do?anoNum=7">
                    <div class="questListDetail">
                    <div class="questList">시스템 엔지니어</div><div class="arrow">></div>
                    </div>
                    </a>
                    <a href="${path }/Hire/announcementPage2.do?anoNum=8">
                    <div class="questListDetail">
                    <div class="questList">웹퍼블리셔</div><div class="arrow">></div>
                    </div>
                    </a>
                    <a href="${path }/Hire/announcementPage2.do?anoNum=9">
                    <div class="questListDetail">
                    <div class="questList">기획</div><div class="arrow">></div>
                    </div>
                    </a>
                    <a href="${path }/Hire/announcementPage2.do?anoNum=10">
                    <div class="questListDetail">
                    <div class="questList">네트워크/보안/운영</div><div class="arrow">></div>
                    </div>
                    </a>
                    <a href="${path }/Hire/announcementPage2.do?anoNum=11">
                    <div class="questListDetail">
                    <div class="questList">데이터분석</div><div class="arrow">></div>
                    </div>
                    </a>
                </div>
            </div>
            <div class="quest3">교육
                <div class="questListAll">
                    <a href="${path }/Hire/announcementPage2.do?anoNum=12">
                    <div class="questListDetail">
                    <div class="questList">교육기획</div><div class="arrow">></div>
                    </div>
                    </a>
                    <a href="${path }/Hire/announcementPage2.do?anoNum=13">
                    <div class="questListDetail">
                    <div class="questList">전문강사</div><div class="arrow">></div>
                    </div>
                    </a>
                    <a href="${path }/Hire/announcementPage2.do?anoNum=14">
                    <div class="questListDetail">
                    <div class="questList">초중고/특수 교사</div><div class="arrow">></div>
                    </div>
                    </a>
                   <a href="${path }/Hire/announcementPage2.do?anoNum=15">
                    <div class="questListDetail">
                    <div class="questList">대학교수</div><div class="arrow">></div>
                    </div>
                    </a>
                    <a href="${path }/Hire/announcementPage2.do?anoNum=16">
                    <div class="questListDetail">
                    <div class="questList">교직원</div><div class="arrow">></div>
                    </div>
                    </a>
                    <a href="${path }/Hire/announcementPage2.do?anoNum=17">
                    <div class="questListDetail">
                    <div class="questList">입시/보습/학원강사</div><div class="arrow">></div>
                    </div>
                    </a>
                </div>
            </div>
        </div>

        <div class="announcementBottom">
                <div class="quest4">마켓팅/시장조사
                    <div class="questListAll">
                        <a href="${path }/Hire/announcementPage2.do?anoNum=18">
                        <div class="questListDetail">
                        <div class="questList">마켓팅</div><div class="arrow">></div>
                        </div>
                        </a>
                       <a href="${path }/Hire/announcementPage2.do?anoNum=19">
                        <div class="questListDetail">
                        <div class="questList">브랜드 마켓팅</div><div class="arrow">></div>
                        </div>
                        </a>
                        <a href="${path }/Hire/announcementPage2.do?anoNum=20">
                        <div class="questListDetail">
                        <div class="questList">시장조사/분석</div><div class="arrow">></div>
                        </div>
                        </a>
                       <a href="${path }/Hire/announcementPage2.do?anoNum=21">
                        <div class="questListDetail">
                        <div class="questList">상품개발/기획/MD</div><div class="arrow">></div>
                        </div>
                        </a>
                        <a href="${path }/Hire/announcementPage2.do?anoNum=22">
                        <div class="questListDetail">
                        <div class="questList">온라인 마켓팅</div><div class="arrow">></div>
                        </div>
                        </a>
                        
                    </div>
                </div>
                <div class="quest5">의약
                    <div class="questListAll">
                        <a href="${path }/Hire/announcementPage2.do?anoNum=23">
                        <div class="questListDetail">
                        <div class="questList">의사</div><div class="arrow">></div>
                        </div>
                        </a>
                        <a href="${path }/Hire/announcementPage2.do?anoNum=24">
                        <div class="questListDetail">
                        <div class="questList">한의사</div><div class="arrow">></div>
                        </div>
                        </a>
                        <a href="${path }/Hire/announcementPage2.do?anoNum=25">
                        <div class="questListDetail">
                        <div class="questList">치과의사</div><div class="arrow">></div>
                        </div>
                        </a>
                        <a href="${path }/Hire/announcementPage2.do?anoNum=26">
                        <div class="questListDetail">
                        <div class="questList">약사/한약사</div><div class="arrow">></div>
                        </div>
                        </a>
                        <a href="${path }/Hire/announcementPage2.do?anoNum=27">
                        <div class="questListDetail">
                        <div class="questList">간호사</div><div class="arrow">></div>
                        </div>
                        </a>
                        <a href="${path }/Hire/announcementPage2.do?anoNum=28">
                        <div class="questListDetail">
                        <div class="questList">간호조무사</div><div class="arrow">></div>
                        </div>
                        </a>
                        <a href="${path }/Hire/announcementPage2.do?anoNum=29">
                        <div class="questListDetail">
                        <div class="questList">물리치료사</div><div class="arrow">></div>
                        </div>
                        </a>
                        <a href="${path }/Hire/announcementPage2.do?anoNum=30">
                        <div class="questListDetail">
                        <div class="questList">수의사</div><div class="arrow">></div>
                        </div>
                        </a>
                    </div>
                </div>
                <div class="quest6">서비스/고객지원
                    <div class="questListAll">
                        <div class="questListAll">
                            <a href="${path }/Hire/announcementPage2.do?anoNum=31">
                            <div class="questListDetail">
                            <div class="questList">고객지원/CS</div><div class="arrow">></div>
                            </div>
                            </a>
                             <a href="${path }/Hire/announcementPage2.do?anoNum=32">
                            <div class="questListDetail">
                            <div class="questList">호텔/숙박 관련</div><div class="arrow">></div>
                            </div>
                            </a>
                             <a href="${path }/Hire/announcementPage2.do?anoNum=33">
                            <div class="questListDetail">
                            <div class="questList">가이드</div><div class="arrow">></div>
                            </div>
                            </a>
                             <a href="${path }/Hire/announcementPage2.do?anoNum=34">
                            <div class="questListDetail">
                            <div class="questList">외식업/식음료</div><div class="arrow">></div>
                            </div>
                            </a>
                             <a href="${path }/Hire/announcementPage2.do?anoNum=35">
                            <div class="questListDetail">
                            <div class="questList">기타 서비스직</div><div class="arrow">></div>
                            </div>
                            </a>
                             <a href="${path }/Hire/announcementPage2.do?anoNum=36">
                            <div class="questListDetail">
                            <div class="questList">경영</div><div class="arrow">></div>
                            </div>
                            </a>
                        </div>
                    </div>
                </div>
        </div> 
    </div>
       
    
</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>


<script>
    $(document).ready(function(){
        $(".menus").click(function(){
            $("#loginModal").modal();
        });
    });
</script>
