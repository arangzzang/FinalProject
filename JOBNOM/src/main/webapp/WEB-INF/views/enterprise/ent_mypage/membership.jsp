<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<script src="${path }/resources/js/kakao.js"></script>
<script>
    /* Initialize SDK with JavaScript key for your app.  */
    Kakao.init('ff679ba8218b341b6216898bdef79608');

    // Check if the initialization is successfully done.
    console.log(Kakao.isInitialized());
</script>
<style>

	body {
	  margin: 100px;
	}
	
	.pop-layer .pop-container {
	  padding: 20px 25px;
	}
	
	.pop-layer p.ctxt {
	  color: #666;
	  line-height: 25px;
	}
	
	.pop-layer .btn-r {
	  width: 100%;
	  margin: 10px 0 20px;
	  padding-top: 10px;
	  border-top: 1px solid #DDD;
	  text-align: right;
	}
	
	.pop-layer {
	  display: none;
	  position: absolute;
	  top: 50%;
	  left: 50%;
	  width: 410px;
	  height: auto;
	  background-color: #fff;
	  border: 5px solid #3571B5;
	  z-index: 10;
	}
	
	.dim-layer {
	  display: none;
	  position: fixed;
	  _position: absolute;
	  top: 0;
	  left: 0;
	  width: 100%;
	  height: 100%;
	  z-index: 100;
	}
	
	.dim-layer .dimBg {
	  position: absolute;
	  top: 0;
	  left: 0;
	  width: 100%;
	  height: 100%;
	  background: #000;
	  opacity: .5;
	  filter: alpha(opacity=50);
	}
	
	.dim-layer .pop-layer {
	  display: block;
	}
	
	a.btn-layerClose {
	  display: inline-block;
	  height: 25px;
	  padding: 0 14px 0;
	  border: 1px solid #304a8a;
	  background-color: #3f5a9d;
	  font-size: 13px;
	  color: #fff;
	  line-height: 25px;
	}
	
	a.btn-layerClose:hover {
	  border: 1px solid #091940;
	  background-color: #1f326a;
	  color: #fff;
	}
</style>
<jsp:include page="/WEB-INF/views/common/header.jsp">
   <jsp:param name="title" value=" "/>
</jsp:include>
<section id="content">
<jsp:include page="/WEB-INF/views/enterprise/ent_mypage/ent_common.jsp">
   <jsp:param name="subheader" value=""/>
</jsp:include>
<jsp:include page="/WEB-INF/views/enterprise/ent_mypage/myCom_info.jsp">
	<jsp:param name="myCom_info" value=""/>
</jsp:include>

 <div class="container" style="text-align:center;">
    <c:if test="${Enterprise.entMembership eq '일반회원' }">
       <h4>혜택</h4>
       <div class="row" style="margin:auto; width:50%">
          <div class="col membership_benefits">
             <h6>일반회원</h6>
             <ul class="text-nowrap">
                <li>기업 리뷰 조회</li>
                <li>면접 후기 조회</li>
             </ul>
          </div>
          <div class="col membership_benefits">
             <h6>기업회원</h6>
             <ul>
                <li>배너등록</li>
             </ul>
          </div>
       </div>
<!--        <button id="join">멤버십 가입</button> -->
	 <form method="post" action="${path }/kakaoPay">
	    <button class="jmkbtn btn-lg">카카오페이로 멤버십 가입</button>
	</form>
	<!-- <a href="#layer2" class="btn-example">딤처리 팝업레이어 1</a>
	<div class="dim-layer">
	    <div class="dimBg"></div>
	    <div id="layer2" class="pop-layer">
	        <div class="pop-container">
	            <div class="pop-conts">
	                content //
	
	                <div class="btn-r">
	                    <a href="#" class="btn-layerClose">취소</a>
	                </div>
	                // content
	            </div>
	        </div>
	    </div>
	</div>
	<a href="https://mockup-pg-web.kakao.com/v1/a52c6a752ce3a04904f6941bf30839ee729c384298ea3f10542362157ea8c730/info">결제</a> -->
    </c:if>
    <c:if test="${Enterprise.entMembership eq '유료회원' }">
       <h4><c:out value="${Enterprise.entName }"/>님은 이미 멤버십이 있습니다</h4>
    </c:if>
 </div>

</section>
<script>
	function applyAd(){
		location.replace("path/com/applyAd.do");
	}
/*  	$("#join").click(function(){
 		alert("hello");
 		location.href="${path}/com/membership_end.do";
 	}) */
 	
/*  	$.ajax({
 		method:"POST",
 		url:"https://kapi.kakao.com/v1/payment/ready",
 		data:{cid:"TC0ONETIME"},
 		headers:{Authorization: "KakaoAK 214bfaf7b744b18df54f42d1770d50b0"}
 	})
 		.done(function(msg){
 			console.log(msg);
 			alert("Data Saved: " + msg);
 		}); */
 		
 	
 		$('.btn-example').click(function(){
 	        var $href = $(this).attr('href');
 	        layer_popup($href);
 	    });
 	    function layer_popup(el){

 	        var $el = $(el);    //레이어의 id를 $el 변수에 저장
 	        var isDim = $el.prev().hasClass('dimBg'); //dimmed 레이어를 감지하기 위한 boolean 변수

 	        isDim ? $('.dim-layer').fadeIn() : $el.fadeIn();

 	        var $elWidth = ~~($el.outerWidth()),
 	            $elHeight = ~~($el.outerHeight()),
 	            docWidth = $(document).width(),
 	            docHeight = $(document).height();

 	        // 화면의 중앙에 레이어를 띄운다.
 	        if ($elHeight < docHeight || $elWidth < docWidth) {
 	            $el.css({
 	                marginTop: -$elHeight /2,
 	                marginLeft: -$elWidth/2
 	            })
 	        } else {
 	            $el.css({top: 0, left: 0});
 	        }

 	        $el.find('a.btn-layerClose').click(function(){
 	            isDim ? $('.dim-layer').fadeOut() : $el.fadeOut(); // 닫기 버튼을 클릭하면 레이어가 닫힌다.
 	            return false;
 	        });

 	        $('.layer .dimBg').click(function(){
 	            $('.dim-layer').fadeOut();
 	            return false;
 	        });

 	    }
 	
</script>	
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>