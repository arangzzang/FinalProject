package com.project.jobnom.search.model.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.jobnom.search.model.dao.SearchDao;


@Service
public class SearchServiceImpl implements SearchService {

	@Autowired
	private SearchDao dao;
	@Autowired
	private SqlSession session;
	
	//기업 검색 결과 조회
	@Override
	public List<Map> selectSearchResult(String keyword) {
		// TODO Auto-generated method stub
		return dao.selectSearchResult(session,keyword);
	}
	
	//채용 공고 검색 결과 조회
	@Override
	public List<Map> selectSercjResultRec(String keyword) {
		// TODO Auto-generated method stub
		return dao.selectSercjResultRec(session,keyword);
	}
	
	//기업 더보기 
	@Override
	public List<Map> searchResultMore(int cPage, int numPerPage) {
		// TODO Auto-generated method stub
		return dao.searchResultMore(session,cPage,numPerPage);
	}
	//기업더보기 페이징바
	@Override
	public int selectCount() {
		// TODO Auto-generated method stub
		return dao.selectCount(session);
	}
}
