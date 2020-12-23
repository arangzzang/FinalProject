<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<link rel="stylesheet" href="${path }/resources/css/mypage/mypagefrist.css"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=" "/>
</jsp:include>
<section id="content">
    <jsp:include page="/WEB-INF/views/member/mypage/mypageHeader.jsp">
        <jsp:param name="mypageHeader" value=" "/>
    </jsp:include>
    <div class="with-parent">
        <div class="with">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="a">
                <div class="container row withcon">
                    <div class="col-md-3 col-sm-3 withleft">
                        <ul class="nav nav-pills flex-column sidebar" id="sidebar">
                            <h3 class="sidebar-title">계정</h3>
                            <li class="nav-item sidebarmenubar">
                                <button type="button" class="sidebtn accountSettingBtn">계정설정</button>
                            </li>
                            <li class="nav-item sidebarmenubar">
                                <button type="button" class="sidebtn passBtn">비밀번호변경</button>
                            </li>
                            <li class="nav-item sidebarmenubar">
                                <button type="button" class="sidebtn alram">알림</button>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-8 col-sm-8 maincon withright" id="maincon">
                        <div class="maininfo-parent">
                            <form action="${path}/member/changeEmail" onsubmit="return mem_changeEmail();" class="needs-validation" novalidate>
                                <div class="maininfo">
                                    <h1 class="maintitle">계정설정</h1>
                                    <div>
                                        <h3>회원 이메일</h3>
                                        <p>${mem.memEmail}</p>
                                        <div class="form-gruop">
                                            <label for="uname">변경할 이메일 주소</label>
                                            <input type="email" class="form-control changeEmail" id="uname" placeholder="변경하실 이메일을 작성해주세요." name="memName" required>
                                        </div>
                                    </div>
                                    <div class="text-center enrollBtn">
                                        <input type="submit" class="btn btn-primary changeEmailBtn" value="이메일 변경">
                                    </div>
                                </div>
                            </form>
                            더 이상 job.nom을 이용하지 않는다면 <a href="">회원탈퇴</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
    //email변경 이건 원래있던거야
    function mem_changeEmail(){
    let re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        let changeMail = document.getElementById("uname").value;
        if(changeMail!=""){
            if(!re.test(changeMail)){
            console.log(changeMail)
                alert("이메일 형식이 아닙니다.")
                return false;
            }
        }else {
            alert("이메일을 작성해주세요");
            return false;
        };
    }
    //사이드바
    //계정설정
    $(".accountSettingBtn").click(e=>{
        $.ajax({
            url:"${path}/member/accountSettings",
            data:{memNo:<c:out value='${mem.memNo}'/>},
            type:"get",
            async: false,
            success:data=>{
                $(".maininfo-parent").html(data);
            }
        });
    });
    //비밀번호 변경 페이지 전환
    $(".passBtn").click(e=>{
        $.ajax({
            url:"${path}/member/updatePassword",
            data:{memNo:<c:out value='${mem.memNo}'/>},
            type:"get",
            async: false,
            success:data=>{
                
                $(".maininfo-parent").html(data);
            }
        });
    });
    //알람
    $(".alram").click(e=>{
        $.ajax({
            url:"${path}/member/alram",
            data:{memNo:<c:out value='${mem.memNo}'/>},
            type:"get",
            async: false,
            success:data=>{
                $(".maininfo-parent").html(data);
            }
        });
    })

</script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>