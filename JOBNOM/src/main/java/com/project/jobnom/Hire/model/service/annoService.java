package com.project.jobnom.Hire.model.service;

import java.util.List;
import java.util.Map;

import com.project.jobnom.Hire.model.vo.Interestedrcruitment;
import com.project.jobnom.Hire.model.vo.Recruitment;

public interface annoService {


	List<Recruitment>  anoList(int cPage, int numPerPage);
	List<Recruitment>  anoList2(int anoNum,int cPage, int numPerPage);
	int selectCount();
	List<Recruitment>  annCarrer(Map paramMap,int cPage, int numPerPage);

	List<Recruitment> annoHomeDetailMove(int recNo,int cPage, int numPerPage);

	List<Interestedrcruitment> selectIn(int memNo);


}

