package com.project.jobnom.welcome.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.project.jobnom.welcome.model.vo.Notice;

public interface NoticeDao {
	
	//게시글 조회
	List<Map> selectNoticeList(SqlSession session);
	//게시글 작성
	int insertNotice(SqlSession session,Map Param);
	
	//게시글 수정하기 조회
	Notice selectOneNotice(SqlSession session,String noticeNo);
	
	//게시글 수정하기
	int updateNotice(SqlSession session, Notice n);
	
	//게시글 삭제하기
	int deleteNotice(SqlSession session, Notice n);
}
