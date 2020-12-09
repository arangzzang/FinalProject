package com.project.jobnom.enterprice.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.project.jobnom.enterprice.model.vo.Enterprice;

public interface EnterpriceDao {

	int enrollEnter(Enterprice ent, SqlSession session);
}
