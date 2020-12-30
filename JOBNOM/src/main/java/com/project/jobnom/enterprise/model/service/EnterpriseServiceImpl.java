package com.project.jobnom.enterprise.model.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.jobnom.Hire.model.vo.Recruitment;
import com.project.jobnom.Hire.model.vo.Review;
import com.project.jobnom.common.model.vo.Login;
import com.project.jobnom.enterprise.model.dao.EnterpriseDao;
import com.project.jobnom.enterprise.model.vo.ApplyAd;
import com.project.jobnom.enterprise.model.vo.Banner;
import com.project.jobnom.enterprise.model.vo.Category2;
//github.com/arangzzang/FinalProject.git
import com.project.jobnom.enterprise.model.vo.Enterprise;
import com.project.jobnom.enterprise.model.vo.Support;
import com.project.jobnom.resume.model.vo.Resume;

@Service
public class EnterpriseServiceImpl implements EnterpriseService {

	@Autowired
	EnterpriseDao dao;
	@Autowired
	SqlSession session;
	
	//기업회원가입
	@Override
	public int enrollEnter(Enterprise ent) {
		return dao.enrollEnter(ent,session);
	}
	@Override
	public int insertApplyAd(ApplyAd ad) {
		// TODO Auto-generated method stub
		return dao.insertApplyAd(ad, session);
	}
	@Override
	public Enterprise findOneEnterprise(Login log) {
		// TODO Auto-generated method stub
		return dao.findOneEnterprise(log, session);
	}
	@Override
	public List<Support> selectSupport( int cPage, int numPerpage,Recruitment rec) {
		// TODO Auto-generated method stub
		return dao.selectSupport(session,cPage,numPerpage, rec);
	}
	@Override
	public int selectCount() {
		// TODO Auto-generated method stub
		return dao.selectCount(session);
	}
	public int updateEnterprise(Enterprise ent) {
		// TODO Auto-generated method stub
		return dao.updateEnterprise(ent, session);
	}
	@Override
	public int entMembership(Login log) {
		// TODO Auto-generated method stub
		return dao.entMembership(log, session);
	}
	@Override
	public int insertBanner(Banner ban) {
		// TODO Auto-generated method stub
		return dao.insertBanner(ban, session);
	}
	@Override
	public List<Recruitment> selectRecruitment(int memNo,int cPage, int numPerpage) {
		// TODO Auto-generated method stub
		return dao.selectRecruitment(session,memNo,cPage,numPerpage);
	}
	
	@Override
	public int selectRecruitmentCount() {
		// TODO Auto-generated method stub
		return dao.selectRecruitmentCount(session);
	}
	@Override
	public Resume selectResume(int memNo) {
		// TODO Auto-generated method stub
		return dao.selectResume(session,memNo);
	}

	@Override
	public int quit(Enterprise ent) {
		// TODO Auto-generated method stub
		return dao.quit(ent, session);
	}

	@Override
	public List<Review> selectReviewList() {
		// TODO Auto-generated method stub
		return dao.selectReviewList(session);
	}
	@Override
	public List<Recruitment> selectJoblist() {
		// TODO Auto-generated method stub
		return dao.selectJoblist(session);
	}
	@Override
	public List<Category2> getC2() {
		// TODO Auto-generated method stub
		return dao.getC2(session);
	}
	@Override
	public Enterprise findEmailEnterprise(Login log) {
		// TODO Auto-generated method stub
		return dao.findEmailEnterprise(log, session);
	}
	//카카오결제
	@Override
	public Enterprise selectEnterprise(int entNo) {
		return dao.selectEnterprise(entNo,session);
	}
	
	
	
	//헤더 기업 버튼 클릭 -ys-
	@Override
	public List<Map> companyList() {
		// TODO Auto-generated method stub
		return dao.companyList(session);
	}
	@Override
	public List<Map> companyList2() {
		// TODO Auto-generated method stub
		return dao.companyList2(session);
	}
	@Override
	public List<Map> companyList3() {
		// TODO Auto-generated method stub
		return dao.companyList3(session);
	}
	@Override
	public List<Map> companyList4() {
		// TODO Auto-generated method stub
		return dao.companyList4(session);
	}
	@Override
	public List<Map> companyList5() {
		// TODO Auto-generated method stub
		return dao.companyList5(session);
	}
	@Override
	public List<Map> companyList6() {
		// TODO Auto-generated method stub
		return dao.companyList6(session);
	}
	
	// 기업명 클릭시 이동
	@Override
	public List<Map> companyInfo(String entNo) {
		// TODO Auto-generated method stub
		return dao.companyInfo(session,entNo);
	}
}
