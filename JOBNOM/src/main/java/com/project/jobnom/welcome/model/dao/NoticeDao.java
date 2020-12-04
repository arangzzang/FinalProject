package com.project.jobnom.welcome.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

public interface NoticeDao {
	
	//게시글 조회
	List<Map> selectNoticeList(SqlSession session);
	//게시글 작성
	int insertNotice(SqlSession session,Map Param);
	
}
