package com.project.jobnom.member.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.jobnom.member.model.vo.MemCategory;
import com.project.jobnom.member.model.vo.MemCategory2;
import com.project.jobnom.member.model.vo.Member;

@Repository
public class MemberDaoImpl implements MemberDao {


	@Override
	public int enrollMember(Member m, SqlSession session) {
		return session.insert("member.enrollMember", m);
	}

	@Override
	public Member mypageView(int memNo, SqlSession session) {
		return session.selectOne("member.mypageView",memNo);
	}
	@Override
	public int changeMemEmail(String memEmail, SqlSession session) {
		return session.update("member.changeEmail",memEmail);
	}

	@Override
	public List<MemCategory> selectCategoryList(SqlSession session) {
		return session.selectList("member.selectCategoryList");
	}
	@Override
	public List<MemCategory2> selectCategoryList2(int cateNo, SqlSession session) {
		return session.selectList("member.selectCategoryList2",cateNo);
	}
	
	
	

}
