package com.project.jobnom.Hire.model.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.jobnom.Hire.model.dao.annoDao;
import com.project.jobnom.Hire.model.vo.Interestedrcruitment;
import com.project.jobnom.Hire.model.vo.Recruitment;
@Service
public class annoServiceImpl implements annoService {

	@Autowired
	private annoDao dao;
	@Autowired
	private SqlSession session;
	
	
	@Override
	public List<Recruitment> anoList(int cPage, int numPerPage) {
		return dao.anoList(session,cPage,numPerPage);
	}

	
	@Override
	public List<Recruitment> anoList2(int anoNum,int cPage, int numPerPage) {
		return dao.anoList2(session,anoNum,cPage,numPerPage);
	}


	@Override
	public int selectCount() {
		return dao.selectCount(session);
	}


	@Override
	public List<Recruitment> annCarrer(Map paramMap, int cPage, int numPerPage) {
		return dao.annCarrer(session, paramMap, cPage, numPerPage);
	}


	@Override
	public List<Recruitment> annoHomeDetailMove(int recNo, int cPage, int numPerPage) {
		return dao.annoHomeDetailMove(session, recNo, cPage, numPerPage);
	}


	@Override
	public List<Interestedrcruitment> selectIn(Map memNo) {
		return dao.selectIn(session,memNo);
	} 
	
	
	
	
	
	
	
	
	
	

	
	
}
