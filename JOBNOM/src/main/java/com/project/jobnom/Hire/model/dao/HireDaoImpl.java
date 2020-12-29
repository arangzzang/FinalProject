package com.project.jobnom.Hire.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.jobnom.Hire.model.vo.Interestedrcruitment;
import com.project.jobnom.Hire.model.vo.Recruitment;
import com.project.jobnom.Hire.model.vo.Support;
import com.project.jobnom.member.model.vo.Member;

@Repository
public class HireDaoImpl implements HireDao {

	@Override
	public int insertReview(SqlSession session, Map paramMap) {
		return  session.insert("hire.insertReview", paramMap);
	}

	@Override
	public List<Map> HireHomeRecruitmentList(SqlSession session,int cPage, int numPerpage) {
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
	public List<Map>  selectRecruitmentList(SqlSession session,Map paramMap) {
		return session.selectList("hire.selectRecruitmentList",paramMap);
	}

	@Override
	public List<Map> selectReviewList(SqlSession session, String ent_no) {
		return session.selectList("hire.selectReviewList",ent_no);
	}

	@Override
	public List<Recruitment> RecruitmentList(SqlSession session) {
		return session.selectList("hire.RecruitmentList");
	}

	@Override
	public List<Map> MemberList(SqlSession session,String memNo) {
		return session.selectList("hire.MemberList", memNo);
	}

	@Override
	public int insertMemberApply(SqlSession session, Map paramMap) {
		return session.insert("hire.insertMemberApply",paramMap);
	}

	@Override
	public int recFavorites(SqlSession session, Map paramMap) {
		return session.update("hire.recFavorites",paramMap);
	}

	@Override
	public int notFavorites(SqlSession session, Map paramMap) {
		return session.delete("hire.notFavorites",paramMap);
	}

	@Override
	public List<Support> HireMyHire(SqlSession session, String menNo,int cPage, int numPerpage) {
		return session.selectList("hire.HireMyHire",menNo,new RowBounds((cPage-1)*numPerpage,numPerpage));
	}

	@Override
	public int selectSuppertCount(SqlSession session) {
		return session.selectOne("hire.selectSuppertCount");
	}
	
	@Override
	public List<Recruitment>  anoList(SqlSession session, int cPage, int numPerPage) {
		return  session.selectList("anno.anoList",null,new RowBounds((cPage-1)*numPerPage,numPerPage));
	}

	@Override
	public List<Interestedrcruitment> HireFavorites(SqlSession session, String memNo, int cPage, int numPerPage) {
		return session.selectList("hire.HireFavorites",memNo,new RowBounds((cPage-1)*numPerPage,numPerPage));
	}

	@Override
	public int selectInterestedrcruitmentCount(SqlSession session) {
		return session.selectOne("hire.selectInterestedrcruitmentCount");
	}

	@Override
	public List<Map> selectOneRecruitment(SqlSession session, String key) {
		return session.selectList("hire.selectOneRecruitment",key);
	}

	@Override
	public List<Recruitment> recSerch(SqlSession session, String rec_no) {
		return session.selectList("hire.recSerch",rec_no);
	}
	

	
	
	
	
	

	
}
