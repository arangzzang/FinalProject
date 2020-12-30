package com.project.jobnom.Hire.model.service;

import java.util.List;
import java.util.Map;

import com.project.jobnom.Hire.model.vo.Interestedrcruitment;
import com.project.jobnom.Hire.model.vo.Recruitment;
import com.project.jobnom.Hire.model.vo.Support;
import com.project.jobnom.member.model.vo.Member;

public interface HireService {

	int insertReview(Map paramMap);
	
	List<Map>HireHomeRecruitmentList(int cPage, int numPerpage);

	int selectCount();
	
	List<Map> MemberList(String memNo);
	
	
	List<Recruitment> RecruitmentList();
	

	List<Map> reviewStar();
	
	List<Map>  selectRecruitmentList(Map paramMap);
	
	List<Map> selectReviewList(String ent_no);
	
	int insertMemberApply(Map paramMap);
	
	int recFavorites(Map paramMap);
	
	int notFavorites(Map paramMap);
	
	List<Support> HireMyHire(String memNo,int cPage, int numPerpage);

	int selectSuppertCount(String memNo);
	
	int selectInterestedrcruitmentCount(String memNo);
	
	List<Interestedrcruitment> HireFavorites(String memNo,int cPage, int numPerpage);

	List<Map> selectOneRecruitment (String key);


	List<Recruitment> recSerch(String rec_no);
	
	List<Map> selectMemberApply(Map paramMap);

	List<Map> MemberFitList(String memNo);
	
	


}
