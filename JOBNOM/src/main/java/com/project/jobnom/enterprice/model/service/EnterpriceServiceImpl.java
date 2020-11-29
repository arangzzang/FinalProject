package com.project.jobnom.enterprice.model.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.jobnom.enterprice.model.dao.EnterpriceDao;
import com.project.jobnom.enterprice.model.vo.Enterprice;

@Service
public class EnterpriceServiceImpl implements EnterpriceService {

	@Autowired
	EnterpriceDao dao;
	@Autowired
	SqlSession session;
	
	@Override
	public Enterprice enterLogin(String entEmail) {
		return dao.enterLogin(session, entEmail);
	}

}
