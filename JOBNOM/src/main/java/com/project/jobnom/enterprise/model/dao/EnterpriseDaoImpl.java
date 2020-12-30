package com.project.jobnom.enterprise.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.jobnom.common.model.vo.Login;
import com.project.jobnom.enterprise.model.vo.ApplyAd;
import com.project.jobnom.enterprise.model.vo.Banner;
import com.project.jobnom.enterprise.model.vo.Enterprise;

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
	public int quit(Enterprise ent, SqlSession session) {
		// TODO Auto-generated method stub
		return session.delete("enterprise.quit", ent);
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

}
