package com.project.jobnom.member.model.service;

import java.util.List;
import java.util.Map;

import com.project.jobnom.member.model.vo.MemCategory;
import com.project.jobnom.member.model.vo.MemCategory2;
import com.project.jobnom.member.model.vo.Member;
import com.project.jobnom.resume.model.vo.MySkill;
import com.project.jobnom.resume.model.vo.Resume;

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
	//이력서페이지
	Member myProfileView(int memNo);
	//이력서 조회
	Resume selectResume(int memNo);
	//스킬 조회
	List<MySkill> selectMySkill(int resNo);
	//팔로잉한 기업
	List selectEnterpriseFollowing(int memNo);
	//팔로잉한 기업 갯수
	int countEnterpriseFollowing(int memNo);
	//팔로잉한기업의 리뷰갯수
	int reviewCount(int entNo);
}
