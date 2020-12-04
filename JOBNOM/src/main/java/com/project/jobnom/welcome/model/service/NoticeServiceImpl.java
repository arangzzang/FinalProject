package com.project.jobnom.welcome.model.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.jobnom.welcome.model.dao.NoticeDao;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	private NoticeDao dao;
	@Autowired
	private SqlSession session;
	
	//게시글 작성
	@Override
	public int insertNotice(Map param) {
		// TODO Auto-generated method stub
		return dao.insertNotice(session,param);
	}
	//게시글 조회
	@Override
	public List<Map> selectNoticeList() {
		// TODO Auto-generated method stub
		return dao.selectNoticeList(session);
	}

}
