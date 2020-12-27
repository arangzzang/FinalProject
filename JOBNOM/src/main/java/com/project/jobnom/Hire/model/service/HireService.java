package com.project.jobnom.Hire.model.service;

import java.util.List;
import java.util.Map;

import com.project.jobnom.Hire.model.vo.Recruitment;
import com.project.jobnom.Hire.model.vo.Review;
import com.project.jobnom.member.model.vo.Member;

public interface HireService {

	int insertReview(Map paramMap);
	
	List<Recruitment> HireHomeRecruitmentList(int cPage, int numPerpage);

	int selectCount();

	List<Recruitment>  anoList(int cPage, int numPerPage);

	List<Map> reviewStar();
	
	Recruitment selectRecruitmentList(String rec_no);
	
	Review selectReviewList(String ent_no);
	
	//리뷰화면전환
	Member selectMember(int memNo);


}
