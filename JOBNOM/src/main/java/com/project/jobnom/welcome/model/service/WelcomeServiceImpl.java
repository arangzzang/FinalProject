package com.project.jobnom.welcome.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.jobnom.welcome.model.dao.WelcomeDao;
import com.project.jobnom.welcome.model.vo.FAQ;

@Service
public class WelcomeServiceImpl implements WelcomeService {

	@Autowired
	WelcomeDao dao;
	@Autowired
	SqlSession session;
	
	@Override
	public List<FAQ> welcomFAQView() {
		return dao.welcomFAQView(session);
	}

}
