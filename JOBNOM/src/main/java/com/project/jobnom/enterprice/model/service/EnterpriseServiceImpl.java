package com.project.jobnom.enterprice.model.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.jobnom.enterprice.model.dao.EnterpriceDao;
import com.project.jobnom.enterprice.model.vo.ApplyAd;
import com.project.jobnom.enterprice.model.vo.Enterprice;
import com.project.jobnom.member.model.vo.Member;

@Service
public class EnterpriseServiceImpl implements EnterpriseService {

	@Autowired
	EnterpriceDao dao;
	@Autowired
	SqlSession session;
	
	//기업회원가입
	@Override
	public int enrollEnter(Enterprice ent) {
		return dao.enrollEnter(ent,session);
	}

	@Override
	public int insertApplyAd(Member mem, ApplyAd ad) {
		// TODO Auto-generated method stub
		return dao.insertApplyAd(mem, ad, session);
	}
	
}
