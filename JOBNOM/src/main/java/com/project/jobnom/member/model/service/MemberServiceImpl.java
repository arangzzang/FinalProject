package com.project.jobnom.member.model.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.jobnom.member.model.dao.MemberDao;
import com.project.jobnom.member.model.vo.MemCategory;
import com.project.jobnom.member.model.vo.MemCategory2;
import com.project.jobnom.member.model.vo.Member;
import com.project.jobnom.resume.model.vo.MySkill;
import com.project.jobnom.resume.model.vo.Resume;

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
	public int changeMemEmail(Map<String,Object> mem) {
		return dao.changeMemEmail(mem,session);
	}

	@Override
	public List<MemCategory> selectCategoryList() {
		return dao.selectCategoryList(session);
	}

	@Override
	public List<MemCategory2> selectCategoryList2(int cateNo) {
		return dao.selectCategoryList2(cateNo, session);
	}

	@Override
	public Member selectPw(Map data) {
		return dao.selectPw(data,session);
	}

	@Override
	public int updatePw(Map mem) {
		return dao.updatePw(mem,session);
	}

	@Override
	public Member myProfileView(int memNo) {
		return dao.myProfileView(memNo, session);
	}

	@Override
	public Resume selectResume(int memNo) {
		return dao.selectResume(memNo, session);
	}

	@Override
	public List selectEnterpriseFollowing(int entNo) {
		return dao.selectEnterpriseFollowing(entNo,session);
	}

	@Override
	public int countEnterpriseFollowing(int memNo) {
		return dao.countEnterpriseFollowing(memNo,session);
	}

	@Override
	public int reviewCount(int memNo) {
		return dao.reviewCount(memNo,session);
	}

	@Override
	public List<MySkill> selectMySkill(int resNo) {
		return dao.selectMySkill(resNo,session);
	}
	
	
	
	
	
	

}
