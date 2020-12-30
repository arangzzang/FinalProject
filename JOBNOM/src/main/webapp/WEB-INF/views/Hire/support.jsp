<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" href="../resources/css/Hire/support.css">
<c:set var="path" value="${pageContext.request.contextPath }" />

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=" "/>
</jsp:include>
<body>
<section id="content">
<div class="a">
        <div>
            <div class="hireHome">
               <a class="menus" class="menus" href="${path }/Hire/HireHome.do?memNo=${commonLogin.memNo}">HOME</a>

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
    <br><br><br>
    

<div class="tool">
    
    <div>
        <div class="thank">감사합니다</div><br><br>
       	  <div>${applyM[0].REC_TITLE } 에 지원이 완료되었습니다</div><br>
        <a class="menus" class="menus" href="${path }/Hire/HireHome.do?memNo=${commonLogin.memNo}"> <div>메인으로 이동</div></a><br>
         <a class="menus" href="${path }/Hire/HireMyHire.do?memNo=${commonLogin.memNo}" class="myHire1"><div>내 지원 공고 보러가기</div></a><br>
    </div><br><br>
    <div>안내사항</div><br><br>
    <div class="info">
        우리는 우리의 사이트에 등록된 정보에 대해 불법 여부가 확인되지 않는 한 그 어떤 이유로도 임의 삭제하거나 수정하지 않습니다.
우리는 특정 기업의 평가 점수가 일방적으로 높거나 낮다는 이유 만으로, 정보를 쉽게 삭제하거나 걸러내지 않습니다.
우리는 그 어떤 이해관계와 상관 없이 모든 정보에 같은 잣대를 들이댑니다.
우리는 게시물 등록 정책에 따라 작성된 정보의 등록 여부를 결정하는 팀을 보유하고 있습니다. 만일 작성된 정보가 게시물 등록 정책을 위반한다면, 해당 정보는 사이트에 노출될 수 없도록 등록이 거부됩니다.
우리는 사실 여부를 확인하는 작업은 수행하지 않으며, 모든 논쟁 상황에서 중립적인 태도를 유지합니다.
우리는 정보의 유의미함을 떠나, 작성자가 어떠한 댓가를 받았다는 증거를 확보하게 되면 해당 정보는 즉각적으로 삭제됩니다.
우리는 정당하지 않은 위계와 권위를 내세우며 모든 사람들의 권리와 가치를 훼손하려는 그 어떤 시도에도 굴복하거나 협력하지 않습니다.
우리는 익명성의 힘, 즉 모든 사람들이 그 어떤 압력이나 두려움, 원치 않는 긴장감과 자기 검열 없이 자신의 견해를 드러낼 수 있는 권리를 믿습니다.
    </div>


</div>

</section>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>