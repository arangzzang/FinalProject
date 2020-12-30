<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<link rel="stylesheet" href="${path}/resources/css/Hire/insertReview.css" />
<link rel="stylesheet" href="${path }/resources/css/mypage/interviewList.css"/>

	<div class="maininfo-parent one">
		<h2 class="maintitle">내기업 리뷰</h2>
		<p class="list_count">0개의 면접후기를 작성하셨습니다.</p><!-- qqq -->
		<table class="interview_table">
			<tr class="interview_th">
			    <th>기업명</th>
			    <th>고용형태</th>
			    <th>작성일</th>
			    <th>등록여부</th>
			    <th>수정/삭제</th>
			</tr>
			<!-- 결과값 있을 때 -->
			<tr class="interview_td_notnull">
			    <td>카카오</td>
			    <td>합격/불합격/기다리는중</td>
			    <td>2020/12/20</td>
			    <td>승인</td>
			    <td><button type="button">수정</button>/<button type="button">삭제</button></td>
			</tr>
			<!-- 결과값 없을 때 -->
			<c:if test="">
			    <tr class="interview_td_null">
			        <td colspan="5">작성한 면접후기가 없습니다</td>
			    </tr>
			</c:if>
		</table>
	   <button class="reviewImgBtn"></button>
	   <div class="reviewBtn">
	       <button class="reviewBtnInsert">기업 리뷰 작성하기</button>
	       <button class="reviewBtnFAQ">FAQ 바로가기</button>
	   </div>
	</div>
	<div id="popup">
       <div class="popupAll">
            <div id="popmenu">
                <form id="popFrm" action="${path }/Hire/insertReview2.do" method="post"  onsubmit="return fn_review();">
                <div class="popmenuInsertAll">
                    <div class="popmenuInsert">기업 리뷰 작성</div>
                 <!--    <button class="popmenuInsertClose"><i class="far fa-window-close"></i></button> -->
                </div>
                <div class="popmenuDetail">
                    	입력하신 모든 정보는 익명으로 처리되니 걱정마세요.</div>
                    <div class="popmenuEnterprise">
                        <div>기업명</div>
                        <input class="popmenuEnterpriseName" id="reviewName" name="review_name" type="text" placeholder="기업명" list="locationData">
                    	<datalist id="locationData"></datalist>
                    </div>
                    <div class="popmenuTital">
                        <div>제목</div>
                        <input class="popmenuTitalName" type="text" name="review_title" placeholder="제목">
                    </div>
                    <div class="popmenuContents">
                        <div>내용</div>
                        <textarea class="popmenuContentsName"   name="review_contents" cols="47" rows="5" placeholder="내용" style="resize: none;"></textarea>
                    </div>
                    <div class="companyGradebox"> 
                        <div class="companyStar-box">
                            <div class="companyTitle">사내만족도 평점</div>
                            <div class="companyStar " id="1"></div>
                            <div class="companyStar " id="2"></div> 
                            <div class="companyStar " id="3"></div> 
                            <div class="companyStar " id="4"></div> 
                            <div class="companyStar " id="5"></div> 
                            <input type="hidden" name="review_satisfaction" class="companyGrade">
                            <input type="hidden" name="memberNo" value="">
                            <!-- 나중에 스프링에서 value에 다가 로그인한 회원 번호 넣어주기 -->
                            <!-- 나중에 스프링가서 name 이랑 class 이름 다 바꿔주자  -->
                        </div>
                    </div>
					<div class="blessedGradebox"> 
						<div class="blessedStar-box">
							<div class="blessedTitle">복지 및 급여평점</div>
							<div class="blessedStar " id="1"></div>
							<div class="blessedStar " id="2"></div> 
							<div class="blessedStar " id="3"></div> 
							<div class="blessedStar " id="4"></div> 
							<div class="blessedStar " id="5"></div> 
							<input type="hidden" name="review_welfare" class="blessedGrade">
							<input type="hidden" name="memberNo" value="">
							<!-- 나중에 스프링에서 value에 다가 로그인한 회원 번호 넣어주기 -->
						</div>
					</div>
                   	<div class="promotionGradebox"> 
                      	<div class="promotionStar-box">
                         	<div class="promotionTitle">승진 기회 및 가능성 평점</div>
                         	<div class="promotionStar " id="1"></div>
                         	<div class="promotionStar " id="2"></div> 
                         	<div class="promotionStar " id="3"></div> 
                         	<div class="promotionStar " id="4"></div> 
                         	<div class="promotionStar " id="5"></div> 
                         	<input type="hidden" name="review_promotion" class="promotionGrade">
                         	<input type="hidden" name="memberNo" value="">
                         	<!-- 나중에 스프링에서 value에 다가 로그인한 회원 번호 넣어주기 -->
                       	</div>
                   	</div>
                   	<div class="executiveGradebox"> 
                       	<div class="executiveStar-box">
                       	  	<div class="executiveTitle">경영진 평점</div>
                          	<div class="executiveStar " id="1" ></div>
                         	<div class="executiveStar " id="2"></div> 
                          	<div class="executiveStar " id="3"></div> 
                          	<div class="executiveStar " id="4"></div> 
                          	<div class="executiveStar " id="5"></div> 
                          	<input type="hidden" name="review_executive" class="executiveGrade">
                          	<input type="hidden" name="memberNo" value="">
                          	<!-- 나중에 스프링에서 value에 다가 로그인한 회원 번호 넣어주기 -->
                        	</div>
                    	</div>
	                	<div class="submitByttonBox">
	                   		<input class="GradeboxSubmit" type="submit" value="제출하기" onclick="fn_return();"  > 
	                    	<input class="popmenuInsertClose" type="button" value="닫기" > 
	                   </div>
                </form>
            </div>
           	<div id="popmenuInfo">
               	<div class="popmenuInfoTitle">정보 등록 정책</div>
               	<div class="popmenuInfoContents">기업 리뷰의 신뢰성을 높이고 고위적으로 기업 평점 조작을 방지하기위해, 작성된 모든 정보는 JOBNOM 의 자체적인 검토과정을 거쳐 삭제될수도 있습니다</div>
               	<div class="popmenuInfoTitle">등록이 거부되는 이유</div>
               	<div class="popmenuInfoContents">
                   1. 기업을 이해하는데 도움이 안되거나 항목과 상관없는 내용<br>
                   2. 부서, 직급 등 개인을 특정 지을수 있는 정보나 펌훼, 비방성 표현<br>
                   3. 욕설, 비속어, 은어 및 공격적인 언어<br>
                   4. 기업 비밀에 해당하는 내용<br>
                   5. 존재하지 않거나 명확하지 않는 기업명<br>
               	</div>
           	</div>
       	</div>
   	</div>