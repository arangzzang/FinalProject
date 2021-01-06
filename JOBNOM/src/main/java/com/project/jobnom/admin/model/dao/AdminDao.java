package com.project.jobnom.admin.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.project.jobnom.Hire.model.vo.Review;
import com.project.jobnom.admin.model.vo.Member;
import com.project.jobnom.enterprise.model.vo.ApplyAd;

public interface AdminDao {

	List<Member> memList(SqlSession session);

	int grant(SqlSession session, String memno);

	int oust(SqlSession session, String memno);
	
	int memDelete(SqlSession session, String memno);
	
	List<Review> revList(SqlSession session);
	
	List<ApplyAd> adList(SqlSession session);
}
