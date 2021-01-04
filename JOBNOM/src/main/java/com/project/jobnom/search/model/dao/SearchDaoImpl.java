package com.project.jobnom.search.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.jobnom.enterprise.model.vo.Enterprise;

@Repository
public class SearchDaoImpl implements SearchDao {
	
	//기업 검색결과 조회 리스트
	
	@Override
	public List<Map> selectSearchResult(SqlSession session, String keyword) {
		// TODO Auto-generated method stub
		return session.selectList("search.selectSearchResult",keyword);
	}

	// 채용 공고 검색 결과 조회 리스트
	@Override
	public List<Map> selectSercjResultRec(SqlSession session, String keyword) {
		// TODO Auto-generated method stub
		return session.selectList("search.selectSercjResultRec",keyword);
	}
	
	// 기업 더보기 
	@Override
	public List<Map> searchResultMore(SqlSession session,int cPage, int numPerPage) {
		// TODO Auto-generated method stub
		return session.selectList("search.searchResultMore",null,new RowBounds((cPage-1)*numPerPage,numPerPage));
	}
	
	//기업더보기 페이징바
	@Override
	public int selectCount(SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectOne("search.selectCount");
	}
	
	//기업더보기 카테고리멸 ajax
	@Override
	public List<Map> ajaxCategoryList(SqlSession session, String entCategory) {
		// TODO Auto-generated method stub
		return session.selectList("search.ajaxCategoryList",entCategory);
	}
	
	// 기업더보기 리뷰 카테고리별 ajax
	@Override
	public List<Map> ajaxReivewCateList(SqlSession session, String reivewCategory) {
		// TODO Auto-generated method stub
		return session.selectList("search.ajaxReivewCateList",reivewCategory);
	}
	
	//기업 팔로잉
	@Override
	public int entFollow(SqlSession session, Map param) {
		// TODO Auto-generated method stub
		return session.insert("search.entFollow",param);
	}
	
	//기업 언팔로잉
	@Override
	public int entUnFollow(SqlSession session, Map param) {
		// TODO Auto-generated method stub
		return session.delete("search.entUnFollow",param);
	}
	
	//기업 팔로잉 리스트 
	@Override
	public List<Map> entFollowCheck(SqlSession session) {
		// TODO Auto-generated method stub
		return session.selectList("search.entFollowCheck");
	}
	
	//검색창  자동완성1-1
	@Override
	public List<Enterprise> selectOneRecruitment(SqlSession session, String key) {
		// TODO Auto-generated method stub
		return session.selectList("search.selectOneRecruitment",key);
	}
	//검색창 자동 완성 1-2
	@Override
	public List<Enterprise> searchAuto2(SqlSession session, String key) {
		// TODO Auto-generated method stub
		return session.selectList("search.searchAuto2",key);
	}
}
