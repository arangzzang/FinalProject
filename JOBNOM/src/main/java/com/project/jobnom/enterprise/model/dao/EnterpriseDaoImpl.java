package com.project.jobnom.enterprise.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.jobnom.common.model.vo.Login;
import com.project.jobnom.enterprise.model.vo.ApplyAd;
import com.project.jobnom.enterprise.model.vo.Banner;
import com.project.jobnom.enterprise.model.vo.Enterprise;
import com.project.jobnom.enterprise.model.vo.Support;

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
	public List<Support> selectSupport(SqlSession session,int cPage, int numPerpage) {
		// TODO Auto-generated method stub
		return session.selectList("enterprise.selectSupport",null,new RowBounds((cPage-1)*numPerpage,numPerpage));
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

	

}
