<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<link rel="stylesheet" href="${path }/resources/css/company/com_info.css"/> 

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=""/>
</jsp:include>
<!-- 기업상세헤더 -->
<jsp:include page="/WEB-INF/views/enterprise/com_info_header.jsp">
	<jsp:param name="title" value=""/>
</jsp:include>
<section id="content"> 
        <!-- 상세페이지 끝 -->
        <div class="com_info_container">	
            <div class="com_info" >
                <div class="com_title" >
                    <h2>기업정보</h2>
                </div>
                <div class="com_box_info">
                    <div class="company_sub">
                        <div class="tool_box">
                            <i class="fas fa-tools"></i>
                            <span><strong>${list[0].ENT_CATEGORY2 }</strong><p>산업</p></span>
                        </div>
                        <div class="tool_box">
                            <i class="fas fa-building"></i>
                            <span><strong>-</strong><p>${list[0].ENT_CATEGORY2 }</p>
                        </div>
                        <div class="tool_box">
                            <i class="fas fa-users"></i>
                            <span><strong>-</strong><p>사원수</p></span>
                        </div>
                        <div class="tool_box">
                            <i class="far fa-calendar"></i>
                            <span><strong>-</strong><p>설립일</p></span>
                        </div>
                    </div>
                    <div class="company_info">
                        <div class="company_in_info">
                            <ul class="company_info_more">
                                <li>
                                  <dl class="info_item_more">
                                    <dt class="item_subject">대표</dt>
                                    <dd>황진호</dd>
                                  </dl>
                                </li>
                                <li>
                                  <dl class="info_item_more">
                                    <dt class="item_subject">매출</dt>
                                    <dd>10억(2019)</dd>
                                  </dl>
                                </li>
                                <li>
                                  <dl class="info_item_more">
                                    <dt class="item_subject">주소</dt>
                                    <dd>서울특별시 강남구</dd>
                                  </dl>
                                </li>
                                <li>
                                  <dl class="info_item_more">
                                    <dt class="item_subject">웹사이트</dt>
                                    <c:if test="${list[0].ENT_SITE ==null}">
                                    	<dd>-</dd>
                                    </c:if>
                                    <dd><a href="" rel="nofollow" target="_blank"><c:out value="${list[0].ENT_SITE }"/></a></dd>
                                  </dl>
                                </li>
                              </ul>
                            </div>
                          </div>
                     	</div>
                     </div>
                   </div>
    </section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>