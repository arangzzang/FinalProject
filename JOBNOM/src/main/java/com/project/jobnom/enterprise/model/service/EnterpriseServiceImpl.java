package com.project.jobnom.enterprise.model.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.jobnom.common.model.vo.Login;
import com.project.jobnom.enterprise.model.dao.EnterpriseDao;
import com.project.jobnom.enterprise.model.vo.ApplyAd;
import com.project.jobnom.enterprise.model.vo.Banner;
//github.com/arangzzang/FinalProject.git
import com.project.jobnom.enterprise.model.vo.Enterprise;

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
	@Override
	public int quit(Enterprise ent) {
		// TODO Auto-generated method stub
		return dao.quit(ent, session);
	}
	
	//헤더 기업 버튼 클릭 -ys-
	@Override
	public List<Map> companyList() {
		// TODO Auto-generated method stub
		return dao.companyList(session);
	}
	@Override
	public List<Map> companyList2() {
		// TODO Auto-generated method stub
		return dao.companyList2(session);
	}
	@Override
	public List<Map> companyList3() {
		// TODO Auto-generated method stub
		return dao.companyList3(session);
	}
	@Override
	public List<Map> companyList4() {
		// TODO Auto-generated method stub
		return dao.companyList4(session);
	}
	@Override
	public List<Map> companyList5() {
		// TODO Auto-generated method stub
		return dao.companyList5(session);
	}
	@Override
	public List<Map> companyList6() {
		// TODO Auto-generated method stub
		return dao.companyList6(session);
	}

}
