package com.project.jobnom.member.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.project.jobnom.member.model.vo.Member;

public interface MemberDao {
	
	//회원가입입력
	int enrollMember(Member m, SqlSession session);
	//마이페이지
	Member mypageView(int memNo, SqlSession session);
}
