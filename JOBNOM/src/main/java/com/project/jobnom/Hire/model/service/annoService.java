package com.project.jobnom.Hire.model.service;

import java.util.List;
import java.util.Map;

import com.project.jobnom.Hire.model.vo.Interestedrcruitment;
import com.project.jobnom.Hire.model.vo.Recruitment;
import com.project.jobnom.Hire.model.vo.Support;

public interface annoService {


	List<Recruitment>  anoList(int cPage, int numPerPage);
	List<Recruitment>  anoList2(int anoNum,int cPage, int numPerPage);
	int selectCount2(int anoNum);
	
	int selectCount();
	
	List<Recruitment>  annCarrer(Map paramMap,int cPage, int numPerPage);

	List<Recruitment> annoHomeDetailMove(int recNo,int cPage, int numPerPage);

	

	List<Interestedrcruitment> selectIn(Map paramMap);
	
	List<Support> selectSupportApply(Map parMap);
	
	int selectCount3(int recNo);
	List<Recruitment> announcementPageFirst(Map paramMap);


}

