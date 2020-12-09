<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=" "/>
</jsp:include>
<section id="content">
    
    <div class="container">
        <nav class="navbar navbar-expand-sm justify-content-center">
            <ul class="navbar-nav">
                <li class="nav-item footmenu">
                    <a class="nav-link" href="#">이용약관</a>
                </li>
                <li class="nav-item footmenu">
                    <a class="nav-link" href="#">개인정보처리방침</a>
                </li>
                <li class="nav-item footmenu">
                    <a class="nav-link" href="#">공지사항</a>
                </li>
                <li class="nav-item footmenu">
                    <a class="nav-link" href="#">FAQ</a>
                </li>
                <li class="nav-item footmenu">
                    <a class="nav-link" href="#">고객문의</a>
                </li>
            </ul>
        </nav>
        <div class="row ">
	        <c:forEach items="${fList }" var="f" >
	            <div class="t col-md-12 col-sm-12 text-left">
	            	<c:out value="${f.faqQuestion}"/>
	            	<c:out value="${f.faqWritedate }"/>
	            </div>
	            <p class="content"><c:out value="${f.faqAnswer}"/></p>
	        </c:forEach>
        </div>
        <div>
            <button type="button" onclick="writeFaq();">글쓰기</button>
        </div>
    </div>

    <style>
        .footmenu{
            border-bottom: 1px solid lightgray; ;
        }
        .t{
            text-align:center;
            cursor:pointer;
        }
        .t+p{
            display:none;
            width: 100%;
            /* height:200px; */
            padding: 10px 0 10px 0;
            margin: 0;
            border:1px solid teal;
        }
    </style>

    <script>
    	//태그 크릭시 슬라이드
        let flag=true;
        $(function(){
            $(".t").click(function(){
                $(this).next().slideToggle(1000);
                // if(flag){
                //     $(this).next().slideDown(1000);
                //     flag=false;
                // }else{
                //     $(this).next().slideUp();
                //     flag=true;
                // }
            });
        });
		//메뉴바 클릭시 css변화
        let menu=document.getElementsByClassName("footmenu");
        $(function (){
            $(menu).click(function(){
                $(this).css("border-bottom","solid 1px green");
            });
        });
        //글쓰기 버튼 클릭시 이동
        function writeFaq(){
        	location.href='${path}/welcome/writeFaq';
        }
    </script>

</section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>