package com.project.jobnom.member.model.service;

import java.util.List;
import java.util.Map;

import com.project.jobnom.member.model.vo.MemCategory;
import com.project.jobnom.member.model.vo.MemCategory2;
import com.project.jobnom.member.model.vo.Member;

public interface MemberService {
	
	//카테고리리스트 출력
	List<MemCategory> selectCategoryList();
	List<MemCategory2> selectCategoryList2(int cateNo);
//	List<MemCategory2> selectCategoryList2(int cateNo);
	//회원가입입력
	int enrollMember(Member m);
	//마이페이지
	Member mypageView(int memNo);
	//email변경
	int changeMemEmail(Map<String,Object> mem);
	//비밀번호 확인
	Member selectPw(Map data);
	//비밀번호 변경
	int updatePw(Map mem);
}
