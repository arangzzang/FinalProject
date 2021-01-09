package com.project.jobnom.admin.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.project.jobnom.admin.model.vo.Recruitment;
import com.project.jobnom.Hire.model.vo.Review;
import com.project.jobnom.admin.model.vo.Member;

public interface AdminDao {

	List<Member> memList(SqlSession session, int cPage, int numPerpage);

	int grant(SqlSession session, String memno);

	int oust(SqlSession session, String memno);
	
	int memDelete(SqlSession session, String memno);
	
	List<Review> revList(SqlSession session, int cPage, int numPerpage);
	
	List<Recruitment> adList(SqlSession session, int cPage, int numPerpage);
	
	int censor(SqlSession session, int revno);
	
	int adDelete(SqlSession session, String recno);
	
	int memNum(SqlSession session);
	
	int revNum(SqlSession session);
	
	int adNum(SqlSession session);
}
