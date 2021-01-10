package com.project.jobnom.Hire.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.project.jobnom.Hire.model.vo.Interestedrcruitment;
import com.project.jobnom.Hire.model.vo.Recruitment;
import com.project.jobnom.Hire.model.vo.Support;

public interface annoDao {

	

	
	List<Recruitment>  anoList(SqlSession session, int cPage, int numPerPage);
	

	List<Recruitment>  anoList2(SqlSession session,int anoNum, int cPage, int numPerPage);
	
	int selectCount2(SqlSession session, int anoNum);
	
	List<Recruitment>  annCarrer(SqlSession session,Map paramMap, int cPage, int numPerPage);

	List<Recruitment>  annoHomeDetailMove(SqlSession session,int recNo, int cPage, int numPerPage);

	List<Interestedrcruitment> selectIn(SqlSession session, Map paramMap);
	
	int selectCount(SqlSession session);
	
	int selectCount3(SqlSession session, int recNo);
	
	List<Support> selectSupportApply(SqlSession session, Map paramMap);

	List<Recruitment>  announcementPageFirst(SqlSession session ,Map paramMap);





}
