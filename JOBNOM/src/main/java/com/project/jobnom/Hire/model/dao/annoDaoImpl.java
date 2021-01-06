package com.project.jobnom.Hire.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.jobnom.Hire.model.vo.Interestedrcruitment;
import com.project.jobnom.Hire.model.vo.Recruitment;
import com.project.jobnom.Hire.model.vo.Support;


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
	public int selectCount2(SqlSession session, int anoNum) {
		return session.selectOne("anno.selectCount2", anoNum);
	}

	@Override
	public List<Recruitment> annCarrer(SqlSession session,Map paramMap, int cPage, int numPerPage) {
		return session.selectList("anno.annCarrer",paramMap,new RowBounds((cPage-1)*numPerPage,numPerPage));
	}

	@Override
	public List<Recruitment> annoHomeDetailMove(SqlSession session, int recNo, int cPage, int numPerPage) {
		return session.selectList("anno.annoHomeDetailMove",recNo,new RowBounds((cPage-1)*numPerPage,numPerPage));
	}

	@Override
	public List<Interestedrcruitment> selectIn(SqlSession session, Map memNo) {
		return session.selectList("anno.selectIn",memNo);
	}

	@Override
	public int selectCount(SqlSession session) {
		return session.selectOne("anno.selectCount");
	}

	@Override
	public int selectCount3(SqlSession session, int recNo) {
		return session.selectOne("anno.selectCount3",recNo);
	}

	@Override
	public List<Support> selectSupportApply(SqlSession session, Map paramMap) {
		return session.selectList("anno.selectSupportApply",paramMap);
	}
	
	
	
	
	
	
	
	

	
}
