package com.project.jobnom.member.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.jobnom.member.model.dao.MemberDao;
import com.project.jobnom.member.model.vo.MemCategory;
import com.project.jobnom.member.model.vo.MemCategory2;
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

	@Override
	public List<MemCategory> selectCategoryList() {
		return dao.selectCategoryList(session);
	}

	@Override
	public List<MemCategory2> selectCategoryList2(int cateNo) {
		return dao.selectCategoryList2(cateNo, session);
	}
//	@Override
//	public List<MemCategory2> selectCategoryList2(int cateNo) {
//		return dao.selectCategoryList2(cateNo,session);
//	}
	

}
