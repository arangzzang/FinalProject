package com.project.jobnom.Hire.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.project.jobnom.Hire.model.vo.Recruitment;
import com.project.jobnom.Hire.model.vo.Review;
import com.project.jobnom.member.model.vo.Member;

public interface HireDao {
	int insertReview(SqlSession session, Map ModelMap);
	

	List<Recruitment> HireHomeRecruitmentList(SqlSession session,int cPage, int numPerpage); 

	int selectCount(SqlSession session);
	
	List<Recruitment>  anoList(SqlSession session, int cPage, int numPerPage);
	
	List<Map> reviewStar(SqlSession session);
	
	Recruitment selectRecruitmentList(SqlSession session, String rec_no);
	
	Review selectReviewList(SqlSession session, String ent_no);
	
	//리뷰화면전환
	Member selectMember(int memNo, SqlSession session);
}
