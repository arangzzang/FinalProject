package com.project.jobnom.Hire.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;

import com.project.jobnom.Hire.model.vo.Interestedrcruitment;
import com.project.jobnom.Hire.model.vo.Recruitment;
import com.project.jobnom.Hire.model.vo.Support;
import com.project.jobnom.member.model.vo.Member;

public interface HireDao {
	int insertReview(SqlSession session, Map ModelMap);
	

	List<Map> HireHomeRecruitmentList(SqlSession session,int cPage, int numPerpage); 

	int selectCount(SqlSession session);
	
	List<Recruitment> RecruitmentList(SqlSession session);
	
	List<Map> MemberList(SqlSession session,String memNo);
	
	List<Map> reviewStar(SqlSession session);
	
	List<Map>  selectRecruitmentList(SqlSession session, Map paramMap);
	
//	Review selectReviewList(SqlSession session, String ent_no);
	
	List<Map> selectReviewList(SqlSession session, String ent_no);

	int insertMemberApply(SqlSession session, Map paramMap);
	
	int recFavorites(SqlSession session, Map paramMap);

	int notFavorites(SqlSession session, Map paramMap);

	List<Support> HireMyHire(SqlSession session, String menNo,int cPage, int numPerpage);

	int selectSuppertCount(SqlSession session, String memNo);


	List<Recruitment> anoList(SqlSession session, int cPage, int numPerPage);

	List<Interestedrcruitment>  HireFavorites(SqlSession session, String memNo,int cPage, int numPerPage);

	int selectInterestedrcruitmentCount(SqlSession session,String memNo);

	List<Map> selectOneRecruitment(SqlSession session, String key);

	List<Recruitment> recSerch(SqlSession session, String rec_no);


	List<Map> selectMemberApply(SqlSession session, Map parMap); 

	List<Map> MemberFitList(SqlSession session, String memNo);


}
