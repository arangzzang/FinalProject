package com.project.jobnom.enterprise.model.dao;

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
	Enterprise findEmailEnterprise(Login log, SqlSession session);
}
