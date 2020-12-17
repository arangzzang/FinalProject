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
	public int enrollMember(Member m) {
		
		int result=dao.enrollMember(m,session);
//		if(result > 0) dao.insertResume( session);
		return result;
	}

	@Override
	public Member mypageView(int memNo) {
		return dao.mypageView(memNo,session);
	}

	@Override
	public int changeMemEmail(String memEmail) {
		return dao.changeMemEmail(memEmail,session);
	}
	
	

}
