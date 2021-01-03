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
	
	//기업 더보기 카테고리별 ajax
	@Override
	public List<Map> ajaxCategoryList(String entCategory) {
		// TODO Auto-generated method stub
		return dao.ajaxCategoryList(session, entCategory);
	}
	
	//기업 더보기 리뷰카테고리별 ajax
	@Override
	public List<Map> ajaxReivewCateList(String reivewCategory) {
		// TODO Auto-generated method stub
		return dao.ajaxReivewCateList(session,reivewCategory);
	}
	
	//기업 팔로잉
	@Override
	public int entFollow(Map param) {
		// TODO Auto-generated method stub
		return dao.entFollow(session,param);
	}
	
	
	//기업 언팔로잉
	@Override
	public int entUnFollow(Map param) {
		// TODO Auto-generated method stub
		return dao.entUnFollow(session,param);
	}
	
	//기업 팔로잉 리스트
	@Override
	public List<Map> entFollowCheck() {
		// TODO Auto-generated method stub
		return dao.entFollowCheck(session);
	}
}
