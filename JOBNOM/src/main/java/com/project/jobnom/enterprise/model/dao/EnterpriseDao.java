package com.project.jobnom.enterprise.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

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

public interface EnterpriseDao {

	int enrollEnter(Enterprise ent, SqlSession session);

	int insertApplyAd(ApplyAd ad, SqlSession session);

	Enterprise findOneEnterprise(Login log, SqlSession session);

	List<Support> selectSupport(SqlSession session, int cPage, int numPerpage, Recruitment rec);

	int selectCount(SqlSession session);

	int updateEnterprise(Enterprise ent, SqlSession session);

	int entMembership(Login log, SqlSession session);

	int insertBanner(Banner ban, SqlSession session);

	List<Recruitment> selectRecruitment(SqlSession session, int memNo, int cPage, int numPerpage);

	int selectRecruitmentCount(Enterprise ent, SqlSession session);

	Resume selectResume(SqlSession session, int mem_no);

	int quit(Enterprise ent, SqlSession session);
	List<Review> selectReviewList(SqlSession session,int entNo,int cPage, int numPerpage);
	int selectReviewcount(SqlSession session, int entNo);
	List<Recruitment> selectJoblist(SqlSession session,Map param);
	int selectJobCount(SqlSession session, int entNo);
	List<Category2> getC2(SqlSession session);

	Enterprise findEmailEnterprise(Login log, SqlSession session);

	// 카카오페이
	Enterprise selectEnterprise(int entNo, SqlSession session);

	List<MemberDataC2> memDataC2(SqlSession session);

	List<MemberDataC2> entDataC2(SqlSession session);

	List<PayData> payData(SqlSession session);

	// 헤더 기업 버튼 클릭시 -ys-
	List<Map> companyList(SqlSession session);

	List<Map> companyList2(SqlSession session);

	List<Map> companyList3(SqlSession session);

	List<Map> companyList4(SqlSession session);

	List<Map> companyList5(SqlSession session);

	List<Map> companyList6(SqlSession session);

	// 기업명 클릭시 -ys-
	List<Map> companyInfo(SqlSession session,int entNo);

	ApplyAd findAdByNo(SqlSession session, String recNo);
	
	int updateApplyAd(SqlSession session, ApplyAd ad);
	
	List<Worker> workerList(SqlSession session);
	
	Mammoth getMammoth(SqlSession session, int resno);
	
	List<Applicant> getApplicant (SqlSession session,int recno, int cPage, int numPerpage);

	int selectSupportCount(SqlSession session, int recno);
	
	Score scoreList(SqlSession session, int entNo);
}
