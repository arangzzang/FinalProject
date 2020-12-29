<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

    <div class="memberinfo-parent ">
        <div class="jumbotron row memberinfo" id="memberinfo">
            <div class="col-md-3 col-offset-3">
                <img src="" alt="">
            </div>
            <div class="col-md-6">
                <p>조현</p>
                <p>취준생</p>
                <p>IT취업하고싶다</p>
            </div>
        </div>
    </div>
    <div class="MPheadmenu-parent">
        <nav class="navbar navbar-expand-sm  navbar-light MPheadmenu">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav headbar">
                    <li class="nav-item sidebarmenubar">
                        <button type="button" class="navbtn accountBtn">계정</button>
                    </li>
                    <li class="nav-item sidebarmenubar">
                        <button type="button" class="navbtn resumeBtn">이력서</button>
                    </li>
                    <li class="nav-item sidebarmenubar">
                        <button type="button" class="navbtn activityBtn">활동내역</button>
                    </li>
                    <li class="nav-item sidebarmenubar">
                        <button type="button" class="navbtn interestInfoBtn">관심정보</button>
                    </li>
                    <li class="nav-item sidebarmenubar">
                        <button type="button" class="navbtn membershipBtn">멤버십</button>
                    </li>    
                </ul>
            </div>  
        </nav>
    </div>
    
    <script>
    	
		//헤더바 화면전환
	    //계정
	    $(".accountBtn").click(e=>{
	    	$.ajax({
	    		url:"${path}/member/accountView",
	    		type:"get",
	    		data:{memNo:<c:out value='${mem.memNo}'/>},
	    		success:data=>{
	    			$(".with-parent").html("");
	    			$(".with-parent").html(data);
	    			
	    		}
	    	})
// 	        location.assign('${path}/member/myPage?memNo=${mem.memNo}')
	    });
	    //이력서
	    $(".resumeBtn").click(e=>{
	        $.ajax({
	            url:"${path}/member/myProfile",
	            type:"get",
	            data:{memNo:<c:out value='${mem.memNo}'/>},
	            success:data=>{
	            	$(".with-parent").html("");
	                $(".with-parent").html(data);
	            }
	        });
	    });
	    //활동내역 activity
	    $(".activityBtn").click(e=>{
	        $.ajax({
	            url:"${path}/member/insertReview.do",
	            type:"get",
	            data:{memNo:<c:out value='${mem.memNo}'/>},
	            success:data=>{
	            	$(".with-parent").html("");
	            	$(".with-parent").html(data);
	            }
	        });
	    });
	    //관심정보 interestInfo
	    $(".interestInfoBtn").click(e=>{
	        $.ajax({
	            url:"${path}/member/followingEnt",
	            type:"get",
	            data:{memNo:<c:out value='${mem.memNo}'/>},
	            success:data=>{
	            	$(".with-parent").html("");
	            	$(".with-parent").html(data);
	            }
	        });
	    });
	
	    //멤버십 membership
		$(".membershipBtn").click(e=>{
	        $.ajax({
	            url:"${path}/member/mambership",
	            type:"get",
	            data:{memNo:<c:out value='${mem.memNo}'/>},
	            success:data=>{
	            	$(".with-parent").html("");
	                $(".with-parent").html(data);
	            }
	        });
	    });
    </script>
