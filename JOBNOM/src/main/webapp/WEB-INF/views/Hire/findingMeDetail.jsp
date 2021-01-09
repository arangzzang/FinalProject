<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" href="../resources/css/Hire/FindingMeDetail.css" />
<c:set var="path" value="${pageContext.request.contextPath }" />



<div id="findingMeDetail" id="content"  >
        <div class="findingMeDetailX">
            <button class="findingMeDetailCancel"><i class="far fa-window-close"></i></button>
        </div>
        <div class="findingMeDetail2">
        <div class="findingMeDetailTitle">
            <div class="findingMeDetailTitleLogo"></div>
            <div class="findingMeDetailTitleAnnouncement"> ${fitM[0].rec_title } </div>
        </div>
        <div class="findingMeDetailSummary">
            <div class="findingMeDetailSummary1">
                <div class="findingMeDetailSummaryLogo"></div>
            <div class="findingMeDetailSummaryTitle">마감일</div><div>
<fmt:formatDate value="${fitM[0].rec_enddate}" pattern="yy.MM.dd" /> 까지 </div>
            </div>
            <div class="findingMeDetailSummary2">
                <div class="findingMeDetailSummaryLogo"></div>
            <div class="findingMeDetailSummaryTitle">직무</div><div>${m[0].jobs2 }</div>
            </div>
            <div class="findingMeDetailSummary2">
                <div class="findingMeDetailSummaryLogo"></div>
            <div class="findingMeDetailSummaryTitle">경력</div><div>${fitM[0].rec_career } 년이상</div>
            </div>
    
        </div>
        

            
        <div class="findingMeDetailMaintask">
            <div class="findingMeDetailMaintaskAll">
                <div class="findingMeDetailMaintaskAll1">연봉 :
                
                
                <c:set var="abc" value="${fitM[0].rec_salary}" />
                <c:choose>
                    <c:when test="${abc == '회사내규에따름'}"> 
				        <c:out value="회사내규에따름"></c:out>
				    </c:when>
				<c:otherwise>
				<fmt:formatNumber type="number" maxFractionDigits="3" value="${fitM[0].rec_salary}" /> 만원
				</c:otherwise>
				</c:choose>

              
                </div>
                <div class="findingMeDetailMaintaskAll2">모집인원 : ${fitM[0].rec_pepole} 명</div>
                <div class="findingMeDetailMaintaskAll3">고용형태 : ${fitM[0].rec_type}</div>
            </div>
    
            <div class="findingMeDetailButton">
                <button class="btn_annoDetail" onclick="location.href='${path }/Hire/announcementPageFirst?recNo=${fitM[0].rec_no}&anoNum=${fitM[0].rec_category }&memNo=${commonlogin.memNo } '" >공고 상세보기</button>
            
            </div>
            
    
        </div>
    </div> 
    </div>

  <script>
   //숨기기
    $(document).ready(function(){
     $(".findingMeDetailCancel").click(function(){
    $("#findingMeDetail").hide();

    });
    });


     </script>
	<script>


    function fn_toggle() {
    	
        var announcementFavorites2 = document.getElementById("announcementFavorites2");
        if(${fitM[0].open_check==1 && commonLogin.memNo == fitM[0].mem_no})
         {
        	announcementFavorites2.src="${path }/resources/image/Hire/pngwing.png";
        	location.href="${path }/Hire/notFavorites.do?memNo=${commonLogin.memNo}&recNo=${fitM[0].rec_no}&openCheck=${fitM[0].open_check}&anoNum=${fitM[0].rec_category}";
        	alert("즐겨찾기 빼기 완료");
        }else
        {
            announcementFavorites2.src="${path }/resources/image/Hire/pngwing2.png";
           	location.href="${path }/Hire/favorites.do?memNo=${commonLogin.memNo}&recNo=${fitM[0].rec_no}&anoNum=${fitM[0].rec_category}";
        	alert("즐겨찾기 완료");
        }
        

    };
		  
</script>
