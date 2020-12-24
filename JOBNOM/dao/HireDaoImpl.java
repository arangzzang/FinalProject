package com.project.jobnom.Hire.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.jobnom.Hire.model.vo.Recruitment;
import com.project.jobnom.Hire.model.vo.Review;

@Repository
public class HireDaoImpl implements HireDao {

	@Override
	public int insertReview(SqlSession session, Map ModelMap) {
		return  session.insert("hire.insertReview", ModelMap);
	}

	@Override
	public List<Recruitment> HireHomeRecruitmentList(SqlSession session,int cPage, int numPerpage) {
		return  session.selectList("hire.HireHomeRecruitmentList",null,new RowBounds((cPage-1)*numPerpage,numPerpage));
	}

	@Override
	public int selectCount(SqlSession session) {
		return session.selectOne("hire.selectCount");
	}

	
	@Override
	public List<Map> reviewStar(SqlSession session) {
		return session.selectList("hire.reviewStar");
	}

	@Override
	public Recruitment selectRecruitmentList(SqlSession session,String rec_no) {
		return session.selectOne("hire.selectRecruitmentList",rec_no);
	}

	@Override
	public List<Map> selectReviewList(SqlSession session, String ent_no) {
		return session.selectList("hire.selectReviewList",ent_no);
	}

	
	
	
	
	
	
	///////////여기서 부터는 공고 카테고리별로 가는 임플리먼트
	
	@Override
	public List<Recruitment>  anoList(SqlSession session, int cPage, int numPerPage) {
		return  session.selectList("hire.anoList",null,new RowBounds((cPage-1)*numPerPage,numPerPage));
	}

	@Override
	public List<Recruitment> anoList2(SqlSession session, int cPage, int numPerPage) {
		return  session.selectList("hire.anoList2",null,new RowBounds((cPage-1)*numPerPage,numPerPage));
	}
	
	
	
	
	
	
	

	
}
