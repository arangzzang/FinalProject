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


    <div class="myHireListAll">
        <div class="myHireListAllLeft">
            <div class="myHireList">
                <div class="myHireListTag">
                    <a class="menus" href="${path }/Hire/HireMyHire.do?memNo=${commonLogin.memNo}" class="myHire1">입사지원 공고
                    </a>
                   <c:if test="${commonLogin != null }">
						<div class="count">${totalDataSu }개</div>
						<br>
						<br>
					</c:if>
					<c:if test="${commonLogin == null }">
						<div class="count">0개</div>
					</c:if>
                </div>
                <div class="myHireListTag2">
                    <a class="menus" href="${path }/Hire/HireFavorites.do?memNo=${commonLogin.memNo}" class="myHire1">즐겨찾기 채용  
                    </a>
                   <c:if test="${commonLogin != null }">
					<div class="count">${totalDataIn }개</div>
					</c:if>
					<c:if test="${commonLogin == null }">
						<div class="count">0개</div>
					</c:if>
                </div>
            </div>
        </div>
        
        <div class="myFavoritesView" style="font-size: 30px;"> 즐겨찾기 채용
       <div>
        <c:if test="${commonLogin != null }">
            <div class="myFavoritesViewInfo">총 ${totalDataIn }개의저장된 채용이 있습니다.  </div>
          </c:if>  
            <c:if test="${commonLogin == null }">
            <div style="font-size: 16px; color: gray;"><br>잡놈전용 프로필로 즐겨찾기한 내역만 확인 됩니다. 
              로그인후 공고를 즐겨찾기 해보세요</div>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#login">
							회원가입/로그인
				</button>
				</c:if>
            <c:forEach items="${i }" var="i">
         <a href="${path }/Hire/annoHomeDetailMove.do?recNo=${i.rec_no}" class="ss">
            
            <div class="myFavoritesList">
                <div class="">
                <c:choose>
		                        	<c:when test="${empty i.ent_logo }">
		                				<img src="${path }/resources/image/Hire/job.png" style="width: 80px; height: 80px; ">
		                        	</c:when>
		                        	<c:otherwise>
		                        		<img src="${path }/resources/enterprise/logo/${i.ent_no }/${i.ent_logo}" style="width: 80px; height: 80px; ">
		                        	</c:otherwise>
		                        
		                        </c:choose>
                </div>
                <div class="myFavoritesListAll">
                    <div><c:out value="${i.rec_title }"></c:out></div>
                    <div><c:out value="${i.ent_name }"></c:out></div>
                    <div class="myFavoritesDetail">
                        <div class="myFavoritesDetail1">평점</div>
                        

                    </div>
                   
                </div>
             

            </div>
            </a>
               </c:forEach>
          <div id="pageBar">${pageBar }</div>
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
