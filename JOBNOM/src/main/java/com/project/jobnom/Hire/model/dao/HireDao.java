package com.project.jobnom.Hire.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.project.jobnom.Hire.model.vo.Recruitment;

public interface HireDao {
	int insertReview(SqlSession session, Map ModelMap);
	

	List<Recruitment> HireHomeRecruitmentList(SqlSession session,int cPage, int numPerpage); 

	int selectCount(SqlSession session);
}
