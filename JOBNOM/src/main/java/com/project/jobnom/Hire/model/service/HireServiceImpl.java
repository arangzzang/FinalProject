package com.project.jobnom.Hire.model.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.jobnom.Hire.model.dao.HireDao;
import com.project.jobnom.Hire.model.vo.Recruitment;
@Service
public class HireServiceImpl implements HireService {

	@Autowired
	private HireDao dao;
	@Autowired
	private SqlSession session;
	
	@Override
	public int insertReview(Map ModelMap ) {
		return dao.insertReview(session, ModelMap);
	}

	@Override
	public List<Recruitment> HireHomeRecruitmentList(int cPage, int numPerpage) {
		return dao.HireHomeRecruitmentList(session, cPage, numPerpage);
		
		
	}

	@Override
	public int selectCount() {
		return dao.selectCount(session);
	}
	

	
	
}
