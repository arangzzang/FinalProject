package com.project.jobnom.enterprice.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.jobnom.enterprice.model.vo.ApplyAd;
import com.project.jobnom.enterprice.model.vo.Enterprice;
import com.project.jobnom.member.model.vo.Member;

@Repository
public class EnterpriceDaoImpl implements EnterpriceDao {

	@Override
	public int enrollEnter(Enterprice ent, SqlSession session) {
		return session.insert("enterprice.enrollEnter",ent);
	}

	@Override
	public int insertApplyAd(Member mem, ApplyAd ad, SqlSession session) {
		// TODO Auto-generated method stub
		return session.insert("enterprice.insertApplyAd", ad);
	}

	

}
