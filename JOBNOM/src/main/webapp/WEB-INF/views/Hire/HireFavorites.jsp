<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<link rel="stylesheet" href="../resources/css/Hire/HireFavorites.css" />

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


    <script>
        //모달창 만들구간
    </script>
<section id="content">

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


    <div class="myHireListAll">
        <div class="myHireListAllLeft">
            <div class="myHireList">
                <div class="myHireListTag">
                    <a href="${path }/Hire/HireMyHire.do"><div class="myHyreSupport">입사지원 공고
                    </div></a>
                    <div class="count">갯수</div><br><br>
                </div>
                <div class="myHireListTag2">
                    <a href="#"><div class="myHireSave">즐겨찾기 채용  
                    </div></a><div class="count">갯수</div>
                </div>
            </div>
        </div>
        <div class="myFavoritesView" style="font-size: 30px;"> 즐겨찾기 채용
            <div class="myFavoritesViewInfo">0 개의저장된 채용이 있습니다.  </div>
            <div class="myFavoritesList">
                <div class="logoImage"></div>
                <div class="myFavoritesListAll">
                    <div>카카오 모빌리언스</div>
                    <div>(주) 카카오</div>
                    <div class="myFavoritesDetail">
                        <div class="myFavoritesDetail1">평점</div>
                        <div class="myFavoritesDetai2">기업리뷰</div>
                        <div class="myFavoritesDetai3">면접후기</div>

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
