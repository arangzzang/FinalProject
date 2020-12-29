package com.project.jobnom.Hire.model.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.jobnom.Hire.model.dao.HireDao;
import com.project.jobnom.Hire.model.vo.Interestedrcruitment;
import com.project.jobnom.Hire.model.vo.Recruitment;
import com.project.jobnom.Hire.model.vo.Review;
import com.project.jobnom.member.model.vo.Member;
import com.project.jobnom.Hire.model.vo.Support;
import com.project.jobnom.enterprise.model.vo.Enterprise;
@Service
public class HireServiceImpl implements HireService {

	@Autowired
	private HireDao dao;
	@Autowired
	private SqlSession session;
	
	@Override
	public int insertReview(Map paramMap ) {
		return dao.insertReview(session, paramMap);
	}

	@Override
	public List<Map> HireHomeRecruitmentList(int cPage, int numPerpage) {
		return dao.HireHomeRecruitmentList(session, cPage, numPerpage);
		
		
	}

	@Override
	public int selectCount() {
		return dao.selectCount(session);
	}

	
	@Override
	public List<Map> reviewStar() {
		return dao.reviewStar(session);
	}

	@Override
	public List<Map>  selectRecruitmentList(Map paramMap) {
		return dao.selectRecruitmentList(session, paramMap);
	}

	@Override 
	public List<Map> selectReviewList(String ent_no) {
		return dao.selectReviewList(session, ent_no);
	}

	@Override
	public List<Recruitment> RecruitmentList() {
		return dao.RecruitmentList(session);
	}

	@Override
	public Member selectMember(int memNo) {
		return dao.selectMember(memNo,session);
	}
	public List<Map> MemberList(String memNo) {
		return dao.MemberList(session,memNo);
	}

	@Override
	public  int insertMemberApply(Map paramMap) {
		return dao.insertMemberApply(session, paramMap);
	}

	@Override
	public int recFavorites(Map paramMap) {
		return dao.recFavorites(session, paramMap);
	}

	@Override
	public int notFavorites(Map paramMap) {
		return dao.notFavorites(session,paramMap);
	}

	@Override
	public List<Support> HireMyHire(String memNo,int cPage, int numPerpage) {
		return dao.HireMyHire(session, memNo,cPage, numPerpage);
	}

	@Override
	public int selectSuppertCount() {
		return dao.selectSuppertCount(session);
	}

	@Override
	public List<Interestedrcruitment> HireFavorites(String memNo, int cPage, int numPerpage) {
		return dao.HireFavorites(session,memNo,cPage,numPerpage);
	}

	@Override
	public int selectInterestedrcruitmentCount() {
		return dao.selectInterestedrcruitmentCount(session);
	}

	@Override
	public List<Map> selectOneRecruitment(String mem_no) {
		return dao.selectOneRecruitment(session, mem_no);
	}

	@Override
	public List<Recruitment> recSerch(String rec_no) {
		return dao.recSerch(session, rec_no);
	}

	

	
	
	
	
	

	
	
}
