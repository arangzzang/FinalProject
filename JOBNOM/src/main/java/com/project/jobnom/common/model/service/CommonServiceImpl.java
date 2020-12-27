package com.project.jobnom.common.model.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.jobnom.common.model.dao.CommonDao;
import com.project.jobnom.common.model.vo.Login;

@Service
public class CommonServiceImpl implements CommonService {

	@Autowired
	CommonDao dao;
	@Autowired
	SqlSession session;
	
	@Override
	public Login commonLogin(Map login) {
		return dao.commonLogin(session, login);
	}

	@Override
	public List<Login> checkDuplicateEmail(String memEmail) {
		return dao.checkDuplicateEmail(session, memEmail);
	}

	@Override
	public int userSecession(int memNo) {
		return dao.userSecession(session, memNo);
	}
	
	
	

}
