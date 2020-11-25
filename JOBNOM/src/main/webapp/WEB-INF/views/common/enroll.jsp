<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=" "/>
</jsp:include>
<link rel="stylesheet" href="${path }/resources/css/enroll.css"/>
<section>

   <!-- 일반회원 -->
<div class="container pt-5">
   <div class="container enrollMainH">
      <div class="row">
         <img src="" alt="" class="offset-4 col-4">
      </div>
   </div>
   <div class="container">
      <div class="info">
         <img src="" alt="">
         <p>화면 정말 하기 싫다 귀찮은 화면 스크립트 짜증짜짱취업이나 될런지 모르것다</p>
      </div>
   </div>
   <div class="container enrollMain">
      <div class="jumbotron text-center">
         <button type="button" class="btn btn-outline-success memenrollbtn">일반 회원</button>
         <button type="button" class="btn btn-outline-success entenrollbtn">기업 회원</button>
      </div>
   </div>
   <div class="container enrollMain mem_enroll">
      <form action="${path }/member/enrollMemberEnd" class="needs-validation" novalidate>
         <div class="jumbotron">
            <h1>회원 가입</h1>
            <div class="row">
               <div class="col-sm-12">
  	               <div class="form-gruop">
	                  <label for="mem_email">이메일</label>
	                  <input type="email" class="form-control" id="mem_email" placeholder="이메일을 입력해주세요." name="" required>
	                  <div class="valid-feedback">이메일 입력완료.</div>
	                  <div class="invalid-feedback">이메일을 입력해주세요.</div>
	               </div>
                  <div class="form-gruop">
                     <label for="memPw">비밀번호</label>
                     <input type="password" class="form-control"  placeholder="비밀번호를 입력해주세요." name="memPw" required>
                     <div class="valid-feedback">비밀번호 입력완료.</div>
                     <div class="invalid-feedback">비밀번호를 입력해주세요.</div>
                  </div>
                  <div class="form-gruop">
                     <label for="memPw2">비밀번호확인</label>
                     <input type="password" class="form-control" placeholder="2차 비밀번호를 입력해주세요." name="memPw2" required>
                     <div class="valid-feedback">비밀번호 입력완료.</div>
                     <div class="invalid-feedback">비밀번호를 입력해주세요.</div>
                  </div>
                  <div class="form-gruop">
                     <label for="mem_catagory">1차 직업군</label>
                     <select class="form-control catagory" id="mem_catagory" required>
                        <option>기타</option>
                        <option value=1>it</option>
                        <option value=2>경영</option>
                        <option>비즈니스</option>
                        <option>마케팅</option>
                        <option>디자인</option>
                     </select>
                  </div>
                  <div class="form-gruop option2">
                     <label for="mem_catagory2_it">it</label>
                     <select class="form-control catagory2" id="mem_catagory2" required>
                        <option>기타</option>
                        <option value=1>1</option>
                        <option value=2>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                     </select>
                  </div>
                  <div class="form-gruop option2">
                     <label for="mem_catagory2_bez">경영</label>
                     <select class="form-control catagory2" id="mem_catagory2_bez" required>
                        <option>기타</option>
                        <option value=1>1</option>
                        <option value=2>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                     </select>
                  </div>
                  <div class="form-gruop option2">
                     <label for="mem_catagory2_">비즈니스</label>
                     <select class="form-control catagory2" required>
                        <option>기타</option>
                        <option value=1>1</option>
                        <option value=2>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                     </select>
                  </div>
                  <div class="form-gruop option2">
                  <label for="catagory2">마케팅</label>
                     <select class="form-control catagory2" required>
                        <option>기타</option>
                        <option value=1>1</option>
                        <option value=2>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <!--  -->
                     </select>
                  </div>
                  <div class="form-gruop option2">
                     <label for="catagory2">디자인</label>
                     <select class="form-control catagory2" required>
                        <!-- 여기 포문돌려야됨 -->
                        <option>기타</option>
                        <option value=1>1</option>
                        <option value=2>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <!--  -->
                     </select>
                  </div>
                  <div class="form-gruop">
                     <label for="work">회원 구분</label>
                     <select class="form-control work" required>
                        <!-- 여기 포문돌려야됨 -->
                        <option>기타</option>
                        <option value=1>구직자</option>
                        <option value=2>퇴사자</option>
                        <option>재직자</option>
                        <!--  -->
                     </select>
                  </div>
                  <input type="hidden" value="회원분류: 1">
               </div>
            </div>
            <div class="text-center enrollBtn">
               <input type="submit" class="btn btn-outline-success" value="회원가입">
            </div>
         </div>
      </form>
   </div>
   <!-- 기업회원 -->
   <div class="container enrollMain ent_enroll">
      <form action="${path }/member/enrollEnterEnd" class="needs-validation" novalidate>
         <div class="jumbotron">
            <h1>기업 회원 가입</h1>
            <div class="row">
               <div class="col-sm-12">
	               <div class="form-gruop">
	                  <label for="ent_email">담당자이메일</label>
	                  <input type="email" class="form-control" id="ent_email" placeholder="담당자 이메일을 입력해주세요." name="" required>
	                  <div class="valid-feedback">이메일 입력완료.</div>
	                  <div class="invalid-feedback">이메일을 입력해주세요.</div>
	               </div>
                  <div class="form-gruop">
                     <label for="entPw">비밀번호</label>
                     <input type="password" class="form-control" id="entPw" placeholder="비밀번호를 입력해주세요." name="" required>
                     <div class="valid-feedback">비밀번호 입력완료.</div>
                     <div class="invalid-feedback">비밀번호를 입력해주세요.</div>
                  </div>
                  <div class="form-gruop">
                     <label for="entPw2">비밀번호확인</label>
                     <input type="password" id="entPw2" class="form-control" placeholder="2차 비밀번호를 입력해주세요." name="" required>
                     <div class="valid-feedback">비밀번호 입력완료.</div>
                     <div class="invalid-feedback">비밀번호를 입력해주세요.</div>
                  </div>
                  <div class="form-gruop">
                     <label for="ent_name">기업이름</label>
                     <input type="text" id="ent_name" class="form-control entName" placeholder="기업이름을 입력해주세요." name="" required>
                     <div class="valid-feedback">기업 이름 입력완료.</div>
                     <div class="invalid-feedback">기업 이름을 입력해주세요.</div>
                  </div>
                  <div class="form-gruop">
                     <label for="ent_CRN">사업자 등록번호</label>
                     <input type="number" id="ent_CRN" class="form-control" placeholder="입력시'-'는 제외합니다." name="" required>
                     <div class="valid-feedback">비밀번호 입력완료.</div>
                     <div class="invalid-feedback">비밀번호를 입력해주세요.</div>
                  </div>
                  <div class="form-gruop">
                     <label for="rep_name">담당자 이름(실명)</label>
                     <input type="text" id="rep_name" class="form-control" placeholder="실명을 기입해주세요." name="" required>
                     <div class="valid-feedback">이름 입력완료.</div>
                     <div class="invalid-feedback">이름을 입력해주세요.</div>
                  </div>
                  <div class="form-gruop">
                     <label for="rep_phone">담당자 번호</label>
                     <input type="tel" id="rep_phone" class="form-control" placeholder="입력시'-'는 제외합니다." name="" required>
                     <div class="valid-feedback">번호 입력완료.</div>
                     <div class="invalid-feedback">번호를 입력해주세요.</div>
                  </div>
                  <div class="form-gruop">
                     <label for="ent_catagory">1차 직업군</label>
                     <select class="form-control job1" id="ent_catagory" name="">
                        <!-- 여기 포문돌려야됨 -->
                        <option>기타</option>
                        <option value=1>1</option>
                        <option value=2>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <!--  -->
                     </select>
                  </div>
                  <div class="form-gruop option2">
                     <label for="ent_catagory2_1">직무1</label>
                     <select class="form-control job1" id="ent_catagory2_1" name="">
                        <!-- 여기 포문돌려야됨 -->
                        <option>기타</option>
                        <option value=1>1</option>
                        <option value=2>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <!--  -->
                     </select>
                  </div>
                  <div class="form-gruop option2">
                     <label for="ent_catagory2_2">직무2</label>
                     <select class="form-control job1" id="ent_catagory2_2" name="">
                        <!-- 여기 포문돌려야됨 -->
                        <option>기타</option>
                        <option value=1>1</option>
                        <option value=2>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <!--  -->
                     </select>
                  </div>
                  <div class="form-gruop option2">
                     <label for="ent_catagory2_3">직무3</label>
                     <select class="form-control job1" id="ent_catagory2_3" name="">
                        <!-- 여기 포문돌려야됨 -->
                        <option>기타</option>
                        <option value=1>1</option>
                        <option value=2>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <!--  -->
                     </select>
                  </div>
                  <div class="form-gruop option2">
                     <label for="ent_catagory2_4">직무4</label>
                     <select class="form-control job1" id="ent_catagory2_4" name="">
                        <!-- 여기 포문돌려야됨 -->
                        <option>기타</option>
                        <option value=1>1</option>
                        <option value=2>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <!--  -->
                     </select>
                  </div>
                  <div class="form-gruop option2">
                     <label for="ent_catagory2_5">직무5</label>
                     <select class="form-control job1" id="ent_catagory2_5" name="">
                        <!-- 여기 포문돌려야됨 -->
                        <option>기타</option>
                        <option value=1>1</option>
                        <option value=2>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <!--  -->
                     </select>
                  </div>
                  <label>기업 로고(선택)</label>
                  <div class="custom-file">
                     <input type="file" class="custom-file-input" id="customFile">
                     <label class="custom-file-label" for="customFile">이쁜로고가 좋겠죠?</label>
                  </div>
                  <input type="hidden" value="회원분류: 2">
               </div>
            </div>
            <div class="text-center enrollBtn">
               <button type="submit" class="btn btn-outline-success">회원가입</button>
            </div>
         </div>
      </form>
   </div>
</div>


</section>

<script>
   //버튼클릭시 회원가입화면 전환
   $(function(){
      $(".ent_enroll").hide();
      $(".memenrollbtn").click(e=>{
         $(".mem_enroll").show();
         $(".ent_enroll").hide();
      })
      $(".entenrollbtn").click(e=>{
         $(".mem_enroll").hide();
         $(".ent_enroll").show();
      });
   });
   
  
   // $(".job1").change(function(){
   //   var state = $('.job1 option:selected').val();
   //   if(state == 1){
   //     $(".option2").show();
   //   }else{
   //     $(".option2").hide();
   //   }
   // })
   $(function(){
      $(".catagory").change(e=>{
         console.log($(e.target).val());
         let job1=$(e.target).val();
         let job2=document.getElementsByClassName("catagory2")
         if(job1==1){
            job2.show();
         } 
      })
   })
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>