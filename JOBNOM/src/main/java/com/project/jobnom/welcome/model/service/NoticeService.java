package com.project.jobnom.welcome.model.service;

import java.util.List;
import java.util.Map;

public interface NoticeService {
	
	//게시글 조회
	List<Map> selectNoticeList();
	
	//게시글 작성
	int insertNotice(Map param);
}
