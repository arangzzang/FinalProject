package com.project.jobnom.Hire.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.jobnom.Hire.model.vo.Interestedrcruitment;
import com.project.jobnom.Hire.model.vo.Recruitment;
import com.project.jobnom.Hire.model.vo.Support;
import com.project.jobnom.enterprise.model.vo.Category2;
import com.project.jobnom.enterprise.model.vo.Enterprise;
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
	public List<Map>  selectRecruitmentList(SqlSession session,String rec_no) {
		return session.selectList("hire.selectRecruitmentList",rec_no);
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
	public int selectSuppertCount(SqlSession session, String memNo) {
		return session.selectOne("hire.selectSuppertCount", memNo);
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
	public int selectInterestedrcruitmentCount(SqlSession session,String memNo) {
		return session.selectOne("hire.selectInterestedrcruitmentCount",memNo);
	}

	@Override
	public List<Enterprise> selectOneRecruitment(SqlSession session, String key) {
		return session.selectList("hire.selectOneRecruitment",key);
	}

	@Override
	public List<Recruitment> recSerch(SqlSession session, String rec_no) {
		return session.selectList("hire.recSerch",rec_no);
	}

	@Override
	public List<Map> selectMemberApply(SqlSession session, Map parMap) {
		return session.selectList("hire.selectMemberApply",parMap);
	}

	@Override
	public List<Map> MemberFitList(SqlSession session, String memNo) {
		return session.selectList("hire.MemberFitList",memNo);
	}

	@Override
	public List<Enterprise> reviewSearch2(SqlSession session, String key) {
		return session.selectList("hire.reviewSearch2",key);
	}

	@Override
	public Enterprise reviewSearch3(SqlSession session,String key) {
		return session.selectOne("hire.reviewSearch3",key);
	}

	@Override
	public List<Map> mypageView(SqlSession session) {
		return session.selectList("hire.mypageView");
	}

	@Override
	public List<Recruitment> swiper(SqlSession session, String rec_no) {
		return session.selectList("hire.swiper",rec_no);
	}

	@Override
	public List<Member> membercate2(SqlSession session, String rec_category) {
		return session.selectList("hire.membercate2",rec_category);
	}

	@Override
	public List<Map> mypageReview(SqlSession session, String memNo, int cPage, int numPerpage) {
		return session.selectList("hire.mypageReview",memNo,new RowBounds((cPage-1)*numPerpage,numPerpage));
	}

	@Override
	public int selectReviewCount(SqlSession session, String memNo) {
		return session.selectOne("hire.selectReviewCount",memNo);
	}

	@Override
	public List<Recruitment> recList(SqlSession session) {
		return session.selectList("hire.recList");
	}

	@Override
	public List<Member> categoryAll(SqlSession session, String memNo) {
		return session.selectList("hire.categoryAll",memNo);
	}
	
	
	
	
	
	
	
	

	
}
