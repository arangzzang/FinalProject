package com.project.jobnom.enterprise.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.jobnom.Hire.model.vo.Recruitment;
import com.project.jobnom.Hire.model.vo.Review;
import com.project.jobnom.common.model.vo.Login;
import com.project.jobnom.enterprise.model.vo.ApplyAd;
import com.project.jobnom.enterprise.model.vo.Banner;
import com.project.jobnom.enterprise.model.vo.Category2;
import com.project.jobnom.enterprise.model.vo.Enterprise;
import com.project.jobnom.enterprise.model.vo.MemberDataC2;
import com.project.jobnom.enterprise.model.vo.Support;
import com.project.jobnom.resume.model.vo.Resume;

@Repository
public class EnterpriseDaoImpl implements EnterpriseDao {
	

	@Override
	public int enrollEnter(Enterprise ent, SqlSession session) {
		return session.insert("enterprise.enrollEnter",ent);
	}

	@Override
	public int insertApplyAd(ApplyAd ad, SqlSession session) {
		// TODO Auto-generated method stub
		return session.insert("enterprise.insertApplyAd", ad);
	}

	@Override
	public Enterprise findOneEnterprise(Login log, SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectOne("enterprise.findOneEnterprise", log);
	}

	@Override
	public List<Support> selectSupport(SqlSession session,int cPage, int numPerpage, Recruitment rec) {
		// TODO Auto-generated method stub
		return session.selectList("enterprise.selectSupport",rec,new RowBounds((cPage-1)*numPerpage,numPerpage));
	}

	@Override
	public int selectCount(SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectOne("enterprise.selectCount");
	}

	public int updateEnterprise(Enterprise ent, SqlSession session) {
		// TODO Auto-generated method stub
		return session.update("enterprise.updateEnterprise", ent);
	}

	@Override
	public int entMembership(Login log, SqlSession session) {
		// TODO Auto-generated method stub
		return session.update("enterprise.entMembership", log);
	}

	@Override
	public int insertBanner(Banner ban, SqlSession session) {
		// TODO Auto-generated method stub
		return session.insert("enterprise.insertBanner", ban);
	}

	@Override
	public List<Recruitment> selectRecruitment(SqlSession session, int memNo,int cPage, int numPerpage) {
		// TODO Auto-generated method stub
		return session.selectList("enterprise.selectRecruitment",memNo,new RowBounds((cPage-1)*numPerpage,numPerpage));

	}
	@Override
	public int quit(Enterprise ent, SqlSession session) {
		// TODO Auto-generated method stub
		return session.delete("enterprise.quit", ent);

	}

	@Override
	public Enterprise findEmailEnterprise(Login log, SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectOne("enterprise.findEmailEnterprise", log);
	}
	

	@Override
	public int selectRecruitmentCount(SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectOne("enterprise.selectRecruitmentCount");
	}

	@Override
	public Resume selectResume(SqlSession session, int memNo) {
		// TODO Auto-generated method stub
		return session.selectOne("enterprise.selectResume",memNo);
	}
	//카카오페이

	@Override
	public Enterprise selectEnterprise(int entNo, SqlSession session) {
		return session.selectOne("enterprise.selectEnterprise",entNo);
	}

	@Override
	public List<MemberDataC2> memDataC2(SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectList("enterprise.memDataC2");
	}
	
	
	// 헤더 기업 버튼 클릭-ys-
	@Override
	public List<Map> companyList(SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectList("enterprise.companyList");
	}
	@Override
	public List<Map> companyList2(SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectList("enterprise.companyList2");
	}
	@Override
	public List<Map> companyList3(SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectList("enterprise.companyList3");
	}
	@Override
	public List<Map> companyList4(SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectList("enterprise.companyList4");
	}
	@Override
	public List<Map> companyList5(SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectList("enterprise.companyList5");
	}
	@Override
	public List<Map> companyList6(SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectList("enterprise.companyList6");
	}
	
	//기업명 클릭시 이동
	@Override
	public List<Map> companyInfo(SqlSession session, String entNo) {
		// TODO Auto-generated method stub
		return session.selectList("enterprise.companyInfo",entNo);
	}


	@Override
	public List<Review> selectReviewList(SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectList("enterprise.selectReviewList");
	}

	@Override
	public List<Recruitment> selectJoblist(SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectList("enterprise.selectJoblist");
	}

	@Override
	public List<Category2> getC2(SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectList("enterprise.getC2");
	}

	@Override
	public List<MemberDataC2> entDataC2(SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectList("enterprise.entDataC2");
	}
	
	
	
}
