package com.project.jobnom.admin.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.jobnom.Hire.model.vo.Review;
import com.project.jobnom.admin.model.dao.AdminDao;
import com.project.jobnom.admin.model.vo.Member;
import com.project.jobnom.enterprise.model.vo.ApplyAd;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	AdminDao dao;
	@Autowired
	SqlSession session;
	
	@Override
	public List<Member> memList() {
		// TODO Auto-generated method stub
		return dao.memList(session);
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
	public List<Review> revList() {
		// TODO Auto-generated method stub
		return dao.revList(session);
	}

	@Override
	public List<ApplyAd> adList() {
		// TODO Auto-generated method stub
		return dao.adList(session);
	}
	
	
}
