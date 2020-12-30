package com.project.jobnom.Hire.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.jobnom.Hire.model.vo.Recruitment;


@Repository
public class annoDaoImpl implements annoDao {

	
	
	@Override
	public List<Recruitment>  anoList(SqlSession session, int cPage, int numPerPage) {
		return  session.selectList("anno.anoList",null,new RowBounds((cPage-1)*numPerPage,numPerPage));
	}

	@Override
	public List<Recruitment> anoList2(SqlSession session,int anoNum, int cPage, int numPerPage) {
		return  session.selectList("anno.anoList2",anoNum,new RowBounds((cPage-1)*numPerPage,numPerPage));
	}

	@Override
	public int selectCount(SqlSession session) {
		return session.selectOne("anno.selectCount");
	}

	@Override
	public List<Recruitment> annCarrer(SqlSession session,Map paramMap, int cPage, int numPerPage) {
		return session.selectList("anno.annCarrer",paramMap,new RowBounds((cPage-1)*numPerPage,numPerPage));
	}

	@Override
	public List<Recruitment> annoHomeDetailMove(SqlSession session, int recNo, int cPage, int numPerPage) {
		return session.selectList("anno.annoHomeDetailMove",recNo,new RowBounds((cPage-1)*numPerPage,numPerPage));
	}
	
	
	
	
	
	
	

	
}
