<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value=" "/>
</jsp:include>
<section id="content">

<div class="container">
  <form action="/action_page.php">
      <label for="faqQuestion">Comment:</label>
      <textarea class="form-control col-md-8 col-8" rows="3" id="faqQuestion" name="text" placeholder="Q:"></textarea>
      <label for="faqAnswer">Comment:</label>
      <textarea class="form-control col-md-8 col-8" rows="5" id="faqAnswer" name="text" placeholder="Q:"></textarea>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>