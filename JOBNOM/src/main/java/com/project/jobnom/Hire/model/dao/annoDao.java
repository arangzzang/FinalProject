package com.project.jobnom.Hire.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.project.jobnom.Hire.model.vo.Recruitment;

public interface annoDao {

	

	
	List<Recruitment>  anoList(SqlSession session, int cPage, int numPerPage);
	

	List<Recruitment>  anoList2(SqlSession session,int anoNum, int cPage, int numPerPage);
	
	int selectCount(SqlSession session);
	
	List<Recruitment>  annCarrer(SqlSession session,Map paramMap, int cPage, int numPerPage);

	List<Recruitment>  annoHomeDetailMove(SqlSession session,int recNo, int cPage, int numPerPage);

}
