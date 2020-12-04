<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

	<div class="footer">
         <footer>
             <div class="footerHeadline">
                 <ul id="footMenu">
                     <li><a href="#" class="footerMenus">이용약관</a></li>|
                     <li><a href="#" class="footerMenus">개인정보처리방침</a></li>|
                     <li><a href="${path }/footer/notice.do" class="footerMenus">공지사항</a></li>|
                     <li><a href="#" class="footerMenus">FAQ</a></li>|
                     <li><a href="#" class="footerMenus">고객문의</a></li>
                 </ul>
                 <ul class="footicon">
                     <li><a href="#" class="icon">아이콘1</a></i></li>&nbsp;  &nbsp;
                     <li><a href="#" class="icon">아이콘2</a></i></li>
                 </ul>
             </div>
             <div class="footbody">
                 <div>
                     팀원 : 조현 , 인하준, 이요셉, 김정민, 황진호
                 </div>
                 <div>
                     팀명 : 000
                 </div>
                 <div>
                     프로젝트명 : 000
                 </div>
             </div>
         </footer>
     </div>
   </div>
   
   <script>
      // if(emailVal.match(emailDuplicate) != null){
      //    alert('로그인성공');
      // }
      // else {
      //    alert('이메일이 형식과 맞지않습니다.');
      // }
      // if(password.match(pwdDuplicate) != null){
      //    alert('로그인성공')
      // }else{
      //    alert('비밀번호 형식과 맞지않습니다.')
      // }
      
      const password = $(".password").val();
      const pwdDuplicate = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;;

      /* $(function(){
         $(".email").keyup(e=>{
            let emailVal = $(".email").val().trim();
            let emailDuplicate = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
            if(emailVal.match(emailDuplicate) != null){
               $(".valid-feedback").show();
               $(".invalid-feedback").hide();
            }else{
               $(".invalid-feedback").show();
               $(".valid-feedback").hide();
            }
         });
      }); */


/*       $(function(){
					$("#userId_").keyup(e=>{
						const userId=$(e.target).val().trim();
						if(userId.length<4){
							$(".guide").hide();
							return;
						}
						$.ajax({
							url:"${path}/member/checkDuplicateId.do",
							data:{userId:userId},
							success:data=>{
// 								console.log(typeof data,JSON.parse(data));
								console.log(data);
// 								if(data.trim()==="true"){//자료형까지 비교하는것이 === : 문자열이면서 true값이 같냐는 뜻
								if(data==="true"){
									$(".guide.error").hide();
									$(".guide.ok").show();
								}else {
									$(".guide.error").show();
									$(".guide.ok").hide();
								}
							}
						})
					});
				}); */
      </script>
   
</body>
</html>