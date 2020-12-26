package com.project.jobnom.enterprise.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.jobnom.common.model.vo.Login;
import com.project.jobnom.enterprise.model.dao.EnterpriseDao;
import com.project.jobnom.enterprise.model.vo.ApplyAd;
import com.project.jobnom.enterprise.model.vo.Banner;
import com.project.jobnom.enterprise.model.vo.Enterprise;
import com.project.jobnom.enterprise.model.vo.Support;

@Service
public class EnterpriseServiceImpl implements EnterpriseService {

	@Autowired
	EnterpriseDao dao;
	@Autowired
	SqlSession session;
	
	//기업회원가입
	@Override
	public int enrollEnter(Enterprise ent) {
		return dao.enrollEnter(ent,session);
	}
	@Override
	public int insertApplyAd(ApplyAd ad) {
		// TODO Auto-generated method stub
		return dao.insertApplyAd(ad, session);
	}
	@Override
	public Enterprise findOneEnterprise(Login log) {
		// TODO Auto-generated method stub
		return dao.findOneEnterprise(log, session);
	}
	@Override
	public List<Support> selectSupport( int cPage, int numPerpage) {
		// TODO Auto-generated method stub
		return dao.selectSupport(session,cPage,numPerpage);
	}
	@Override
	public int selectCount() {
		// TODO Auto-generated method stub
		return dao.selectCount(session);
	}
	public int updateEnterprise(Enterprise ent) {
		// TODO Auto-generated method stub
		return dao.updateEnterprise(ent, session);
	}
	@Override
	public int entMembership(Login log) {
		// TODO Auto-generated method stub
		return dao.entMembership(log, session);
	}
	@Override
	public int insertBanner(Banner ban) {
		// TODO Auto-generated method stub
		return dao.insertBanner(ban, session);
	}

	

}
