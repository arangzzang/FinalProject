package com.project.jobnom.common.model.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.project.jobnom.common.model.vo.Login;

public interface CommonDao {

	Login commonLogin(SqlSession session, Map login);
}
