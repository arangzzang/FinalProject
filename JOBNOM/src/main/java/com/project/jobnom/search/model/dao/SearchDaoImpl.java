package com.project.jobnom.search.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

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
}
