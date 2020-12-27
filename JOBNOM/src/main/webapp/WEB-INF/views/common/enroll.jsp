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
                  <div class="col-sm-12 col-md-12">
                     <div class="form-gruop">
                        <label for="mem_email">이메일</label>
                        <input type="email" class="form-control email" id="mem_email" placeholder="이메일을 입력해주세요." name="memEmail" required>
                        <div class="result1"></div>
                        <input type="button" class="dupliBtnMember" value="이메일 중복확인">
                     </div>
                     <div class="form-gruop">
                        <label for="memPw">비밀번호</label>
                        <input type="password" class="form-control" id="mem_pw" placeholder="비밀번호를 입력해주세요." name="memPw" required>
                        <div class="result2"></div>
                     </div>
                     <div class="form-gruop">
                        <label for="memPw2">비밀번호확인</label>
                        <input type="password" class="form-control" id="mem_pw2" placeholder="2차 비밀번호를 입력해주세요." name="memPw2" required>
                        <div class="result3"></div>
                        <input type="button" class="dupliBtnMemberPw" value="비밀번호 중복확인">
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
                        <div class="result4"></div>
                     </div>
                     <div class="form-gruop">
                        <label for="mem_catagory2">2차 직업군</label>
                        <select class="form-control mem_catagory2" id="mem_catagory2" name="memCategory2" required>
                           <option>기타</option>
                        </select>
                        <div class="result5"></div>
                     </div>
                     <div class="form-gruop">
                        <label for="work">회원 구분</label>
                        <select class="form-control work" name="memCheck" required>
                           <option>기타</option>
                           <option>구직자</option>
                           <option>퇴사자</option>
                           <option>재직중</option>
                        </select>
                        <div class="result6"></div>
                     </div>
                  </div>
               </div>
               <div class="text-center enrollBtn">
                  <input type="submit" class="btn btn-outline-success memJoin" value="회원가입">
               </div>
            </div>
         </form>
      </div>
      <!-- 기업회원 -->
      <div class="container enrollMain ent_enroll">
         <form action="${path }/enterprice/enrollEnterEnd" class="needs-validation" novalidate>
            <div class="jumbotron">
               <h1>기업 회원 가입</h1>
               <div class="row">
                  <div class="col-sm-12 col-md-12">
                     <div class="form-gruop">
                        <label for="ent_email">담당자이메일</label>
                        <input type="email" class="form-control email" id="ent_email" placeholder="담당자 이메일을 입력해주세요." name="entEmail" required>
                        <div class="e_result1"></div>
                        <input type="button" class="dupliBtnEnter" value="이메일 중복확인">
                     </div>
                     <div class="form-gruop">
                        <label for="entPw">비밀번호</label>
                        <input type="password" class="form-control" id="entPw" placeholder="비밀번호를 입력해주세요." name="entPw" required>
                        <div class="e_result2"></div>
                     </div>
                     <div class="form-gruop">
                        <label for="entPw2">비밀번호확인</label>
                        <input type="password" id="entPw2" class="form-control" placeholder="2차 비밀번호를 입력해주세요." name="entPw2" required>
                        <div class="e_result3"></div>
                        <input type="button" class="dupliBtnEnterPw" value="비밀번호 중복확인">
                     </div>
                     <div class="form-gruop">
                        <label for="ent_name">기업이름</label>
                        <input type="text" id="ent_name" class="form-control entName" placeholder="기업이름을 입력해주세요." name="entName" required>
                        <div class="e_result4"></div>
                     </div>
                     <div class="form-gruop">
                        <label for="ent_crn">사업자 등록번호</label>
                        <input type="number" id="ent_crn" class="form-control" placeholder="입력시'-'는 제외합니다." name="entBusinessNo" required>
                        <div class="e_result5"></div>
                     </div>
                     <div class="form-gruop">
                        <label for="rep_name">담당자 이름(실명)</label>
                        <input type="text" id="rep_name" class="form-control" placeholder="실명을 기입해주세요." name="repName" required>
                        <div class="e_result6"></div>
                     </div>
                     <div class="form-gruop">
                        <label for="rep_phone">담당자 번호</label>
                        <input type="tel" id="rep_phone" class="form-control" placeholder="입력시'-'는 제외합니다." name="repPhone" required>
                        <div class="e_result7"></div>
                     </div>
                     <div class="form-gruop">
                        <label for="ent_catagory">1차 산업군</label>
                        <select class="form-control ent_catagory" id="ent_catagory" name="entCategory1" required>
                           <option>기타</option>
                           <option>IT/웹/통신</option>
                           <option>은행/금융업</option>
                           <option>교육업</option>
                           <option>마케팅/디자인</option>
                           <option>의약/제약</option>
                           <option>서비스업</option>
                        </select>
                        <div class="e_result8"></div>
                     </div>
                     <div class="form-gruop">
                        <label for="ent_catagory2">2차 산업군</label>
                        <select class="form-control ent_catagory2" id="ent_catagory2" name="entCategory2" required>
                           <option>기타</option>
                        </select>
                        <div class="e_result9"></div>
                     </div>
                     <div class="form-gruop">
                        <label for="ent_site">기업홈페이지</label>
                        <input type="text" id="ent_site" class="form-control" placeholder="없으면 작성하지 않으셔두 되요." name="entSite">
                     </div>
                     <label>기업 로고(선택)</label>
                     <div class="custom-file">
                        <input type="file" class="custom-file-input" id="customFile" name="entLogo">
                        <label class="custom-file-label" for="customFile">이쁜로고가 좋겠죠?</label>
                     </div>
                  </div>
               </div>
               <div class="text-center enrollBtn">
                  <button type="submit" class="btn btn-outline-success entJoin">회원가입</button>
               </div>
            </div>
         </form>
      </div>
   </div>
   <input type="hidden" class="emailCk" value="">
   <input type="hidden" class="passCk" value="">
   <input type="hidden" class="ent_emailCk" value="">
   <input type="hidden" class="ent_passCk" value="">
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
   
   //1차직업군 선택시 해당하는 2차직업군 출력
   $(function(){
      //회원
      $(".mem_catagory").change(e=>{
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
         else if (job1 == "기타") return $(".mem_catagory2").find("option").remove().end().append("<option value='기타'>기타</option>");

         target.options.length = 0;

         for (i in values) {
            var opt = document.createElement("option");
            opt.value = values[i];
            opt.innerHTML = values[i];
            target.appendChild(opt);
         }  
      });
         //기업
         $(".ent_catagory").change(e=>{
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
         else if (jobs1 == "기타") return $("#ent_catagory2").find("option").remove().end().append("<option value='기타'>기타</option>");

         targets.options.length = 0;

         for (i in values) {
            var opt = document.createElement("option");
            opt.value = values[i];
            opt.innerHTML = values[i];
            targets.appendChild(opt);
         }
      });
   });
   //회원 유효성검사
   $(function(){
   //ent_email,entPw,entPw2,ent_name,ent_crn,rep_name,rep_phone,ent_catagory,ent_site,customFile
   //dupliBtnEnter, dupliBtnEnterPw
      //일반 회원 이메일 중복확인
      var memIdck = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
      var hangulcheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
	   $(".dupliBtnMember").click(e=>{
         const mem_dupli=document.getElementById("mem_email").value;
         // qqq
         if(mem_dupli!=""){
            if(!memIdck.test(mem_dupli)){
					$(".result1").html("이메일 형식이 아닙니다.")
					return false;
				}else{
               $(".emailCk").val("good");

               $.ajax({
                  url: "${path}/checkDuplicate/enrollCommon",
                  data: {dupli:mem_dupli},
                  success:data=>{
                     console.log(data);
                     $(".result1").html(data);
                  }
               })
            };
         }else{
            $(".result1").html("아이디를 작성해주세요");
				return false;
         }
	   });
      //기업회원 이메일 중복확인
      $(".dupliBtnEnter").click(e=>{
         const ent_dupli=document.getElementById("ent_email").value;
         // qqq
         if(ent_dupli!=""){
            if(!memIdck.test(ent_dupli)){
					$(".e_result1").html("이메일 형식이 아닙니다.")
					return false;
				}else{
               $(".ent_emailCk").val("good");
               $.ajax({
                  url: "${path}/checkDuplicate/enrollCommon",
                  data: {dupli:ent_dupli},
                  success:data=>{
                     console.log(data);
                     $(".e_result1").html(data);
                  }
               })
            };
         }else{
            $(".e_result1").html("아이디를 작성해주세요");
				return false;
         }
	   });
      var memPwck = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
      //일반 회원 비밀번호 확인
      $(".dupliBtnMemberPw").click(e=>{
         const mem_duplipw=$("#mem_pw").val();
         const mem_duplipw2=$("#mem_pw2").val();
         const mem_dupli=document.getElementById("mem_email").value;

         if(mem_duplipw==""){
            alert("비밀번호를 입력해주세요")
            return false;
         }else if(mem_duplipw2==""){
            alert("2차비밀번호를 입력해주세요")
         }else if(mem_duplipw!=mem_duplipw2){
            alert("비밀번호가 일치하지 않습니다.")
            return false;
         }else if(!memPwck.test(mem_duplipw)){
            alert('비밀번호는 8자 이상이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함해야 합니다.');
            return false;
         }else if(/(\w)\1\1\1/.test(mem_duplipw)){
            alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
            return false;
         }else if(mem_duplipw.search(mem_dupli) > -1){
            alert("비밀번호에 아이디가 포함되었습니다.");
            return false;
         }else if(mem_duplipw.search(/\s/) != -1){
            alert("비밀번호는 공백 없이 입력해주세요.");
            return false;
         }else if(hangulcheck.test(mem_duplipw)){
            alert("비밀번호에 한글을 사용 할 수 없습니다."); 
         }else{
            $(".passCk").val("good")
            $(".result3").html("비밀번호가 일치합니다.");
         }
      });
      //기업회원 비밀번호 확인
      $(".dupliBtnMemberPw").click(e=>{
         const ent_duplipw=$("#entPw").val();
         const ent_duplipw2=$("#entPw2").val();
         const ent_dupli=document.getElementById("ent_email").value;

         if(ent_duplipw==""){
            alert("비밀번호를 입력해주세요")
            return false;
         }else if(ent_duplipw==""){
            alert("2차비밀번호를 입력해주세요")
         }else if(ent_duplipw!=ent_duplipw2){
            alert("비밀번호가 일치하지 않습니다.")
            return false;
         }else if(!memPwck.test(ent_duplipw)){
            alert('비밀번호는 8자 이상이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함해야 합니다.');
            return false;
         }else if(/(\w)\1\1\1/.test(ent_duplipw)){
            alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
            return false;
         }else if(ent_duplipw.search(ent_dupli) > -1){
            alert("비밀번호에 아이디가 포함되었습니다.");
            return false;
         }else if(ent_duplipw.search(/\s/) != -1){
            alert("비밀번호는 공백 없이 입력해주세요.");
            return false;
         }else if(hangulcheck.test(ent_duplipw)){
            alert("비밀번호에 한글을 사용 할 수 없습니다."); 
         }else{
            $(".ent_passCk").val("good")
            $(".result3").html("비밀번호가 일치합니다.");
         }
      });
      //직업군 selectbox 선택 시
      $(".mem_catagory").change(e=>{
         var mem_sel1ck = $(".mem_catagory option").index($(".mem_catagory option:selected"));
         console.log(mem_sel1ck);
         let mem_sel1 = $(e.target).val();
         if(mem_sel1==="기타"){
            $(".result4").html("직업군을 선택해주세요").css("color","red");
            $(".result5").html("2차 직업군을 선택해주세요").css("color","red");
            return false;
         }else if(mem_sel1!="기타"){
            $(".result4").html("")
            $(".result5").html("")
         }
      });
      //산업군 selectbox선택 시
      $(".ent_catagory").change(e=>{
         var ent_sel1ck = $(".ent_catagory option").index($(".ent_catagory option:selected"));
         console.log(ent_sel1ck);
         let mem_sel1 = $(e.target).val();
         if(mem_sel1==="기타"){
            $(".e_result8").html("직업군을 선택해주세요").css("color","red");
            $(".e_result9").html("2차 직업군을 선택해주세요").css("color","red");
         }else if(mem_sel1!="기타"){
            $(".e_result8").html("")
            $(".e_result9").html("")
         }
      });
      //회원구분 selectbox 선택 시
      $(".work").change(e=>{
         let mam_check = $(e.target).val();
         if(mam_check==="기타"){
            $(".result6").html("회원 구분을 선택해주세요").css("color","red");
         }else if(mam_check!="기타"){
            $(".result6").html("")
         }
      });
      // qqq
      //ent_name,ent_crn
      //담당자 이름 정규표현식
      var ko=/^[가-힣]{2,17}$/; 
      var num=/^[0-9]+$/; 
      $("#rep_name").keyup(e=>{
         let rName=$("#rep_name").val();
         if(rName.length>=2){
            if(!ko.test(rName)){
               $(".e_result6").html("이름은 한글로 작성해주세요.");
               return false;
            }else if(rName.search(/\s/) != -1){
               $(".e_result6").html("이름에 띄어쓰기는 사용 할 수 없습니다.");
               return false;
            }else if(rName==""){
               $(".e_result6").html("이름을 작성해주세요.");
               return false;
            }else{
               $(".e_result6").html("");
            }
         }
      });
      //핸드폰 정규표현식
      let hpRegExp = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
      $("#rep_phone").keyup(e=>{
         let entPh=$("#rep_phone").val();
         if(!hpRegExp.test(entPh)){
            $(".e_result7").html("휴대폰 번호가 올바르지 않습니다. 다시한번 확인하세요")
            return false;
         }else{
            $(".e_result7").html("")
            $(entPh).replace(/\-/g,'');
         }
      });

      //중복확인 했는지 확인하기
      $(".memJoin").click(function(){
         console.log($(".emailCk").val())
         if($(".emailCk").val()==undefined || $(".emailCk").val()===""){
            alert("이메일 중복확인을 해주세요");
            $(".dupliBtnMember").focus();
            return false;
         }else if($(".passCk").val()==""){
            alert("비밀번호확인을 확인해주세요.")
            $(".dupliBtnMemberPw").focus();
            return false
         };
         // qqq
         let check=new Array(4).fill(false);
         //일반회원 가입 전 유효성검사 확인
         if(memIdck.test($("#mem_email").val())){
            check[0]=true;
         }else{
            check[0]=false;
            $(".result1").html("이메일을 양식에 맞게 써주세요")
         }
         if(memPwck.test($("#mem_pw").val())){
            check[1]=true;
         }else{
            check[2]=false;
            $(".result3").html("비밀번호를 양식에 맞게 써주세요");
         }
         var mem_sel1ck = $(".mem_catagory option").index($(".mem_catagory option:selected"));
         var mem_sel2ck = $(".work").index($(".work option:selected"));

         if(mem_sel1ck==0 || $(".mem_catagory").val()==="기타"){
            check[3]=false;
            $(".result4").html("1차 직업군을 선택해주세요.")
            $(".result5").html("2차 직업군을 선택해주세요.")
         }else{
            check[3]=true;
         }
         if($(".work").val()==="기타" || mem_sel2ck==0){
            check[4]=false;
            $(".result6").html("회원구분을 선택해주세요.")
         }else{
            check[4]=true;
         }

         var allCheck = true;
         for(var i=0; i<check.length; i++){
            if(check[i]==false){
               allCheck=false;
            }
         }

         if(!allCheck){
            alert("입력한정보가 올바르지 않거나 중복확인을 하지 않으셨습니다. 다시확인해주세요.")
            return false;
         }
      });
      let entCheck=new Array(6).fill(false);
      //기업 회원 중복확인
      $(".entJoin").click(function(){
         console.log($(".ent_emailCk").val())
         if($(".ent_emailCk").val()==undefined || $(".ent_emailCk").val()===""){
            alert("이메일 중복확인을 해주세요");
            $(".dupliBtnEnter").focus();
            return false;
         }else if($(".ent_passCk").val()==""){
            alert("비밀번호확인을 확인해주세요.")
            $(".dupliBtnEnterPw").focus();
            return false
         };
         //기업회원 가입 전 유효성검사 확인
         if(memIdck.test($("#ent_email").val())){
            entCheck[0]=true;
         }else{
            entCheck[0]=false;
            $(".e_result1").html("이메일을 양식에 맞게 써주세요")
         }
         if(memPwck.test($("#entPw").val())){
            entCheck[1]=true;
         }else{
            entCheck[1]=false;
            $(".e_result3").html("비밀번호를 양식에 맞게 써주세요");
         }
         if($("#ent_name").val()==""){
            entCheck[2]=false;
            $(".e_result4").html("기업이름을 작성해주세요");
         }else{
            entCheck[2]=true;
         }
         if($("#ent_crn").val()==""){
            entCheck[3]=false;
            $(".e_result5").html("사업자 등록 번호를 작성해주세요");
         }else{
            entCheck[3]=true;
         }
         if($("#rep_name").val()=="" || !ko.test($("#rep_name").val())){
            entCheck[4]=false;
            $(".e_result6").html("이름을 제대로 작성해주세요");
         }else{
            entCheck[4]=true;
         }
         if(!hpRegExp($("#rep_phone").val()) || $("#rep_phone").val()==""){
            entCheck[5]=false;
            $("e._result7").html("핸드폰 번호를 정확히 입력해주세요.")
         }else{
            entCheck[5]=true;
         }
         var ent_sel1ck = $("#ent_catagory option").index($("#ent_catagory option:selected"));

         if(ent_sel1ck==0 || $("#ent_catagory").val()==="기타"){
            check[6]=false;
            $(".e_result8").html("1차 직업군을 선택해주세요.")
            $(".e_result9").html("2차 직업군을 선택해주세요.")
         }else{
            check[6]=true;
         }
         //ent_email,entPw,ent_name,ent_crn,rep_name,rep_phone,ent_catagory,e_result4
         var allCheck = true;
         for(var i=0; i<ent_check.length; i++){
            if(ent_check[i]==false){
               allCheck=false;
            }
         }
         if(!allCheck){
            alert("입력한정보가 올바르지 않거나 중복확인을 하지 않으셨습니다. 다시확인해주세요.")
            return false;
         }
      });
   });
   

</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>