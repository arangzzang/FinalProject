package com.project.jobnom.enterprise.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.jobnom.Hire.model.vo.Recruitment;
import com.project.jobnom.Hire.model.vo.Review;
import com.project.jobnom.common.model.vo.Login;
import com.project.jobnom.enterprise.model.vo.Applicant;
import com.project.jobnom.enterprise.model.vo.ApplyAd;
import com.project.jobnom.enterprise.model.vo.Banner;
import com.project.jobnom.enterprise.model.vo.Category2;
import com.project.jobnom.enterprise.model.vo.Enterprise;
import com.project.jobnom.enterprise.model.vo.Mammoth;
import com.project.jobnom.enterprise.model.vo.MemberDataC2;
import com.project.jobnom.enterprise.model.vo.PayData;
import com.project.jobnom.enterprise.model.vo.Score;
import com.project.jobnom.enterprise.model.vo.Support;
import com.project.jobnom.enterprise.model.vo.Worker;
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
	public int selectRecruitmentCount(Enterprise ent, SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectOne("enterprise.selectRecruitmentCount", ent);
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
	public List<Map> companyInfo(SqlSession session, int entNo) {
		// TODO Auto-generated method stub
		return session.selectList("enterprise.companyInfo",entNo);
	}


	@Override
	public List<Review> selectReviewList(SqlSession session,int entNo,int cPage, int numPerpage) {
		// TODO Auto-generated method stub
		return session.selectList("enterprise.selectReviewList",entNo,new RowBounds((cPage-1)*numPerpage,numPerpage));
	}
	

	@Override
	public int selectReviewcount(SqlSession session,int entNo) {
		// TODO Auto-generated method stub
		return session.selectOne("enterprise.selectReviewcount",entNo);
	}

	@Override
	public List<Recruitment> selectJoblist(SqlSession session,Map param) {
		// TODO Auto-generated method stub
		return session.selectList("enterprise.selectJoblist",param);
	}
	

	@Override
	public int selectJobCount(SqlSession session, int entNo) {
		// TODO Auto-generated method stub
		return session.selectOne("enterprise.selectJobCount",entNo);
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

	@Override
	public List<PayData> payData(SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectList("enterprise.payData");
	}

	@Override
	public ApplyAd findAdByNo(SqlSession session, String recNo) {
		// TODO Auto-generated method stub
		return session.selectOne("enterprise.findAdByNo", recNo);
	}

	@Override
	public int updateApplyAd(SqlSession session, ApplyAd ad) {
		// TODO Auto-generated method stub
		return session.update("enterprise.updateApplyAd", ad);
	}

	@Override
	public List<Worker> workerList(SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectList("enterprise.workerList");
	}

	@Override
	public Mammoth getMammoth(SqlSession session, int resno) {
		// TODO Auto-generated method stub
		return session.selectOne("enterprise.getMammoth", resno);
	}

	@Override
	public List<Applicant> getApplicant(SqlSession session,int recno,int cPage, int numPerpage) {
		// TODO Auto-generated method stub
		return session.selectList("enterprise.getApplicant", recno,new RowBounds((cPage-1)*numPerpage,numPerpage));
	}

	@Override
	public int selectSupportCount(SqlSession session, int recno) {
		// TODO Auto-generated method stub
		return session.selectOne("enterprise.selectSupportCount", recno);
	}

	@Override
	public Score scoreList(SqlSession session, int entNo) {
		// TODO Auto-generated method stub
		return session.selectOne("enterprise.scoreList",entNo);
	}

	@Override
	public int followEnt(SqlSession session,Map param1) {
		// TODO Auto-generated method stub
		return session.insert("enterprise.followEnt",param1);
	}

	@Override
	public int unfollowEnt(SqlSession session ,Map param1) {
		// TODO Auto-generated method stub
		return session.delete("enterprise.unfollowEnt",param1);
	}

	@Override
	public List<Map> selectEntFollow(SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectList("enterprise.selectEntFollow");
	}
	
	

	
}
