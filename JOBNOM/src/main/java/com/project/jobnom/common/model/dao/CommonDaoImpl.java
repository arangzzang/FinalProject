package com.project.jobnom.common.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.jobnom.common.model.vo.Login;

@Repository
public class CommonDaoImpl implements CommonDao {

	@Override
	public Login commonLogin(SqlSession session, Map login) {
		return session.selectOne("common.commonLogin", login );
	}

	@Override
	public List<Login> checkDuplicateEmail(SqlSession session, String memEmail) {
		return session.selectList("common.checkDuplicateEmail", memEmail);
	}

	@Override
	public int userSecession(SqlSession session, int memNo) {
		return session.delete("common.userSecession",memNo);
	}
	
	

}
