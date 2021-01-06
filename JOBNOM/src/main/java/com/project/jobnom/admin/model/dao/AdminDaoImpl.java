package com.project.jobnom.admin.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.jobnom.Hire.model.vo.Review;
import com.project.jobnom.admin.model.vo.Member;
import com.project.jobnom.enterprise.model.vo.ApplyAd;


@Repository
public class AdminDaoImpl implements AdminDao{

	@Override
	public List<Member> memList(SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectList("admin.memList");
	}

	@Override
	public int grant(SqlSession session, String memno) {
		// TODO Auto-generated method stub
		return session.update("admin.grant", memno);
	}

	@Override
	public int oust(SqlSession session, String memno) {
		// TODO Auto-generated method stub
		return session.update("admin.oust", memno);
	}

	@Override
	public int memDelete(SqlSession session, String memno) {
		// TODO Auto-generated method stub
		return session.delete("admin.memDelete", memno);
	}

	@Override
	public List<Review> revList(SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectList("admin.revList");
	}

	@Override
	public List<ApplyAd> adList(SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectList("admin.adList");
	}

}
