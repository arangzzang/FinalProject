<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<style>
   .jmkbtn{
      background-color:#00c362;
      color:#fff;
      text-align:center;
      border-radius:5px;
      font-weight:bold;
   }
</style>
<jsp:include page="/WEB-INF/views/common/header.jsp">
   <jsp:param name="title" value=" "/>
</jsp:include>
<section id="content">
<jsp:include page="/WEB-INF/views/enterprise/ent_mypage/myCom_info.jsp">
   <jsp:param name="myCom_info" value=""/>
</jsp:include>
<jsp:include page="/WEB-INF/views/enterprise/ent_mypage/ent_common.jsp">
   <jsp:param name="subheader" value=""/>
</jsp:include> 

    
<div class="container">
   <form action="${path }/com/ent_edit_end.do" method="post">
   <input type="hidden" value="${commonLogin.memNo }" name="entNo" id="entNo">
      <div class="row">
         <div class="col">
              <div class="input-group mb-3">
               <div class="input-group-prepend">
                     <span class="input-group-text">이메일</span>
                </div>
               <input type="text" class="form-control" value="${enterprise.entEmail}" name="entEmail" id="entEmail">
              </div>
              
              <div class="input-group mb-3">
               <div class="input-group-prepend">
                     <span class="input-group-text">기업이름</span>
                </div>
               <input type="text" class="form-control" value="${enterprise.entName}" name="entName" id="entName">
              </div>
              <div class="input-group mb-3">
                  <div class="input-group-prepend">
                        <span class="input-group-text">대표 이름</span>
                   </div>
                  <input type="text" class="form-control" value="${enterprise.repName}" name="repName" id="repName">               
                 </div>
              <div class="input-group mb-3">
                  <div class="input-group-prepend">
                        <span class="input-group-text">1차 산업군</span>
                   </div>
                  <input type="text" class="form-control" value="${enterprise.entCategory1}" name="entCategory1" id="entCategory2">               
                 </div>
              <div class="input-group mb-3">
               <div class="input-group-prepend">
                     <span class="input-group-text">사업자등록번호</span>
                </div>
               <input type="text" class="form-control" value="${enterprise.entBusinessNo}" name="entBusinessNo" id="entBusinessNo">               
              </div>
              
         </div>
         <div class="col">
            <div class="input-group mb-3">
               <div class="input-group-prepend">
                        <span class="input-group-text">비밀번호 변경</span>
                </div>
                   <input type="hidden" value="${enterprise.entPw }" name="entPw" id="entPw">
                  <input type="password" class="form-control" placeholder="비밀번호 입력 " name="newPw" id="newPw">
                  <input type="password" class="form-control" placeholder="비밀번호 재입력" name="newPw2" id="newPw2">
              </div>
                 
               <div class="input-group mb-3">
                  <div class="input-group-prepend">
                        <span class="input-group-text">회사로고</span>
                   </div>
                  <input type="text" class="form-control" value="${enterprise.entLogo}" name="entLogo" id="entLogo">               
                 </div>
                 <div class="input-group mb-3">
                  <div class="input-group-prepend">
                        <span class="input-group-text">대표 전화번호</span>
                   </div>
                  <input type="text" class="form-control" value="${enterprise.repPhone}" name="repPhone" id="repPhone">               
                 </div>
                 <div class="input-group mb-3">
                  <div class="input-group-prepend">
                        <span class="input-group-text">2차 산업군</span>
                   </div>
                  <input type="text" class="form-control" value="${enterprise.entCategory2}" name="entCategory2" id="entCategory2">               
                 </div>
                 <div class="input-group mb-3">
               <div class="input-group-prepend">
                     <span class="input-group-text">웹페이지</span>
                </div>
               <input type="text" class="form-control" value="${enterprise.entSite}" name="entSite">               
              </div>
         </div>
      </div>
      <div class="row">
         <div class="col"></div>
         <div style="text-align:center;" class="col">
              <input type="submit" class="jmkbtn btn-lg" value="저장" id="submit" data-toggle="modal" data-target="#loginModal">
           </div>
           <div style="text-align:right;" class="col">
            <input type="button" class="jmkbtn btn-lg" value="회원탈퇴">
           </div>
      </div>
   </form>
</div>
    
    
    





</section>
<script>
   function applyAd(){
      location.replace("${path }/com/applyAd.do");
   }
   $("#submit").click(function(){         
      if($("#newPw").length > 1){
         $("#entPw").val($("#newPw").val());
         alert($("#newPw").val() + "비번 비지 않음");
      }
   })
</script>   
   
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>