package com.project.jobnom.Hire.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.project.jobnom.Hire.model.vo.Recruitment;
import com.project.jobnom.Hire.model.vo.Review;

public interface HireDao {
	int insertReview(SqlSession session, Map ModelMap);
	

	List<Recruitment> HireHomeRecruitmentList(SqlSession session,int cPage, int numPerpage); 

	int selectCount(SqlSession session);
	
	List<Recruitment>  anoList(SqlSession session, int cPage, int numPerPage);
	
	List<Map> reviewStar(SqlSession session);
	
	Recruitment selectRecruitmentList(SqlSession session, String rec_no);
	
	List<Map> selectReviewList(SqlSession session, String ent_no);

	List<Recruitment>  anoList2(SqlSession session, int cPage, int numPerPage);

}
