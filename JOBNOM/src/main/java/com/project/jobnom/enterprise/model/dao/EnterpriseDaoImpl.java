package com.project.jobnom.enterprise.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.jobnom.enterprise.model.vo.Enterprise;

@Repository
public class EnterpriseDaoImpl implements EnterpriseDao {

	@Override
	public int enrollEnter(Enterprise ent, SqlSession session) {
		return session.insert("enterprice.enrollEnter",ent);
	}

	

}
