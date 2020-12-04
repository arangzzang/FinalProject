package com.project.jobnom.Hire.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.jobnom.Hire.model.vo.Recruitment;

@Repository
public class HireDaoImpl implements HireDao {

	@Override
	public int insertReview(SqlSession session, Map ModelMap) {
		return  session.insert("hire.insertReview", ModelMap);
	}

	@Override
	public List<Recruitment> HireHomeRecruitmentList(SqlSession session,int cPage, int numPerpage) {
		return  session.selectList("hire.HireHomeRecruitmentList",null,new RowBounds((cPage-1)*numPerpage,numPerpage));
	}

	@Override
	public int selectCount(SqlSession session) {
		return session.selectOne("hire.selectCount");
	}
	
	

	
}
