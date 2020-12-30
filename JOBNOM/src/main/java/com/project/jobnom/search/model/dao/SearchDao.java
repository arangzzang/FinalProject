package com.project.jobnom.search.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

public interface SearchDao {
	
	// 기업 검색결과 조회
		List<Map> selectSearchResult(SqlSession session, String keyword);
		
	// 채용 공고 검색 결과 조회
		List<Map>selectSercjResultRec(SqlSession session,String keyword);
		
	// 기업 더보기 
		List<Map> searchResultMore(SqlSession session,int cPage, int numPerPage);
	// 기업더보기 페이징바
		int selectCount(SqlSession session);
		
	// 기업 더보기 카테고리별 ajax
		List<Map> ajaxCategoryList(SqlSession session, String entCategory);
		
	// 기업 더보기 리뷰카테고리별 ajax
		List<Map> ajaxReivewCateList(SqlSession session, String reivewCategory);
		

}
