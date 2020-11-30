package com.project.jobnom.enterprice.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.jobnom.enterprice.model.vo.Enterprice;

@Repository
public class EnterpriceDaoImpl implements EnterpriceDao {

	@Override
	public int enrollEnter(Enterprice ent, SqlSession session) {
		return session.insert("enterprice.enrollEnter",ent);
	}

	

}
