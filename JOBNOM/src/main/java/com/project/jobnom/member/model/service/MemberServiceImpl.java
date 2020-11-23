package com.project.jobnom.member.model.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.jobnom.member.model.dao.MemberDao;
import com.project.jobnom.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao dao;
	@Autowired
	private SqlSession session;
	@Override
	public Member memberLogin(String memEmail) {
		return dao.memberLogin(memEmail,session);
	}

}
