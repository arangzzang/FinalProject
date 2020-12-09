package com.project.jobnom.welcome.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.jobnom.welcome.model.vo.Notice;

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
	
	//게시글 수정하기 조회
	@Override
	public Notice selectOneNotice(SqlSession session, String noticeNo) {
		// TODO Auto-generated method stub
		return session.selectOne("notice.selectOneNotice",noticeNo);
	}
	//게시글 수정하기
	@Override
	public int updateNotice(SqlSession session, Notice n) {
		// TODO Auto-generated method stub
		return session.update("notice.updateNotice",n);
	}
	
	//게시글 삭제하기
	@Override
	public int deleteNotice(SqlSession session, Notice n) {
		// TODO Auto-generated method stub
		return session.delete("notice.delteNotice",n);
	}
}