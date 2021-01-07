package com.project.jobnom.admin.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.jobnom.admin.model.vo.Recruitment;
import com.project.jobnom.Hire.model.vo.Review;
import com.project.jobnom.admin.model.dao.AdminDao;
import com.project.jobnom.admin.model.vo.Member;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	AdminDao dao;
	@Autowired
	SqlSession session;
	
	@Override
	public List<Member> memList(int cPage, int numPerpage) {
		// TODO Auto-generated method stub
		return dao.memList(session, cPage, numPerpage);
	}

	@Override
	public int grant(String memno) {
		// TODO Auto-generated method stub
		return dao.grant(session, memno);
	}

	@Override
	public int oust(String memno) {
		// TODO Auto-generated method stub
		return dao.oust(session, memno);
	}

	@Override
	public int memDelete(String memno) {
		// TODO Auto-generated method stub
		return dao.memDelete(session, memno);
	}

	@Override
	public List<Review> revList(int cPage, int numPerpage) {
		// TODO Auto-generated method stub
		return dao.revList(session, cPage, numPerpage);
	}

	@Override
	public List<Recruitment> adList(int cPage, int numPerpage) {
		// TODO Auto-generated method stub
		return dao.adList(session, cPage, numPerpage);
	}

	@Override
	public int censor(int revno) {
		// TODO Auto-generated method stub
		return dao.censor(session, revno);
	}

	@Override
	public int adDelete(String recno) {
		// TODO Auto-generated method stub
		return dao.adDelete(session, recno);
	}

	@Override
	public int memNum() {
		// TODO Auto-generated method stub
		return dao.memNum(session);
	}

	@Override
	public int revNum() {
		// TODO Auto-generated method stub
		return dao.revNum(session);
	}

	@Override
	public int adNum() {
		// TODO Auto-generated method stub
		return dao.adNum(session);
	}
	
	
}
