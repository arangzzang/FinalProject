package com.project.jobnom.Hire.model.service;

import java.util.List;
import java.util.Map;

import com.project.jobnom.Hire.model.vo.Interestedrcruitment;
import com.project.jobnom.Hire.model.vo.Recruitment;
import com.project.jobnom.Hire.model.vo.Support;
import com.project.jobnom.enterprise.model.vo.Enterprise;
import com.project.jobnom.member.model.vo.Member;

public interface HireService {

	int insertReview(Map paramMap);
	
	List<Map>HireHomeRecruitmentList(int cPage, int numPerpage);

	int selectCount();
	
	List<Map> MemberList(String memNo);
	
	
	List<Recruitment> RecruitmentList();
	

	List<Map> reviewStar();
	
	List<Map>  selectRecruitmentList(String rec_no);
	
	List<Map> selectReviewList(String ent_no);
	
	int insertMemberApply(Map paramMap);
	
	int recFavorites(Map paramMap);
	
	int notFavorites(Map paramMap);
	
	List<Support> HireMyHire(String memNo,int cPage, int numPerpage);

	int selectSuppertCount(String memNo);
	
	int selectInterestedrcruitmentCount(String memNo);
	
	List<Interestedrcruitment> HireFavorites(String memNo,int cPage, int numPerpage);

	List<Enterprise> selectOneRecruitment (String key);


	List<Recruitment> recSerch(String rec_no);
	
	List<Map> selectMemberApply(Map paramMap);

	List<Map> MemberFitList(String memNo);
	
	List<Enterprise> reviewSearch2(String key);
	
	Enterprise reviewSearch3(String key);
	
	List<Map> mypageView();

	List<Recruitment> swiper(String rec_no);
	
	List<Member> membercate2(String rec_category);
}
