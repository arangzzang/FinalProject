<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<link rel="stylesheet" href="${path }/resources/css/mypage/interviewList.css"/>

	    <div class="maininfo-parent one">
	        <h3 class="maintitle">내 면접후기</h3>
	        <p class="list_count">0개의 면접후기를 작성하셨습니다.</p><!-- qqq -->
	        <table class="interview_table">
	            <tr class="interview_th">
	                <th>기업명</th>
	                <th >면접결과</th>
	                <th>작성일</th>
	                <th>등록여부</th>
	                <th>수정/삭제</th>
	            </tr>
	            <!-- 결과값 있을 때 -->
	            <tr class="interview_td_notnull">
	                <td>카카오</td>
	                <td>합격/불합격/기다리는중</td>
	                <td>2020/12/20</td>
	                <td>등록/미등록</td>
	                <td><button type="button">수정</button>/<button type="button">삭제</button></td>
	            </tr>
	            <!-- 결과값 없을 때 -->
	            <c:if test="">
	                <tr class="interview_td_null">
	                    <td colspan="5">작성한 면접후기가 없습니다</td>
	                </tr>
	            </c:if>
	        </table>
	        <div class="interview_writing">
	            <button type="button" class="btn btn-outline-success" data-toggle="modal" data-target="#interview">
	                면접 후기 작성
	            </button>
	        </div>
	        <div class="modal fade" id="interview" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	            <div class="modal-dialog md" role="document" style="display: flex; width: 100%;">
	                <div class="modal-content">
	                    <div class="modal-header mh">
	                        <h5 class="modal-title" id="staticBackdropLabel">면접후기 작성</h5>
	                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                            <span aria-hidden="true">&times;</span>
	                        </button>
	                    </div>
	                    <div class="interview_info">
	                        <h4>이것만 기억하세요.</h4>
	                        <h5>1. 인턴에서 이직까지 jobnom의 원스톱 정보제공 서비스</h5>
	                        <p>노력하면 찾을 수 있는 공채 족보뿐만 아니라, 선배한테 매달려야 알려주는 인턴합격수기부터 그어디에도 없는 경력직들의 이직 면접 팁까지. 당신의 모든'지원'이 합격으로 끝나는 방법이 잡플래닛에 있습니다.</p>
	                        <h5>2. 잠깐! 기업 리뷰도 보고 싶으신가요?</h5>
	                        <p>면접후기를 제출하면 합격을 부르는 수만개의 꿀팁이 열립니다. 기업 리뷰도 보고싶으시다면 기업 리뷰를 제출해주세요. 열려라 참깨! 의 비밀은 '기브 앤 테이크'입니다.</p>
	                    </div>
	                    <h2 class="mx-auto">이제 작성해볼까요?</h2>
	                    <div class="modal-body mb">
	                        <form action="">
	                            <div class="row inter_content">
	                                <!-- 면접 제목 -->
	                                <label class="col-4 col-md-4 inter_title common_static">기업에 대한 한줄평은?</label>
	                                <div class="col-8 col-md-8 title common_static">
	                                    <input type="text" class="title_inp">
	                                </div>
	                                <!-- 면접 내용 -->
	                                <label class="col-md-4 col-4 inter_detail common_static">내용을 상세하게 적어주세요<br>
	                                    20자 이상 작성해주세요</label>
	                                <div class="col-8 col-md-8 detail common_static">
	                                    <textarea name="" class="inter_detail_text" id="" cols="30" rows="3"></textarea>
	                                </div>
	                                <!-- 합격여부 -->
	                                <label for="" class="col-4 col-md-4 common_static">합격 여부</label>
	                                <div class="col-8 col-md-8 inter_pass_yn common_static">
	                                    <select name="" id="">
	                                        <option value="">합격</option>
	                                        <option value="">불합격</option>
	                                        <option value="">대기중</option>
	                                    </select>
	                                </div>
	                                <!-- 면접 경험 -->
	                                <label for="" class="col-4 col-md-4 common_static">면접에 대한 평가는?</label>
	                                <div class="col-md-8 col-8 inter_experience common_static">
	                                    <select name="" id="">
	                                        <option value="">부정적</option>
	                                        <option value="">보통</option>
	                                        <option value="">긍정적</option>
	                                    </select>
	                                </div>
	                                <!-- 근무 지역 -->
	                                <label for="" class="col-4 col-md-4 common_static">근무 지역</label>
	                                <div class="col-md-8 col-8 job_location common_static">
	                                    <select name="" id="">
	                                        <option value="">서울</option>
	                                        <option value="">충북</option>
	                                        <option value="">충남</option>
	                                        <option value="">경북</option>
	                                        <option value="">경남</option>
	                                        <option value="">전북</option>
	                                        <option value="">전남</option>
	                                        <option value="">강원</option>
	                                    </select>
	                                </div>
	                                <!-- 면접 형태 -->
	                                <label for="" class="col-4 col-md-4 common_static">면접 형태를 골라주세요<br>면접관:면접인</label>
	                                <div class="col-md-8 col-8 inter_format common_static">
	                                    <select name="" class="format" id="">
	                                        <option value="">1:1</option>
	                                        <option value="">다:다</option>
	                                        <option value="">1:다</option>
	                                        <option value="">다:1</option>
	                                    </select>
	                                </div>
	                                <!-- 면접 난이도 -->
	                                <label for="" class="col-4 col-md-4 common_static">면접 난이도</label>
	                                <div class="col-md-8 col-8 inter_difficulty common_static">
	                                    <select name="" id="">
	                                        <option value="">매우 쉬움</option>
	                                        <option value="">쉬움</option>
	                                        <option value="">보통</option>
	                                        <option value="">어려움</option>
	                                        <option value="">매우 어려움</option>
	                                    </select>
	                                </div>
	                                <!-- 면접 경로 -->
	                                <label for="" class="col-4 col-md-4 common_static">면접 경로</label>
	                                <div class="col-md-8 col-8 inter_route common_static">
	                                    <select name="" id="">
	                                        <option value="">온라인</option>
	                                        <option value="">직원추천</option>
	                                        <option value="">헤드헌터</option>
	                                        <option value="">공개채용</option>
	                                        <option value="">취업지원센터</option>
	                                        <option value="">기타</option>
	                                    </select>
	                                </div>
	                                <!-- 면접 일자 -->
	                                <label for="" class="col-4 col-md-4 common_static">면접을 본게 언제 쯤인가요?</label>
	                                <div class="col-md-8 col-8 inter_route common_static">
	                                    <input type="text" class="date_picker">
	                                </div>
	                            </div>
	                        </form>
	                    </div>
	                    <div class="modal-footer">
	                        <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">취소</button>
	                        <button type="button" class="btn btn-outline-success">작성완료</button>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
    <script>
        $(".close").click(e=>{
            if (confirm('저장하시겠습니까?')) {
                 // Yes click
            } else {
                // no click
            }
        })
    </script>
