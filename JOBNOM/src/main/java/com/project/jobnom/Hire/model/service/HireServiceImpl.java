package com.project.jobnom.Hire.model.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.jobnom.Hire.model.dao.HireDao;
import com.project.jobnom.Hire.model.vo.Recruitment;
import com.project.jobnom.Hire.model.vo.Review;
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

	@Override
	public List<Recruitment> anoList(int cPage, int numPerPage) {
		return dao.anoList(session,cPage,numPerPage);
	}

	@Override
	public List<Map> reviewStar() {
		return dao.reviewStar(session);
	}

	@Override
	public Recruitment selectRecruitmentList(String ent_no) {
		return dao.selectRecruitmentList(session, ent_no);
	}

	@Override
	public Review selectReviewList(String ent_no) {
		return dao.selectReviewList(session, ent_no);
	}
	
	
	
	
	

	
	
}
