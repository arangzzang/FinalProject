<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="${path }/resources/css/mypage/saveHire.css"/>

	<div class="container row withcon">
	    <div class="col-md-3 col-sm-3 withleft">
	        <ul class="nav nav-pills flex-column sidebar" id="sidebar">
	            <h3 class="sidebar-title">관심정보</h3>
	            <li class="nav-item sidebarmenubar">
	                <button type="button" class="sidebtn followingBtn">팔로잉기업</button>
	            </li>
	            <li class="nav-item sidebarmenubar">
	                <button type="button" class="sidebtn saveHireBtn">저장된채용</button>
	            </li>
	        </ul>
	    </div>
	    <div class="col-md-9 col-sm-9 row saveHire_body" id="maincon">
	        <!-- 팔로잉한 기업이 있을 때 -->
	        <div class="col-md-6 col-sm-12 col-lg-4  saveHire_wrap">
	            <!-- 상세보기에 있는 채용으로 이동 -->
	            <div class="company_item">
	                <a class="ent_logo" href=""></a>
	                <div class="ent_info">
	                    <p><a href="" class="ent_title">기업명</a></p>
	                    <div>
	                        <span class="satisfaction"><i class="fas star fa-star"></i>5.1</span>
	                        <span class="job_cate_name">1차산업군</span>
	                    </div>
	                </div>
	                <a href="" class="choice_save">
	                    <i class="fas tr fa-check"></i>
	                    <span class="txt_save">저장</span>
	                    <i class="fas can fa-times"></i>
	                    <span class="txt_cancel">취소</span>
	                </a>
	            </div>
	            <!-- 채용공고에 올라온 채용공고로 이동 -->
	            <a href="" class="job_item">
	                <span class="hire_date">D-24채용기간</span>
	                <div class="hire_info">
	                    <p class="title">채용공고 제목채용공고 제목채용공고 제목채용공고 제목채용공고 제목</p>
	                    <p class="content">공고 첫내용?채용공고 제목채용공고 제목채용공고 제목채용공고 제목</p>
	                    <div>
	                        <span>채용 경력</span>
	                    </div>
	                </div>
	            </a>
	        </div>
	        <!-- 팔로잉한 기업이 없을 때 -->
	        <c:if test="">
	            <div class="hire_null">
	                <span><i class="fas alert fa-exclamation-circle"></i></span>
	                <p style="font-weight: bolder; font-size: 20;">저장된 채용이 없습니다.</p>
	                <p style="font-size: 13px;">관심 가는 채용정보를 저장해 보세요.</p>
	                <button class="hire_list_view btn btn-outline-success">[공고갯수count]개 채용 정보 보기</button>
	            </div>
	        </c:if>
	    </div>
	</div>

<script>
    $(".can").hide();
    $(".txt_cancel").hide();
    $(".choice_save").hover(function(){
        $(".tr").hide();
        $(".txt_save").hide();
        $(".can").show();
        $(".txt_cancel").show();
    },function(){
        $(".can").hide();
        $(".txt_cancel").hide();
        $(".tr").show();
        $(".txt_save").show();
    })
    $(".job_item").hover(function(){
        $(".title").css("border-bottom","2px solid")
    },function(){
        $(".title").css("border-bottom","none")
    })
</script>

	<script>
        //followingBtn,saveHireBtn
        //팔로잉한 기업 화면 전환
        $(".followingBtn").click(e=>{
            $.ajax({
	            url:"${path}/member/followingEnt",
	            type:"get",
	            data:{memNo:<c:out value='${mem.memNo}'/>},
	            success:data=>{
	            	$(".a").html("");
	                $(".a").html(data);
	            }
	        });
        })
        //저장된 채용 화면전환페이지
        $(".saveHireBtn").click(e=>{
            $.ajax({
                url:"${path}/member/saveHire",
                type:"get",
                data:{memNo:<c:out value='${mem.memNo}'/>},
	            success:data=>{
	            	$(".a").html("");
	                $(".a").html(data);
	            }
            });
        });
    </script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>