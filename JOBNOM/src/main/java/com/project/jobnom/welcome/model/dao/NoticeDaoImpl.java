package com.project.jobnom.welcome.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDaoImpl implements NoticeDao {

	//게시글 작성
	@Override
	public int insertNotice(SqlSession session, Map param) {
		// TODO Auto-generated method stub
		return session.insert("notice.insertNotice",param);
	}
	//게시글 조회
	@Override
	public List<Map> selectNoticeList(SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectList("notice.selectNoticeList");
	}
}
