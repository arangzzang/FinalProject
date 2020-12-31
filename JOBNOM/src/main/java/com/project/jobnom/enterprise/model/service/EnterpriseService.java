package com.project.jobnom.enterprise.model.service;

import java.util.List;
import java.util.Map;

import com.project.jobnom.Hire.model.vo.Recruitment;
import com.project.jobnom.Hire.model.vo.Review;
import com.project.jobnom.common.model.vo.Login;
import com.project.jobnom.enterprise.model.vo.ApplyAd;
import com.project.jobnom.enterprise.model.vo.Banner;
import com.project.jobnom.enterprise.model.vo.Category2;
import com.project.jobnom.enterprise.model.vo.Enterprise;
import com.project.jobnom.enterprise.model.vo.MemberDataC2;
import com.project.jobnom.enterprise.model.vo.Support;
import com.project.jobnom.resume.model.vo.Resume;

public interface EnterpriseService {
	
	//기업 회원가입입력
	int enrollEnter(Enterprise ent);
	int insertApplyAd(ApplyAd ad);
	Enterprise findOneEnterprise(Login log);

	List<Support> selectSupport(int cPage, int numPerpage,Recruitment rec);
	int selectCount();

	int updateEnterprise(Enterprise ent);
	int entMembership(Login log);
	int insertBanner(Banner ban);

	List<Recruitment> selectRecruitment(int memNo,int cPage, int numPerpage);
	int selectRecruitmentCount();
	
	Resume selectResume(int memNo);
	
	int quit(Enterprise ent);
	
	List<Review> selectReviewList();
	List<Recruitment> selectJoblist();
	
	List<Category2> getC2();

	Enterprise findEmailEnterprise(Login log);
	//카카오페이 결제
	Enterprise selectEnterprise(int entNo);

	List<MemberDataC2> memDataC2();
	List<MemberDataC2> entDataC2();

	//기업 버튼 클릭시 화면 -ys-
		List<Map> companyList();
		List<Map> companyList2();
		List<Map> companyList3();
		List<Map> companyList4();
		List<Map> companyList5();
		List<Map> companyList6();
	//기업 검색결과 기업명 클릭시 
	List<Map> companyInfo(String entNo);
}

