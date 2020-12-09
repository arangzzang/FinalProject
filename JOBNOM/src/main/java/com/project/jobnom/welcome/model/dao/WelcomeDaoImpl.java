package com.project.jobnom.welcome.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.jobnom.welcome.model.vo.FAQ;

@Repository
public class WelcomeDaoImpl implements WelcomeDao {

	@Override
	public List<FAQ> welcomFAQView(SqlSession session) {
		return session.selectList("faq.selectListFaq");
	}

}
