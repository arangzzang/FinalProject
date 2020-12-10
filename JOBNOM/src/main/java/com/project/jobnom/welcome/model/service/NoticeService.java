package com.project.jobnom.welcome.model.service;

import java.util.List;
import java.util.Map;

import com.project.jobnom.welcome.model.vo.Notice;

public interface NoticeService {
	
	//게시글 조회
	List<Map> selectNoticeList();
	
	//게시글 작성
	int insertNotice(Map param);
	
	//게시글 수정 화면
	Notice selectOneNotice(String noticeNo);
	
	//게시글 수정
	int updateNotice(Notice n);
	
	//게시글 삭제
	int deleteNotice(Notice n);
}
