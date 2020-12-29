package com.project.jobnom.enterprise.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.project.jobnom.Hire.model.vo.Recruitment;
import com.project.jobnom.common.model.vo.Login;
import com.project.jobnom.enterprise.model.vo.ApplyAd;
import com.project.jobnom.enterprise.model.vo.Banner;
import com.project.jobnom.enterprise.model.vo.Enterprise;
import com.project.jobnom.enterprise.model.vo.Support;
import com.project.jobnom.resume.model.vo.Resume;

public interface EnterpriseDao {

	int enrollEnter(Enterprise ent, SqlSession session);
	int insertApplyAd(ApplyAd ad, SqlSession session);
	Enterprise findOneEnterprise(Login log, SqlSession session);
	List<Support> selectSupport(SqlSession session,int cPage, int numPerpage,Recruitment rec);
	int selectCount(SqlSession session);
	int updateEnterprise(Enterprise ent, SqlSession session);
	int entMembership(Login log, SqlSession session);
	int insertBanner(Banner ban, SqlSession session);
	List<Recruitment> selectRecruitment(SqlSession session,int memNo,int cPage, int numPerpage);
	int selectRecruitmentCount(SqlSession session);
	Resume selectResume(SqlSession session , int mem_no);
	int quit(Enterprise ent, SqlSession session);
	Enterprise findEmailEnterprise(Login log, SqlSession session);
	//카카오페이
	Enterprise selectEnterprise (int entNo,SqlSession session);
}
