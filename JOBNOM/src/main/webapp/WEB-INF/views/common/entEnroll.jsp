<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

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