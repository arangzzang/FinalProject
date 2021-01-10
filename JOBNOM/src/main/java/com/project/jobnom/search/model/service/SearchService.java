package com.project.jobnom.search.model.service;

import java.util.List;
import java.util.Map;

import com.project.jobnom.enterprise.model.vo.Enterprise;

public interface SearchService {
	
	// 기업 검색결과 조회
	List<Map> selectSearchResult(String keyword);
	
	// 채용 공고 검색 결과 조회
	List<Map> selectSercjResultRec(String keyword);
	
	// 기업 더보기 
	List<Map> searchResultMore(int cPage, int numPerPage);
	
	//기업 더보기 페이지바
	int selectCount();
	
	//ajax 페이지바
	int selectCountCate(String entCategory);
	
	// 기업 더보기 카테고리별 ajax 
	List<Map> ajaxCategoryList(String entCategoryint,int cPage, int numPerPage );
	List<Map> ajaxCategoryList2(int cPage, int numPerPage);
	

	//기업 팔로잉
	int entFollow(Map param);
	
	//기업 언팔로잉
	int entUnFollow(Map param);
	
	// 기업 팔로잉 리스트
	List<Map>entFollowCheck();
	
	//검색창 자동 완성1-1
	List<Enterprise> selectOneRecruitment (String key);
	
	//검색창 자동 완성1-2
	List<Enterprise> searchAuto2(String key);
	
	//메인화면 리뷰 리스트
	List<Map>indexReviewList();
	
	// bannerList
	List<Map> bannerList();
	
	//배너 삭제
	int deleteBanner();
}
