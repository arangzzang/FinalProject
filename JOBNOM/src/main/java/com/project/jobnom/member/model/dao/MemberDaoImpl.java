package com.project.jobnom.member.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.jobnom.member.model.vo.Member;

@Repository
public class MemberDaoImpl implements MemberDao {


	@Override
	public int enrollMember(Member m, SqlSession session) {
		return session.insert("member.enrollMember", m);
	}
	

}
