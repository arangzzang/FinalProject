package com.project.jobnom.enterprise.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.project.jobnom.common.model.vo.Login;
import com.project.jobnom.enterprise.model.vo.ApplyAd;
import com.project.jobnom.enterprise.model.vo.Banner;
import com.project.jobnom.enterprise.model.vo.Enterprise;

public interface EnterpriseDao {

	int enrollEnter(Enterprise ent, SqlSession session);
	int insertApplyAd(ApplyAd ad, SqlSession session);
	Enterprise findOneEnterprise(Login log, SqlSession session);
	int updateEnterprise(Enterprise ent, SqlSession session);
	int entMembership(Login log, SqlSession session);
	int insertBanner(Banner ban, SqlSession session);
	int quit(Enterprise ent, SqlSession session);
	
	//헤더 기업 버튼 클릭시 -ys-
	List<Map> companyList(SqlSession session);
	List<Map> companyList2(SqlSession session);
	List<Map> companyList3(SqlSession session);
	List<Map> companyList4(SqlSession session);
	List<Map> companyList5(SqlSession session);
	List<Map> companyList6(SqlSession session);
	
}
