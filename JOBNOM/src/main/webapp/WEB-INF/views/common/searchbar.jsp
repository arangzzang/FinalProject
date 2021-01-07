<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script src="${path }/resources/js/jquery-3.5.1.min.js"></script>
<c:set var="path" value="${pageContext.request.contextPath }" />

<link rel="stylesheet" href="${path }/resources/css/searchbar.css"/>
<!-- 검색창 시작 -->
<div class="searchbar_section" id="searchbar_section">
	<div class="wrap">
		 <form id="search_form" action="${path }/searchResult.do" onsubmit="return true;">
			<div class="schbar_green">
				<div class="schbar">
					<i class="fas fa-search"></i> 
					<label class="placeholder"> 
					<span class="placeholder_txt"></span> 
					<input type="text" class="input_search" id="search_bar_search_query"
						maxlength="201" name="keyword" placeholder="기업,채용공고를 검색해 보세요" list="locationData">
					<datalist id="locationData"></datalist>
					<input type="hidden" name="ent_no" id="locationNumber" value="">
					</label>
					<button class="btn_schbar" id="btn">검색</button>
				</div>
			</div>
	 	</form>
	</div>
</div>
<!-- 검색창 끝 -->

<script>

$("#search_bar_search_query").keyup(e=>{
	$.ajax({
	      url:"${path}/search/searchAuto.do",
	      data:{"key":$(e.target).val()},
	      success:data => {
	         
	         $.ajax({
	            url:"${path}/search/searchAuto2.do",
	            data:{"key":$(e.target).val()},
	            success:data => {
	               console.log(data); 
	               let keys=data.split(",");
	               $("#locationNumber").html("");
	               for(let i=0;i<keys.length;i++){
	                  $("#locationNumber").append($('input[name=ent_no]').val(keys[i]));
	                  
	               }
	               
	            }
	         })
	         console.log(data); 
	         let keys=data.split(",");
	         $("#locationData").html("");
	         for(let i=0;i<keys.length;i++){
	            $("#locationData").append($("<option>").html(keys[i]));
	            
	         }
	      }
	   });
});

</script>
