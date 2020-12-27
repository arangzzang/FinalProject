<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<link rel="stylesheet" href="${path }/resources/css/mypage/updatepassword.css"/>

    <form action="${path }/member/updatePasswordEnd" class="needs-validation" method="post" novalidate>
        <div class="maininfo">
            <h1 class="maintitle">비밀번호 변경</h1>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-gruop">
                        <label for="uname">현재 비밀번호</label>
                        <input type="password" class="form-control uname" id="uname" placeholder="기존 비밀번호를 입력해주세요." name="password" required>
                    </div>
                    <div class="form-gruop">
                        <label for="uname1">새 비밀번호</label>
                        <input type="password" class="form-control uname1" id="uname1" placeholder="새  비밀번호를 입력해주세요." name="password1" required>
                    </div>
                    <div class="form-gruop">
                        <label for="uname2">비밀번호확인</label>
                        <input type="password" id="uname2" class="form-control uname2" placeholder="2차 비밀번호를 입력해주세요." name="password2" required>
                        <input type="button" class="memPw btn btn-outline-success" value="비밀번호 확인">
                    </div>
                </div>
            </div>
            <div class="text-center enrollBtn">
            	<button type="submit" class="btn user_update_pw btn-outline-success">비밀번호 변경</button>
            </div>
        </div>
    </form>
    <input type="hidden" class="userEmail" value="${mem.memEmail }">
    <input type="hidden" class="pass_upCk" value="">
    
    <script>
    $(function(){
	  	//일반 회원 비밀번호 확인
	    $(".memPw").click(e=>{
		    var mem_update_pw = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
		    var hangulcheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		    let mem_up_pw=$(".uname1").val();
		    let mem_up_pw2=$(".uname2").val();
		    let mem_id=$(".userEmail").val();
		    let mem_be_pw=$(".uname").val();
	       if(mem_up_pw==""){
	          alert("새 비밀번호를 입력해주세요")
	          return false;
	       }else if(mem_up_pw2==""){
	          alert("2차비밀번호를 입력해주세요")
	       }else if(mem_up_pw!=mem_up_pw2){
	    	   console.log(mem_up_pw)
	    	   console.log(mem_up_pw2)
	          alert("회원비밀번호가 일치하지 않습니다.")
	          return false;
	       }else if(!mem_update_pw.test(mem_up_pw)){
	          alert('비밀번호는 8자 이상이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함해야 합니다.');
	          return false;
	       }else if(/(\w)\1\1\1/.test(mem_up_pw)){
	          alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
	          return false;
	       }else if(mem_up_pw.search(mem_id) > -1){
	          alert("비밀번호에 아이디가 포함되었습니다.");
	          return false;
	       }else if(mem_up_pw.search(/\s/) != -1){
	          alert("비밀번호는 공백 없이 입력해주세요.");
	          return false;
	       }else if(hangulcheck.test(mem_up_pw)){
	          alert("비밀번호에 한글을 사용 할 수 없습니다."); 
	          return false;
	       }else if(mem_be_pw==mem_up_pw || mem_be_pw==mem_up_pw2){
	    	   alert("이전 비밀번호와 동일할 수 없습니다"); 
	           return false;
	       }else{
	    	   $.ajax({
	    		   url:"${path}/member/selectPw",
	    		   data:{memEmail:mem_id,memPw:mem_be_pw},
	    		   success:data=>{
	    			   if(data==1){
	    				   $(".pass_upCk").val("good")
	    				   alert("사용 가능한 비밀번호 입니다.")
	    			   }else{
	    				   alert("사용이 불가능한 비밀번호 입니다.")
	    				   return false;
	    			   }
	    		   }
	    	   })
	       }
	    });
	    
	    $(".user_update_pw").click(e=>{
	    	if($(".pass_upCk").val()==""){
	    		alert("비밀번호 확인 버튼을 눌러주세요.")
	    		return false;
	    	}
	    })
    })
    </script>
