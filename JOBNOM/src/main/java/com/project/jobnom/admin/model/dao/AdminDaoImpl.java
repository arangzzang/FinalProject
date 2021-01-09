package com.project.jobnom.admin.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.jobnom.Hire.model.vo.Review;
import com.project.jobnom.admin.model.vo.Member;
import com.project.jobnom.admin.model.vo.Recruitment;


@Repository
public class AdminDaoImpl implements AdminDao{

	@Override
	public List<Member> memList(SqlSession session, int cPage, int numPerpage) {
		// TODO Auto-generated method stub
		return session.selectList("admin.memList", null, new RowBounds((cPage-1)*numPerpage, numPerpage));
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
	public List<Review> revList(SqlSession session, int cPage, int numPerpage) {
		// TODO Auto-generated method stub
		return session.selectList("admin.revList", null, new RowBounds((cPage-1)*numPerpage, numPerpage));
	}

	@Override
	public List<Recruitment> adList(SqlSession session, int cPage, int numPerpage) {
		// TODO Auto-generated method stub
		return session.selectList("admin.adList", null, new RowBounds((cPage-1)*numPerpage, numPerpage));
	}

	@Override
	public int censor(SqlSession session, int revno) {
		// TODO Auto-generated method stub
		return session.update("admin.censor", revno);
	}

	@Override
	public int adDelete(SqlSession session, String recno) {
		// TODO Auto-generated method stub
		return session.delete("admin.adDelete", recno);
	}

	@Override
	public int memNum(SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectOne("admin.memNum");
	}

	@Override
	public int revNum(SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectOne("admin.revNum");
	}

	@Override
	public int adNum(SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectOne("admin.adNum");
	}

}
