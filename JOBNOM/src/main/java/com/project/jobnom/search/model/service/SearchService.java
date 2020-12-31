package com.project.jobnom.search.model.service;

import java.util.List;
import java.util.Map;

public interface SearchService {
	
	// 기업 검색결과 조회
	List<Map> selectSearchResult(String keyword);
	
	// 채용 공고 검색 결과 조회
	List<Map> selectSercjResultRec(String keyword);
	
	// 기업 더보기 
	List<Map> searchResultMore(int cPage, int numPerPage);
	
	//기업 더보기 페이지바
	int selectCount();
	
	// 기업 더보기 카테고리별 ajax 
	List<Map> ajaxCategoryList(String entCategory);
	
	// 기업 더보기 리뷰 카테고리별 ajax
	List<Map> ajaxReivewCateList(String reivewCategory);

}
