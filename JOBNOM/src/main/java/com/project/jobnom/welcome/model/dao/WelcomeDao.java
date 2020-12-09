package com.project.jobnom.welcome.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.project.jobnom.welcome.model.vo.FAQ;

public interface WelcomeDao {

	List<FAQ> welcomFAQView(SqlSession session);
}
