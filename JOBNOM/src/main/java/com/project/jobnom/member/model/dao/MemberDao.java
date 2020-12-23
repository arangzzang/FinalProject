package com.project.jobnom.member.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.project.jobnom.member.model.vo.MemCategory;
import com.project.jobnom.member.model.vo.MemCategory2;
import com.project.jobnom.member.model.vo.Member;

public interface MemberDao {
	
	//카테고리리스트 출력
	List<MemCategory> selectCategoryList(SqlSession session);
	List<MemCategory2> selectCategoryList2(int cateNo,SqlSession session);
//	List<MemCategory2> selectCategoryList2(int cateNo, SqlSession session);
	//회원가입입력
	int enrollMember(Member m, SqlSession session);
	//마이페이지
	Member mypageView(int memNo, SqlSession session);
	//email변경
	int changeMemEmail(String memEmail,SqlSession session);
}
