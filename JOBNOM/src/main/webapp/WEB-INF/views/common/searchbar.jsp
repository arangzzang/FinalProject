<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<link rel="stylesheet" href="${path }/resources/css/searchbar.css"/>
<!-- 검색창 시작 -->
<div class="searchbar_section" id="searchbar_section">
	<div class="wrap">
		<form id="search_form" action="${path }/searchResult.do" method="POST"
			onsubmit="return true;">
			<div class="schbar_green">
				<div class="schbar">
					<i class="fas fa-search"></i> <label class="placeholder"> <span
						class="placeholder_txt"></span> <input autocomplete=”off”
						type="text" class="input_search" id="search_bar_search_query"
						maxlength="201" name="keyword" placeholder="기업,채용공고를 검색해 보세요">
					</label>
					<button class="btn_schbar" id="btn">검색</button>
				</div>
			</div>
		</form>
	</div>
</div>
<!-- 검색창 끝 -->
<!--OPEN API  -->
<script>
		/* $(document).ready(function () {
				$('#btn').click(function() {
					
					$.ajax({
						url :'${path }/api',
						type : 'get',
						data : {"wkpl_nm" : wkpl_nm},
						dataType : 'json',
						success: function(data) {
							
							
						},
						
							error: function(XMLHttpRequest, textstatus, errorThrown) {
								alert("Status" + textstatus); alert("Error" + errorThrown );
							}
						
					});
					
				});
			}); */
		</script>
