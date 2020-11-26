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
	                  <input type="email" class="form-control" id="mem_email" placeholder="이메일을 입력해주세요." name="memEmail" required>
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
                     <select class="form-control mem_catagory" id="mem_catagory" name="memCategory1" required>
                        <option>기타</option>
                        <option value="IT">IT</option>
                        <option value="금융/재무">금융/재무</option>
                        <option value="교육">교육</option>
                        <option value="마케팅">마케팅</option>
                        <option value="의약">의약</option>
                        <option value="서비스/고객지원">서비스/고객지원</option>
                     </select>
                  </div>
                  <div class="form-gruop">
                     <label for="mem_catagory2">2차 직업군</label>
                     <select class="form-control mem_catagory2" id="mem_catagory2" name="memCategory2" required>
                        <option>기타</option>
                     </select>
                  </div>
                  <div class="form-gruop">
                     <label for="work">회원 구분</label>
                     <select class="form-control work" name="memCheck" required>
                        <option>기타</option>
                        <option>구직자</option>
                        <option>퇴사자</option>
                        <option>재직중</option>
                     </select>
                  </div>
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
                     <select class="form-control ent_catagory" id="ent_catagory" name="">
                        <option>기타</option>
                        <option>IT/웹/통신</option>
                        <option>은행/금융업</option>
                        <option>교육업</option>
                        <option>마케팅/디자인</option>
                        <option>의약/제약</option>
                        <option>서비스업</option>
                     </select>
                  </div>
                  <div class="form-gruop">
                     <label for="ent_catagory2">2차 직업군</label>
                     <select class="form-control ent_catagory2" id="ent_catagory2" required>
                        <option>기타</option>
                     </select>
                  </div>
                  
                  <label>기업 로고(선택)</label>
                  <div class="custom-file">
                     <input type="file" class="custom-file-input" id="customFile">
                     <label class="custom-file-label" for="customFile">이쁜로고가 좋겠죠?</label>
                  </div>
               </div>
            </div>
            <div class="text-center enrollBtn">
               <button type="submit" class="btn btn-outline-success">회원가입</button>
            </div>
         </div>
      </form>
   </div>
</div>


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
   //1차직업군 선택시 해당하는 2차직업군 출력
   $(function(){
      //회원
      $(".mem_catagory").change(e=>{
         console.log($(e.target).val());
         let job1 = $(e.target).val()
         let car1 = ["웹개발", "시스템엔지니어", "웹퍼블리셔", "기획","네트워크/보안/운영","데이터분석"];
         let car2 = ["은행원", "세무사", "경리/출납/수납", "증권/투자분석가","보험계리사/손해사정인"];
         let car3 = ["교육기획/교재개발", "전문강사", "초중고/특수교사", "대학교수", "교직원","입시/복습/학원강사","전문강사"];
         let car4 = ["마케팅","브랜드마케팅","시장조사/분석","상품개발/기획/MD","온라인마케팅","CRM"];
         let car5 = ["의사","한의사","치과의사","약사/한약사","간호사","간호조무사","물리치료사","수의사"];
         let car6 = ["고객지원/CS","호텔/숙박관련/여행가이드","웨딩플래너/커플매니저","외식업/식음료","기타서비스직","뷰티/미용"];
         let target = document.getElementById("mem_catagory2")

         if(job1 == "IT") var values = car1;
         else if (job1 == "금융/재무") values = car2;
         else if (job1 == "교육") values = car3;
         else if (job1 == "마케팅") values = car4;
         else if (job1 == "의약") values = car5;
         else if (job1 == "서비스/고객지원") values = car6;
         
         target.options.length = 0;

         for (i in values) {
            var opt = document.createElement("option");
            opt.value = values[i];
            opt.innerHTML = values[i];
            target.appendChild(opt);
         }  
         console.log($("#mem_category1 option:selected").val());
         console.log($("#mem_category2 option:selected").val());
         
      });
         //기업
         $(".ent_catagory").change(e=>{
         console.log($(e.target).val());
         let jobs1 = $(e.target).val()
         let cars1 = ["웹에이젼시","네트워크/통신/모바일","IT컨설팅","게임","기타IT/웹/통신"];
         let cars2 = ["은행/금융/저축", "증권/보험/카드", "기타금융"];
         let cars3 = ["학원/어학원", "초중고/대학","기타 교육업"];
         let cars4 = ["신문/잡지/언론사","광고/홍보/전시","디자인/설계"];
         let cars5 = ["의료","보건","기타의료"];
         let cars6 = ["호텔/여행/항공","웨딩/이벤트","외식업/식음료","기타 서비스업","뷰티/미용"];
         let targets = document.getElementById("ent_catagory2")

         if(jobs1 == "IT/웹/통신") var values = cars1;
         else if (jobs1 == "은행/금융업") values = cars2;
         else if (jobs1 == "교육업") values = cars3;
         else if (jobs1 == "마케팅/디자인") values = cars4;
         else if (jobs1 == "의약/제약") values = cars5;
         else if (jobs1 == "서비스업") values = cars6;
         
         targets.options.length = 0;

         for (i in values) {
            var opt = document.createElement("option");
            opt.value = values[i];
            opt.innerHTML = values[i];
            targets.appendChild(opt);
         }
      });
   });
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>