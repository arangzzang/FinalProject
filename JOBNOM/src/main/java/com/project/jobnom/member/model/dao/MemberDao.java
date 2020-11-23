package com.project.jobnom.member.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.project.jobnom.member.model.vo.Member;

public interface MemberDao {
	
	Member memberLogin(String memEmail,SqlSession session);

}
